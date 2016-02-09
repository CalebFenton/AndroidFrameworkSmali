.class final Lcom/android/server/am/ActivityStack;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStack$ActivityState;,
        Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;,
        Lcom/android/server/am/ActivityStack$ActivityStackHandler;
    }
.end annotation


# static fields
.field private static synthetic -com_android_server_am_ActivityStack$ActivityStateSwitchesValues:[I = null

.field static final ACTIVITY_INACTIVE_RESET_TIME:J = 0x0L

.field static final DESTROY_ACTIVITIES_MSG:I = 0x69

.field static final DESTROY_TIMEOUT:I = 0x2710

.field static final DESTROY_TIMEOUT_MSG:I = 0x66

.field static final FINISH_AFTER_PAUSE:I = 0x1

.field static final FINISH_AFTER_VISIBLE:I = 0x2

.field static final FINISH_IMMEDIATELY:I = 0x0

.field static final LAUNCH_TICK:I = 0x1f4

.field static final LAUNCH_TICK_MSG:I = 0x67

.field static final PAUSE_TIMEOUT:I = 0x1f4

.field static final PAUSE_TIMEOUT_MSG:I = 0x65

.field static final RELEASE_BACKGROUND_RESOURCES_TIMEOUT_MSG:I = 0x6b

.field static final SHOW_APP_STARTING_PREVIEW:Z = true

.field static final START_WARN_TIME:J = 0x1388L

.field static final STOP_TIMEOUT:I = 0x2710

.field static final STOP_TIMEOUT_MSG:I = 0x68

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_ADD_REMOVE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_APP:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CLEANUP:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONTAINERS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_PAUSE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RELEASE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SAVED_STATE:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SCREENSHOTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STACK:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_STATES:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TRANSITION:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_VISIBILITY:Ljava/lang/String; = "ActivityManager"

.field static final TRANSLUCENT_CONVERSION_TIMEOUT:J = 0x7d0L

.field static final TRANSLUCENT_TIMEOUT_MSG:I = 0x6a

.field private static final VALIDATE_TOKENS:Z


# instance fields
.field final mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

.field mConfigWillChange:Z

.field mCurrentUser:I

.field mDisplayId:I

.field private mForcedFullscreen:Z

.field mFullscreen:Z

.field mFullyDrawnStartTime:J

.field final mHandler:Landroid/os/Handler;

.field final mLRUActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

.field mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

.field mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

.field mLaunchStartTime:J

.field final mNoAnimActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mOverrideConfig:Landroid/content/res/Configuration;

.field mPausingActivity:Lcom/android/server/am/ActivityRecord;

.field private final mRecentTasks:Lcom/android/server/am/RecentTasks;

.field mResumedActivity:Lcom/android/server/am/ActivityRecord;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mStackId:I

.field final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

.field private mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mValidateAppTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/TaskGroup;",
            ">;"
        }
    .end annotation
.end field

.field final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method private static synthetic -getcom_android_server_am_ActivityStack$ActivityStateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/server/am/ActivityStack;->-com_android_server_am_ActivityStack$ActivityStateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/am/ActivityStack;->-com_android_server_am_ActivityStack$ActivityStateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/server/am/ActivityStack$ActivityState;->values()[Lcom/android/server/am/ActivityStack$ActivityState;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@10
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x7

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@19
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/16 v2, 0x8

    #@1f
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    #@21
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@23
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    #@26
    move-result v1

    #@27
    const/16 v2, 0x9

    #@29
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    #@2b
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@2d
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    #@30
    move-result v1

    #@31
    const/4 v2, 0x1

    #@32
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    #@34
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@36
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    #@39
    move-result v1

    #@3a
    const/4 v2, 0x2

    #@3b
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    #@3d
    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@3f
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    #@42
    move-result v1

    #@43
    const/4 v2, 0x3

    #@44
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    #@46
    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@48
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    #@4b
    move-result v1

    #@4c
    const/4 v2, 0x4

    #@4d
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    #@4f
    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@51
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    #@54
    move-result v1

    #@55
    const/4 v2, 0x5

    #@56
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    #@58
    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@5a
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    #@5d
    move-result v1

    #@5e
    const/4 v2, 0x6

    #@5f
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    #@61
    :goto_8
    sput-object v0, Lcom/android/server/am/ActivityStack;->-com_android_server_am_ActivityStack$ActivityStateSwitchesValues:[I

    #@63
    return-object v0

    #@64
    :catch_0
    move-exception v1

    #@65
    goto :goto_8

    #@66
    :catch_1
    move-exception v1

    #@67
    goto :goto_7

    #@68
    :catch_2
    move-exception v1

    #@69
    goto :goto_6

    #@6a
    :catch_3
    move-exception v1

    #@6b
    goto :goto_5

    #@6c
    :catch_4
    move-exception v1

    #@6d
    goto :goto_4

    #@6e
    :catch_5
    move-exception v1

    #@6f
    goto :goto_3

    #@70
    :catch_6
    move-exception v1

    #@71
    goto :goto_2

    #@72
    :catch_7
    move-exception v1

    #@73
    goto :goto_1

    #@74
    :catch_8
    move-exception v1

    #@75
    goto :goto_0
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/RecentTasks;)V
    .locals 4
    .param p1, "activityContainer"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .param p2, "recentTasks"    # Lcom/android/server/am/RecentTasks;

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 158
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@d
    .line 163
    new-instance v0, Ljava/util/ArrayList;

    #@f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    #@14
    .line 170
    new-instance v0, Ljava/util/ArrayList;

    #@16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@19
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    #@1b
    .line 176
    new-instance v0, Ljava/util/ArrayList;

    #@1d
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@20
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    #@22
    .line 182
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@24
    .line 189
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    #@26
    .line 196
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    #@28
    .line 201
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@2a
    .line 208
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

    #@2c
    .line 216
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    #@2e
    .line 218
    new-instance v0, Ljava/util/ArrayList;

    #@30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@33
    .line 217
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    #@35
    .line 227
    const/4 v0, 0x1

    #@36
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    #@38
    .line 229
    iput-wide v2, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    #@3a
    .line 230
    iput-wide v2, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    #@3c
    .line 247
    const/4 v0, 0x0

    #@3d
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mForcedFullscreen:Z

    #@3f
    .line 356
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@41
    .line 357
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->getOuter()Lcom/android/server/am/ActivityStackSupervisor;

    #@44
    move-result-object v0

    #@45
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@47
    .line 358
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@49
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4b
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4d
    .line 359
    new-instance v0, Lcom/android/server/am/ActivityStack$ActivityStackHandler;

    #@4f
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@51
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@53
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    #@56
    move-result-object v1

    #@57
    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ActivityStack$ActivityStackHandler;-><init>(Lcom/android/server/am/ActivityStack;Landroid/os/Looper;)V

    #@5a
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@5c
    .line 360
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5e
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@60
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@62
    .line 361
    iget v0, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    #@64
    iput v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@66
    .line 362
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@68
    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurrentUserId:I

    #@6a
    iput v0, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    #@6c
    .line 363
    iput-object p2, p0, Lcom/android/server/am/ActivityStack;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@6e
    .line 364
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@70
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    #@72
    .line 355
    return-void
.end method

.method private adjustFocusToNextVisibleStackLocked(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)Z
    .locals 7
    .param p1, "inStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 2649
    if-eqz p1, :cond_0

    #@4
    move-object v1, p1

    #@5
    .line 2650
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v3

    #@e
    const-string/jumbo v4, " adjustFocusToNextVisibleStack"

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    .line 2651
    .local v0, "myReason":Ljava/lang/String;
    if-nez v1, :cond_1

    #@1b
    .line 2652
    return v6

    #@1c
    .line 2649
    .end local v0    # "myReason":Ljava/lang/String;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->getNextVisibleStackLocked()Lcom/android/server/am/ActivityStack;

    #@1f
    move-result-object v1

    #@20
    .restart local v1    # "stack":Lcom/android/server/am/ActivityStack;
    goto :goto_0

    #@21
    .line 2654
    .restart local v0    # "myReason":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@24
    move-result-object v2

    #@25
    .line 2655
    .local v2, "top":Lcom/android/server/am/ActivityRecord;
    if-nez v2, :cond_2

    #@27
    .line 2656
    return v6

    #@28
    .line 2658
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2a
    invoke-virtual {v3, v2, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    #@2d
    .line 2659
    const/4 v3, 0x1

    #@2e
    return v3
.end method

.method private adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 2618
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@3
    invoke-virtual {v4, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    #@6
    move-result v4

    #@7
    if-eqz v4, :cond_2

    #@9
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@b
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    #@d
    if-ne v4, p1, :cond_2

    #@f
    .line 2619
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@12
    move-result-object v1

    #@13
    .line 2620
    .local v1, "next":Lcom/android/server/am/ActivityRecord;
    new-instance v4, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    const-string/jumbo v5, " adjustFocus"

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    .line 2621
    .local v0, "myReason":Ljava/lang/String;
    if-eq v1, p1, :cond_1

    #@29
    .line 2622
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@2b
    .line 2623
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    #@2d
    if-eqz v4, :cond_1

    #@2f
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    #@32
    move-result-object v4

    #@33
    if-ne v2, v4, :cond_1

    #@35
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    #@38
    move-result v4

    #@39
    if-eqz v4, :cond_1

    #@3b
    .line 2627
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    #@3d
    if-nez v4, :cond_0

    #@3f
    .line 2628
    invoke-direct {p0, v6, v0}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextVisibleStackLocked(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)Z

    #@42
    move-result v4

    #@43
    .line 2627
    if-eqz v4, :cond_0

    #@45
    .line 2629
    return-void

    #@46
    .line 2633
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@48
    .line 2634
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    #@4b
    move-result v5

    #@4c
    .line 2633
    invoke-virtual {v4, v5, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;)Z

    #@4f
    move-result v4

    #@50
    if-eqz v4, :cond_1

    #@52
    .line 2636
    return-void

    #@53
    .line 2641
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@55
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@58
    move-result-object v3

    #@59
    .line 2642
    .local v3, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_2

    #@5b
    .line 2643
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5d
    invoke-virtual {v4, v3, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    #@60
    .line 2617
    .end local v0    # "myReason":Ljava/lang/String;
    .end local v1    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_2
    return-void
.end method

.method private completePauseLocked(Z)V
    .locals 14
    .param p1, "resumeNext"    # Z

    #@0
    .prologue
    const-wide/16 v12, 0x0

    #@2
    const/4 v10, 0x1

    #@3
    const/4 v9, 0x0

    #@4
    .line 995
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@6
    .line 998
    .local v1, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_1

    #@8
    .line 999
    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@a
    iput-object v7, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@c
    .line 1000
    iget-boolean v7, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@e
    if-eqz v7, :cond_6

    #@10
    .line 1002
    const/4 v7, 0x2

    #@11
    const/4 v8, 0x0

    #@12
    invoke-virtual {p0, v1, v7, v8}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    #@15
    move-result-object v1

    #@16
    .line 1040
    .end local v1    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_0
    :goto_0
    invoke-virtual {v1, v10}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    #@19
    .line 1041
    iput-object v9, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@1b
    .line 1044
    :cond_1
    if-eqz p1, :cond_2

    #@1d
    .line 1045
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1f
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    #@22
    move-result-object v6

    #@23
    .line 1046
    .local v6, "topStack":Lcom/android/server/am/ActivityStack;
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@25
    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    #@28
    move-result v7

    #@29
    if-nez v7, :cond_d

    #@2b
    .line 1047
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@2d
    invoke-virtual {v7, v6, v1, v9}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    #@30
    .line 1062
    .end local v6    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_2
    :goto_1
    if-eqz v1, :cond_5

    #@32
    .line 1063
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    #@35
    .line 1065
    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@37
    if-eqz v7, :cond_4

    #@39
    iget-wide v8, v1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    #@3b
    cmp-long v7, v8, v12

    #@3d
    if-lez v7, :cond_4

    #@3f
    .line 1066
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@41
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    #@43
    invoke-virtual {v7}, Lcom/android/server/am/BatteryStatsService;->isOnBattery()Z

    #@46
    move-result v7

    #@47
    .line 1065
    if-eqz v7, :cond_4

    #@49
    .line 1067
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4b
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    #@4d
    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@4f
    iget v8, v8, Lcom/android/server/am/ProcessRecord;->pid:I

    #@51
    invoke-virtual {v7, v8}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    #@54
    move-result-wide v8

    #@55
    .line 1068
    iget-wide v10, v1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    #@57
    .line 1067
    sub-long v2, v8, v10

    #@59
    .line 1069
    .local v2, "diff":J
    cmp-long v7, v2, v12

    #@5b
    if-lez v7, :cond_4

    #@5d
    .line 1070
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5f
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    #@61
    invoke-virtual {v7}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    #@64
    move-result-object v0

    #@65
    .line 1071
    .local v0, "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v0

    #@66
    .line 1073
    :try_start_0
    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@68
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@6a
    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    #@6c
    .line 1074
    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@6e
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@70
    .line 1073
    invoke-virtual {v0, v7, v8}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    #@73
    move-result-object v4

    #@74
    .line 1075
    .local v4, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v4, :cond_3

    #@76
    .line 1076
    invoke-virtual {v4, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addForegroundTimeLocked(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@79
    :cond_3
    monitor-exit v0

    #@7a
    .line 1081
    .end local v0    # "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v2    # "diff":J
    .end local v4    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_4
    iput-wide v12, v1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    #@7c
    .line 1085
    :cond_5
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@7e
    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->notifyTaskStackChangedLocked()V

    #@81
    .line 994
    return-void

    #@82
    .line 1003
    .restart local v1    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_6
    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@84
    if-eqz v7, :cond_c

    #@86
    .line 1005
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@88
    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@8a
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@8d
    move-result v7

    #@8e
    if-eqz v7, :cond_7

    #@90
    .line 1009
    :cond_7
    iget-boolean v7, v1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    #@92
    if-eqz v7, :cond_8

    #@94
    .line 1016
    const-string/jumbo v7, "pause-config"

    #@97
    invoke-virtual {p0, v1, v10, v7}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    #@9a
    goto/16 :goto_0

    #@9c
    .line 1017
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->hasVisibleBehindActivity()Z

    #@9f
    move-result v7

    #@a0
    if-eqz v7, :cond_9

    #@a2
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@a4
    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    #@a7
    move-result v7

    #@a8
    if-eqz v7, :cond_0

    #@aa
    .line 1020
    :cond_9
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@ac
    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    #@ae
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b1
    .line 1021
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@b3
    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    #@b5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@b8
    move-result v7

    #@b9
    const/4 v8, 0x3

    #@ba
    if-gt v7, v8, :cond_a

    #@bc
    .line 1022
    iget-boolean v7, v1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    #@be
    if-eqz v7, :cond_b

    #@c0
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@c2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@c5
    move-result v7

    #@c6
    if-gt v7, v10, :cond_b

    #@c8
    .line 1028
    :cond_a
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@ca
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    #@cd
    goto/16 :goto_0

    #@cf
    .line 1030
    :cond_b
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@d1
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    #@d4
    goto/16 :goto_0

    #@d6
    .line 1035
    :cond_c
    const/4 v1, 0x0

    #@d7
    .local v1, "prev":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_0

    #@d9
    .line 1049
    .end local v1    # "prev":Lcom/android/server/am/ActivityRecord;
    .restart local v6    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_d
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@db
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    #@de
    .line 1050
    invoke-virtual {v6, v9}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@e1
    move-result-object v5

    #@e2
    .line 1051
    .local v5, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_e

    #@e4
    if-eqz v1, :cond_2

    #@e6
    if-eq v5, v1, :cond_2

    #@e8
    .line 1057
    :cond_e
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@ea
    invoke-virtual {v7, v6, v9, v9}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    #@ed
    goto/16 :goto_1

    #@ef
    .line 1071
    .end local v5    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "topStack":Lcom/android/server/am/ActivityStack;
    .restart local v0    # "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v2    # "diff":J
    :catchall_0
    move-exception v7

    #@f0
    monitor-exit v0

    #@f1
    throw v7
.end method

.method private completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 5
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 1094
    iput-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->idle:Z

    #@4
    .line 1095
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    #@6
    .line 1096
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    #@8
    .line 1098
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isNotResolverActivity()Z

    #@11
    move-result v1

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 1099
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@16
    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@1e
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@20
    .line 1100
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_0

    #@22
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@24
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    #@26
    if-eq v0, v1, :cond_0

    #@28
    .line 1101
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2a
    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    #@2c
    .line 1105
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_0
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    #@2e
    if-eqz v1, :cond_1

    #@30
    .line 1107
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@32
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->notifyActivityDrawnForKeyguard()V

    #@35
    .line 1111
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@37
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    #@3a
    .line 1113
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@3c
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    #@3f
    .line 1115
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    #@42
    .line 1116
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    #@44
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@47
    .line 1121
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@49
    if-eqz v1, :cond_3

    #@4b
    .line 1122
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4d
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    #@4f
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@51
    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    #@53
    invoke-virtual {v1, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    #@56
    move-result-wide v2

    #@57
    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    #@59
    .line 1127
    :goto_0
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    #@5b
    .line 1129
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@5d
    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@5f
    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    #@61
    if-ne v1, p1, :cond_2

    #@63
    .line 1131
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@65
    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@67
    invoke-virtual {v1, v4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    #@6a
    .line 1093
    :cond_2
    return-void

    #@6b
    .line 1124
    :cond_3
    const-wide/16 v2, 0x0

    #@6d
    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    #@6f
    goto :goto_0
.end method

.method private getNextTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;
    .locals 6
    .param p1, "targetTask"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    .line 2015
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@5
    move-result v1

    #@6
    .line 2016
    .local v1, "index":I
    if-ltz v1, :cond_1

    #@8
    .line 2017
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v2

    #@e
    .line 2018
    .local v2, "numTasks":I
    add-int/lit8 v0, v1, 0x1

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@12
    .line 2019
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Lcom/android/server/am/TaskRecord;

    #@1a
    .line 2020
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget v4, v3, Lcom/android/server/am/TaskRecord;->userId:I

    #@1c
    iget v5, p1, Lcom/android/server/am/TaskRecord;->userId:I

    #@1e
    if-ne v4, v5, :cond_0

    #@20
    .line 2021
    return-object v3

    #@21
    .line 2018
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 2025
    .end local v0    # "i":I
    .end local v2    # "numTasks":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    const/4 v4, 0x0

    #@25
    return-object v4
.end method

.method private getNextVisibleStackLocked()Lcom/android/server/am/ActivityStack;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1192
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@3
    .line 1193
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@5
    iget-object v1, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    #@7
    .line 1194
    .local v1, "parent":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    #@9
    .line 1195
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@b
    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@d
    iget-object v3, v4, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@f
    .line 1197
    :cond_0
    if-eqz v3, :cond_2

    #@11
    .line 1198
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v4

    #@15
    add-int/lit8 v0, v4, -0x1

    #@17
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@19
    .line 1199
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Lcom/android/server/am/ActivityStack;

    #@1f
    .line 1200
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-eq v2, p0, :cond_1

    #@21
    invoke-direct {v2}, Lcom/android/server/am/ActivityStack;->isStackVisibleLocked()Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_1

    #@27
    .line 1201
    return-object v2

    #@28
    .line 1198
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1205
    .end local v0    # "i":I
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    return-object v5
.end method

.method private insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 10
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "newActivity"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const/4 v9, 0x0

    #@3
    .line 2030
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    #@6
    move-result v8

    #@7
    if-eqz v8, :cond_0

    #@9
    .line 2031
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->getNextTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;

    #@c
    move-result-object v2

    #@d
    .line 2032
    .local v2, "nextTask":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_0

    #@f
    .line 2033
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    #@12
    move-result v8

    #@13
    invoke-virtual {v2, v8}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    #@16
    .line 2039
    .end local v2    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    #@19
    move-result v8

    #@1a
    if-eqz v8, :cond_8

    #@1c
    .line 2040
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1e
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    #@21
    move-result-object v1

    #@22
    .line 2041
    .local v1, "lastStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    #@25
    move-result v0

    #@26
    .line 2042
    .local v0, "fromHome":Z
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    #@29
    move-result v8

    #@2a
    if-nez v8, :cond_3

    #@2c
    if-nez v0, :cond_1

    #@2e
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    #@31
    move-result-object v8

    #@32
    if-eq v8, p1, :cond_3

    #@34
    .line 2043
    :cond_1
    if-eqz v0, :cond_2

    #@36
    .line 2044
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    #@39
    move-result-object v6

    #@3a
    if-nez v6, :cond_7

    #@3c
    move v6, v7

    #@3d
    .line 2043
    :cond_2
    :goto_0
    invoke-virtual {p1, v6}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    #@40
    .line 2053
    .end local v0    # "fromHome":Z
    .end local v1    # "lastStack":Lcom/android/server/am/ActivityStack;
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@42
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@45
    .line 2055
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@47
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@4a
    move-result v4

    #@4b
    .line 2057
    .local v4, "taskNdx":I
    if-eqz p2, :cond_9

    #@4d
    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@4f
    iget v6, v6, Landroid/content/pm/ActivityInfo;->flags:I

    #@51
    and-int/lit16 v6, v6, 0x400

    #@53
    if-nez v6, :cond_9

    #@55
    const/4 v3, 0x1

    #@56
    .line 2059
    .local v3, "notShownWhenLocked":Z
    :goto_2
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@58
    iget v8, p1, Lcom/android/server/am/TaskRecord;->userId:I

    #@5a
    invoke-virtual {v6, v8}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    #@5d
    move-result v6

    #@5e
    if-nez v6, :cond_6

    #@60
    if-eqz v3, :cond_6

    #@62
    .line 2061
    :cond_4
    add-int/lit8 v4, v4, -0x1

    #@64
    if-ltz v4, :cond_5

    #@66
    .line 2062
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@68
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6b
    move-result-object v5

    #@6c
    check-cast v5, Lcom/android/server/am/TaskRecord;

    #@6e
    .line 2063
    .local v5, "tmpTask":Lcom/android/server/am/TaskRecord;
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@70
    iget v8, v5, Lcom/android/server/am/TaskRecord;->userId:I

    #@72
    invoke-virtual {v6, v8}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    #@75
    move-result v6

    #@76
    if-eqz v6, :cond_5

    #@78
    .line 2064
    invoke-virtual {v5, v9}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@7b
    move-result-object v6

    #@7c
    if-nez v6, :cond_4

    #@7e
    .line 2068
    .end local v5    # "tmpTask":Lcom/android/server/am/TaskRecord;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    #@80
    .line 2070
    :cond_6
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@82
    invoke-virtual {v6, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@85
    .line 2071
    invoke-virtual {p0, p1, v7}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    #@88
    .line 2028
    return-void

    #@89
    .line 2046
    .end local v3    # "notShownWhenLocked":Z
    .end local v4    # "taskNdx":I
    .restart local v0    # "fromHome":Z
    .restart local v1    # "lastStack":Lcom/android/server/am/ActivityStack;
    :cond_7
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    #@8c
    move-result-object v6

    #@8d
    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskType:I

    #@8f
    goto :goto_0

    #@90
    .line 2050
    .end local v0    # "fromHome":Z
    .end local v1    # "lastStack":Lcom/android/server/am/ActivityStack;
    :cond_8
    invoke-virtual {p1, v6}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    #@93
    goto :goto_1

    #@94
    .line 2058
    .restart local v4    # "taskNdx":I
    :cond_9
    if-nez p2, :cond_a

    #@96
    invoke-virtual {p1, v9}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@99
    move-result-object v6

    #@9a
    if-nez v6, :cond_a

    #@9c
    const/4 v3, 0x1

    #@9d
    .restart local v3    # "notShownWhenLocked":Z
    goto :goto_2

    #@9e
    .end local v3    # "notShownWhenLocked":Z
    :cond_a
    const/4 v3, 0x0

    #@9f
    .restart local v3    # "notShownWhenLocked":Z
    goto :goto_2
.end method

.method private isStackVisibleLocked()Z
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 1211
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    #@5
    move-result v8

    #@6
    if-nez v8, :cond_0

    #@8
    .line 1212
    return v9

    #@9
    .line 1215
    :cond_0
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@b
    invoke-virtual {v8, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    #@e
    move-result v8

    #@f
    if-eqz v8, :cond_1

    #@11
    .line 1216
    return v10

    #@12
    .line 1224
    :cond_1
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@17
    move-result v8

    #@18
    add-int/lit8 v2, v8, 0x1

    #@1a
    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@1f
    move-result v8

    #@20
    if-ge v2, v8, :cond_7

    #@22
    .line 1225
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@27
    move-result-object v4

    #@28
    check-cast v4, Lcom/android/server/am/ActivityStack;

    #@2a
    .line 1229
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    iget-boolean v8, v4, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    #@2c
    if-nez v8, :cond_3

    #@2e
    .line 1224
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@30
    goto :goto_0

    #@31
    .line 1232
    :cond_3
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    #@34
    move-result-object v7

    #@35
    .line 1233
    .local v7, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@38
    move-result v8

    #@39
    add-int/lit8 v6, v8, -0x1

    #@3b
    .local v6, "taskNdx":I
    :goto_1
    if-ltz v6, :cond_2

    #@3d
    .line 1234
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@40
    move-result-object v5

    #@41
    check-cast v5, Lcom/android/server/am/TaskRecord;

    #@43
    .line 1235
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@45
    .line 1236
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@48
    move-result v8

    #@49
    add-int/lit8 v1, v8, -0x1

    #@4b
    .local v1, "activityNdx":I
    :goto_2
    if-ltz v1, :cond_6

    #@4d
    .line 1237
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@50
    move-result-object v3

    #@51
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    #@53
    .line 1245
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v8, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@55
    if-nez v8, :cond_5

    #@57
    iget-boolean v8, v3, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@59
    if-eqz v8, :cond_5

    #@5b
    iget-boolean v8, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@5d
    if-nez v8, :cond_4

    #@5f
    .line 1246
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    #@62
    move-result v8

    #@63
    if-nez v8, :cond_5

    #@65
    iget-boolean v8, v3, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    #@67
    if-eqz v8, :cond_5

    #@69
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    #@6c
    move-result v8

    #@6d
    .line 1245
    if-eqz v8, :cond_5

    #@6f
    .line 1247
    :cond_4
    return v9

    #@70
    .line 1236
    :cond_5
    add-int/lit8 v1, v1, -0x1

    #@72
    goto :goto_2

    #@73
    .line 1233
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_6
    add-int/lit8 v6, v6, -0x1

    #@75
    goto :goto_1

    #@76
    .line 1253
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v6    # "taskNdx":I
    .end local v7    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_7
    return v10
.end method

.method static final logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 5
    .param p0, "tag"    # I
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    .line 3798
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@2
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@5
    move-result-object v0

    #@6
    .line 3799
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_0

    #@8
    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 3801
    :goto_0
    const/16 v2, 0x8

    #@e
    new-array v2, v2, [Ljava/lang/Object;

    #@10
    .line 3802
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    #@12
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v3

    #@16
    const/4 v4, 0x0

    #@17
    aput-object v3, v2, v4

    #@19
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@1c
    move-result v3

    #@1d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v3

    #@21
    const/4 v4, 0x1

    #@22
    aput-object v3, v2, v4

    #@24
    iget v3, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    #@26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@29
    move-result-object v3

    #@2a
    const/4 v4, 0x2

    #@2b
    aput-object v3, v2, v4

    #@2d
    .line 3803
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@2f
    const/4 v4, 0x3

    #@30
    aput-object v3, v2, v4

    #@32
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@34
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    const/4 v4, 0x4

    #@39
    aput-object v3, v2, v4

    #@3b
    .line 3804
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@3d
    invoke-virtual {v3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    const/4 v4, 0x5

    #@42
    aput-object v3, v2, v4

    #@44
    const/4 v3, 0x6

    #@45
    aput-object v1, v2, v3

    #@47
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@49
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    #@4c
    move-result v3

    #@4d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@50
    move-result-object v3

    #@51
    const/4 v4, 0x7

    #@52
    aput-object v3, v2, v4

    #@54
    .line 3801
    invoke-static {p0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@57
    .line 3797
    return-void

    #@58
    .line 3799
    :cond_0
    const/4 v1, 0x0

    #@59
    .local v1, "strData":Ljava/lang/String;
    goto :goto_0
.end method

.method private relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z
    .locals 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "changes"    # I
    .param p3, "andResume"    # Z

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v9, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 3968
    const/4 v2, 0x0

    #@4
    .line 3969
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v3, 0x0

    #@5
    .line 3970
    .local v3, "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    if-eqz p3, :cond_0

    #@7
    .line 3971
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    #@9
    .line 3972
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    #@b
    .line 3977
    .end local v2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v3    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :cond_0
    if-eqz p3, :cond_1

    #@d
    const/16 v0, 0x7543

    #@f
    :goto_0
    const/4 v1, 0x4

    #@10
    new-array v1, v1, [Ljava/lang/Object;

    #@12
    .line 3978
    iget v4, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    #@14
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v4

    #@18
    aput-object v4, v1, v5

    #@1a
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@1d
    move-result v4

    #@1e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v4

    #@22
    aput-object v4, v1, v9

    #@24
    .line 3979
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@26
    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    #@28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v4

    #@2c
    const/4 v6, 0x2

    #@2d
    aput-object v4, v1, v6

    #@2f
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@31
    const/4 v6, 0x3

    #@32
    aput-object v4, v1, v6

    #@34
    .line 3977
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@37
    .line 3981
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@39
    invoke-virtual {p1, v0, v5}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    #@3c
    .line 3983
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@3e
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeChildActivityContainers(Lcom/android/server/am/ActivityRecord;)V

    #@41
    .line 3988
    const/4 v0, 0x0

    #@42
    :try_start_0
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    #@44
    .line 3989
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@46
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@48
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@4a
    .line 3990
    if-eqz p3, :cond_2

    #@4c
    :goto_1
    new-instance v6, Landroid/content/res/Configuration;

    #@4e
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@50
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@52
    invoke-direct {v6, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@55
    .line 3991
    new-instance v7, Landroid/content/res/Configuration;

    #@57
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    #@59
    invoke-direct {v7, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@5c
    move v4, p2

    #@5d
    .line 3989
    invoke-interface/range {v0 .. v7}, Landroid/app/IApplicationThread;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@60
    .line 3999
    :goto_2
    if-eqz p3, :cond_3

    #@62
    .line 4000
    iput-object v10, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    #@64
    .line 4001
    iput-object v10, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    #@66
    .line 4002
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@68
    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@6a
    .line 4008
    :goto_3
    return v9

    #@6b
    .line 3978
    :cond_1
    const/16 v0, 0x7544

    #@6d
    goto :goto_0

    #@6e
    :cond_2
    move v5, v9

    #@6f
    .line 3990
    goto :goto_1

    #@70
    .line 4004
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@72
    const/16 v1, 0x65

    #@74
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    #@77
    .line 4005
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@79
    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@7b
    goto :goto_3

    #@7c
    .line 3995
    :catch_0
    move-exception v8

    #@7d
    .local v8, "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method private removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 3195
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@3
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeChildActivityContainers(Lcom/android/server/am/ActivityRecord;)V

    #@6
    .line 3196
    const/4 v1, 0x0

    #@7
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    #@a
    .line 3197
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    #@d
    .line 3201
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    #@10
    .line 3202
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    #@13
    .line 3205
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@15
    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@17
    .line 3207
    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@19
    .line 3208
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@1b
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@1d
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->removeAppToken(Landroid/os/IBinder;)V

    #@20
    .line 3212
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@22
    .line 3213
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_1

    #@24
    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskRecord;->removeActivity(Lcom/android/server/am/ActivityRecord;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_1

    #@2a
    .line 3216
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@2c
    invoke-virtual {v1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    #@2f
    move-result v1

    #@30
    if-eqz v1, :cond_0

    #@32
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    #@35
    move-result-object v1

    #@36
    if-ne v0, v1, :cond_0

    #@38
    .line 3217
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    #@3b
    move-result v1

    #@3c
    .line 3216
    if-eqz v1, :cond_0

    #@3e
    .line 3218
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@40
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    #@43
    move-result v2

    #@44
    invoke-virtual {v1, v2, p2}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;)Z

    #@47
    .line 3220
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    #@4a
    .line 3222
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    #@4d
    .line 3223
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->removeUriPermissionsLocked()V

    #@50
    .line 3194
    return-void
.end method

.method private removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 3
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 3508
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v0

    #@4
    .line 3511
    .local v0, "i":I
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    #@6
    .line 3512
    add-int/lit8 v0, v0, -0x1

    #@8
    .line 3513
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@e
    .line 3515
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@10
    if-ne v2, p2, :cond_0

    #@12
    .line 3517
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@15
    .line 3518
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    #@18
    goto :goto_0

    #@19
    .line 3507
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-void
.end method

.method private removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 3187
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    #@5
    .line 3188
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@7
    const/16 v1, 0x65

    #@9
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    #@c
    .line 3189
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@e
    const/16 v1, 0x68

    #@10
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    #@13
    .line 3190
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@15
    const/16 v1, 0x66

    #@17
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    #@1a
    .line 3191
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    #@1d
    .line 3186
    return-void
.end method

.method private resetAffinityTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;ZZI)I
    .locals 23
    .param p1, "affinityTask"    # Lcom/android/server/am/TaskRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;
    .param p3, "topTaskIsHigher"    # Z
    .param p4, "forceReset"    # Z
    .param p5, "taskInsertionPoint"    # I

    #@0
    .prologue
    .line 2432
    const/4 v14, -0x1

    #@1
    .line 2433
    .local v14, "replyChainEnd":I
    move-object/from16 v0, p2

    #@3
    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@5
    move/from16 v22, v0

    #@7
    .line 2434
    .local v22, "taskId":I
    move-object/from16 v0, p2

    #@9
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@b
    move-object/from16 v21, v0

    #@d
    .line 2436
    .local v21, "taskAffinity":Ljava/lang/String;
    move-object/from16 v0, p1

    #@f
    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@11
    .line 2437
    .local v8, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v13

    #@15
    .line 2438
    .local v13, "numActivities":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    #@18
    move-result v15

    #@19
    .line 2441
    .local v15, "rootActivityNdx":I
    add-int/lit8 v12, v13, -0x1

    #@1b
    .local v12, "i":I
    :goto_0
    if-le v12, v15, :cond_0

    #@1d
    .line 2442
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v18

    #@21
    check-cast v18, Lcom/android/server/am/ActivityRecord;

    #@23
    .line 2443
    .local v18, "target":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    #@25
    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    #@27
    if-eqz v2, :cond_1

    #@29
    .line 2533
    .end local v18    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_0
    return p5

    #@2a
    .line 2446
    .restart local v18    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_1
    move-object/from16 v0, v18

    #@2c
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@2e
    iget v11, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@30
    .line 2447
    .local v11, "flags":I
    and-int/lit8 v2, v11, 0x2

    #@32
    if-eqz v2, :cond_3

    #@34
    const/4 v10, 0x1

    #@35
    .line 2448
    .local v10, "finishOnTaskLaunch":Z
    :goto_1
    and-int/lit8 v2, v11, 0x40

    #@37
    if-eqz v2, :cond_4

    #@39
    const/4 v9, 0x1

    #@3a
    .line 2450
    .local v9, "allowTaskReparenting":Z
    :goto_2
    move-object/from16 v0, v18

    #@3c
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@3e
    if-eqz v2, :cond_5

    #@40
    .line 2457
    if-gez v14, :cond_2

    #@42
    .line 2458
    move v14, v12

    #@43
    .line 2441
    :cond_2
    :goto_3
    add-int/lit8 v12, v12, -0x1

    #@45
    goto :goto_0

    #@46
    .line 2447
    .end local v9    # "allowTaskReparenting":Z
    .end local v10    # "finishOnTaskLaunch":Z
    :cond_3
    const/4 v10, 0x0

    #@47
    .restart local v10    # "finishOnTaskLaunch":Z
    goto :goto_1

    #@48
    .line 2448
    :cond_4
    const/4 v9, 0x0

    #@49
    .restart local v9    # "allowTaskReparenting":Z
    goto :goto_2

    #@4a
    .line 2460
    :cond_5
    if-eqz p3, :cond_2

    #@4c
    if-eqz v9, :cond_2

    #@4e
    .line 2462
    if-eqz v21, :cond_2

    #@50
    .line 2463
    move-object/from16 v0, v18

    #@52
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    #@54
    move-object/from16 v0, v21

    #@56
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@59
    move-result v2

    #@5a
    .line 2460
    if-eqz v2, :cond_2

    #@5c
    .line 2474
    if-nez p4, :cond_6

    #@5e
    if-eqz v10, :cond_9

    #@60
    .line 2475
    :cond_6
    if-ltz v14, :cond_7

    #@62
    move/from16 v17, v14

    #@64
    .line 2478
    .local v17, "start":I
    :goto_4
    move/from16 v16, v17

    #@66
    .local v16, "srcPos":I
    :goto_5
    move/from16 v0, v16

    #@68
    if-lt v0, v12, :cond_d

    #@6a
    .line 2479
    move/from16 v0, v16

    #@6c
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6f
    move-result-object v3

    #@70
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    #@72
    .line 2480
    .local v3, "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@74
    if-eqz v2, :cond_8

    #@76
    .line 2478
    :goto_6
    add-int/lit8 v16, v16, -0x1

    #@78
    goto :goto_5

    #@79
    .line 2475
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "srcPos":I
    .end local v17    # "start":I
    :cond_7
    move/from16 v17, v12

    #@7b
    .restart local v17    # "start":I
    goto :goto_4

    #@7c
    .line 2484
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .restart local v16    # "srcPos":I
    :cond_8
    const-string/jumbo v6, "move-affinity"

    #@7f
    const/4 v4, 0x0

    #@80
    const/4 v5, 0x0

    #@81
    const/4 v7, 0x0

    #@82
    move-object/from16 v2, p0

    #@84
    .line 2483
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@87
    goto :goto_6

    #@88
    .line 2487
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "srcPos":I
    .end local v17    # "start":I
    :cond_9
    if-gez p5, :cond_a

    #@8a
    .line 2488
    move-object/from16 v0, p2

    #@8c
    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@8e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@91
    move-result p5

    #@92
    .line 2492
    :cond_a
    if-ltz v14, :cond_b

    #@94
    move/from16 v17, v14

    #@96
    .line 2496
    .restart local v17    # "start":I
    :goto_7
    move/from16 v16, v17

    #@98
    .restart local v16    # "srcPos":I
    :goto_8
    move/from16 v0, v16

    #@9a
    if-lt v0, v12, :cond_c

    #@9c
    .line 2497
    move/from16 v0, v16

    #@9e
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a1
    move-result-object v3

    #@a2
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    #@a4
    .line 2498
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    #@a5
    move-object/from16 v0, p2

    #@a7
    invoke-virtual {v3, v0, v2}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    #@aa
    .line 2499
    move-object/from16 v0, p2

    #@ac
    move/from16 v1, p5

    #@ae
    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    #@b1
    .line 2506
    move-object/from16 v0, p0

    #@b3
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@b5
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@b7
    move/from16 v0, v22

    #@b9
    invoke-virtual {v2, v4, v0}, Lcom/android/server/wm/WindowManagerService;->setAppTask(Landroid/os/IBinder;I)V

    #@bc
    .line 2496
    add-int/lit8 v16, v16, -0x1

    #@be
    goto :goto_8

    #@bf
    .line 2492
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "srcPos":I
    .end local v17    # "start":I
    :cond_b
    move/from16 v17, v12

    #@c1
    .restart local v17    # "start":I
    goto :goto_7

    #@c2
    .line 2508
    .restart local v16    # "srcPos":I
    :cond_c
    move-object/from16 v0, p0

    #@c4
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@c6
    move/from16 v0, v22

    #@c8
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    #@cb
    .line 2517
    move-object/from16 v0, v18

    #@cd
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@cf
    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@d1
    const/4 v4, 0x1

    #@d2
    if-ne v2, v4, :cond_d

    #@d4
    .line 2518
    move-object/from16 v0, p2

    #@d6
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@d8
    move-object/from16 v20, v0

    #@da
    .line 2519
    .local v20, "taskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, v20

    #@dc
    move-object/from16 v1, v18

    #@de
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@e1
    move-result v19

    #@e2
    .line 2520
    .local v19, "targetNdx":I
    if-lez v19, :cond_d

    #@e4
    .line 2521
    add-int/lit8 v2, v19, -0x1

    #@e6
    move-object/from16 v0, v20

    #@e8
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@eb
    move-result-object v3

    #@ec
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    #@ee
    .line 2522
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@f0
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@f3
    move-result-object v2

    #@f4
    move-object/from16 v0, v18

    #@f6
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@f8
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@fb
    move-result-object v4

    #@fc
    invoke-virtual {v2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@ff
    move-result v2

    #@100
    if-eqz v2, :cond_d

    #@102
    .line 2523
    const-string/jumbo v6, "replace"

    #@105
    const/4 v4, 0x0

    #@106
    const/4 v5, 0x0

    #@107
    .line 2524
    const/4 v7, 0x0

    #@108
    move-object/from16 v2, p0

    #@10a
    .line 2523
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@10d
    .line 2530
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v19    # "targetNdx":I
    .end local v20    # "taskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_d
    const/4 v14, -0x1

    #@10e
    goto/16 :goto_3
.end method

.method private resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .locals 40
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 1564
    move-object/from16 v0, p0

    #@2
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4
    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    #@6
    if-nez v3, :cond_0

    #@8
    move-object/from16 v0, p0

    #@a
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@c
    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    #@e
    if-eqz v3, :cond_2

    #@10
    .line 1569
    :cond_0
    move-object/from16 v0, p0

    #@12
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@14
    iget-object v0, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    #@16
    move-object/from16 v31, v0

    #@18
    .line 1570
    .local v31, "parent":Lcom/android/server/am/ActivityRecord;
    if-eqz v31, :cond_3

    #@1a
    move-object/from16 v0, v31

    #@1c
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@1e
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@20
    if-eq v3, v4, :cond_3

    #@22
    .line 1574
    :cond_1
    const/4 v3, 0x0

    #@23
    return v3

    #@24
    .line 1566
    .end local v31    # "parent":Lcom/android/server/am/ActivityRecord;
    :cond_2
    const/4 v3, 0x0

    #@25
    return v3

    #@26
    .line 1571
    .restart local v31    # "parent":Lcom/android/server/am/ActivityRecord;
    :cond_3
    move-object/from16 v0, p0

    #@28
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@2a
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isAttachedLocked()Z

    #@2d
    move-result v3

    #@2e
    if-eqz v3, :cond_1

    #@30
    .line 1577
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->cancelInitializingActivities()V

    #@33
    .line 1580
    const/4 v3, 0x0

    #@34
    move-object/from16 v0, p0

    #@36
    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@39
    move-result-object v26

    #@3a
    .line 1584
    .local v26, "next":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    #@3c
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@3e
    iget-boolean v0, v3, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    #@40
    move/from16 v39, v0

    #@42
    .line 1585
    .local v39, "userLeaving":Z
    move-object/from16 v0, p0

    #@44
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@46
    const/4 v4, 0x0

    #@47
    iput-boolean v4, v3, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    #@49
    .line 1587
    if-eqz p1, :cond_4

    #@4b
    move-object/from16 v0, p1

    #@4d
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@4f
    move-object/from16 v33, v0

    #@51
    .line 1588
    :goto_0
    if-nez v26, :cond_8

    #@53
    .line 1590
    const-string/jumbo v34, "noMoreActivities"

    #@56
    .line 1591
    .local v34, "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    #@58
    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    #@5a
    if-nez v3, :cond_5

    #@5c
    .line 1594
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getNextVisibleStackLocked()Lcom/android/server/am/ActivityStack;

    #@5f
    move-result-object v37

    #@60
    .line 1595
    .local v37, "stack":Lcom/android/server/am/ActivityStack;
    const-string/jumbo v3, "noMoreActivities"

    #@63
    move-object/from16 v0, p0

    #@65
    move-object/from16 v1, v37

    #@67
    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextVisibleStackLocked(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)Z

    #@6a
    move-result v3

    #@6b
    if-eqz v3, :cond_5

    #@6d
    .line 1596
    move-object/from16 v0, p0

    #@6f
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@71
    const/4 v4, 0x0

    #@72
    move-object/from16 v0, v37

    #@74
    move-object/from16 v1, p1

    #@76
    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    #@79
    move-result v3

    #@7a
    return v3

    #@7b
    .line 1587
    .end local v34    # "reason":Ljava/lang/String;
    .end local v37    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_4
    const/16 v33, 0x0

    #@7d
    .local v33, "prevTask":Lcom/android/server/am/TaskRecord;
    goto :goto_0

    #@7e
    .line 1600
    .end local v33    # "prevTask":Lcom/android/server/am/TaskRecord;
    .restart local v34    # "reason":Ljava/lang/String;
    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    #@81
    .line 1605
    if-eqz v33, :cond_6

    #@83
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    #@86
    move-result v3

    #@87
    if-eqz v3, :cond_6

    #@89
    .line 1606
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    #@8c
    move-result v36

    #@8d
    .line 1607
    .local v36, "returnTaskType":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    #@90
    move-result v3

    #@91
    if-eqz v3, :cond_7

    #@93
    .line 1608
    move-object/from16 v0, p0

    #@95
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@97
    const-string/jumbo v4, "noMoreActivities"

    #@9a
    move/from16 v0, v36

    #@9c
    move-object/from16 v1, p1

    #@9e
    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    #@a1
    move-result v3

    #@a2
    .line 1607
    :goto_2
    return v3

    #@a3
    .line 1606
    .end local v36    # "returnTaskType":I
    :cond_6
    const/16 v36, 0x1

    #@a5
    .restart local v36    # "returnTaskType":I
    goto :goto_1

    #@a6
    .line 1607
    :cond_7
    const/4 v3, 0x0

    #@a7
    goto :goto_2

    #@a8
    .line 1611
    .end local v34    # "reason":Ljava/lang/String;
    .end local v36    # "returnTaskType":I
    :cond_8
    const/4 v3, 0x0

    #@a9
    move-object/from16 v0, v26

    #@ab
    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    #@ad
    .line 1614
    move-object/from16 v0, p0

    #@af
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@b1
    move-object/from16 v0, v26

    #@b3
    if-ne v3, v0, :cond_9

    #@b5
    move-object/from16 v0, v26

    #@b7
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@b9
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@bb
    if-ne v3, v4, :cond_9

    #@bd
    .line 1615
    move-object/from16 v0, p0

    #@bf
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@c1
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete()Z

    #@c4
    move-result v3

    #@c5
    .line 1614
    if-eqz v3, :cond_9

    #@c7
    .line 1618
    move-object/from16 v0, p0

    #@c9
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@cb
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    #@ce
    .line 1619
    move-object/from16 v0, p0

    #@d0
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    #@d2
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@d5
    .line 1620
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    #@d8
    .line 1624
    const/4 v3, 0x0

    #@d9
    return v3

    #@da
    .line 1627
    :cond_9
    move-object/from16 v0, v26

    #@dc
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@de
    move-object/from16 v28, v0

    #@e0
    .line 1628
    .local v28, "nextTask":Lcom/android/server/am/TaskRecord;
    if-eqz v33, :cond_a

    #@e2
    move-object/from16 v0, v33

    #@e4
    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@e6
    move-object/from16 v0, p0

    #@e8
    if-ne v3, v0, :cond_a

    #@ea
    .line 1629
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    #@ed
    move-result v3

    #@ee
    .line 1628
    if-eqz v3, :cond_a

    #@f0
    .line 1629
    move-object/from16 v0, p1

    #@f2
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@f4
    .line 1628
    if-eqz v3, :cond_a

    #@f6
    .line 1629
    move-object/from16 v0, p1

    #@f8
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    #@fa
    .line 1628
    if-eqz v3, :cond_a

    #@fc
    .line 1631
    move-object/from16 v0, v33

    #@fe
    move-object/from16 v1, v28

    #@100
    if-ne v0, v1, :cond_b

    #@102
    .line 1632
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    #@105
    .line 1652
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    #@107
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@109
    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    #@10c
    move-result v3

    #@10d
    if-eqz v3, :cond_10

    #@10f
    .line 1653
    move-object/from16 v0, p0

    #@111
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    #@113
    move-object/from16 v0, v26

    #@115
    if-ne v3, v0, :cond_10

    #@117
    .line 1654
    move-object/from16 v0, p0

    #@119
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@11b
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete()Z

    #@11e
    move-result v3

    #@11f
    .line 1652
    if-eqz v3, :cond_10

    #@121
    .line 1657
    move-object/from16 v0, p0

    #@123
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@125
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    #@128
    .line 1658
    move-object/from16 v0, p0

    #@12a
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    #@12c
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@12f
    .line 1659
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    #@132
    .line 1663
    const/4 v3, 0x0

    #@133
    return v3

    #@134
    .line 1633
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    #@137
    move-result-object v3

    #@138
    move-object/from16 v0, v33

    #@13a
    if-eq v0, v3, :cond_c

    #@13c
    .line 1636
    move-object/from16 v0, p0

    #@13e
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@140
    move-object/from16 v0, v33

    #@142
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@145
    move-result v3

    #@146
    add-int/lit8 v38, v3, 0x1

    #@148
    .line 1637
    .local v38, "taskNdx":I
    move-object/from16 v0, p0

    #@14a
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@14c
    move/from16 v0, v38

    #@14e
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@151
    move-result-object v3

    #@152
    check-cast v3, Lcom/android/server/am/TaskRecord;

    #@154
    const/4 v4, 0x1

    #@155
    invoke-virtual {v3, v4}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    #@158
    goto :goto_3

    #@159
    .line 1638
    .end local v38    # "taskNdx":I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    #@15c
    move-result v3

    #@15d
    if-nez v3, :cond_d

    #@15f
    .line 1639
    const/4 v3, 0x0

    #@160
    return v3

    #@161
    .line 1640
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    #@164
    move-result v3

    #@165
    if-nez v3, :cond_a

    #@167
    .line 1643
    if-eqz v33, :cond_e

    #@169
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    #@16c
    move-result v3

    #@16d
    if-eqz v3, :cond_e

    #@16f
    .line 1644
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    #@172
    move-result v36

    #@173
    .line 1645
    .restart local v36    # "returnTaskType":I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    #@176
    move-result v3

    #@177
    if-eqz v3, :cond_f

    #@179
    .line 1646
    move-object/from16 v0, p0

    #@17b
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@17d
    const-string/jumbo v4, "prevFinished"

    #@180
    move/from16 v0, v36

    #@182
    move-object/from16 v1, p1

    #@184
    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    #@187
    move-result v3

    #@188
    .line 1645
    :goto_5
    return v3

    #@189
    .line 1644
    .end local v36    # "returnTaskType":I
    :cond_e
    const/16 v36, 0x1

    #@18b
    .restart local v36    # "returnTaskType":I
    goto :goto_4

    #@18c
    .line 1645
    :cond_f
    const/4 v3, 0x0

    #@18d
    goto :goto_5

    #@18e
    .line 1669
    .end local v36    # "returnTaskType":I
    :cond_10
    move-object/from16 v0, p0

    #@190
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@192
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStartedUsers:Landroid/util/SparseArray;

    #@194
    move-object/from16 v0, v26

    #@196
    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@198
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@19b
    move-result-object v3

    #@19c
    if-nez v3, :cond_11

    #@19e
    .line 1670
    const-string/jumbo v3, "ActivityManager"

    #@1a1
    new-instance v4, Ljava/lang/StringBuilder;

    #@1a3
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1a6
    const-string/jumbo v5, "Skipping resume of top activity "

    #@1a9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v4

    #@1ad
    move-object/from16 v0, v26

    #@1af
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b2
    move-result-object v4

    #@1b3
    .line 1671
    const-string/jumbo v5, ": user "

    #@1b6
    .line 1670
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b9
    move-result-object v4

    #@1ba
    .line 1671
    move-object/from16 v0, v26

    #@1bc
    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@1be
    .line 1670
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c1
    move-result-object v4

    #@1c2
    .line 1671
    const-string/jumbo v5, " is stopped"

    #@1c5
    .line 1670
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c8
    move-result-object v4

    #@1c9
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1cc
    move-result-object v4

    #@1cd
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1d0
    .line 1673
    const/4 v3, 0x0

    #@1d1
    return v3

    #@1d2
    .line 1678
    :cond_11
    move-object/from16 v0, p0

    #@1d4
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1d6
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    #@1d8
    move-object/from16 v0, v26

    #@1da
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@1dd
    .line 1679
    move-object/from16 v0, p0

    #@1df
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1e1
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    #@1e3
    move-object/from16 v0, v26

    #@1e5
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@1e8
    .line 1680
    const/4 v3, 0x0

    #@1e9
    move-object/from16 v0, v26

    #@1eb
    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    #@1ed
    .line 1681
    move-object/from16 v0, p0

    #@1ef
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1f1
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@1f3
    move-object/from16 v0, v26

    #@1f5
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@1f8
    .line 1687
    move-object/from16 v0, p0

    #@1fa
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1fc
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete()Z

    #@1ff
    move-result v3

    #@200
    if-nez v3, :cond_12

    #@202
    .line 1691
    const/4 v3, 0x0

    #@203
    return v3

    #@204
    .line 1723
    :cond_12
    move-object/from16 v0, p0

    #@206
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@208
    move-object/from16 v0, v26

    #@20a
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@20c
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@20e
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@210
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->setLaunchSource(I)V

    #@213
    .line 1727
    move-object/from16 v0, v26

    #@215
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@217
    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    #@219
    and-int/lit16 v3, v3, 0x4000

    #@21b
    if-eqz v3, :cond_15

    #@21d
    const/16 v19, 0x1

    #@21f
    .line 1728
    .local v19, "dontWaitForPause":Z
    :goto_6
    move-object/from16 v0, p0

    #@221
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@223
    const/4 v4, 0x1

    #@224
    move/from16 v0, v39

    #@226
    move/from16 v1, v19

    #@228
    invoke-virtual {v3, v0, v4, v1}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZZZ)Z

    #@22b
    move-result v32

    #@22c
    .line 1729
    .local v32, "pausing":Z
    move-object/from16 v0, p0

    #@22e
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@230
    if-eqz v3, :cond_13

    #@232
    .line 1732
    const/4 v3, 0x0

    #@233
    const/4 v4, 0x1

    #@234
    move-object/from16 v0, p0

    #@236
    move/from16 v1, v39

    #@238
    move/from16 v2, v19

    #@23a
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    #@23d
    move-result v3

    #@23e
    or-int v32, v32, v3

    #@240
    .line 1734
    :cond_13
    if-eqz v32, :cond_16

    #@242
    .line 1741
    move-object/from16 v0, v26

    #@244
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@246
    if-eqz v3, :cond_14

    #@248
    move-object/from16 v0, v26

    #@24a
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@24c
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@24e
    if-eqz v3, :cond_14

    #@250
    .line 1742
    move-object/from16 v0, p0

    #@252
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@254
    move-object/from16 v0, v26

    #@256
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@258
    const/4 v5, 0x1

    #@259
    const/4 v6, 0x0

    #@25a
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    #@25d
    .line 1745
    :cond_14
    const/4 v3, 0x1

    #@25e
    return v3

    #@25f
    .line 1727
    .end local v19    # "dontWaitForPause":Z
    .end local v32    # "pausing":Z
    :cond_15
    const/16 v19, 0x0

    #@261
    .restart local v19    # "dontWaitForPause":Z
    goto :goto_6

    #@262
    .line 1751
    .restart local v32    # "pausing":Z
    :cond_16
    move-object/from16 v0, p0

    #@264
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@266
    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    #@269
    move-result v3

    #@26a
    if-eqz v3, :cond_17

    #@26c
    move-object/from16 v0, p0

    #@26e
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    #@270
    if-eqz v3, :cond_17

    #@272
    .line 1752
    move-object/from16 v0, p0

    #@274
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    #@276
    iget-boolean v3, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@278
    if-eqz v3, :cond_1e

    #@27a
    .line 1760
    :cond_17
    :goto_7
    if-eqz p1, :cond_19

    #@27c
    move-object/from16 v0, p1

    #@27e
    move-object/from16 v1, v26

    #@280
    if-eq v0, v1, :cond_19

    #@282
    .line 1761
    move-object/from16 v0, p0

    #@284
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@286
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@288
    move-object/from16 v0, p1

    #@28a
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@28d
    move-result v3

    #@28e
    if-nez v3, :cond_18

    #@290
    .line 1762
    if-eqz v26, :cond_18

    #@292
    move-object/from16 v0, v26

    #@294
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    #@296
    if-eqz v3, :cond_1f

    #@298
    .line 1775
    :cond_18
    move-object/from16 v0, p1

    #@29a
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@29c
    if-eqz v3, :cond_19

    #@29e
    .line 1776
    move-object/from16 v0, p0

    #@2a0
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@2a2
    move-object/from16 v0, p1

    #@2a4
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@2a6
    const/4 v5, 0x0

    #@2a7
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    #@2aa
    .line 1794
    :cond_19
    :goto_8
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@2ad
    move-result-object v3

    #@2ae
    .line 1795
    move-object/from16 v0, v26

    #@2b0
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@2b2
    move-object/from16 v0, v26

    #@2b4
    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@2b6
    const/4 v6, 0x0

    #@2b7
    .line 1794
    invoke-interface {v3, v4, v6, v5}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@2ba
    .line 1805
    :goto_9
    const/16 v17, 0x1

    #@2bc
    .line 1806
    .local v17, "anim":Z
    if-eqz p1, :cond_26

    #@2be
    .line 1807
    move-object/from16 v0, p1

    #@2c0
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@2c2
    if-eqz v3, :cond_22

    #@2c4
    .line 1810
    move-object/from16 v0, p0

    #@2c6
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    #@2c8
    move-object/from16 v0, p1

    #@2ca
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@2cd
    move-result v3

    #@2ce
    if-eqz v3, :cond_20

    #@2d0
    .line 1811
    const/16 v17, 0x0

    #@2d2
    .line 1812
    move-object/from16 v0, p0

    #@2d4
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@2d6
    const/4 v4, 0x0

    #@2d7
    const/4 v5, 0x0

    #@2d8
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    #@2db
    .line 1818
    :goto_a
    move-object/from16 v0, p0

    #@2dd
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@2df
    move-object/from16 v0, p1

    #@2e1
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@2e3
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppWillBeHidden(Landroid/os/IBinder;)V

    #@2e6
    .line 1819
    move-object/from16 v0, p0

    #@2e8
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@2ea
    move-object/from16 v0, p1

    #@2ec
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@2ee
    const/4 v5, 0x0

    #@2ef
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    #@2f2
    .line 1848
    :goto_b
    const/16 v35, 0x0

    #@2f4
    .line 1849
    .local v35, "resumeAnimOptions":Landroid/os/Bundle;
    if-eqz v17, :cond_28

    #@2f6
    .line 1850
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/ActivityRecord;->getOptionsForTargetActivityLocked()Landroid/app/ActivityOptions;

    #@2f9
    move-result-object v30

    #@2fa
    .line 1851
    .local v30, "opts":Landroid/app/ActivityOptions;
    if-eqz v30, :cond_1a

    #@2fc
    .line 1852
    invoke-virtual/range {v30 .. v30}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    #@2ff
    move-result-object v35

    #@300
    .line 1854
    .end local v35    # "resumeAnimOptions":Landroid/os/Bundle;
    :cond_1a
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/ActivityRecord;->applyOptionsLocked()V

    #@303
    .line 1859
    .end local v30    # "opts":Landroid/app/ActivityOptions;
    :goto_c
    move-object/from16 v0, p0

    #@305
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@307
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    #@30a
    move-result-object v24

    #@30b
    .line 1860
    .local v24, "lastStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v26

    #@30d
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@30f
    if-eqz v3, :cond_33

    #@311
    move-object/from16 v0, v26

    #@313
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@315
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@317
    if-eqz v3, :cond_33

    #@319
    .line 1864
    move-object/from16 v0, p0

    #@31b
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@31d
    move-object/from16 v0, v26

    #@31f
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@321
    const/4 v5, 0x1

    #@322
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    #@325
    .line 1867
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    #@328
    .line 1870
    if-nez v24, :cond_29

    #@32a
    const/16 v23, 0x0

    #@32c
    .line 1871
    :goto_d
    move-object/from16 v0, v26

    #@32e
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@330
    move-object/from16 v25, v0

    #@332
    .line 1873
    .local v25, "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    move-object/from16 v0, p0

    #@334
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@336
    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    #@339
    .line 1876
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@33b
    move-object/from16 v0, v26

    #@33d
    iput-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@33f
    .line 1877
    move-object/from16 v0, v26

    #@341
    move-object/from16 v1, p0

    #@343
    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@345
    .line 1878
    move-object/from16 v0, v26

    #@347
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@349
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    #@34c
    .line 1879
    move-object/from16 v0, p0

    #@34e
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@350
    move-object/from16 v0, v26

    #@352
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@354
    invoke-virtual {v3, v4}, Lcom/android/server/am/RecentTasks;->addLocked(Lcom/android/server/am/TaskRecord;)V

    #@357
    .line 1880
    move-object/from16 v0, p0

    #@359
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@35b
    move-object/from16 v0, v26

    #@35d
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@35f
    const/4 v5, 0x1

    #@360
    const/4 v6, 0x0

    #@361
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    #@364
    .line 1881
    move-object/from16 v0, p0

    #@366
    move-object/from16 v1, v26

    #@368
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    #@36b
    .line 1882
    move-object/from16 v0, p0

    #@36d
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@36f
    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    #@372
    .line 1886
    const/16 v29, 0x1

    #@374
    .line 1887
    .local v29, "notUpdated":Z
    move-object/from16 v0, p0

    #@376
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@378
    move-object/from16 v0, p0

    #@37a
    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    #@37d
    move-result v3

    #@37e
    if-eqz v3, :cond_1c

    #@380
    .line 1888
    move-object/from16 v0, p0

    #@382
    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@384
    .line 1889
    move-object/from16 v0, p0

    #@386
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@388
    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@38a
    .line 1890
    move-object/from16 v0, v26

    #@38c
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@38e
    move-object/from16 v0, v26

    #@390
    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    #@393
    move-result v3

    #@394
    if-eqz v3, :cond_2a

    #@396
    move-object/from16 v0, v26

    #@398
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@39a
    .line 1888
    :goto_e
    invoke-virtual {v4, v5, v3}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    #@39d
    move-result-object v18

    #@39e
    .line 1891
    .local v18, "config":Landroid/content/res/Configuration;
    if-eqz v18, :cond_1b

    #@3a0
    .line 1892
    const/4 v3, 0x1

    #@3a1
    move-object/from16 v0, v26

    #@3a3
    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    #@3a5
    .line 1894
    :cond_1b
    move-object/from16 v0, p0

    #@3a7
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@3a9
    const/4 v4, 0x0

    #@3aa
    const/4 v5, 0x0

    #@3ab
    move-object/from16 v0, v18

    #@3ad
    move-object/from16 v1, v26

    #@3af
    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    #@3b2
    move-result v3

    #@3b3
    if-eqz v3, :cond_2b

    #@3b5
    const/16 v29, 0x0

    #@3b7
    .line 1897
    .end local v18    # "config":Landroid/content/res/Configuration;
    :cond_1c
    :goto_f
    if-eqz v29, :cond_2d

    #@3b9
    .line 1903
    const/4 v3, 0x0

    #@3ba
    move-object/from16 v0, p0

    #@3bc
    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@3bf
    move-result-object v27

    #@3c0
    .line 1907
    .local v27, "nextNext":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v27

    #@3c2
    move-object/from16 v1, v26

    #@3c4
    if-eq v0, v1, :cond_1d

    #@3c6
    .line 1909
    move-object/from16 v0, p0

    #@3c8
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@3ca
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    #@3cd
    .line 1911
    :cond_1d
    move-object/from16 v0, p0

    #@3cf
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@3d1
    move-object/from16 v0, v26

    #@3d3
    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    #@3d6
    move-result v3

    #@3d7
    if-eqz v3, :cond_2c

    #@3d9
    .line 1912
    move-object/from16 v0, p0

    #@3db
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    #@3dd
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@3e0
    .line 1914
    const/4 v3, 0x1

    #@3e1
    return v3

    #@3e2
    .line 1755
    .end local v17    # "anim":Z
    .end local v24    # "lastStack":Lcom/android/server/am/ActivityStack;
    .end local v25    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v27    # "nextNext":Lcom/android/server/am/ActivityRecord;
    .end local v29    # "notUpdated":Z
    :cond_1e
    move-object/from16 v0, p0

    #@3e4
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    #@3e6
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@3e8
    .line 1756
    const-string/jumbo v7, "resume-no-history"

    #@3eb
    .line 1755
    const/4 v5, 0x0

    #@3ec
    .line 1756
    const/4 v6, 0x0

    #@3ed
    const/4 v8, 0x0

    #@3ee
    move-object/from16 v3, p0

    #@3f0
    .line 1755
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@3f3
    .line 1757
    const/4 v3, 0x0

    #@3f4
    move-object/from16 v0, p0

    #@3f6
    iput-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    #@3f8
    goto/16 :goto_7

    #@3fa
    .line 1763
    :cond_1f
    move-object/from16 v0, p0

    #@3fc
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@3fe
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@400
    move-object/from16 v0, p1

    #@402
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@405
    goto/16 :goto_8

    #@407
    .line 1797
    :catch_0
    move-exception v21

    #@408
    .line 1798
    .local v21, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "ActivityManager"

    #@40b
    new-instance v4, Ljava/lang/StringBuilder;

    #@40d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@410
    const-string/jumbo v5, "Failed trying to unstop package "

    #@413
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@416
    move-result-object v4

    #@417
    .line 1799
    move-object/from16 v0, v26

    #@419
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@41b
    .line 1798
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41e
    move-result-object v4

    #@41f
    .line 1799
    const-string/jumbo v5, ": "

    #@422
    .line 1798
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@425
    move-result-object v4

    #@426
    move-object/from16 v0, v21

    #@428
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@42b
    move-result-object v4

    #@42c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42f
    move-result-object v4

    #@430
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@433
    goto/16 :goto_9

    #@435
    .line 1814
    .end local v21    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v17    # "anim":Z
    :cond_20
    move-object/from16 v0, p0

    #@437
    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@439
    move-object/from16 v0, p1

    #@43b
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@43d
    move-object/from16 v0, v26

    #@43f
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@441
    if-ne v3, v5, :cond_21

    #@443
    .line 1815
    const/4 v3, 0x7

    #@444
    .line 1816
    :goto_10
    const/4 v5, 0x0

    #@445
    .line 1814
    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    #@448
    goto/16 :goto_a

    #@44a
    .line 1816
    :cond_21
    const/16 v3, 0x9

    #@44c
    goto :goto_10

    #@44d
    .line 1823
    :cond_22
    move-object/from16 v0, p0

    #@44f
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    #@451
    move-object/from16 v0, v26

    #@453
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@456
    move-result v3

    #@457
    if-eqz v3, :cond_23

    #@459
    .line 1824
    const/16 v17, 0x0

    #@45b
    .line 1825
    move-object/from16 v0, p0

    #@45d
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@45f
    const/4 v4, 0x0

    #@460
    const/4 v5, 0x0

    #@461
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    #@464
    goto/16 :goto_b

    #@466
    .line 1827
    :cond_23
    move-object/from16 v0, p0

    #@468
    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@46a
    move-object/from16 v0, p1

    #@46c
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@46e
    move-object/from16 v0, v26

    #@470
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@472
    if-ne v3, v5, :cond_24

    #@474
    .line 1828
    const/4 v3, 0x6

    #@475
    .line 1831
    :goto_11
    const/4 v5, 0x0

    #@476
    .line 1827
    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    #@479
    goto/16 :goto_b

    #@47b
    .line 1829
    :cond_24
    move-object/from16 v0, v26

    #@47d
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    #@47f
    if-eqz v3, :cond_25

    #@481
    .line 1830
    const/16 v3, 0x10

    #@483
    goto :goto_11

    #@484
    .line 1831
    :cond_25
    const/16 v3, 0x8

    #@486
    goto :goto_11

    #@487
    .line 1840
    :cond_26
    move-object/from16 v0, p0

    #@489
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    #@48b
    move-object/from16 v0, v26

    #@48d
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@490
    move-result v3

    #@491
    if-eqz v3, :cond_27

    #@493
    .line 1841
    const/16 v17, 0x0

    #@495
    .line 1842
    move-object/from16 v0, p0

    #@497
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@499
    const/4 v4, 0x0

    #@49a
    const/4 v5, 0x0

    #@49b
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    #@49e
    goto/16 :goto_b

    #@4a0
    .line 1844
    :cond_27
    move-object/from16 v0, p0

    #@4a2
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@4a4
    const/4 v4, 0x6

    #@4a5
    const/4 v5, 0x0

    #@4a6
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    #@4a9
    goto/16 :goto_b

    #@4ab
    .line 1856
    .restart local v35    # "resumeAnimOptions":Landroid/os/Bundle;
    :cond_28
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    #@4ae
    goto/16 :goto_c

    #@4b0
    .line 1870
    .end local v35    # "resumeAnimOptions":Landroid/os/Bundle;
    .restart local v24    # "lastStack":Lcom/android/server/am/ActivityStack;
    :cond_29
    move-object/from16 v0, v24

    #@4b2
    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@4b4
    move-object/from16 v23, v0

    #@4b6
    .local v23, "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_d

    #@4b8
    .line 1890
    .end local v23    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v25    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v29    # "notUpdated":Z
    :cond_2a
    const/4 v3, 0x0

    #@4b9
    goto/16 :goto_e

    #@4bb
    .line 1894
    .restart local v18    # "config":Landroid/content/res/Configuration;
    :cond_2b
    const/16 v29, 0x1

    #@4bd
    goto/16 :goto_f

    #@4bf
    .line 1917
    .end local v18    # "config":Landroid/content/res/Configuration;
    .restart local v27    # "nextNext":Lcom/android/server/am/ActivityRecord;
    :cond_2c
    const/4 v3, 0x0

    #@4c0
    return v3

    #@4c1
    .line 1922
    .end local v27    # "nextNext":Lcom/android/server/am/ActivityRecord;
    :cond_2d
    :try_start_1
    move-object/from16 v0, v26

    #@4c3
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    #@4c5
    move-object/from16 v16, v0

    #@4c7
    .line 1923
    .local v16, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    if-eqz v16, :cond_2e

    #@4c9
    .line 1924
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    #@4cc
    move-result v15

    #@4cd
    .line 1925
    .local v15, "N":I
    move-object/from16 v0, v26

    #@4cf
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@4d1
    if-nez v3, :cond_2e

    #@4d3
    if-lez v15, :cond_2e

    #@4d5
    .line 1928
    move-object/from16 v0, v26

    #@4d7
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@4d9
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@4db
    move-object/from16 v0, v26

    #@4dd
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@4df
    move-object/from16 v0, v16

    #@4e1
    invoke-interface {v3, v4, v0}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    #@4e4
    .line 1932
    .end local v15    # "N":I
    :cond_2e
    move-object/from16 v0, v26

    #@4e6
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    #@4e8
    if-eqz v3, :cond_2f

    #@4ea
    .line 1933
    move-object/from16 v0, v26

    #@4ec
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@4ee
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@4f0
    move-object/from16 v0, v26

    #@4f2
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    #@4f4
    move-object/from16 v0, v26

    #@4f6
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@4f8
    invoke-interface {v3, v4, v5}, Landroid/app/IApplicationThread;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    #@4fb
    .line 1936
    :cond_2f
    const/4 v3, 0x4

    #@4fc
    new-array v3, v3, [Ljava/lang/Object;

    #@4fe
    move-object/from16 v0, v26

    #@500
    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@502
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@505
    move-result-object v4

    #@506
    const/4 v5, 0x0

    #@507
    aput-object v4, v3, v5

    #@509
    .line 1937
    invoke-static/range {v26 .. v26}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@50c
    move-result v4

    #@50d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@510
    move-result-object v4

    #@511
    const/4 v5, 0x1

    #@512
    aput-object v4, v3, v5

    #@514
    move-object/from16 v0, v26

    #@516
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@518
    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    #@51a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@51d
    move-result-object v4

    #@51e
    const/4 v5, 0x2

    #@51f
    aput-object v4, v3, v5

    #@521
    move-object/from16 v0, v26

    #@523
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@525
    const/4 v5, 0x3

    #@526
    aput-object v4, v3, v5

    #@528
    .line 1936
    const/16 v4, 0x7537

    #@52a
    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@52d
    .line 1939
    const/4 v3, 0x0

    #@52e
    move-object/from16 v0, v26

    #@530
    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    #@532
    .line 1940
    move-object/from16 v0, p0

    #@534
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@536
    move-object/from16 v0, v26

    #@538
    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    #@53b
    .line 1941
    move-object/from16 v0, v26

    #@53d
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@53f
    const/4 v4, 0x1

    #@540
    iput-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    #@542
    .line 1942
    move-object/from16 v0, v26

    #@544
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@546
    move-object/from16 v0, p0

    #@548
    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@54a
    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mTopProcessState:I

    #@54c
    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    #@54f
    .line 1943
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    #@552
    .line 1944
    move-object/from16 v0, v26

    #@554
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@556
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@558
    move-object/from16 v0, v26

    #@55a
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@55c
    move-object/from16 v0, v26

    #@55e
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@560
    iget v5, v5, Lcom/android/server/am/ProcessRecord;->repProcState:I

    #@562
    .line 1945
    move-object/from16 v0, p0

    #@564
    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@566
    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    #@569
    move-result v6

    #@56a
    .line 1944
    move-object/from16 v0, v35

    #@56c
    invoke-interface {v3, v4, v5, v6, v0}, Landroid/app/IApplicationThread;->scheduleResumeActivity(Landroid/os/IBinder;IZLandroid/os/Bundle;)V

    #@56f
    .line 1947
    move-object/from16 v0, p0

    #@571
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@573
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@576
    .line 1977
    const/4 v3, 0x1

    #@577
    :try_start_2
    move-object/from16 v0, v26

    #@579
    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@57b
    .line 1978
    move-object/from16 v0, p0

    #@57d
    move-object/from16 v1, v26

    #@57f
    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@582
    .line 1988
    const/4 v3, 0x0

    #@583
    move-object/from16 v0, v26

    #@585
    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    #@587
    .line 2011
    .end local v16    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .end local v25    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v29    # "notUpdated":Z
    :goto_12
    const/4 v3, 0x1

    #@588
    return v3

    #@589
    .line 1950
    .restart local v25    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v29    # "notUpdated":Z
    :catch_1
    move-exception v20

    #@58a
    .line 1954
    .local v20, "e":Ljava/lang/Exception;
    move-object/from16 v0, v25

    #@58c
    move-object/from16 v1, v26

    #@58e
    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@590
    .line 1955
    if-eqz v24, :cond_30

    #@592
    .line 1956
    move-object/from16 v0, v23

    #@594
    move-object/from16 v1, v24

    #@596
    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@598
    .line 1958
    :cond_30
    const-string/jumbo v3, "ActivityManager"

    #@59b
    new-instance v4, Ljava/lang/StringBuilder;

    #@59d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5a0
    const-string/jumbo v5, "Restarting because process died: "

    #@5a3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a6
    move-result-object v4

    #@5a7
    move-object/from16 v0, v26

    #@5a9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5ac
    move-result-object v4

    #@5ad
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b0
    move-result-object v4

    #@5b1
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@5b4
    .line 1959
    move-object/from16 v0, v26

    #@5b6
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    #@5b8
    if-nez v3, :cond_32

    #@5ba
    .line 1960
    const/4 v3, 0x1

    #@5bb
    move-object/from16 v0, v26

    #@5bd
    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    #@5bf
    .line 1969
    :cond_31
    :goto_13
    move-object/from16 v0, p0

    #@5c1
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@5c3
    const/4 v4, 0x1

    #@5c4
    const/4 v5, 0x0

    #@5c5
    move-object/from16 v0, v26

    #@5c7
    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    #@5ca
    .line 1971
    const/4 v3, 0x1

    #@5cb
    return v3

    #@5cc
    .line 1961
    :cond_32
    if-eqz v24, :cond_31

    #@5ce
    .line 1962
    move-object/from16 v0, p0

    #@5d0
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@5d2
    move-object/from16 v0, v24

    #@5d4
    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    #@5d7
    move-result v3

    #@5d8
    .line 1961
    if-eqz v3, :cond_31

    #@5da
    .line 1963
    move-object/from16 v0, p0

    #@5dc
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@5de
    .line 1964
    move-object/from16 v0, v26

    #@5e0
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@5e2
    move-object/from16 v0, v26

    #@5e4
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@5e6
    move-object/from16 v0, v26

    #@5e8
    iget v6, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    #@5ea
    .line 1965
    move-object/from16 v0, p0

    #@5ec
    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5ee
    move-object/from16 v0, v26

    #@5f0
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@5f2
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@5f4
    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    #@5f7
    move-result-object v7

    #@5f8
    .line 1966
    move-object/from16 v0, v26

    #@5fa
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@5fc
    move-object/from16 v0, v26

    #@5fe
    iget v9, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    #@600
    move-object/from16 v0, v26

    #@602
    iget v10, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    #@604
    move-object/from16 v0, v26

    #@606
    iget v11, v0, Lcom/android/server/am/ActivityRecord;->logo:I

    #@608
    .line 1967
    move-object/from16 v0, v26

    #@60a
    iget v12, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    #@60c
    const/4 v13, 0x0

    #@60d
    const/4 v14, 0x1

    #@60e
    .line 1963
    invoke-virtual/range {v3 .. v14}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)V

    #@611
    goto :goto_13

    #@612
    .line 1979
    .end local v20    # "e":Ljava/lang/Exception;
    .restart local v16    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :catch_2
    move-exception v20

    #@613
    .line 1982
    .restart local v20    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ActivityManager"

    #@616
    new-instance v4, Ljava/lang/StringBuilder;

    #@618
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@61b
    const-string/jumbo v5, "Exception thrown during resume of "

    #@61e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@621
    move-result-object v4

    #@622
    move-object/from16 v0, v26

    #@624
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@627
    move-result-object v4

    #@628
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62b
    move-result-object v4

    #@62c
    move-object/from16 v0, v20

    #@62e
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@631
    .line 1983
    move-object/from16 v0, v26

    #@633
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@635
    .line 1984
    const-string/jumbo v7, "resume-exception"

    #@638
    .line 1983
    const/4 v5, 0x0

    #@639
    const/4 v6, 0x0

    #@63a
    .line 1984
    const/4 v8, 0x1

    #@63b
    move-object/from16 v3, p0

    #@63d
    .line 1983
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@640
    .line 1986
    const/4 v3, 0x1

    #@641
    return v3

    #@642
    .line 1992
    .end local v16    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v25    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v29    # "notUpdated":Z
    :cond_33
    move-object/from16 v0, v26

    #@644
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    #@646
    if-nez v3, :cond_34

    #@648
    .line 1993
    const/4 v3, 0x1

    #@649
    move-object/from16 v0, v26

    #@64b
    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    #@64d
    .line 2007
    :goto_14
    move-object/from16 v0, p0

    #@64f
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@651
    const/4 v4, 0x1

    #@652
    const/4 v5, 0x1

    #@653
    move-object/from16 v0, v26

    #@655
    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    #@658
    goto/16 :goto_12

    #@65a
    .line 1996
    :cond_34
    move-object/from16 v0, p0

    #@65c
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@65e
    .line 1997
    move-object/from16 v0, v26

    #@660
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@662
    move-object/from16 v0, v26

    #@664
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@666
    move-object/from16 v0, v26

    #@668
    iget v6, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    #@66a
    .line 1998
    move-object/from16 v0, p0

    #@66c
    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@66e
    .line 1999
    move-object/from16 v0, v26

    #@670
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@672
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@674
    .line 1998
    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    #@677
    move-result-object v7

    #@678
    .line 2000
    move-object/from16 v0, v26

    #@67a
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@67c
    .line 2001
    move-object/from16 v0, v26

    #@67e
    iget v9, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    #@680
    move-object/from16 v0, v26

    #@682
    iget v10, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    #@684
    move-object/from16 v0, v26

    #@686
    iget v11, v0, Lcom/android/server/am/ActivityRecord;->logo:I

    #@688
    move-object/from16 v0, v26

    #@68a
    iget v12, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    #@68c
    .line 2002
    const/4 v13, 0x0

    #@68d
    const/4 v14, 0x1

    #@68e
    .line 1996
    invoke-virtual/range {v3 .. v14}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)V

    #@691
    goto :goto_14

    #@692
    .line 1796
    .end local v17    # "anim":Z
    .end local v24    # "lastStack":Lcom/android/server/am/ActivityStack;
    :catch_3
    move-exception v22

    #@693
    .local v22, "e1":Landroid/os/RemoteException;
    goto/16 :goto_9
.end method

.method private setVisible(Lcom/android/server/am/ActivityRecord;Z)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "visible"    # Z

    #@0
    .prologue
    .line 1136
    iput-boolean p2, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@2
    .line 1137
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@4
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@6
    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    #@9
    .line 1138
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->mChildContainers:Ljava/util/ArrayList;

    #@b
    .line 1139
    .local v2, "containers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@e
    move-result v3

    #@f
    add-int/lit8 v1, v3, -0x1

    #@11
    .local v1, "containerNdx":I
    :goto_0
    if-ltz v1, :cond_0

    #@13
    .line 1140
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@19
    .line 1141
    .local v0, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->setVisible(Z)V

    #@1c
    .line 1139
    add-int/lit8 v1, v1, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1135
    .end local v0    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_0
    return-void
.end method

.method private startLaunchTraces(Ljava/lang/String;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const-wide/16 v6, 0x40

    #@2
    const/4 v4, 0x0

    #@3
    .line 680
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    #@5
    const-wide/16 v2, 0x0

    #@7
    cmp-long v0, v0, v2

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 681
    const-string/jumbo v0, "drawing"

    #@e
    invoke-static {v6, v7, v0, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    #@11
    .line 683
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v1, "launching: "

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    invoke-static {v6, v7, v0, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    #@28
    .line 684
    const-string/jumbo v0, "drawing"

    #@2b
    invoke-static {v6, v7, v0, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    #@2e
    .line 679
    return-void
.end method

.method private stopFullyDrawnTraceIfNeeded()V
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 688
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    #@4
    cmp-long v0, v0, v4

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    #@a
    cmp-long v0, v0, v4

    #@c
    if-nez v0, :cond_0

    #@e
    .line 689
    const-string/jumbo v0, "drawing"

    #@11
    const-wide/16 v2, 0x40

    #@13
    const/4 v1, 0x0

    #@14
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    #@17
    .line 690
    iput-wide v4, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    #@19
    .line 687
    :cond_0
    return-void
.end method


# virtual methods
.method final activityDestroyedLocked(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3437
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 3439
    .local v0, "origId":J
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    #@7
    move-result-object v2

    #@8
    .line 3440
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    #@a
    .line 3441
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@c
    const/16 v4, 0x66

    #@e
    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    #@11
    .line 3445
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@14
    move-result-object v3

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 3446
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@19
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@1b
    if-ne v3, v4, :cond_1

    #@1d
    .line 3447
    const/4 v3, 0x1

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    #@22
    .line 3448
    invoke-direct {p0, v2, p2}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    #@25
    .line 3451
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@27
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    .line 3453
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2d
    .line 3436
    return-void

    #@2e
    .line 3452
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v3

    #@2f
    .line 3453
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@32
    .line 3452
    throw v3
.end method

.method final activityPausedLocked(Landroid/os/IBinder;Z)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timeout"    # Z

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 932
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    #@6
    move-result-object v0

    #@7
    .line 933
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    #@9
    .line 934
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@b
    const/16 v2, 0x65

    #@d
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    #@10
    .line 935
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@12
    if-ne v1, v0, :cond_1

    #@14
    .line 938
    invoke-direct {p0, v3}, Lcom/android/server/am/ActivityStack;->completePauseLocked(Z)V

    #@17
    .line 928
    :cond_0
    :goto_0
    return-void

    #@18
    .line 940
    :cond_1
    const/4 v1, 0x4

    #@19
    new-array v2, v1, [Ljava/lang/Object;

    #@1b
    .line 941
    iget v1, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@1d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v1

    #@21
    aput-object v1, v2, v4

    #@23
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@26
    move-result v1

    #@27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2a
    move-result-object v1

    #@2b
    aput-object v1, v2, v3

    #@2d
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@2f
    aput-object v1, v2, v5

    #@31
    .line 942
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@33
    if-eqz v1, :cond_2

    #@35
    .line 943
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@37
    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@39
    .line 942
    :goto_1
    const/4 v3, 0x3

    #@3a
    aput-object v1, v2, v3

    #@3c
    .line 940
    const/16 v1, 0x753c

    #@3e
    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@41
    .line 944
    iget-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@43
    if-eqz v1, :cond_0

    #@45
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@47
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@49
    if-ne v1, v2, :cond_0

    #@4b
    .line 947
    invoke-virtual {p0, v0, v5, v4}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    #@4e
    goto :goto_0

    #@4f
    .line 943
    :cond_2
    const-string/jumbo v1, "(none)"

    #@52
    goto :goto_1
.end method

.method final activityStoppedLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "icicle"    # Landroid/os/Bundle;
    .param p3, "persistentState"    # Landroid/os/PersistableBundle;
    .param p4, "description"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/16 v5, 0x68

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v3, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 955
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@7
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@9
    if-eq v0, v1, :cond_0

    #@b
    .line 956
    const-string/jumbo v0, "ActivityManager"

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "Activity reported stop, but no longer stopping: "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 957
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@27
    invoke-virtual {v0, v5, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    #@2a
    .line 958
    return-void

    #@2b
    .line 960
    :cond_0
    if-eqz p3, :cond_1

    #@2d
    .line 961
    iput-object p3, p1, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    #@2f
    .line 962
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@31
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@33
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    #@36
    .line 965
    :cond_1
    if-eqz p2, :cond_2

    #@38
    .line 968
    iput-object p2, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    #@3a
    .line 969
    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->haveState:Z

    #@3c
    .line 970
    iput v2, p1, Lcom/android/server/am/ActivityRecord;->launchCount:I

    #@3e
    .line 971
    invoke-virtual {p1, v4, p4}, Lcom/android/server/am/ActivityRecord;->updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    #@41
    .line 973
    :cond_2
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    #@43
    if-nez v0, :cond_4

    #@45
    .line 975
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@47
    invoke-virtual {v0, v5, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    #@4a
    .line 976
    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    #@4c
    .line 977
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@4e
    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@50
    .line 978
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@52
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@54
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    #@56
    if-ne v0, p1, :cond_3

    #@58
    .line 979
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@5a
    invoke-virtual {v0, p1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->requestVisibleBehindLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    #@5d
    .line 981
    :cond_3
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@5f
    if-eqz v0, :cond_5

    #@61
    .line 982
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    #@64
    .line 954
    :cond_4
    :goto_0
    return-void

    #@65
    .line 984
    :cond_5
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    #@67
    if-eqz v0, :cond_6

    #@69
    .line 985
    const-string/jumbo v0, "stop-config"

    #@6c
    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    #@6f
    .line 986
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@71
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    #@74
    goto :goto_0

    #@75
    .line 988
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@77
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->updatePreviousProcessLocked(Lcom/android/server/am/ActivityRecord;)V

    #@7a
    goto :goto_0
.end method

.method addTask(Lcom/android/server/am/TaskRecord;ZZ)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toTop"    # Z
    .param p3, "moving"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 4363
    iput-object p0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@4
    .line 4364
    if-eqz p2, :cond_1

    #@6
    .line 4365
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    #@9
    .line 4370
    :goto_0
    if-nez p3, :cond_0

    #@b
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@d
    if-eqz v1, :cond_0

    #@f
    .line 4372
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@11
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@13
    iget v3, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    #@15
    invoke-interface {v1, v2, v3}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 4362
    :cond_0
    :goto_1
    return-void

    #@19
    .line 4367
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@1e
    .line 4368
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    #@21
    goto :goto_0

    #@22
    .line 4373
    :catch_0
    move-exception v0

    #@23
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method awakeFromSleepingLocked()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 719
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v3

    #@7
    add-int/lit8 v2, v3, -0x1

    #@9
    .local v2, "taskNdx":I
    :goto_0
    if-ltz v2, :cond_1

    #@b
    .line 720
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Lcom/android/server/am/TaskRecord;

    #@13
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@15
    .line 721
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v3

    #@19
    add-int/lit8 v1, v3, -0x1

    #@1b
    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_0

    #@1d
    .line 722
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    #@23
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    #@26
    .line 721
    add-int/lit8 v1, v1, -0x1

    #@28
    goto :goto_1

    #@29
    .line 719
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@2b
    goto :goto_0

    #@2c
    .line 725
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@2e
    if-eqz v3, :cond_2

    #@30
    .line 726
    const-string/jumbo v3, "ActivityManager"

    #@33
    const-string/jumbo v4, "awakeFromSleepingLocked: previously pausing activity didn\'t pause"

    #@36
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 727
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@3b
    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@3d
    const/4 v4, 0x1

    #@3e
    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/ActivityStack;->activityPausedLocked(Landroid/os/IBinder;Z)V

    #@41
    .line 717
    :cond_2
    return-void
.end method

.method final backgroundResourcesReleased()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3482
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@3
    const/16 v2, 0x6b

    #@5
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@8
    .line 3483
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    #@b
    move-result-object v0

    #@c
    .line 3484
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    #@e
    .line 3485
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@10
    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@15
    .line 3486
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    #@18
    .line 3487
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1a
    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    #@1d
    .line 3489
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1f
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    #@22
    .line 3481
    return-void
.end method

.method cancelInitializingActivities()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1504
    const/4 v6, 0x0

    #@2
    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@5
    move-result-object v5

    #@6
    .line 1505
    .local v5, "topActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v0, 0x1

    #@7
    .line 1506
    .local v0, "aboveTop":Z
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v6

    #@d
    add-int/lit8 v4, v6, -0x1

    #@f
    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_3

    #@11
    .line 1507
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v6

    #@17
    check-cast v6, Lcom/android/server/am/TaskRecord;

    #@19
    iget-object v1, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@1b
    .line 1508
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@1e
    move-result v6

    #@1f
    add-int/lit8 v2, v6, -0x1

    #@21
    .local v2, "activityNdx":I
    :goto_1
    if-ltz v2, :cond_2

    #@23
    .line 1509
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v3

    #@27
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    #@29
    .line 1510
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    #@2b
    .line 1511
    if-ne v3, v5, :cond_0

    #@2d
    .line 1512
    const/4 v0, 0x0

    #@2e
    .line 1508
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, -0x1

    #@30
    goto :goto_1

    #@31
    .line 1517
    :cond_1
    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@33
    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@35
    if-ne v6, v7, :cond_0

    #@37
    iget-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->mStartingWindowShown:Z

    #@39
    if-eqz v6, :cond_0

    #@3b
    .line 1520
    iput-boolean v8, v3, Lcom/android/server/am/ActivityRecord;->mStartingWindowShown:Z

    #@3d
    .line 1521
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@3f
    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@41
    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerService;->removeAppStartingWindow(Landroid/os/IBinder;)V

    #@44
    goto :goto_2

    #@45
    .line 1506
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    #@47
    goto :goto_0

    #@48
    .line 1503
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    :cond_3
    return-void
.end method

.method checkReadyForSleepLocked()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 735
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 740
    invoke-virtual {p0, v2, v3, v2, v2}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    #@9
    .line 741
    return v3

    #@a
    .line 743
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 746
    return v3

    #@f
    .line 749
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->hasVisibleBehindActivity()Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_2

    #@15
    .line 751
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@17
    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@19
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    #@1b
    .line 752
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1d
    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@22
    .line 755
    return v3

    #@23
    .line 758
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    return v2
.end method

.method final cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "cleanServices"    # Z
    .param p3, "setState"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 3140
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@4
    if-ne v3, p1, :cond_0

    #@6
    .line 3141
    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@8
    .line 3143
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@a
    if-ne v3, p1, :cond_1

    #@c
    .line 3144
    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@e
    .line 3146
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@10
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityManagerService;->clearFocusedActivity(Lcom/android/server/am/ActivityRecord;)V

    #@13
    .line 3148
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    #@15
    .line 3149
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    #@17
    .line 3151
    if-eqz p3, :cond_2

    #@19
    .line 3153
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@1b
    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@1d
    .line 3155
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@1f
    .line 3161
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@21
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@26
    .line 3162
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@28
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@2d
    .line 3165
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@2f
    if-eqz v3, :cond_5

    #@31
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    #@33
    if-eqz v3, :cond_5

    #@35
    .line 3166
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    #@37
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3a
    move-result-object v1

    #@3b
    .local v1, "apr$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@3e
    move-result v3

    #@3f
    if-eqz v3, :cond_4

    #@41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@44
    move-result-object v0

    #@45
    check-cast v0, Ljava/lang/ref/WeakReference;

    #@47
    .line 3167
    .local v0, "apr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@4a
    move-result-object v2

    #@4b
    check-cast v2, Lcom/android/server/am/PendingIntentRecord;

    #@4d
    .line 3168
    .local v2, "rec":Lcom/android/server/am/PendingIntentRecord;
    if-eqz v2, :cond_3

    #@4f
    .line 3169
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@51
    invoke-virtual {v3, v2, v5}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V

    #@54
    goto :goto_0

    #@55
    .line 3172
    .end local v0    # "apr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v2    # "rec":Lcom/android/server/am/PendingIntentRecord;
    :cond_4
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    #@57
    .line 3175
    .end local v1    # "apr$iterator":Ljava/util/Iterator;
    :cond_5
    if-eqz p2, :cond_6

    #@59
    .line 3176
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    #@5c
    .line 3180
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    #@5f
    .line 3181
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    #@62
    move-result-object v3

    #@63
    if-ne v3, p1, :cond_7

    #@65
    .line 3182
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@67
    invoke-virtual {v3, p1, v5}, Lcom/android/server/am/ActivityStackSupervisor;->requestVisibleBehindLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    #@6a
    .line 3139
    :cond_7
    return-void
.end method

.method final cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3231
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    #@3
    if-eqz v2, :cond_1

    #@5
    .line 3232
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    #@7
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .line 3233
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 3234
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    #@17
    .line 3235
    .local v0, "c":Lcom/android/server/am/ConnectionRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@19
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    #@1b
    invoke-virtual {v2, v0, v3, p1}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    #@1e
    goto :goto_0

    #@1f
    .line 3237
    .end local v0    # "c":Lcom/android/server/am/ConnectionRecord;
    :cond_0
    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    #@21
    .line 3229
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_1
    return-void
.end method

.method clearLaunchTime(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 709
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@4
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 710
    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    #@e
    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    #@10
    .line 707
    :goto_0
    return-void

    #@11
    .line 712
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@13
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    #@16
    .line 713
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@18
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    #@1b
    goto :goto_0
.end method

.method clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V
    .locals 6
    .param p1, "except"    # Lcom/android/server/am/AppTimeTracker;

    #@0
    .prologue
    .line 1455
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v5

    #@6
    add-int/lit8 v4, v5, -0x1

    #@8
    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_2

    #@a
    .line 1456
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lcom/android/server/am/TaskRecord;

    #@12
    .line 1457
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@14
    .line 1458
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v5

    #@18
    add-int/lit8 v1, v5, -0x1

    #@1a
    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_1

    #@1c
    .line 1459
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Lcom/android/server/am/ActivityRecord;

    #@22
    .line 1460
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    #@24
    if-eq v5, p1, :cond_0

    #@26
    .line 1461
    const/4 v5, 0x0

    #@27
    iput-object v5, v2, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    #@29
    .line 1458
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@2b
    goto :goto_1

    #@2c
    .line 1455
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    #@2e
    goto :goto_0

    #@2f
    .line 1454
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    return-void
.end method

.method closeSystemDialogsLocked()V
    .locals 9

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4034
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v0

    #@7
    add-int/lit8 v8, v0, -0x1

    #@9
    .local v8, "taskNdx":I
    :goto_0
    if-ltz v8, :cond_2

    #@b
    .line 4035
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/am/TaskRecord;

    #@13
    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@15
    .line 4036
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v0

    #@19
    add-int/lit8 v7, v0, -0x1

    #@1b
    .local v7, "activityNdx":I
    :goto_1
    if-ltz v7, :cond_1

    #@1d
    .line 4037
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@23
    .line 4038
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@25
    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    #@27
    and-int/lit16 v0, v0, 0x100

    #@29
    if-eqz v0, :cond_0

    #@2b
    .line 4039
    const-string/jumbo v4, "close-sys"

    #@2e
    const/4 v3, 0x0

    #@2f
    const/4 v5, 0x1

    #@30
    move-object v0, p0

    #@31
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@34
    .line 4036
    :cond_0
    add-int/lit8 v7, v7, -0x1

    #@36
    goto :goto_1

    #@37
    .line 4034
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v8, v8, -0x1

    #@39
    goto :goto_0

    #@3a
    .line 4033
    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v7    # "activityNdx":I
    :cond_2
    return-void
.end method

.method convertActivityToTranslucent(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 1449
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    #@2
    .line 1450
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@7
    .line 1451
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@9
    const/16 v1, 0x6a

    #@b
    const-wide/16 v2, 0x7d0

    #@d
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@10
    .line 1448
    return-void
.end method

.method createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;
    .locals 7
    .param p1, "taskId"    # I
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p5, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p6, "toTop"    # Z

    #@0
    .prologue
    .line 4352
    new-instance v0, Lcom/android/server/am/TaskRecord;

    #@2
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4
    move v2, p1

    #@5
    move-object v3, p2

    #@6
    move-object v4, p3

    #@7
    move-object v5, p4

    #@8
    move-object v6, p5

    #@9
    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/TaskRecord;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    #@c
    .line 4354
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    const/4 v1, 0x0

    #@d
    invoke-virtual {p0, v0, p6, v1}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZZ)V

    #@10
    .line 4355
    return-object v0
.end method

.method final destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 7
    .param p1, "owner"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3248
    const/4 v3, 0x0

    #@1
    .line 3249
    .local v3, "lastIsOpaque":Z
    const/4 v2, 0x0

    #@2
    .line 3250
    .local v2, "activityRemoved":Z
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v6

    #@8
    add-int/lit8 v5, v6, -0x1

    #@a
    .local v5, "taskNdx":I
    :goto_0
    if-ltz v5, :cond_5

    #@c
    .line 3251
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v6

    #@12
    check-cast v6, Lcom/android/server/am/TaskRecord;

    #@14
    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@16
    .line 3252
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v6

    #@1a
    add-int/lit8 v1, v6, -0x1

    #@1c
    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_4

    #@1e
    .line 3253
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v4

    #@22
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    #@24
    .line 3254
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@26
    if-eqz v6, :cond_1

    #@28
    .line 3252
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, -0x1

    #@2a
    goto :goto_1

    #@2b
    .line 3257
    :cond_1
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@2d
    if-eqz v6, :cond_2

    #@2f
    .line 3258
    const/4 v3, 0x1

    #@30
    .line 3260
    :cond_2
    if-eqz p1, :cond_3

    #@32
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@34
    if-ne v6, p1, :cond_0

    #@36
    .line 3263
    :cond_3
    if-eqz v3, :cond_0

    #@38
    .line 3266
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    #@3b
    move-result v6

    #@3c
    if-eqz v6, :cond_0

    #@3e
    .line 3270
    const/4 v6, 0x1

    #@3f
    invoke-virtual {p0, v4, v6, p2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    #@42
    move-result v6

    #@43
    if-eqz v6, :cond_0

    #@45
    .line 3271
    const/4 v2, 0x1

    #@46
    goto :goto_2

    #@47
    .line 3250
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v5, v5, -0x1

    #@49
    goto :goto_0

    #@4a
    .line 3276
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_5
    if-eqz v2, :cond_6

    #@4c
    .line 3277
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@4e
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    #@51
    .line 3247
    :cond_6
    return-void
.end method

.method final destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z
    .locals 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "removeFromApp"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v9, 0x0

    #@2
    .line 3346
    const/4 v5, 0x5

    #@3
    new-array v5, v5, [Ljava/lang/Object;

    #@5
    .line 3347
    iget v6, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    #@7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a
    move-result-object v6

    #@b
    aput-object v6, v5, v9

    #@d
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@10
    move-result v6

    #@11
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v6

    #@15
    const/4 v7, 0x1

    #@16
    aput-object v6, v5, v7

    #@18
    .line 3348
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@1a
    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    #@1c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v6

    #@20
    const/4 v7, 0x2

    #@21
    aput-object v6, v5, v7

    #@23
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@25
    const/4 v7, 0x3

    #@26
    aput-object v6, v5, v7

    #@28
    const/4 v6, 0x4

    #@29
    aput-object p3, v5, v6

    #@2b
    .line 3346
    const/16 v6, 0x7542

    #@2d
    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@30
    .line 3350
    const/4 v3, 0x0

    #@31
    .line 3352
    .local v3, "removedFromHistory":Z
    invoke-virtual {p0, p1, v9, v9}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    #@34
    .line 3354
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@36
    if-eqz v5, :cond_5

    #@38
    const/4 v1, 0x1

    #@39
    .line 3356
    .local v1, "hadApp":Z
    :goto_0
    if-eqz v1, :cond_7

    #@3b
    .line 3357
    if-eqz p2, :cond_1

    #@3d
    .line 3358
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@3f
    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@41
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@44
    .line 3359
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@46
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    #@48
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@4a
    if-ne v5, v6, :cond_0

    #@4c
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@4e
    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@50
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@53
    move-result v5

    #@54
    if-gtz v5, :cond_0

    #@56
    .line 3360
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@58
    iput-object v10, v5, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    #@5a
    .line 3361
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5c
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@5e
    .line 3362
    const/16 v6, 0x19

    #@60
    .line 3361
    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessage(I)Z

    #@63
    .line 3364
    :cond_0
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@65
    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@67
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    #@6a
    move-result v5

    #@6b
    if-eqz v5, :cond_1

    #@6d
    .line 3367
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@6f
    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    #@71
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@73
    invoke-virtual {v5, v6}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    #@76
    .line 3369
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@78
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@7a
    invoke-virtual {v5, v6, v9, v10}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    #@7d
    .line 3370
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@7f
    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    #@82
    .line 3374
    :cond_1
    const/4 v4, 0x0

    #@83
    .line 3378
    .local v4, "skipDestroy":Z
    :try_start_0
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@85
    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@87
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@89
    iget-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@8b
    .line 3379
    iget v8, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    #@8d
    .line 3378
    invoke-interface {v5, v6, v7, v8}, Landroid/app/IApplicationThread;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@90
    .line 3392
    :cond_2
    :goto_1
    iput-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    #@92
    .line 3401
    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@94
    if-eqz v5, :cond_3

    #@96
    if-eqz v4, :cond_6

    #@98
    .line 3410
    :cond_3
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@9a
    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@9c
    .line 3412
    iput-object v10, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@9e
    .line 3427
    .end local v4    # "skipDestroy":Z
    :goto_2
    iput v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    #@a0
    .line 3429
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    #@a2
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@a5
    move-result v5

    #@a6
    if-nez v5, :cond_4

    #@a8
    if-eqz v1, :cond_4

    #@aa
    .line 3430
    const-string/jumbo v5, "ActivityManager"

    #@ad
    new-instance v6, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    const-string/jumbo v7, "Activity "

    #@b5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v6

    #@b9
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v6

    #@bd
    const-string/jumbo v7, " being finished, but not in LRU list"

    #@c0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v6

    #@c4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v6

    #@c8
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@cb
    .line 3433
    :cond_4
    return v3

    #@cc
    .line 3354
    .end local v1    # "hadApp":Z
    :cond_5
    const/4 v1, 0x0

    #@cd
    .restart local v1    # "hadApp":Z
    goto/16 :goto_0

    #@cf
    .line 3380
    .restart local v4    # "skipDestroy":Z
    :catch_0
    move-exception v0

    #@d0
    .line 3385
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@d2
    if-eqz v5, :cond_2

    #@d4
    .line 3386
    new-instance v5, Ljava/lang/StringBuilder;

    #@d6
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@d9
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v5

    #@dd
    const-string/jumbo v6, " exceptionInScheduleDestroy"

    #@e0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v5

    #@e4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e7
    move-result-object v5

    #@e8
    invoke-direct {p0, p1, v5}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    #@eb
    .line 3387
    const/4 v3, 0x1

    #@ec
    .line 3388
    const/4 v4, 0x1

    #@ed
    goto :goto_1

    #@ee
    .line 3404
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@f0
    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@f2
    .line 3405
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@f4
    const/16 v6, 0x66

    #@f6
    invoke-virtual {v5, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@f9
    move-result-object v2

    #@fa
    .line 3406
    .local v2, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@fc
    const-wide/16 v6, 0x2710

    #@fe
    invoke-virtual {v5, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@101
    goto :goto_2

    #@102
    .line 3416
    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "skipDestroy":Z
    :cond_7
    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@104
    if-eqz v5, :cond_8

    #@106
    .line 3417
    new-instance v5, Ljava/lang/StringBuilder;

    #@108
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@10b
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v5

    #@10f
    const-string/jumbo v6, " hadNoApp"

    #@112
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v5

    #@116
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@119
    move-result-object v5

    #@11a
    invoke-direct {p0, p1, v5}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    #@11d
    .line 3418
    const/4 v3, 0x1

    #@11e
    goto :goto_2

    #@11f
    .line 3421
    :cond_8
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@121
    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@123
    .line 3423
    iput-object v10, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@125
    goto/16 :goto_2
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/String;)Z
    .locals 15
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;
    .param p6, "needSep"    # Z
    .param p7, "header"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4211
    const/4 v12, 0x0

    #@1
    .line 4212
    .local v12, "printed":Z
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v0

    #@7
    add-int/lit8 v14, v0, -0x1

    #@9
    .end local v12    # "printed":Z
    .end local p7    # "header":Ljava/lang/String;
    .local v14, "taskNdx":I
    :goto_0
    if-ltz v14, :cond_2

    #@b
    .line 4213
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v13

    #@11
    check-cast v13, Lcom/android/server/am/TaskRecord;

    #@13
    .line 4215
    .local v13, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Lcom/android/server/am/TaskRecord;

    #@1b
    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@1d
    const-string/jumbo v3, "    "

    #@20
    const-string/jumbo v4, "Hist"

    #@23
    if-eqz p3, :cond_1

    #@25
    const/4 v6, 0x0

    #@26
    .line 4217
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v1, "    Task id #"

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    iget v1, v13, Lcom/android/server/am/TaskRecord;->taskId:I

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v11

    #@3c
    .line 4215
    const/4 v5, 0x1

    #@3d
    move-object/from16 v0, p1

    #@3f
    move-object/from16 v1, p2

    #@41
    move/from16 v7, p4

    #@43
    move-object/from16 v8, p5

    #@45
    move/from16 v9, p6

    #@47
    move-object/from16 v10, p7

    #@49
    .line 4214
    invoke-static/range {v0 .. v11}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    #@4c
    move-result v0

    #@4d
    or-int/2addr v12, v0

    #@4e
    .line 4218
    .local v12, "printed":Z
    if-eqz v12, :cond_0

    #@50
    .line 4219
    const/16 p7, 0x0

    #@52
    .line 4212
    :cond_0
    add-int/lit8 v14, v14, -0x1

    #@54
    goto :goto_0

    #@55
    .line 4215
    .end local v12    # "printed":Z
    :cond_1
    const/4 v6, 0x1

    #@56
    goto :goto_1

    #@57
    .line 4222
    .end local v13    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    return v12
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V
    .locals 15
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I

    #@0
    .prologue
    .line 1261
    const/4 v12, 0x0

    #@1
    invoke-virtual {p0, v12}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@4
    move-result-object v11

    #@5
    .line 1262
    .local v11, "top":Lcom/android/server/am/ActivityRecord;
    if-nez v11, :cond_0

    #@7
    .line 1263
    return-void

    #@8
    .line 1269
    :cond_0
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    #@a
    if-eq v12, v11, :cond_2

    #@c
    .line 1270
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    #@11
    .line 1271
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    #@13
    if-eqz v12, :cond_1

    #@15
    .line 1273
    const/4 v12, 0x0

    #@16
    invoke-virtual {p0, v12}, Lcom/android/server/am/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V

    #@19
    .line 1274
    const/4 v12, 0x0

    #@1a
    iput-object v12, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    #@1c
    .line 1276
    :cond_1
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@1e
    const/16 v13, 0x6a

    #@20
    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeMessages(I)V

    #@23
    .line 1281
    :cond_2
    const/4 v1, 0x1

    #@24
    .line 1282
    .local v1, "aboveTop":Z
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->isStackVisibleLocked()Z

    #@27
    move-result v12

    #@28
    if-eqz v12, :cond_4

    #@2a
    const/4 v4, 0x0

    #@2b
    .line 1283
    .local v4, "behindFullscreen":Z
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@2e
    move-result-object v12

    #@2f
    if-nez v12, :cond_5

    #@31
    const/4 v7, 0x1

    #@32
    .line 1285
    .local v7, "noStackActivityResumed":Z
    :goto_1
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@37
    move-result v12

    #@38
    add-int/lit8 v10, v12, -0x1

    #@3a
    .local v10, "taskNdx":I
    :goto_2
    if-ltz v10, :cond_19

    #@3c
    .line 1286
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@3e
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v9

    #@42
    check-cast v9, Lcom/android/server/am/TaskRecord;

    #@44
    .line 1287
    .local v9, "task":Lcom/android/server/am/TaskRecord;
    iget-object v2, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@46
    .line 1288
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@49
    move-result v12

    #@4a
    add-int/lit8 v3, v12, -0x1

    #@4c
    .local v3, "activityNdx":I
    :goto_3
    if-ltz v3, :cond_18

    #@4e
    .line 1289
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@51
    move-result-object v8

    #@52
    check-cast v8, Lcom/android/server/am/ActivityRecord;

    #@54
    .line 1290
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@56
    if-eqz v12, :cond_6

    #@58
    .line 1288
    :cond_3
    :goto_4
    add-int/lit8 v3, v3, -0x1

    #@5a
    goto :goto_3

    #@5b
    .line 1282
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    .end local v4    # "behindFullscreen":Z
    .end local v7    # "noStackActivityResumed":Z
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "task":Lcom/android/server/am/TaskRecord;
    .end local v10    # "taskNdx":I
    :cond_4
    const/4 v4, 0x1

    #@5c
    .restart local v4    # "behindFullscreen":Z
    goto :goto_0

    #@5d
    .line 1283
    :cond_5
    const/4 v7, 0x0

    #@5e
    .restart local v7    # "noStackActivityResumed":Z
    goto :goto_1

    #@5f
    .line 1293
    .restart local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v3    # "activityNdx":I
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v9    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v10    # "taskNdx":I
    :cond_6
    if-eqz v1, :cond_7

    #@61
    if-ne v8, v11, :cond_3

    #@63
    .line 1296
    :cond_7
    const/4 v1, 0x0

    #@64
    .line 1299
    if-eqz v4, :cond_8

    #@66
    iget-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    #@68
    if-eqz v12, :cond_15

    #@6a
    .line 1306
    :cond_8
    move-object/from16 v0, p1

    #@6c
    if-eq v8, v0, :cond_9

    #@6e
    .line 1307
    const/4 v12, 0x0

    #@6f
    invoke-virtual {p0, v8, v12}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    #@72
    .line 1310
    :cond_9
    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@74
    if-eqz v12, :cond_a

    #@76
    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@78
    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@7a
    if-nez v12, :cond_10

    #@7c
    .line 1315
    :cond_a
    move-object/from16 v0, p1

    #@7e
    if-eq v8, v0, :cond_b

    #@80
    .line 1316
    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@82
    move/from16 v0, p2

    #@84
    invoke-virtual {v8, v12, v0}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    #@87
    .line 1318
    :cond_b
    iget-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@89
    if-eqz v12, :cond_c

    #@8b
    iget-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    #@8d
    if-eqz v12, :cond_d

    #@8f
    .line 1321
    :cond_c
    const/4 v12, 0x1

    #@90
    invoke-direct {p0, v8, v12}, Lcom/android/server/am/ActivityStack;->setVisible(Lcom/android/server/am/ActivityRecord;Z)V

    #@93
    .line 1323
    :cond_d
    move-object/from16 v0, p1

    #@95
    if-eq v8, v0, :cond_e

    #@97
    .line 1324
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@99
    .line 1325
    const/4 v13, 0x0

    #@9a
    .line 1324
    invoke-virtual {v12, v8, v7, v13}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    #@9d
    .line 1326
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@a0
    move-result v12

    #@a1
    if-lt v3, v12, :cond_f

    #@a3
    .line 1328
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@a6
    move-result v12

    #@a7
    add-int/lit8 v3, v12, -0x1

    #@a9
    .line 1379
    :cond_e
    :goto_5
    iget v12, v8, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    #@ab
    or-int p2, p2, v12

    #@ad
    .line 1381
    iget-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@af
    if-eqz v12, :cond_14

    #@b1
    .line 1384
    const/4 v4, 0x1

    #@b2
    goto :goto_4

    #@b3
    .line 1330
    :cond_f
    const/4 v7, 0x0

    #@b4
    goto :goto_5

    #@b5
    .line 1334
    :cond_10
    iget-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@b7
    if-eqz v12, :cond_12

    #@b9
    .line 1339
    const/4 v12, 0x0

    #@ba
    invoke-virtual {v8, v12}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    #@bd
    .line 1341
    :try_start_0
    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    #@bf
    if-eqz v12, :cond_11

    #@c1
    .line 1342
    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@c3
    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@c5
    iget-object v13, v8, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@c7
    .line 1343
    iget-object v14, v8, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    #@c9
    .line 1342
    invoke-interface {v12, v13, v14}, Landroid/app/IApplicationThread;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    #@cc
    .line 1347
    :cond_11
    :goto_6
    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@ce
    sget-object v13, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@d0
    if-ne v12, v13, :cond_e

    #@d2
    .line 1348
    const/4 v7, 0x0

    #@d3
    goto :goto_5

    #@d4
    .line 1353
    :cond_12
    const/4 v12, 0x1

    #@d5
    iput-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@d7
    .line 1354
    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@d9
    sget-object v13, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@db
    if-eq v12, v13, :cond_e

    #@dd
    move-object/from16 v0, p1

    #@df
    if-eq v8, v0, :cond_e

    #@e1
    .line 1360
    :try_start_1
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    #@e3
    if-eqz v12, :cond_13

    #@e5
    .line 1361
    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    #@e7
    invoke-virtual {v8, v12}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    #@ea
    .line 1362
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    #@ec
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@ef
    .line 1364
    :cond_13
    const/4 v12, 0x1

    #@f0
    invoke-direct {p0, v8, v12}, Lcom/android/server/am/ActivityStack;->setVisible(Lcom/android/server/am/ActivityRecord;Z)V

    #@f3
    .line 1365
    const/4 v12, 0x0

    #@f4
    iput-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    #@f6
    .line 1366
    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@f8
    const/4 v13, 0x1

    #@f9
    iput-boolean v13, v12, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    #@fb
    .line 1367
    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@fd
    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@ff
    iget-object v13, v8, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@101
    const/4 v14, 0x1

    #@102
    invoke-interface {v12, v13, v14}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    #@105
    .line 1368
    const/4 v12, 0x0

    #@106
    invoke-virtual {v8, v12}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@109
    goto :goto_5

    #@10a
    .line 1369
    :catch_0
    move-exception v6

    #@10b
    .line 1372
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "ActivityManager"

    #@10e
    new-instance v13, Ljava/lang/StringBuilder;

    #@110
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@113
    const-string/jumbo v14, "Exception thrown making visibile: "

    #@116
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v13

    #@11a
    .line 1373
    iget-object v14, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@11c
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@11f
    move-result-object v14

    #@120
    .line 1372
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v13

    #@124
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@127
    move-result-object v13

    #@128
    invoke-static {v12, v13, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12b
    goto/16 :goto_5

    #@12d
    .line 1385
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    #@130
    move-result v12

    #@131
    if-nez v12, :cond_3

    #@133
    iget-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    #@135
    if-eqz v12, :cond_3

    #@137
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    #@13a
    move-result v12

    #@13b
    if-eqz v12, :cond_3

    #@13d
    .line 1387
    const/4 v4, 0x1

    #@13e
    goto/16 :goto_4

    #@140
    .line 1395
    :cond_15
    iget-boolean v12, v8, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@142
    if-eqz v12, :cond_3

    #@144
    .line 1398
    const/4 v12, 0x0

    #@145
    :try_start_2
    invoke-direct {p0, v8, v12}, Lcom/android/server/am/ActivityStack;->setVisible(Lcom/android/server/am/ActivityRecord;Z)V

    #@148
    .line 1399
    invoke-static {}, Lcom/android/server/am/ActivityStack;->-getcom_android_server_am_ActivityStack$ActivityStateSwitchesValues()[I

    #@14b
    move-result-object v12

    #@14c
    iget-object v13, v8, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@14e
    invoke-virtual {v13}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    #@151
    move-result v13

    #@152
    aget v12, v12, v13

    #@154
    packed-switch v12, :pswitch_data_0

    #@157
    goto/16 :goto_4

    #@159
    .line 1415
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    #@15c
    move-result-object v12

    #@15d
    if-ne v12, v8, :cond_16

    #@15f
    .line 1416
    invoke-virtual {p0, v8}, Lcom/android/server/am/ActivityStack;->releaseBackgroundResources(Lcom/android/server/am/ActivityRecord;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@162
    goto/16 :goto_4

    #@164
    .line 1428
    :catch_1
    move-exception v6

    #@165
    .line 1431
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string/jumbo v12, "ActivityManager"

    #@168
    new-instance v13, Ljava/lang/StringBuilder;

    #@16a
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@16d
    const-string/jumbo v14, "Exception thrown making hidden: "

    #@170
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@173
    move-result-object v13

    #@174
    .line 1432
    iget-object v14, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@176
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@179
    move-result-object v14

    #@17a
    .line 1431
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17d
    move-result-object v13

    #@17e
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@181
    move-result-object v13

    #@182
    invoke-static {v12, v13, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@185
    goto/16 :goto_4

    #@187
    .line 1402
    .end local v6    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_3
    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@189
    if-eqz v12, :cond_3

    #@18b
    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@18d
    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@18f
    if-eqz v12, :cond_3

    #@191
    .line 1405
    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@193
    iget-object v12, v12, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@195
    iget-object v13, v8, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@197
    const/4 v14, 0x0

    #@198
    invoke-interface {v12, v13, v14}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    #@19b
    goto/16 :goto_4

    #@19d
    .line 1418
    :cond_16
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@19f
    iget-object v12, v12, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    #@1a1
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@1a4
    move-result v12

    #@1a5
    if-nez v12, :cond_17

    #@1a7
    .line 1419
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1a9
    iget-object v12, v12, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    #@1ab
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1ae
    .line 1421
    :cond_17
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1b0
    invoke-virtual {v12}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    #@1b3
    goto/16 :goto_4

    #@1b5
    .line 1285
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_18
    add-int/lit8 v10, v10, -0x1

    #@1b7
    goto/16 :goto_2

    #@1b9
    .line 1441
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    .end local v9    # "task":Lcom/android/server/am/TaskRecord;
    :cond_19
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    #@1bb
    if-eqz v12, :cond_1a

    #@1bd
    .line 1442
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    #@1bf
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    #@1c2
    move-result v12

    #@1c3
    .line 1441
    if-eqz v12, :cond_1a

    #@1c5
    .line 1444
    const/4 v12, 0x0

    #@1c6
    invoke-virtual {p0, v12}, Lcom/android/server/am/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V

    #@1c9
    .line 1260
    :cond_1a
    return-void

    #@1ca
    .line 1345
    .restart local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v3    # "activityNdx":I
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v9    # "task":Lcom/android/server/am/TaskRecord;
    :catch_2
    move-exception v5

    #@1cb
    .local v5, "e":Landroid/os/RemoteException;
    goto/16 :goto_6

    #@1cd
    .line 1399
    nop

    #@1ce
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method final ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z
    .locals 13
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "globalChanges"    # I

    #@0
    .prologue
    .line 3816
    iget-boolean v9, p0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    #@2
    if-eqz v9, :cond_0

    #@4
    .line 3819
    const/4 v9, 0x1

    #@5
    return v9

    #@6
    .line 3827
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    #@9
    move-result-object v8

    #@a
    .line 3828
    .local v8, "topTask":Lcom/android/server/am/TaskRecord;
    if-eqz v8, :cond_2

    #@c
    iget-boolean v9, v8, Lcom/android/server/am/TaskRecord;->mResizeable:Z

    #@e
    if-eqz v9, :cond_1

    #@10
    iget-boolean v9, p0, Lcom/android/server/am/ActivityStack;->mForcedFullscreen:Z

    #@12
    if-nez v9, :cond_4

    #@14
    .line 3829
    :cond_1
    iget-boolean v9, v8, Lcom/android/server/am/TaskRecord;->mResizeable:Z

    #@16
    if-nez v9, :cond_2

    #@18
    iget-boolean v9, p0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    #@1a
    if-eqz v9, :cond_4

    #@1c
    .line 3845
    :cond_2
    :goto_0
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1e
    iget-object v2, v9, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@20
    .line 3846
    .local v2, "newConfig":Landroid/content/res/Configuration;
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    #@22
    if-ne v9, v2, :cond_3

    #@24
    .line 3847
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->stackConfigOverride:Landroid/content/res/Configuration;

    #@26
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    #@28
    if-ne v9, v10, :cond_3

    #@2a
    .line 3848
    iget-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    #@2c
    if-eqz v9, :cond_7

    #@2e
    .line 3855
    :cond_3
    iget-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@30
    if-eqz v9, :cond_8

    #@32
    .line 3858
    const/4 v9, 0x0

    #@33
    invoke-virtual {p1, v9}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    #@36
    .line 3859
    const/4 v9, 0x1

    #@37
    return v9

    #@38
    .line 3830
    .end local v2    # "newConfig":Landroid/content/res/Configuration;
    :cond_4
    iget-boolean v6, p0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    #@3a
    .line 3832
    .local v6, "prevFullscreen":Z
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@3c
    iget v11, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@3e
    iget-boolean v9, v8, Lcom/android/server/am/TaskRecord;->mResizeable:Z

    #@40
    if-eqz v9, :cond_5

    #@42
    const/4 v9, 0x0

    #@43
    :goto_1
    invoke-virtual {v10, v11, v9}, Lcom/android/server/wm/WindowManagerService;->forceStackToFullscreen(IZ)Landroid/content/res/Configuration;

    #@46
    move-result-object v3

    #@47
    .line 3833
    .local v3, "newOverrideConfig":Landroid/content/res/Configuration;
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->updateOverrideConfiguration(Landroid/content/res/Configuration;)Z

    #@4a
    .line 3834
    if-nez v6, :cond_6

    #@4c
    iget-boolean v9, p0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    #@4e
    :goto_2
    iput-boolean v9, p0, Lcom/android/server/am/ActivityStack;->mForcedFullscreen:Z

    #@50
    goto :goto_0

    #@51
    .line 3832
    .end local v3    # "newOverrideConfig":Landroid/content/res/Configuration;
    :cond_5
    const/4 v9, 0x1

    #@52
    goto :goto_1

    #@53
    .line 3834
    .restart local v3    # "newOverrideConfig":Landroid/content/res/Configuration;
    :cond_6
    const/4 v9, 0x0

    #@54
    goto :goto_2

    #@55
    .line 3851
    .end local v3    # "newOverrideConfig":Landroid/content/res/Configuration;
    .end local v6    # "prevFullscreen":Z
    .restart local v2    # "newConfig":Landroid/content/res/Configuration;
    :cond_7
    const/4 v9, 0x1

    #@56
    return v9

    #@57
    .line 3864
    :cond_8
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    #@59
    .line 3865
    .local v4, "oldConfig":Landroid/content/res/Configuration;
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->stackConfigOverride:Landroid/content/res/Configuration;

    #@5b
    .line 3866
    .local v5, "oldStackOverride":Landroid/content/res/Configuration;
    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    #@5d
    .line 3867
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    #@5f
    iput-object v9, p1, Lcom/android/server/am/ActivityRecord;->stackConfigOverride:Landroid/content/res/Configuration;

    #@61
    .line 3873
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    #@63
    invoke-virtual {v5, v9}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    #@66
    move-result v7

    #@67
    .line 3874
    .local v7, "stackChanges":I
    if-nez v7, :cond_c

    #@69
    .line 3877
    iget v9, v5, Landroid/content/res/Configuration;->orientation:I

    #@6b
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    #@6d
    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    #@6f
    if-eq v9, v10, :cond_9

    #@71
    .line 3878
    or-int/lit16 v7, v7, 0x80

    #@73
    .line 3880
    :cond_9
    iget v9, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    #@75
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    #@77
    iget v10, v10, Landroid/content/res/Configuration;->screenHeightDp:I

    #@79
    if-ne v9, v10, :cond_a

    #@7b
    .line 3881
    iget v9, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    #@7d
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    #@7f
    iget v10, v10, Landroid/content/res/Configuration;->screenWidthDp:I

    #@81
    if-eq v9, v10, :cond_b

    #@83
    .line 3882
    :cond_a
    or-int/lit16 v7, v7, 0x400

    #@85
    .line 3884
    :cond_b
    iget v9, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@87
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    #@89
    iget v10, v10, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@8b
    if-eq v9, v10, :cond_c

    #@8d
    .line 3885
    or-int/lit16 v7, v7, 0x800

    #@8f
    .line 3888
    :cond_c
    invoke-virtual {v4, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    #@92
    move-result v9

    #@93
    or-int v0, v9, v7

    #@95
    .line 3889
    .local v0, "changes":I
    if-nez v0, :cond_d

    #@97
    iget-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    #@99
    if-eqz v9, :cond_f

    #@9b
    .line 3897
    :cond_d
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@9d
    if-eqz v9, :cond_e

    #@9f
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@a1
    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@a3
    if-nez v9, :cond_10

    #@a5
    .line 3900
    :cond_e
    const/4 v9, 0x0

    #@a6
    invoke-virtual {p1, v9}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    #@a9
    .line 3901
    const/4 v9, 0x0

    #@aa
    iput-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    #@ac
    .line 3902
    const/4 v9, 0x1

    #@ad
    return v9

    #@ae
    .line 3892
    :cond_f
    const/4 v9, 0x1

    #@af
    return v9

    #@b0
    .line 3911
    :cond_10
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@b2
    invoke-virtual {v9}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    #@b5
    move-result v9

    #@b6
    not-int v9, v9

    #@b7
    and-int/2addr v9, v0

    #@b8
    if-nez v9, :cond_11

    #@ba
    iget-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    #@bc
    if-eqz v9, :cond_16

    #@be
    .line 3913
    :cond_11
    iget v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    #@c0
    or-int/2addr v9, v0

    #@c1
    iput v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    #@c3
    .line 3914
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@c5
    invoke-virtual {p1, v9, p2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    #@c8
    .line 3915
    const/4 v9, 0x0

    #@c9
    iput-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    #@cb
    .line 3916
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@cd
    if-eqz v9, :cond_12

    #@cf
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@d1
    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@d3
    if-nez v9, :cond_13

    #@d5
    .line 3919
    :cond_12
    const-string/jumbo v9, "config"

    #@d8
    const/4 v10, 0x1

    #@d9
    invoke-virtual {p0, p1, v10, v9}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    #@dc
    .line 3946
    :goto_3
    const/4 v9, 0x0

    #@dd
    return v9

    #@de
    .line 3920
    :cond_13
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@e0
    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@e2
    if-ne v9, v10, :cond_14

    #@e4
    .line 3926
    const/4 v9, 0x1

    #@e5
    iput-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    #@e7
    .line 3927
    const/4 v9, 0x1

    #@e8
    return v9

    #@e9
    .line 3928
    :cond_14
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@eb
    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@ed
    if-ne v9, v10, :cond_15

    #@ef
    .line 3935
    iget v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    #@f1
    const/4 v10, 0x1

    #@f2
    invoke-direct {p0, p1, v9, v10}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    #@f5
    .line 3936
    const/4 v9, 0x0

    #@f6
    iput v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    #@f8
    goto :goto_3

    #@f9
    .line 3940
    :cond_15
    iget v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    #@fb
    const/4 v10, 0x0

    #@fc
    invoke-direct {p0, p1, v9, v10}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    #@ff
    .line 3941
    const/4 v9, 0x0

    #@100
    iput v9, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    #@102
    goto :goto_3

    #@103
    .line 3953
    :cond_16
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@105
    if-eqz v9, :cond_17

    #@107
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@109
    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@10b
    if-eqz v9, :cond_17

    #@10d
    .line 3956
    :try_start_0
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@10f
    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@111
    .line 3957
    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@113
    new-instance v11, Landroid/content/res/Configuration;

    #@115
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    #@117
    invoke-direct {v11, v12}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@11a
    .line 3956
    invoke-interface {v9, v10, v11}, Landroid/app/IApplicationThread;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11d
    .line 3962
    :cond_17
    :goto_4
    const/4 v9, 0x0

    #@11e
    invoke-virtual {p1, v9}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    #@121
    .line 3964
    const/4 v9, 0x1

    #@122
    return v9

    #@123
    .line 3958
    :catch_0
    move-exception v1

    #@124
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_4
.end method

.method findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 605
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@4
    move-result-object v2

    #@5
    .line 606
    .local v2, "cls":Landroid/content/ComponentName;
    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@7
    if-eqz v8, :cond_0

    #@9
    .line 607
    new-instance v2, Landroid/content/ComponentName;

    #@b
    .end local v2    # "cls":Landroid/content/ComponentName;
    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@d
    iget-object v9, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@f
    invoke-direct {v2, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 609
    .restart local v2    # "cls":Landroid/content/ComponentName;
    :cond_0
    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@14
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    #@16
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    #@19
    move-result v7

    #@1a
    .line 611
    .local v7, "userId":I
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@1f
    move-result v8

    #@20
    add-int/lit8 v6, v8, -0x1

    #@22
    .local v6, "taskNdx":I
    :goto_0
    if-ltz v6, :cond_5

    #@24
    .line 612
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v5

    #@2a
    check-cast v5, Lcom/android/server/am/TaskRecord;

    #@2c
    .line 614
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@2e
    iget v9, v5, Lcom/android/server/am/TaskRecord;->userId:I

    #@30
    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    #@33
    move-result v8

    #@34
    if-eqz v8, :cond_2

    #@36
    const/4 v3, 0x0

    #@37
    .line 615
    .local v3, "notCurrentUserTask":Z
    :goto_1
    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@39
    .line 617
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@3c
    move-result v8

    #@3d
    add-int/lit8 v1, v8, -0x1

    #@3f
    .local v1, "activityNdx":I
    :goto_2
    if-ltz v1, :cond_4

    #@41
    .line 618
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@44
    move-result-object v4

    #@45
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    #@47
    .line 619
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_3

    #@49
    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@4b
    iget v8, v8, Landroid/content/pm/ActivityInfo;->flags:I

    #@4d
    and-int/lit16 v8, v8, 0x400

    #@4f
    if-nez v8, :cond_3

    #@51
    .line 617
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@53
    goto :goto_2

    #@54
    .line 614
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "notCurrentUserTask":Z
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    const/4 v3, 0x1

    #@55
    .restart local v3    # "notCurrentUserTask":Z
    goto :goto_1

    #@56
    .line 622
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    iget-boolean v8, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@58
    if-nez v8, :cond_1

    #@5a
    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@5c
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@5f
    move-result-object v8

    #@60
    invoke-virtual {v8, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v8

    #@64
    if-eqz v8, :cond_1

    #@66
    iget v8, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    #@68
    if-ne v8, v7, :cond_1

    #@6a
    .line 623
    return-object v4

    #@6b
    .line 611
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v6, v6, -0x1

    #@6d
    goto :goto_0

    #@6e
    .line 628
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "notCurrentUserTask":Z
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    return-object v10
.end method

.method findNextTranslucentActivity(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 14
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    .line 1148
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@3
    .line 1149
    .local v9, "task":Lcom/android/server/am/TaskRecord;
    if-nez v9, :cond_0

    #@5
    .line 1150
    return-object v13

    #@6
    .line 1153
    :cond_0
    iget-object v7, v9, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@8
    .line 1154
    .local v7, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v7, :cond_1

    #@a
    .line 1155
    return-object v13

    #@b
    .line 1158
    :cond_1
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@10
    move-result v8

    #@11
    .line 1160
    .local v8, "stackNdx":I
    iget-object v11, v7, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@13
    .line 1161
    .local v11, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@16
    move-result v10

    #@17
    .line 1163
    .local v10, "taskNdx":I
    iget-object v0, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@19
    .line 1164
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@1c
    move-result v12

    #@1d
    add-int/lit8 v2, v12, 0x1

    #@1f
    .line 1166
    .local v2, "activityNdx":I
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@24
    move-result v5

    #@25
    .line 1167
    .local v5, "numStacks":I
    :goto_0
    if-ge v8, v5, :cond_6

    #@27
    .line 1168
    iget-object v12, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v3

    #@2d
    check-cast v3, Lcom/android/server/am/ActivityStack;

    #@2f
    .line 1169
    .local v3, "historyStack":Lcom/android/server/am/ActivityStack;
    iget-object v11, v3, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@31
    .line 1170
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@34
    move-result v6

    #@35
    .line 1171
    .local v6, "numTasks":I
    :goto_1
    if-ge v10, v6, :cond_5

    #@37
    .line 1172
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3a
    move-result-object v12

    #@3b
    check-cast v12, Lcom/android/server/am/TaskRecord;

    #@3d
    iget-object v0, v12, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@3f
    .line 1173
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@42
    move-result v4

    #@43
    .line 1174
    .local v4, "numActivities":I
    :goto_2
    if-ge v2, v4, :cond_4

    #@45
    .line 1175
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@48
    move-result-object v1

    #@49
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@4b
    .line 1176
    .local v1, "activity":Lcom/android/server/am/ActivityRecord;
    iget-boolean v12, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@4d
    if-nez v12, :cond_3

    #@4f
    .line 1177
    iget-boolean v12, v3, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    #@51
    if-eqz v12, :cond_2

    #@53
    iget-boolean v12, v1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@55
    if-eqz v12, :cond_2

    #@57
    move-object v1, v13

    #@58
    .end local v1    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_2
    return-object v1

    #@59
    .line 1179
    .restart local v1    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@5b
    goto :goto_2

    #@5c
    .line 1181
    .end local v1    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_4
    const/4 v2, 0x0

    #@5d
    .line 1182
    add-int/lit8 v10, v10, 0x1

    #@5f
    goto :goto_1

    #@60
    .line 1184
    .end local v4    # "numActivities":I
    :cond_5
    const/4 v10, 0x0

    #@61
    .line 1185
    add-int/lit8 v8, v8, 0x1

    #@63
    goto :goto_0

    #@64
    .line 1188
    .end local v3    # "historyStack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "numTasks":I
    :cond_6
    return-object v13
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 16
    .param p1, "target"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 522
    move-object/from16 v0, p1

    #@2
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@4
    .line 523
    .local v5, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    #@6
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@8
    .line 524
    .local v4, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@b
    move-result-object v2

    #@c
    .line 525
    .local v2, "cls":Landroid/content/ComponentName;
    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@e
    if-eqz v14, :cond_0

    #@10
    .line 526
    new-instance v2, Landroid/content/ComponentName;

    #@12
    .end local v2    # "cls":Landroid/content/ComponentName;
    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@14
    iget-object v15, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@16
    invoke-direct {v2, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    .line 528
    .restart local v2    # "cls":Landroid/content/ComponentName;
    :cond_0
    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@1b
    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    #@1d
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    #@20
    move-result v13

    #@21
    .line 529
    .local v13, "userId":I
    if-eqz v5, :cond_2

    #@23
    const/4 v14, 0x1

    #@24
    :goto_0
    invoke-virtual {v5}, Landroid/content/Intent;->isDocument()Z

    #@27
    move-result v15

    #@28
    and-int v6, v14, v15

    #@2a
    .line 531
    .local v6, "isDocument":Z
    if-eqz v6, :cond_3

    #@2c
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@2f
    move-result-object v3

    #@30
    .line 534
    :goto_1
    move-object/from16 v0, p0

    #@32
    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@37
    move-result v14

    #@38
    add-int/lit8 v12, v14, -0x1

    #@3a
    .local v12, "taskNdx":I
    :goto_2
    if-ltz v12, :cond_a

    #@3c
    .line 535
    move-object/from16 v0, p0

    #@3e
    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@40
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@43
    move-result-object v8

    #@44
    check-cast v8, Lcom/android/server/am/TaskRecord;

    #@46
    .line 536
    .local v8, "task":Lcom/android/server/am/TaskRecord;
    iget-object v14, v8, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@48
    if-eqz v14, :cond_4

    #@4a
    .line 534
    :cond_1
    add-int/lit8 v12, v12, -0x1

    #@4c
    goto :goto_2

    #@4d
    .line 529
    .end local v6    # "isDocument":Z
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    .end local v12    # "taskNdx":I
    :cond_2
    const/4 v14, 0x0

    #@4e
    goto :goto_0

    #@4f
    .line 531
    .restart local v6    # "isDocument":Z
    :cond_3
    const/4 v3, 0x0

    #@50
    .local v3, "documentData":Landroid/net/Uri;
    goto :goto_1

    #@51
    .line 541
    .end local v3    # "documentData":Landroid/net/Uri;
    .restart local v8    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v12    # "taskNdx":I
    :cond_4
    iget v14, v8, Lcom/android/server/am/TaskRecord;->userId:I

    #@53
    if-ne v14, v13, :cond_1

    #@55
    .line 546
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    #@58
    move-result-object v7

    #@59
    .line 547
    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v7, :cond_1

    #@5b
    iget-boolean v14, v7, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@5d
    if-nez v14, :cond_1

    #@5f
    iget v14, v7, Lcom/android/server/am/ActivityRecord;->userId:I

    #@61
    if-ne v14, v13, :cond_1

    #@63
    .line 548
    iget v14, v7, Lcom/android/server/am/ActivityRecord;->launchMode:I

    #@65
    const/4 v15, 0x3

    #@66
    if-eq v14, v15, :cond_1

    #@68
    .line 553
    iget-object v10, v8, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@6a
    .line 554
    .local v10, "taskIntent":Landroid/content/Intent;
    iget-object v1, v8, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    #@6c
    .line 557
    .local v1, "affinityIntent":Landroid/content/Intent;
    if-eqz v10, :cond_6

    #@6e
    invoke-virtual {v10}, Landroid/content/Intent;->isDocument()Z

    #@71
    move-result v14

    #@72
    if-eqz v14, :cond_6

    #@74
    .line 558
    const/4 v11, 0x1

    #@75
    .line 559
    .local v11, "taskIsDocument":Z
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@78
    move-result-object v9

    #@79
    .line 572
    :goto_3
    if-nez v6, :cond_5

    #@7b
    if-eqz v11, :cond_8

    #@7d
    .line 577
    :cond_5
    if-eqz v10, :cond_9

    #@7f
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@82
    move-result-object v14

    #@83
    if-eqz v14, :cond_9

    #@85
    .line 578
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@88
    move-result-object v14

    #@89
    invoke-virtual {v14, v2}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    #@8c
    move-result v14

    #@8d
    if-nez v14, :cond_9

    #@8f
    .line 579
    invoke-static {v3, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@92
    move-result v14

    #@93
    .line 577
    if-eqz v14, :cond_9

    #@95
    .line 584
    return-object v7

    #@96
    .line 560
    .end local v11    # "taskIsDocument":Z
    :cond_6
    if-eqz v1, :cond_7

    #@98
    invoke-virtual {v1}, Landroid/content/Intent;->isDocument()Z

    #@9b
    move-result v14

    #@9c
    if-eqz v14, :cond_7

    #@9e
    .line 561
    const/4 v11, 0x1

    #@9f
    .line 562
    .restart local v11    # "taskIsDocument":Z
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@a2
    move-result-object v9

    #@a3
    .local v9, "taskDocumentData":Landroid/net/Uri;
    goto :goto_3

    #@a4
    .line 564
    .end local v9    # "taskDocumentData":Landroid/net/Uri;
    .end local v11    # "taskIsDocument":Z
    :cond_7
    const/4 v11, 0x0

    #@a5
    .line 565
    .restart local v11    # "taskIsDocument":Z
    const/4 v9, 0x0

    #@a6
    .local v9, "taskDocumentData":Landroid/net/Uri;
    goto :goto_3

    #@a7
    .line 572
    .end local v9    # "taskDocumentData":Landroid/net/Uri;
    :cond_8
    iget-object v14, v8, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    #@a9
    if-eqz v14, :cond_5

    #@ab
    .line 573
    iget-object v14, v8, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    #@ad
    move-object/from16 v0, p1

    #@af
    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    #@b1
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b4
    move-result v14

    #@b5
    if-eqz v14, :cond_1

    #@b7
    .line 575
    return-object v7

    #@b8
    .line 585
    :cond_9
    if-eqz v1, :cond_1

    #@ba
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@bd
    move-result-object v14

    #@be
    if-eqz v14, :cond_1

    #@c0
    .line 586
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@c3
    move-result-object v14

    #@c4
    invoke-virtual {v14, v2}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    #@c7
    move-result v14

    #@c8
    if-nez v14, :cond_1

    #@ca
    .line 587
    invoke-static {v3, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@cd
    move-result v14

    #@ce
    .line 585
    if-eqz v14, :cond_1

    #@d0
    .line 592
    return-object v7

    #@d1
    .line 596
    .end local v1    # "affinityIntent":Landroid/content/Intent;
    .end local v7    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    .end local v10    # "taskIntent":Landroid/content/Intent;
    .end local v11    # "taskIsDocument":Z
    :cond_a
    const/4 v14, 0x0

    #@d2
    return-object v14
.end method

.method final finishActivityAffinityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 2814
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@4
    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@6
    .line 2815
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@9
    move-result v7

    #@a
    .local v7, "index":I
    :goto_0
    if-ltz v7, :cond_0

    #@c
    .line 2816
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@12
    .line 2817
    .local v1, "cur":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    #@14
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    #@16
    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    if-nez v0, :cond_1

    #@1c
    .line 2822
    .end local v1    # "cur":Lcom/android/server/am/ActivityRecord;
    :cond_0
    return v5

    #@1d
    .line 2820
    .restart local v1    # "cur":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const-string/jumbo v4, "request-affinity"

    #@20
    const/4 v3, 0x0

    #@21
    move-object v0, p0

    #@22
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@25
    .line 2815
    add-int/lit8 v7, v7, -0x1

    #@27
    goto :goto_0
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "oomAdj"    # Z

    #@0
    .prologue
    .line 2863
    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@2
    if-eqz v5, :cond_0

    #@4
    .line 2864
    const-string/jumbo v5, "ActivityManager"

    #@7
    new-instance v6, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v7, "Duplicate finish request for "

    #@f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v6

    #@13
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v6

    #@17
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v6

    #@1b
    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1e
    .line 2865
    const/4 v5, 0x0

    #@1f
    return v5

    #@20
    .line 2868
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    #@23
    .line 2869
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@25
    .line 2870
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    const/4 v5, 0x5

    #@26
    new-array v5, v5, [Ljava/lang/Object;

    #@28
    .line 2871
    iget v6, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    #@2a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object v6

    #@2e
    const/4 v7, 0x0

    #@2f
    aput-object v6, v5, v7

    #@31
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@34
    move-result v6

    #@35
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@38
    move-result-object v6

    #@39
    const/4 v7, 0x1

    #@3a
    aput-object v6, v5, v7

    #@3c
    .line 2872
    iget v6, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    #@3e
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41
    move-result-object v6

    #@42
    const/4 v7, 0x2

    #@43
    aput-object v6, v5, v7

    #@45
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@47
    const/4 v7, 0x3

    #@48
    aput-object v6, v5, v7

    #@4a
    const/4 v6, 0x4

    #@4b
    aput-object p4, v5, v6

    #@4d
    .line 2870
    const/16 v6, 0x7531

    #@4f
    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@52
    .line 2873
    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@54
    .line 2874
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@57
    move-result v2

    #@58
    .line 2875
    .local v2, "index":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5b
    move-result v5

    #@5c
    add-int/lit8 v5, v5, -0x1

    #@5e
    if-ge v2, v5, :cond_1

    #@60
    .line 2876
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    #@63
    .line 2877
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@65
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    #@68
    move-result v5

    #@69
    const/high16 v6, 0x80000

    #@6b
    and-int/2addr v5, v6

    #@6c
    if-eqz v5, :cond_1

    #@6e
    .line 2881
    add-int/lit8 v5, v2, 0x1

    #@70
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@73
    move-result-object v3

    #@74
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    #@76
    .line 2882
    .local v3, "next":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@78
    const/high16 v6, 0x80000

    #@7a
    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@7d
    .line 2886
    .end local v3    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    #@80
    .line 2888
    const-string/jumbo v5, "finishActivity"

    #@83
    invoke-direct {p0, p1, v5}, Lcom/android/server/am/ActivityStack;->adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    #@86
    .line 2890
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    #@89
    .line 2892
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@8b
    if-ne v5, p1, :cond_6

    #@8d
    .line 2893
    if-gtz v2, :cond_4

    #@8f
    const/4 v1, 0x1

    #@90
    .line 2896
    .local v1, "endTask":Z
    :goto_0
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@92
    if-eqz v1, :cond_5

    #@94
    .line 2897
    const/16 v5, 0x9

    #@96
    .line 2898
    :goto_1
    const/4 v7, 0x0

    #@97
    .line 2896
    invoke-virtual {v6, v5, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    #@9a
    .line 2901
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@9c
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@9e
    const/4 v7, 0x0

    #@9f
    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    #@a2
    .line 2903
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@a4
    if-nez v5, :cond_2

    #@a6
    .line 2907
    const/4 v5, 0x0

    #@a7
    const/4 v6, 0x0

    #@a8
    const/4 v7, 0x0

    #@a9
    const/4 v8, 0x0

    #@aa
    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZZZ)Z

    #@ad
    .line 2910
    :cond_2
    if-eqz v1, :cond_3

    #@af
    .line 2911
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@b1
    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityStackSupervisor;->removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V

    #@b4
    .line 2922
    .end local v1    # "endTask":Z
    :cond_3
    const/4 v5, 0x0

    #@b5
    return v5

    #@b6
    .line 2893
    :cond_4
    const/4 v1, 0x0

    #@b7
    .restart local v1    # "endTask":Z
    goto :goto_0

    #@b8
    .line 2898
    :cond_5
    const/4 v5, 0x7

    #@b9
    goto :goto_1

    #@ba
    .line 2913
    .end local v1    # "endTask":Z
    :cond_6
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@bc
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@be
    if-eq v5, v6, :cond_3

    #@c0
    .line 2917
    const/4 v5, 0x1

    #@c1
    invoke-virtual {p0, p1, v5, p5}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    #@c4
    move-result-object v5

    #@c5
    if-nez v5, :cond_7

    #@c7
    const/4 v5, 0x1

    #@c8
    :goto_2
    return v5

    #@c9
    :cond_7
    const/4 v5, 0x0

    #@ca
    goto :goto_2
.end method

.method final finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 2827
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@3
    .line 2828
    .local v6, "resultTo":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_2

    #@5
    .line 2832
    iget v0, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    #@7
    iget v1, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    #@9
    if-eq v0, v1, :cond_0

    #@b
    .line 2833
    if-eqz p3, :cond_0

    #@d
    .line 2834
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    #@f
    invoke-virtual {p3, v0}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    #@12
    .line 2837
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@14
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@16
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@18
    if-lez v0, :cond_1

    #@1a
    .line 2838
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1c
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@1e
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@20
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@22
    .line 2839
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@24
    .line 2840
    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    #@27
    move-result-object v4

    #@28
    iget v5, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    #@2a
    move-object v3, p3

    #@2b
    .line 2838
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    #@2e
    .line 2842
    :cond_1
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    #@30
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    #@32
    move-object v0, v6

    #@33
    move-object v1, p1

    #@34
    move v4, p2

    #@35
    move-object v5, p3

    #@36
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    #@39
    .line 2844
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@3b
    .line 2851
    :cond_2
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    #@3d
    .line 2852
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    #@3f
    .line 2853
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    #@41
    .line 2854
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    #@43
    .line 2825
    return-void
.end method

.method finishAllActivitiesLocked(Z)V
    .locals 9
    .param p1, "immediately"    # Z

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2994
    const/4 v2, 0x1

    #@2
    .line 2995
    .local v2, "noActivitiesInStack":Z
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v5

    #@8
    add-int/lit8 v4, v5, -0x1

    #@a
    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_3

    #@c
    .line 2996
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v5

    #@12
    check-cast v5, Lcom/android/server/am/TaskRecord;

    #@14
    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@16
    .line 2997
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v5

    #@1a
    add-int/lit8 v1, v5, -0x1

    #@1c
    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_2

    #@1e
    .line 2998
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    #@24
    .line 2999
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    #@25
    .line 3000
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@27
    if-eqz v5, :cond_0

    #@29
    if-eqz p1, :cond_1

    #@2b
    .line 3003
    :cond_0
    const-string/jumbo v5, "ActivityManager"

    #@2e
    new-instance v6, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v7, "finishAllActivitiesLocked: finishing "

    #@36
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v6

    #@3e
    const-string/jumbo v7, " immediately"

    #@41
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v6

    #@49
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    .line 3004
    invoke-virtual {p0, v3, v8, v8}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    #@4f
    .line 2997
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@51
    goto :goto_1

    #@52
    .line 2995
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    #@54
    goto :goto_0

    #@55
    .line 3007
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_3
    if-eqz v2, :cond_4

    #@57
    .line 3008
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@59
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->onTaskListEmptyLocked()V

    #@5c
    .line 2993
    :cond_4
    return-void
.end method

.method final finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "mode"    # I
    .param p3, "oomAdj"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 2933
    const/4 v3, 0x2

    #@3
    if-ne p2, v3, :cond_4

    #@5
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    #@7
    if-eqz v3, :cond_4

    #@9
    .line 2934
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@b
    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_1

    #@13
    .line 2935
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@15
    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@1a
    .line 2936
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1c
    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@21
    move-result v2

    #@22
    const/4 v3, 0x3

    #@23
    if-gt v2, v3, :cond_0

    #@25
    .line 2937
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    #@27
    if-eqz v2, :cond_3

    #@29
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@2e
    move-result v2

    #@2f
    if-gt v2, v4, :cond_3

    #@31
    .line 2942
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@33
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    #@36
    .line 2949
    :cond_1
    :goto_0
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@38
    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@3a
    .line 2950
    if-eqz p3, :cond_2

    #@3c
    .line 2951
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@3e
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    #@41
    .line 2953
    :cond_2
    return-object p1

    #@42
    .line 2944
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@44
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    #@47
    goto :goto_0

    #@48
    .line 2957
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@4a
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    #@4c
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@4f
    .line 2958
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@51
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    #@53
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@56
    .line 2959
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@58
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@5a
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5d
    .line 2960
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@5f
    if-ne v3, p1, :cond_5

    #@61
    .line 2961
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@63
    .line 2963
    :cond_5
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@65
    .line 2965
    .local v1, "prevState":Lcom/android/server/am/ActivityStack$ActivityState;
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@67
    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@69
    .line 2967
    if-eqz p2, :cond_6

    #@6b
    .line 2968
    if-ne p2, v4, :cond_9

    #@6d
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@6f
    if-ne v1, v3, :cond_9

    #@71
    .line 2973
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    #@74
    .line 2974
    const-string/jumbo v3, "finish-imm"

    #@77
    invoke-virtual {p0, p1, v4, v3}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    #@7a
    move-result v0

    #@7b
    .line 2975
    .local v0, "activityRemoved":Z
    if-eqz v0, :cond_7

    #@7d
    .line 2976
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@7f
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    #@82
    .line 2981
    :cond_7
    if-eqz v0, :cond_8

    #@84
    move-object p1, v2

    #@85
    .end local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_8
    return-object p1

    #@86
    .line 2969
    .end local v0    # "activityRemoved":Z
    .restart local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_9
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@88
    if-eq v1, v3, :cond_6

    #@8a
    .line 2970
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@8c
    if-eq v1, v3, :cond_6

    #@8e
    .line 2987
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@90
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    #@92
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@95
    .line 2988
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    #@98
    .line 2989
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@9a
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    #@9d
    move-result-object v3

    #@9e
    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    #@a1
    .line 2990
    return-object p1
.end method

.method finishDisabledPackageActivitiesLocked(Ljava/lang/String;Ljava/util/Set;ZZI)Z
    .locals 15
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
    .line 4047
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v9, 0x0

    #@1
    .line 4048
    .local v9, "didSomething":Z
    const/4 v11, 0x0

    #@2
    .line 4049
    .local v11, "lastTask":Lcom/android/server/am/TaskRecord;
    const/4 v10, 0x0

    #@3
    .line 4050
    .local v10, "homeActivity":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v1

    #@9
    add-int/lit8 v14, v1, -0x1

    #@b
    .end local v10    # "homeActivity":Landroid/content/ComponentName;
    .end local v11    # "lastTask":Lcom/android/server/am/TaskRecord;
    .local v14, "taskNdx":I
    :goto_0
    if-ltz v14, :cond_d

    #@d
    .line 4051
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Lcom/android/server/am/TaskRecord;

    #@15
    iget-object v7, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@17
    .line 4052
    .local v7, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v12

    #@1b
    .line 4053
    .local v12, "numActivities":I
    const/4 v8, 0x0

    #@1c
    .local v8, "activityNdx":I
    :goto_1
    if-ge v8, v12, :cond_c

    #@1e
    .line 4054
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Lcom/android/server/am/ActivityRecord;

    #@24
    .line 4056
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@26
    move-object/from16 v0, p1

    #@28
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_0

    #@2e
    if-eqz p2, :cond_4

    #@30
    .line 4057
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@32
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    move-object/from16 v0, p2

    #@38
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@3b
    move-result v1

    #@3c
    .line 4056
    if-nez v1, :cond_4

    #@3e
    .line 4058
    :cond_0
    if-nez p1, :cond_5

    #@40
    iget v1, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    #@42
    move/from16 v0, p5

    #@44
    if-ne v1, v0, :cond_5

    #@46
    const/4 v13, 0x1

    #@47
    .line 4059
    .local v13, "sameComponent":Z
    :goto_2
    const/4 v1, -0x1

    #@48
    move/from16 v0, p5

    #@4a
    if-eq v0, v1, :cond_1

    #@4c
    iget v1, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    #@4e
    move/from16 v0, p5

    #@50
    if-ne v1, v0, :cond_3

    #@52
    .line 4060
    :cond_1
    if-nez v13, :cond_2

    #@54
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@56
    if-ne v1, v11, :cond_3

    #@58
    .line 4061
    :cond_2
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@5a
    if-eqz v1, :cond_6

    #@5c
    if-nez p4, :cond_6

    #@5e
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@60
    iget-boolean v1, v1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    #@62
    if-eqz v1, :cond_6

    #@64
    .line 4053
    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    #@66
    goto :goto_1

    #@67
    .line 4056
    .end local v13    # "sameComponent":Z
    :cond_4
    const/4 v13, 0x1

    #@68
    .restart local v13    # "sameComponent":Z
    goto :goto_2

    #@69
    .line 4058
    .end local v13    # "sameComponent":Z
    :cond_5
    const/4 v13, 0x0

    #@6a
    .restart local v13    # "sameComponent":Z
    goto :goto_2

    #@6b
    .line 4062
    :cond_6
    if-nez p3, :cond_7

    #@6d
    .line 4063
    iget-boolean v1, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@6f
    if-nez v1, :cond_3

    #@71
    .line 4068
    const/4 v1, 0x1

    #@72
    return v1

    #@73
    .line 4070
    :cond_7
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    #@76
    move-result v1

    #@77
    if-eqz v1, :cond_9

    #@79
    .line 4071
    if-eqz v10, :cond_8

    #@7b
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@7d
    invoke-virtual {v10, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@80
    move-result v1

    #@81
    if-eqz v1, :cond_8

    #@83
    .line 4072
    const-string/jumbo v1, "ActivityManager"

    #@86
    new-instance v3, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    const-string/jumbo v4, "Skip force-stop again "

    #@8e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v3

    #@92
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v3

    #@96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v3

    #@9a
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9d
    goto :goto_3

    #@9e
    .line 4075
    :cond_8
    iget-object v10, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@a0
    .line 4078
    :cond_9
    const/4 v9, 0x1

    #@a1
    .line 4079
    const-string/jumbo v1, "ActivityManager"

    #@a4
    new-instance v3, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    const-string/jumbo v4, "  Force finishing activity "

    #@ac
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    move-result-object v3

    #@b0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v3

    #@b4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b7
    move-result-object v3

    #@b8
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@bb
    .line 4080
    if-eqz v13, :cond_b

    #@bd
    .line 4081
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@bf
    if-eqz v1, :cond_a

    #@c1
    .line 4082
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@c3
    const/4 v3, 0x1

    #@c4
    iput-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->removed:Z

    #@c6
    .line 4084
    :cond_a
    const/4 v1, 0x0

    #@c7
    iput-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@c9
    .line 4086
    :cond_b
    iget-object v11, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@cb
    .line 4087
    .local v11, "lastTask":Lcom/android/server/am/TaskRecord;
    const-string/jumbo v5, "force-stop"

    #@ce
    const/4 v3, 0x0

    #@cf
    const/4 v4, 0x0

    #@d0
    .line 4088
    const/4 v6, 0x1

    #@d1
    move-object v1, p0

    #@d2
    .line 4087
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@d5
    move-result v1

    #@d6
    if-eqz v1, :cond_3

    #@d8
    .line 4090
    add-int/lit8 v12, v12, -0x1

    #@da
    .line 4091
    add-int/lit8 v8, v8, -0x1

    #@dc
    goto :goto_3

    #@dd
    .line 4050
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "lastTask":Lcom/android/server/am/TaskRecord;
    .end local v13    # "sameComponent":Z
    :cond_c
    add-int/lit8 v14, v14, -0x1

    #@df
    goto/16 :goto_0

    #@e1
    .line 4096
    .end local v7    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v8    # "activityNdx":I
    .end local v12    # "numActivities":I
    :cond_d
    return v9
.end method

.method final finishSubActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .locals 9
    .param p1, "self"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultWho"    # Ljava/lang/String;
    .param p3, "requestCode"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 2738
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v0

    #@8
    add-int/lit8 v8, v0, -0x1

    #@a
    .local v8, "taskNdx":I
    :goto_0
    if-ltz v8, :cond_3

    #@c
    .line 2739
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/server/am/TaskRecord;

    #@14
    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@16
    .line 2740
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v0

    #@1a
    add-int/lit8 v7, v0, -0x1

    #@1c
    .local v7, "activityNdx":I
    :goto_1
    if-ltz v7, :cond_2

    #@1e
    .line 2741
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@24
    .line 2742
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@26
    if-ne v0, p1, :cond_0

    #@28
    iget v0, v1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    #@2a
    if-ne v0, p3, :cond_0

    #@2c
    .line 2743
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    #@2e
    if-nez v0, :cond_1

    #@30
    if-nez p2, :cond_1

    #@32
    .line 2745
    :goto_2
    const-string/jumbo v4, "request-sub"

    #@35
    move-object v0, p0

    #@36
    move v5, v2

    #@37
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@3a
    .line 2740
    :cond_0
    add-int/lit8 v7, v7, -0x1

    #@3c
    goto :goto_1

    #@3d
    .line 2744
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    #@3f
    if-eqz v0, :cond_0

    #@41
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    #@43
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v0

    #@47
    .line 2743
    if-eqz v0, :cond_0

    #@49
    goto :goto_2

    #@4a
    .line 2738
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v8, v8, -0x1

    #@4c
    goto :goto_0

    #@4d
    .line 2751
    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v7    # "activityNdx":I
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4f
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    #@52
    .line 2737
    return-void
.end method

.method final finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 2755
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@5
    move-result-object v1

    #@6
    .line 2756
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_3

    #@8
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@a
    if-ne v0, p1, :cond_3

    #@c
    .line 2759
    const-string/jumbo v0, "ActivityManager"

    #@f
    new-instance v4, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v5, "  Force finishing activity "

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    .line 2760
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@1d
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    .line 2759
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v4

    #@2d
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 2761
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@32
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@34
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@37
    move-result v7

    #@38
    .line 2762
    .local v7, "taskNdx":I
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@3a
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@3c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@3f
    move-result v6

    #@40
    .local v6, "activityNdx":I
    move-object v0, p0

    #@41
    move-object v4, p2

    #@42
    move v5, v2

    #@43
    .line 2763
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@46
    .line 2767
    add-int/lit8 v6, v6, -0x1

    #@48
    .line 2768
    if-gez v6, :cond_0

    #@4a
    .line 2770
    :goto_0
    add-int/lit8 v7, v7, -0x1

    #@4c
    .line 2771
    if-gez v7, :cond_4

    #@4e
    .line 2777
    :cond_0
    if-ltz v6, :cond_3

    #@50
    .line 2778
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@52
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@55
    move-result-object v0

    #@56
    check-cast v0, Lcom/android/server/am/TaskRecord;

    #@58
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@5a
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5d
    move-result-object v1

    #@5e
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@60
    .line 2779
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@62
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@64
    if-eq v0, v4, :cond_1

    #@66
    .line 2780
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@68
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@6a
    if-ne v0, v4, :cond_5

    #@6c
    .line 2782
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    #@6f
    move-result v0

    #@70
    if-eqz v0, :cond_2

    #@72
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@74
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    #@76
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@78
    if-eq v0, v4, :cond_3

    #@7a
    .line 2783
    :cond_2
    const-string/jumbo v0, "ActivityManager"

    #@7d
    new-instance v4, Ljava/lang/StringBuilder;

    #@7f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@82
    const-string/jumbo v5, "  Force finishing activity "

    #@85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v4

    #@89
    .line 2784
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@8b
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@8e
    move-result-object v5

    #@8f
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@92
    move-result-object v5

    #@93
    .line 2783
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v4

    #@97
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9a
    move-result-object v4

    #@9b
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9e
    move-object v0, p0

    #@9f
    move-object v4, p2

    #@a0
    move v5, v2

    #@a1
    .line 2785
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@a4
    .line 2754
    .end local v6    # "activityNdx":I
    .end local v7    # "taskNdx":I
    :cond_3
    return-void

    #@a5
    .line 2774
    .restart local v6    # "activityNdx":I
    .restart local v7    # "taskNdx":I
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@a7
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@aa
    move-result-object v0

    #@ab
    check-cast v0, Lcom/android/server/am/TaskRecord;

    #@ad
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@af
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@b2
    move-result v0

    #@b3
    add-int/lit8 v6, v0, -0x1

    #@b5
    .line 2775
    if-gez v6, :cond_0

    #@b7
    goto :goto_0

    #@b8
    .line 2781
    :cond_5
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@ba
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@bc
    if-ne v0, v4, :cond_3

    #@be
    goto :goto_1
.end method

.method final finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 11
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 2793
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v8

    #@6
    .line 2794
    .local v8, "sessionBinder":Landroid/os/IBinder;
    const/4 v7, 0x0

    #@7
    .line 2795
    .local v7, "didOne":Z
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v0

    #@d
    add-int/lit8 v9, v0, -0x1

    #@f
    .local v9, "taskNdx":I
    :goto_0
    if-ltz v9, :cond_2

    #@11
    .line 2796
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v10

    #@17
    check-cast v10, Lcom/android/server/am/TaskRecord;

    #@19
    .line 2797
    .local v10, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@1b
    if-eqz v0, :cond_1

    #@1d
    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@1f
    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    #@22
    move-result-object v0

    #@23
    if-ne v0, v8, :cond_1

    #@25
    .line 2798
    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@2a
    move-result v0

    #@2b
    add-int/lit8 v6, v0, -0x1

    #@2d
    .local v6, "activityNdx":I
    :goto_1
    if-ltz v6, :cond_1

    #@2f
    .line 2799
    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v1

    #@35
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@37
    .line 2800
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@39
    if-nez v0, :cond_0

    #@3b
    .line 2801
    const-string/jumbo v4, "finish-voice"

    #@3e
    move-object v0, p0

    #@3f
    move v5, v2

    #@40
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@43
    .line 2803
    const/4 v7, 0x1

    #@44
    .line 2798
    :cond_0
    add-int/lit8 v6, v6, -0x1

    #@46
    goto :goto_1

    #@47
    .line 2795
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "activityNdx":I
    :cond_1
    add-int/lit8 v9, v9, -0x1

    #@49
    goto :goto_0

    #@4a
    .line 2808
    .end local v10    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_2
    if-eqz v7, :cond_3

    #@4c
    .line 2809
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4e
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    #@51
    .line 2792
    :cond_3
    return-void
.end method

.method getAllTasks()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 4359
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@7
    return-object v0
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
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
    .line 4226
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 4228
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const-string/jumbo v8, "all"

    #@8
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v8

    #@c
    if-eqz v8, :cond_0

    #@e
    .line 4229
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v8

    #@14
    add-int/lit8 v6, v8, -0x1

    #@16
    .local v6, "taskNdx":I
    :goto_0
    if-ltz v6, :cond_1

    #@18
    .line 4230
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v8

    #@1e
    check-cast v8, Lcom/android/server/am/TaskRecord;

    #@20
    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    #@25
    .line 4229
    add-int/lit8 v6, v6, -0x1

    #@27
    goto :goto_0

    #@28
    .line 4232
    .end local v6    # "taskNdx":I
    :cond_0
    const-string/jumbo v8, "top"

    #@2b
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v8

    #@2f
    if-eqz v8, :cond_2

    #@31
    .line 4233
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@36
    move-result v8

    #@37
    add-int/lit8 v7, v8, -0x1

    #@39
    .line 4234
    .local v7, "top":I
    if-ltz v7, :cond_1

    #@3b
    .line 4235
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@3d
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@40
    move-result-object v8

    #@41
    check-cast v8, Lcom/android/server/am/TaskRecord;

    #@43
    iget-object v1, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@45
    .line 4236
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@48
    move-result v8

    #@49
    add-int/lit8 v2, v8, -0x1

    #@4b
    .line 4237
    .local v2, "listTop":I
    if-ltz v2, :cond_1

    #@4d
    .line 4238
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@50
    move-result-object v8

    #@51
    check-cast v8, Lcom/android/server/am/ActivityRecord;

    #@53
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@56
    .line 4254
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "listTop":I
    .end local v7    # "top":I
    :cond_1
    return-object v0

    #@57
    .line 4242
    :cond_2
    new-instance v3, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    #@59
    invoke-direct {v3}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    #@5c
    .line 4243
    .local v3, "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    #@5f
    .line 4245
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@61
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@64
    move-result v8

    #@65
    add-int/lit8 v6, v8, -0x1

    #@67
    .restart local v6    # "taskNdx":I
    :goto_1
    if-ltz v6, :cond_1

    #@69
    .line 4246
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@6b
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6e
    move-result-object v8

    #@6f
    check-cast v8, Lcom/android/server/am/TaskRecord;

    #@71
    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@73
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@76
    move-result-object v5

    #@77
    .local v5, "r1$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@7a
    move-result v8

    #@7b
    if-eqz v8, :cond_4

    #@7d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@80
    move-result-object v4

    #@81
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    #@83
    .line 4247
    .local v4, "r1":Lcom/android/server/am/ActivityRecord;
    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@85
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@88
    move-result-object v8

    #@89
    invoke-virtual {v3, v4, v8}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    #@8c
    move-result v8

    #@8d
    if-eqz v8, :cond_3

    #@8f
    .line 4248
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@92
    goto :goto_2

    #@93
    .line 4245
    .end local v4    # "r1":Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v6, v6, -0x1

    #@95
    goto :goto_1
.end method

.method public getStackId()I
    .locals 1

    #@0
    .prologue
    .line 4379
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@2
    return v0
.end method

.method getTasksLocked(Ljava/util/List;IZ)V
    .locals 16
    .param p2, "callingUid"    # I
    .param p3, "allowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;IZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 4100
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    move-object/from16 v0, p0

    #@2
    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@4
    invoke-virtual {v14}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    #@7
    move-result-object v14

    #@8
    move-object/from16 v0, p0

    #@a
    if-ne v14, v0, :cond_0

    #@c
    const/4 v5, 0x1

    #@d
    .line 4101
    .local v5, "focusedStack":Z
    :goto_0
    const/4 v13, 0x1

    #@e
    .line 4102
    .local v13, "topTask":Z
    move-object/from16 v0, p0

    #@10
    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    #@15
    move-result v14

    #@16
    add-int/lit8 v10, v14, -0x1

    #@18
    .local v10, "taskNdx":I
    :goto_1
    if-ltz v10, :cond_b

    #@1a
    .line 4103
    move-object/from16 v0, p0

    #@1c
    iget-object v14, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v9

    #@22
    check-cast v9, Lcom/android/server/am/TaskRecord;

    #@24
    .line 4104
    .local v9, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    #@27
    move-result-object v14

    #@28
    if-nez v14, :cond_1

    #@2a
    .line 4102
    :goto_2
    add-int/lit8 v10, v10, -0x1

    #@2c
    goto :goto_1

    #@2d
    .line 4100
    .end local v5    # "focusedStack":Z
    .end local v9    # "task":Lcom/android/server/am/TaskRecord;
    .end local v10    # "taskNdx":I
    .end local v13    # "topTask":Z
    :cond_0
    const/4 v5, 0x0

    #@2e
    .restart local v5    # "focusedStack":Z
    goto :goto_0

    #@2f
    .line 4107
    .restart local v9    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v10    # "taskNdx":I
    .restart local v13    # "topTask":Z
    :cond_1
    const/4 v8, 0x0

    #@30
    .line 4108
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v12, 0x0

    #@31
    .line 4110
    .local v12, "top":Lcom/android/server/am/ActivityRecord;
    const/4 v6, 0x0

    #@32
    .line 4111
    .local v6, "numActivities":I
    const/4 v7, 0x0

    #@33
    .line 4112
    .local v7, "numRunning":I
    iget-object v2, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@35
    .line 4113
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    if-nez p3, :cond_2

    #@37
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    #@3a
    move-result v14

    #@3b
    if-eqz v14, :cond_4

    #@3d
    .line 4116
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@40
    move-result v14

    #@41
    add-int/lit8 v3, v14, -0x1

    #@43
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v12    # "top":Lcom/android/server/am/ActivityRecord;
    .local v3, "activityNdx":I
    :goto_3
    if-ltz v3, :cond_8

    #@45
    .line 4117
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@48
    move-result-object v11

    #@49
    check-cast v11, Lcom/android/server/am/ActivityRecord;

    #@4b
    .line 4118
    .local v11, "tmp":Lcom/android/server/am/ActivityRecord;
    iget-boolean v14, v11, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@4d
    if-eqz v14, :cond_5

    #@4f
    .line 4116
    :cond_3
    :goto_4
    add-int/lit8 v3, v3, -0x1

    #@51
    goto :goto_3

    #@52
    .line 4113
    .end local v3    # "activityNdx":I
    .end local v11    # "tmp":Lcom/android/server/am/ActivityRecord;
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v12    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_4
    iget v14, v9, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    #@54
    move/from16 v0, p2

    #@56
    if-eq v14, v0, :cond_2

    #@58
    goto :goto_2

    #@59
    .line 4121
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v12    # "top":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "activityNdx":I
    .restart local v11    # "tmp":Lcom/android/server/am/ActivityRecord;
    :cond_5
    move-object v8, v11

    #@5a
    .line 4124
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v12, :cond_6

    #@5c
    iget-object v14, v12, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@5e
    sget-object v15, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@60
    if-ne v14, v15, :cond_7

    #@62
    .line 4125
    :cond_6
    move-object v12, v8

    #@63
    .line 4126
    .local v12, "top":Lcom/android/server/am/ActivityRecord;
    const/4 v7, 0x0

    #@64
    const/4 v6, 0x0

    #@65
    .line 4130
    .end local v12    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_7
    add-int/lit8 v6, v6, 0x1

    #@67
    .line 4131
    iget-object v14, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@69
    if-eqz v14, :cond_3

    #@6b
    iget-object v14, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@6d
    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@6f
    if-eqz v14, :cond_3

    #@71
    .line 4132
    add-int/lit8 v7, v7, 0x1

    #@73
    goto :goto_4

    #@74
    .line 4140
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "tmp":Lcom/android/server/am/ActivityRecord;
    :cond_8
    new-instance v4, Landroid/app/ActivityManager$RunningTaskInfo;

    #@76
    invoke-direct {v4}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    #@79
    .line 4141
    .local v4, "ci":Landroid/app/ActivityManager$RunningTaskInfo;
    iget v14, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    #@7b
    iput v14, v4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    #@7d
    .line 4142
    iget-object v14, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@7f
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@82
    move-result-object v14

    #@83
    iput-object v14, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    #@85
    .line 4143
    iget-object v14, v12, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@87
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@8a
    move-result-object v14

    #@8b
    iput-object v14, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    #@8d
    .line 4144
    iget-wide v14, v9, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    #@8f
    iput-wide v14, v4, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    #@91
    .line 4145
    if-eqz v5, :cond_9

    #@93
    if-eqz v13, :cond_9

    #@95
    .line 4148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@98
    move-result-wide v14

    #@99
    iput-wide v14, v4, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    #@9b
    .line 4149
    const/4 v13, 0x0

    #@9c
    .line 4152
    :cond_9
    iget-object v14, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@9e
    if-eqz v14, :cond_a

    #@a0
    .line 4153
    iget-object v14, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@a2
    iget-object v14, v14, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    #@a4
    iput-object v14, v4, Landroid/app/ActivityManager$RunningTaskInfo;->description:Ljava/lang/CharSequence;

    #@a6
    .line 4155
    :cond_a
    iput v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    #@a8
    .line 4156
    iput v7, v4, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    #@aa
    .line 4157
    move-object/from16 v0, p1

    #@ac
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@af
    goto/16 :goto_2

    #@b1
    .line 4099
    .end local v2    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "activityNdx":I
    .end local v4    # "ci":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v6    # "numActivities":I
    .end local v7    # "numRunning":I
    .end local v9    # "task":Lcom/android/server/am/TaskRecord;
    :cond_b
    return-void
.end method

.method getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;
    .locals 1

    #@0
    .prologue
    .line 3503
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@8
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@a
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mVisibleBehindActivity:Lcom/android/server/am/ActivityRecord;

    #@c
    :goto_0
    return-object v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method goToSleep()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 762
    const/4 v4, 0x0

    #@2
    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    #@5
    .line 766
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v4

    #@b
    add-int/lit8 v3, v4, -0x1

    #@d
    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_3

    #@f
    .line 767
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v4

    #@15
    check-cast v4, Lcom/android/server/am/TaskRecord;

    #@17
    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@19
    .line 768
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v4

    #@1d
    add-int/lit8 v1, v4, -0x1

    #@1f
    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_2

    #@21
    .line 769
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Lcom/android/server/am/ActivityRecord;

    #@27
    .line 770
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@29
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@2b
    if-eq v4, v5, :cond_0

    #@2d
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@2f
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@31
    if-ne v4, v5, :cond_1

    #@33
    .line 771
    :cond_0
    const/4 v4, 0x1

    #@34
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    #@37
    .line 768
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@39
    goto :goto_1

    #@3a
    .line 766
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    #@3c
    goto :goto_0

    #@3d
    .line 761
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_3
    return-void
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 4194
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v4

    #@7
    add-int/lit8 v3, v4, -0x1

    #@9
    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_2

    #@b
    .line 4195
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v4

    #@11
    check-cast v4, Lcom/android/server/am/TaskRecord;

    #@13
    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@15
    .line 4196
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v4

    #@19
    add-int/lit8 v1, v4, -0x1

    #@1b
    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_1

    #@1d
    .line 4197
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Lcom/android/server/am/ActivityRecord;

    #@23
    .line 4198
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@25
    if-ne v4, p1, :cond_0

    #@27
    .line 4199
    const-string/jumbo v4, "ActivityManager"

    #@2a
    new-instance v5, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v6, "  Force finishing activity "

    #@32
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v5

    #@36
    .line 4200
    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@38
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@3b
    move-result-object v6

    #@3c
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@3f
    move-result-object v6

    #@40
    .line 4199
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v5

    #@48
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 4202
    const/4 v4, 0x0

    #@4c
    iput-object v4, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@4e
    .line 4203
    invoke-virtual {p0, v2, v7, v7}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    #@51
    .line 4196
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@53
    goto :goto_1

    #@54
    .line 4194
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    #@56
    goto :goto_0

    #@57
    .line 4193
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_2
    return-void
.end method

.method handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 4180
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@7
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@9
    if-ne v0, p1, :cond_0

    #@b
    .line 4183
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@d
    .line 4185
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    #@f
    if-eqz v0, :cond_1

    #@11
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    #@13
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@15
    if-ne v0, p1, :cond_1

    #@17
    .line 4186
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    #@19
    .line 4187
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    #@1b
    .line 4190
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)Z

    #@1e
    move-result v0

    #@1f
    return v0
.end method

.method hasVisibleBehindActivity()Z
    .locals 1

    #@0
    .prologue
    .line 3493
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@8
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@a
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->hasVisibleBehindActivity()Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x0

    #@10
    goto :goto_0
.end method

.method final isAttached()Z
    .locals 1

    #@0
    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method final isHomeStack()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 480
    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 455
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    #@3
    move-result-object v0

    #@4
    .line 456
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 460
    if-nez p1, :cond_0

    #@3
    .line 461
    return-object v2

    #@4
    .line 463
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@6
    .line 464
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_2

    #@8
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@a
    if-eqz v1, :cond_2

    #@c
    .line 465
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    .line 464
    if-eqz v1, :cond_2

    #@14
    .line 465
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    .line 464
    if-eqz v1, :cond_2

    #@1c
    .line 466
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@1e
    if-eq v1, p0, :cond_1

    #@20
    const-string/jumbo v1, "ActivityManager"

    #@23
    .line 467
    const-string/jumbo v2, "Illegal state! task does not point to stack it is in."

    #@26
    .line 466
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 468
    :cond_1
    return-object p1

    #@2a
    .line 470
    :cond_2
    return-object v2
.end method

.method final isOnHomeDisplay()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 484
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 485
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@9
    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@b
    iget v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    #@d
    if-nez v1, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    .line 484
    :cond_0
    return v0
.end method

.method minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 665
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@2
    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@4
    .line 668
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    #@7
    .line 669
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@9
    .line 670
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@b
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    #@e
    .line 671
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@10
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@12
    invoke-virtual {v0, v1}, Lcom/android/server/am/RecentTasks;->addLocked(Lcom/android/server/am/TaskRecord;)V

    #@15
    .line 672
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V

    #@18
    .line 673
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1a
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    #@1d
    .line 674
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->setLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    #@20
    .line 664
    return-void
.end method

.method moveHomeStackTaskToTop(I)V
    .locals 4
    .param p1, "homeStackTaskType"    # I

    #@0
    .prologue
    .line 3632
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v3

    #@6
    add-int/lit8 v2, v3, -0x1

    #@8
    .line 3633
    .local v2, "top":I
    move v1, v2

    #@9
    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_1

    #@b
    .line 3634
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/am/TaskRecord;

    #@13
    .line 3635
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget v3, v0, Lcom/android/server/am/TaskRecord;->taskType:I

    #@15
    if-ne v3, p1, :cond_0

    #@17
    .line 3638
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@1c
    .line 3639
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@21
    .line 3640
    const/4 v3, 0x1

    #@22
    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    #@25
    .line 3641
    return-void

    #@26
    .line 3633
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@28
    goto :goto_0

    #@29
    .line 3631
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    return-void
.end method

.method final moveTaskToBackLocked(I)Z
    .locals 14
    .param p1, "taskId"    # I

    #@0
    .prologue
    .line 3708
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    #@3
    move-result-object v10

    #@4
    .line 3709
    .local v10, "tr":Lcom/android/server/am/TaskRecord;
    if-nez v10, :cond_0

    #@6
    .line 3710
    const-string/jumbo v11, "ActivityManager"

    #@9
    new-instance v12, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v13, "moveTaskToBack: bad taskId="

    #@11
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v12

    #@15
    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v12

    #@19
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v12

    #@1d
    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 3711
    const/4 v11, 0x0

    #@21
    return v11

    #@22
    .line 3714
    :cond_0
    const-string/jumbo v11, "ActivityManager"

    #@25
    new-instance v12, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v13, "moveTaskToBack: "

    #@2d
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v12

    #@31
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v12

    #@35
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v12

    #@39
    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 3715
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@3e
    invoke-virtual {v11, v10}, Lcom/android/server/am/ActivityStackSupervisor;->removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V

    #@41
    .line 3720
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@43
    invoke-virtual {v11, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    #@46
    move-result v11

    #@47
    if-eqz v11, :cond_2

    #@49
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4b
    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    #@4d
    if-eqz v11, :cond_2

    #@4f
    .line 3721
    const/4 v11, 0x0

    #@50
    invoke-virtual {p0, v11, p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    #@53
    move-result-object v3

    #@54
    .line 3722
    .local v3, "next":Lcom/android/server/am/ActivityRecord;
    if-nez v3, :cond_1

    #@56
    .line 3723
    const/4 v11, 0x0

    #@57
    const/4 v12, 0x0

    #@58
    invoke-virtual {p0, v11, v12}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    #@5b
    move-result-object v3

    #@5c
    .line 3725
    :cond_1
    if-eqz v3, :cond_2

    #@5e
    .line 3727
    const/4 v2, 0x1

    #@5f
    .line 3729
    .local v2, "moveOK":Z
    :try_start_0
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@61
    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    #@63
    iget-object v12, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@65
    invoke-interface {v11, v12}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@68
    move-result v2

    #@69
    .line 3734
    .end local v2    # "moveOK":Z
    :goto_0
    if-nez v2, :cond_2

    #@6b
    .line 3735
    const/4 v11, 0x0

    #@6c
    return v11

    #@6d
    .line 3730
    .restart local v2    # "moveOK":Z
    :catch_0
    move-exception v1

    #@6e
    .line 3731
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@70
    const/4 v12, 0x0

    #@71
    iput-object v12, v11, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    #@73
    .line 3732
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    #@76
    move-result-object v11

    #@77
    const/4 v12, 0x0

    #@78
    invoke-virtual {v11, v12}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    #@7b
    goto :goto_0

    #@7c
    .line 3742
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "moveOK":Z
    .end local v3    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_2
    const/4 v6, 0x0

    #@7d
    .line 3747
    .local v6, "prevIsHome":Z
    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    #@80
    move-result v11

    #@81
    if-nez v11, :cond_8

    #@83
    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    #@86
    move-result v0

    #@87
    .line 3748
    :goto_1
    if-eqz v0, :cond_3

    #@89
    .line 3749
    invoke-direct {p0, v10}, Lcom/android/server/am/ActivityStack;->getNextTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;

    #@8c
    move-result-object v4

    #@8d
    .line 3750
    .local v4, "nextTask":Lcom/android/server/am/TaskRecord;
    if-eqz v4, :cond_9

    #@8f
    .line 3751
    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    #@92
    move-result v11

    #@93
    invoke-virtual {v4, v11}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    #@96
    .line 3756
    .end local v4    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_3
    :goto_2
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@98
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@9b
    .line 3757
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@9d
    const/4 v12, 0x0

    #@9e
    invoke-virtual {v11, v12, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@a1
    .line 3758
    const/4 v11, 0x0

    #@a2
    invoke-virtual {p0, v10, v11}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    #@a5
    .line 3762
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@a7
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    #@aa
    move-result v5

    #@ab
    .line 3763
    .local v5, "numTasks":I
    add-int/lit8 v8, v5, -0x1

    #@ad
    .local v8, "taskNdx":I
    :goto_3
    const/4 v11, 0x1

    #@ae
    if-lt v8, v11, :cond_4

    #@b0
    .line 3764
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@b2
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b5
    move-result-object v7

    #@b6
    check-cast v7, Lcom/android/server/am/TaskRecord;

    #@b8
    .line 3765
    .local v7, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    #@bb
    move-result v11

    #@bc
    if-eqz v11, :cond_a

    #@be
    .line 3774
    .end local v7    # "task":Lcom/android/server/am/TaskRecord;
    :cond_4
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@c0
    const/16 v12, 0xb

    #@c2
    const/4 v13, 0x0

    #@c3
    invoke-virtual {v11, v12, v13}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    #@c6
    .line 3775
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@c8
    invoke-virtual {v11, p1}, Lcom/android/server/wm/WindowManagerService;->moveTaskToBottom(I)V

    #@cb
    .line 3781
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@cd
    if-eqz v11, :cond_c

    #@cf
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@d1
    iget-object v7, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@d3
    .line 3782
    :goto_4
    if-nez v6, :cond_6

    #@d5
    if-ne v7, v10, :cond_5

    #@d7
    if-nez v0, :cond_6

    #@d9
    :cond_5
    const/4 v11, 0x1

    #@da
    if-gt v5, v11, :cond_e

    #@dc
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    #@df
    move-result v11

    #@e0
    if-eqz v11, :cond_e

    #@e2
    .line 3783
    :cond_6
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@e4
    iget-boolean v11, v11, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    #@e6
    if-nez v11, :cond_7

    #@e8
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@ea
    iget-boolean v11, v11, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    #@ec
    if-eqz v11, :cond_d

    #@ee
    .line 3787
    :cond_7
    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    #@f1
    move-result v9

    #@f2
    .line 3788
    .local v9, "taskToReturnTo":I
    const/4 v11, 0x0

    #@f3
    invoke-virtual {v10, v11}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    #@f6
    .line 3789
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@f8
    const-string/jumbo v12, "moveTaskToBack"

    #@fb
    const/4 v13, 0x0

    #@fc
    invoke-virtual {v11, v9, v13, v12}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    #@ff
    move-result v11

    #@100
    return v11

    #@101
    .line 3747
    .end local v5    # "numTasks":I
    .end local v8    # "taskNdx":I
    .end local v9    # "taskToReturnTo":I
    :cond_8
    const/4 v0, 0x0

    #@102
    .local v0, "canGoHome":Z
    goto :goto_1

    #@103
    .line 3753
    .end local v0    # "canGoHome":Z
    .restart local v4    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_9
    const/4 v6, 0x1

    #@104
    goto :goto_2

    #@105
    .line 3768
    .end local v4    # "nextTask":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "numTasks":I
    .restart local v7    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v8    # "taskNdx":I
    :cond_a
    const/4 v11, 0x1

    #@106
    if-ne v8, v11, :cond_b

    #@108
    .line 3770
    const/4 v11, 0x1

    #@109
    invoke-virtual {v7, v11}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    #@10c
    .line 3763
    :cond_b
    add-int/lit8 v8, v8, -0x1

    #@10e
    goto :goto_3

    #@10f
    .line 3781
    .end local v7    # "task":Lcom/android/server/am/TaskRecord;
    :cond_c
    const/4 v7, 0x0

    #@110
    .local v7, "task":Lcom/android/server/am/TaskRecord;
    goto :goto_4

    #@111
    .line 3785
    .end local v7    # "task":Lcom/android/server/am/TaskRecord;
    :cond_d
    const/4 v11, 0x0

    #@112
    return v11

    #@113
    .line 3792
    :cond_e
    iget-object v11, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@115
    invoke-virtual {v11}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    #@118
    .line 3793
    const/4 v11, 0x1

    #@119
    return v11
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/os/Bundle;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V
    .locals 8
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "noAnimation"    # Z
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "timeTracker"    # Lcom/android/server/am/AppTimeTracker;
    .param p5, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v7, 0xa

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v6, 0x0

    #@4
    .line 3650
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v2

    #@a
    .line 3651
    .local v2, "numTasks":I
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@f
    move-result v1

    #@10
    .line 3652
    .local v1, "index":I
    if-eqz v2, :cond_0

    #@12
    if-gez v1, :cond_2

    #@14
    .line 3654
    :cond_0
    if-eqz p2, :cond_1

    #@16
    .line 3655
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    #@19
    .line 3659
    :goto_0
    return-void

    #@1a
    .line 3657
    :cond_1
    invoke-virtual {p0, v7, p3}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/os/Bundle;)V

    #@1d
    goto :goto_0

    #@1e
    .line 3662
    :cond_2
    if-eqz p4, :cond_3

    #@20
    .line 3664
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@25
    move-result v4

    #@26
    add-int/lit8 v0, v4, -0x1

    #@28
    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    #@2a
    .line 3665
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v4

    #@30
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    #@32
    iput-object p4, v4, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    #@34
    .line 3664
    add-int/lit8 v0, v0, -0x1

    #@36
    goto :goto_1

    #@37
    .line 3671
    .end local v0    # "i":I
    :cond_3
    invoke-direct {p0, p1, v5}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    #@3a
    .line 3674
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@3d
    move-result-object v3

    #@3e
    .line 3675
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@40
    invoke-virtual {v4, v3, p5}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    #@43
    .line 3678
    if-eqz p2, :cond_5

    #@45
    .line 3679
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@47
    invoke-virtual {v4, v6, v6}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    #@4a
    .line 3680
    if-eqz v3, :cond_4

    #@4c
    .line 3681
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    #@4e
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@51
    .line 3683
    :cond_4
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    #@54
    .line 3688
    :goto_2
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@56
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    #@59
    .line 3689
    const/4 v4, 0x2

    #@5a
    new-array v4, v4, [Ljava/lang/Object;

    #@5c
    iget v5, p1, Lcom/android/server/am/TaskRecord;->userId:I

    #@5e
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@61
    move-result-object v5

    #@62
    aput-object v5, v4, v6

    #@64
    iget v5, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    #@66
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@69
    move-result-object v5

    #@6a
    const/4 v6, 0x1

    #@6b
    aput-object v5, v4, v6

    #@6d
    const/16 v5, 0x7532

    #@6f
    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@72
    .line 3647
    return-void

    #@73
    .line 3685
    :cond_5
    invoke-virtual {p0, v7, p3}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/os/Bundle;)V

    #@76
    goto :goto_2
.end method

.method final moveToFront(Ljava/lang/String;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_2

    #@6
    .line 490
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    #@9
    move-result v3

    #@a
    if-nez v3, :cond_3

    #@c
    .line 491
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@e
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    #@10
    if-eqz v3, :cond_4

    #@12
    .line 492
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@14
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    #@16
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    #@19
    move-result v0

    #@1a
    .line 493
    :goto_0
    const/4 v1, 0x0

    #@1b
    .line 494
    .local v1, "lastFocusStack":Lcom/android/server/am/ActivityStack;
    if-nez v0, :cond_0

    #@1d
    .line 497
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@1f
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@24
    move-result v4

    #@25
    add-int/lit8 v4, v4, -0x1

    #@27
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v1

    #@2b
    .end local v1    # "lastFocusStack":Lcom/android/server/am/ActivityStack;
    check-cast v1, Lcom/android/server/am/ActivityStack;

    #@2d
    .line 498
    .local v1, "lastFocusStack":Lcom/android/server/am/ActivityStack;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@32
    .line 499
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@37
    .line 503
    .end local v1    # "lastFocusStack":Lcom/android/server/am/ActivityStack;
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    #@3a
    move-result v3

    #@3b
    if-eqz v3, :cond_1

    #@3d
    .line 504
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@3f
    invoke-virtual {v3, v0, p1, v1}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(ZLjava/lang/String;Lcom/android/server/am/ActivityStack;)V

    #@42
    .line 506
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    #@45
    move-result-object v2

    #@46
    .line 507
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_2

    #@48
    .line 508
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@4a
    iget v4, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    #@4c
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    #@4f
    .line 488
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    return-void

    #@50
    .line 490
    :cond_3
    const/4 v0, 0x1

    #@51
    .local v0, "homeStack":Z
    goto :goto_0

    #@52
    .line 491
    .end local v0    # "homeStack":Z
    :cond_4
    const/4 v0, 0x0

    #@53
    .restart local v0    # "homeStack":Z
    goto :goto_0
.end method

.method final navigateUpToLocked(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;ILandroid/content/Intent;)Z
    .locals 42
    .param p1, "srec"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "destIntent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 3051
    move-object/from16 v0, p1

    #@2
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@4
    move-object/from16 v41, v0

    #@6
    .line 3052
    .local v41, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v41

    #@8
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@a
    move-object/from16 v24, v0

    #@c
    .line 3053
    .local v24, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, v24

    #@e
    move-object/from16 v1, p1

    #@10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@13
    move-result v40

    #@14
    .line 3054
    .local v40, "start":I
    move-object/from16 v0, p0

    #@16
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@18
    move-object/from16 v0, v41

    #@1a
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_0

    #@20
    if-gez v40, :cond_1

    #@22
    .line 3055
    :cond_0
    const/4 v2, 0x0

    #@23
    return v2

    #@24
    .line 3057
    :cond_1
    add-int/lit8 v29, v40, -0x1

    #@26
    .line 3058
    .local v29, "finishTo":I
    if-gez v29, :cond_3

    #@28
    const/16 v33, 0x0

    #@2a
    .line 3059
    :goto_0
    const/16 v30, 0x0

    #@2c
    .line 3060
    .local v30, "foundParentInTask":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@2f
    move-result-object v26

    #@30
    .line 3061
    .local v26, "dest":Landroid/content/ComponentName;
    if-lez v40, :cond_2

    #@32
    if-eqz v26, :cond_2

    #@34
    .line 3062
    move/from16 v31, v29

    #@36
    .local v31, "i":I
    :goto_1
    if-ltz v31, :cond_2

    #@38
    .line 3063
    move-object/from16 v0, v24

    #@3a
    move/from16 v1, v31

    #@3c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3f
    move-result-object v37

    #@40
    check-cast v37, Lcom/android/server/am/ActivityRecord;

    #@42
    .line 3064
    .local v37, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v37

    #@44
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@46
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@48
    invoke-virtual/range {v26 .. v26}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v2

    #@50
    if-eqz v2, :cond_4

    #@52
    .line 3065
    move-object/from16 v0, v37

    #@54
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@56
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@58
    invoke-virtual/range {v26 .. v26}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5f
    move-result v2

    #@60
    .line 3064
    if-eqz v2, :cond_4

    #@62
    .line 3066
    move/from16 v29, v31

    #@64
    .line 3067
    move-object/from16 v33, v37

    #@66
    .line 3068
    .local v33, "parent":Lcom/android/server/am/ActivityRecord;
    const/16 v30, 0x1

    #@68
    .line 3074
    .end local v31    # "i":I
    .end local v33    # "parent":Lcom/android/server/am/ActivityRecord;
    .end local v37    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    move-object/from16 v0, p0

    #@6a
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@6c
    iget-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    #@6e
    move-object/from16 v25, v0

    #@70
    .line 3075
    .local v25, "controller":Landroid/app/IActivityController;
    if-eqz v25, :cond_5

    #@72
    .line 3076
    move-object/from16 v0, p1

    #@74
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@76
    const/4 v3, 0x0

    #@77
    move-object/from16 v0, p0

    #@79
    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    #@7c
    move-result-object v32

    #@7d
    .line 3077
    .local v32, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v32, :cond_5

    #@7f
    .line 3079
    const/16 v39, 0x1

    #@81
    .line 3081
    .local v39, "resumeOK":Z
    :try_start_0
    move-object/from16 v0, v32

    #@83
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@85
    move-object/from16 v0, v25

    #@87
    invoke-interface {v0, v2}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8a
    move-result v39

    #@8b
    .line 3087
    .end local v39    # "resumeOK":Z
    :goto_2
    if-nez v39, :cond_5

    #@8d
    .line 3088
    const/4 v2, 0x0

    #@8e
    return v2

    #@8f
    .line 3058
    .end local v25    # "controller":Landroid/app/IActivityController;
    .end local v26    # "dest":Landroid/content/ComponentName;
    .end local v30    # "foundParentInTask":Z
    .end local v32    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_3
    move-object/from16 v0, v24

    #@91
    move/from16 v1, v29

    #@93
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@96
    move-result-object v33

    #@97
    check-cast v33, Lcom/android/server/am/ActivityRecord;

    #@99
    .restart local v33    # "parent":Lcom/android/server/am/ActivityRecord;
    goto :goto_0

    #@9a
    .line 3062
    .end local v33    # "parent":Lcom/android/server/am/ActivityRecord;
    .restart local v26    # "dest":Landroid/content/ComponentName;
    .restart local v30    # "foundParentInTask":Z
    .restart local v31    # "i":I
    .restart local v37    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v31, v31, -0x1

    #@9c
    goto :goto_1

    #@9d
    .line 3082
    .end local v31    # "i":I
    .end local v37    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v25    # "controller":Landroid/app/IActivityController;
    .restart local v32    # "next":Lcom/android/server/am/ActivityRecord;
    .restart local v39    # "resumeOK":Z
    :catch_0
    move-exception v28

    #@9e
    .line 3083
    .local v28, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    #@a0
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@a2
    const/4 v3, 0x0

    #@a3
    iput-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    #@a5
    .line 3084
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    #@a8
    move-result-object v2

    #@a9
    const/4 v3, 0x0

    #@aa
    invoke-virtual {v2, v3}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    #@ad
    goto :goto_2

    #@ae
    .line 3092
    .end local v28    # "e":Landroid/os/RemoteException;
    .end local v32    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v39    # "resumeOK":Z
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b1
    move-result-wide v34

    #@b2
    .line 3093
    .local v34, "origId":J
    move/from16 v31, v40

    #@b4
    .end local p4    # "resultData":Landroid/content/Intent;
    .restart local v31    # "i":I
    :goto_3
    move/from16 v0, v31

    #@b6
    move/from16 v1, v29

    #@b8
    if-le v0, v1, :cond_6

    #@ba
    .line 3094
    move-object/from16 v0, v24

    #@bc
    move/from16 v1, v31

    #@be
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c1
    move-result-object v37

    #@c2
    check-cast v37, Lcom/android/server/am/ActivityRecord;

    #@c4
    .line 3095
    .restart local v37    # "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v37

    #@c6
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@c8
    const-string/jumbo v6, "navigate-up"

    #@cb
    const/4 v7, 0x1

    #@cc
    move-object/from16 v2, p0

    #@ce
    move/from16 v4, p3

    #@d0
    move-object/from16 v5, p4

    #@d2
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@d5
    .line 3097
    const/16 p3, 0x0

    #@d7
    .line 3098
    const/16 p4, 0x0

    #@d9
    .line 3093
    .local p4, "resultData":Landroid/content/Intent;
    add-int/lit8 v31, v31, -0x1

    #@db
    goto :goto_3

    #@dc
    .line 3101
    .end local v37    # "r":Lcom/android/server/am/ActivityRecord;
    .end local p4    # "resultData":Landroid/content/Intent;
    :cond_6
    if-eqz v33, :cond_8

    #@de
    if-eqz v30, :cond_8

    #@e0
    .line 3102
    move-object/from16 v0, v33

    #@e2
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@e4
    iget v0, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@e6
    move/from16 v36, v0

    #@e8
    .line 3103
    .local v36, "parentLaunchMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    #@eb
    move-result v27

    #@ec
    .line 3104
    .local v27, "destIntentFlags":I
    const/4 v2, 0x3

    #@ed
    move/from16 v0, v36

    #@ef
    if-eq v0, v2, :cond_7

    #@f1
    .line 3105
    const/4 v2, 0x2

    #@f2
    move/from16 v0, v36

    #@f4
    if-ne v0, v2, :cond_9

    #@f6
    .line 3108
    :cond_7
    move-object/from16 v0, p1

    #@f8
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@fa
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@fc
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    #@fe
    .line 3109
    move-object/from16 v0, p1

    #@100
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@102
    .line 3108
    move-object/from16 v0, v33

    #@104
    move-object/from16 v1, p2

    #@106
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    #@109
    .line 3126
    .end local v27    # "destIntentFlags":I
    .end local v36    # "parentLaunchMode":I
    :cond_8
    :goto_4
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@10c
    .line 3127
    return v30

    #@10d
    .line 3106
    .restart local v27    # "destIntentFlags":I
    .restart local v36    # "parentLaunchMode":I
    :cond_9
    const/4 v2, 0x1

    #@10e
    move/from16 v0, v36

    #@110
    if-eq v0, v2, :cond_7

    #@112
    .line 3107
    const/high16 v2, 0x4000000

    #@114
    and-int v2, v2, v27

    #@116
    if-nez v2, :cond_7

    #@118
    .line 3112
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@11b
    move-result-object v2

    #@11c
    .line 3113
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@11f
    move-result-object v3

    #@120
    move-object/from16 v0, p1

    #@122
    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@124
    const/4 v5, 0x0

    #@125
    .line 3112
    invoke-interface {v2, v3, v5, v4}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    #@128
    move-result-object v6

    #@129
    .line 3114
    .local v6, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    #@12b
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@12d
    move-object/from16 v0, p1

    #@12f
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@131
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@133
    .line 3115
    move-object/from16 v0, v33

    #@135
    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@137
    .line 3116
    move-object/from16 v0, v33

    #@139
    iget v13, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    #@13b
    move-object/from16 v0, v33

    #@13d
    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    #@13f
    .line 3117
    move-object/from16 v0, v33

    #@141
    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    #@143
    move/from16 v16, v0

    #@145
    .line 3115
    const/4 v5, 0x0

    #@146
    const/4 v7, 0x0

    #@147
    const/4 v8, 0x0

    #@148
    const/4 v10, 0x0

    #@149
    .line 3116
    const/4 v11, 0x0

    #@14a
    const/4 v12, -0x1

    #@14b
    .line 3117
    const/4 v15, -0x1

    #@14c
    const/16 v17, 0x0

    #@14e
    const/16 v18, 0x0

    #@150
    const/16 v19, 0x0

    #@152
    const/16 v20, 0x1

    #@154
    const/16 v21, 0x0

    #@156
    const/16 v22, 0x0

    #@158
    const/16 v23, 0x0

    #@15a
    move-object/from16 v4, p2

    #@15c
    .line 3114
    invoke-virtual/range {v2 .. v23}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/os/Bundle;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@15f
    move-result v38

    #@160
    .line 3118
    .local v38, "res":I
    if-nez v38, :cond_a

    #@162
    const/16 v30, 0x1

    #@164
    .line 3122
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v38    # "res":I
    :goto_5
    move-object/from16 v0, v33

    #@166
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@168
    .line 3123
    const-string/jumbo v11, "navigate-top"

    #@16b
    const/4 v12, 0x1

    #@16c
    move-object/from16 v7, p0

    #@16e
    move/from16 v9, p3

    #@170
    move-object/from16 v10, p4

    #@172
    .line 3122
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@175
    goto :goto_4

    #@176
    .line 3118
    .restart local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v38    # "res":I
    :cond_a
    const/16 v30, 0x0

    #@178
    goto :goto_5

    #@179
    .line 3119
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v38    # "res":I
    :catch_1
    move-exception v28

    #@17a
    .line 3120
    .restart local v28    # "e":Landroid/os/RemoteException;
    const/16 v30, 0x0

    #@17c
    goto :goto_5
.end method

.method notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 1476
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@4
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->setDrawn()V

    #@7
    .line 1477
    if-eqz p1, :cond_0

    #@9
    .line 1478
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_2

    #@11
    .line 1479
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    #@16
    move-result v3

    #@17
    .line 1477
    if-eqz v3, :cond_2

    #@19
    .line 1482
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    #@1b
    .line 1483
    .local v1, "waitingActivity":Lcom/android/server/am/ActivityRecord;
    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    #@1d
    .line 1484
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@22
    .line 1485
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@24
    const/16 v4, 0x6a

    #@26
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    #@29
    .line 1487
    if-eqz v1, :cond_2

    #@2b
    .line 1488
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@2d
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@2f
    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaque(Landroid/os/IBinder;Z)V

    #@32
    .line 1489
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@34
    if-eqz v3, :cond_2

    #@36
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@38
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@3a
    if-eqz v3, :cond_2

    #@3c
    .line 1491
    :try_start_0
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@3e
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@40
    .line 1492
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@42
    if-eqz p1, :cond_1

    #@44
    const/4 v2, 0x1

    #@45
    .line 1491
    :cond_1
    invoke-interface {v3, v4, v2}, Landroid/app/IApplicationThread;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@48
    .line 1475
    .end local v1    # "waitingActivity":Lcom/android/server/am/ActivityRecord;
    :cond_2
    :goto_0
    return-void

    #@49
    .line 1493
    .restart local v1    # "waitingActivity":Lcom/android/server/am/ActivityRecord;
    :catch_0
    move-exception v0

    #@4a
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method numActivities()I
    .locals 3

    #@0
    .prologue
    .line 343
    const/4 v0, 0x0

    #@1
    .line 344
    .local v0, "count":I
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    add-int/lit8 v1, v2, -0x1

    #@9
    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_0

    #@b
    .line 345
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Lcom/android/server/am/TaskRecord;

    #@13
    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v2

    #@19
    add-int/2addr v0, v2

    #@1a
    .line 344
    add-int/lit8 v1, v1, -0x1

    #@1c
    goto :goto_0

    #@1d
    .line 347
    :cond_0
    return v0
.end method

.method numTasks()I
    .locals 1

    #@0
    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
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
    .line 368
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@4
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    #@6
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_0

    #@c
    .line 369
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@e
    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@10
    and-int/lit16 v2, v2, 0x400

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 368
    :cond_0
    :goto_0
    return v0

    #@15
    :cond_1
    move v0, v1

    #@16
    .line 369
    goto :goto_0
.end method

.method onLockTaskPackagesUpdatedLocked()V
    .locals 2

    #@0
    .prologue
    .line 4399
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, -0x1

    #@8
    .local v0, "taskNdx":I
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 4400
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/am/TaskRecord;

    #@12
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth()V

    #@15
    .line 4399
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 4398
    :cond_0
    return-void
.end method

.method releaseBackgroundResources(Lcom/android/server/am/ActivityRecord;)V
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/16 v4, 0x6b

    #@2
    const/4 v2, 0x0

    #@3
    .line 3458
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->hasVisibleBehindActivity()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 3459
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@b
    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 3457
    :cond_0
    :goto_0
    return-void

    #@12
    .line 3460
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@15
    move-result-object v1

    #@16
    if-ne p1, v1, :cond_2

    #@18
    .line 3463
    return-void

    #@19
    .line 3468
    :cond_2
    if-eqz p1, :cond_3

    #@1b
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@1d
    if-eqz v1, :cond_3

    #@1f
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@21
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@23
    if-eqz v1, :cond_3

    #@25
    .line 3470
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@27
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@29
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@2b
    invoke-interface {v1, v2}, Landroid/app/IApplicationThread;->scheduleCancelVisibleBehind(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 3473
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@30
    const-wide/16 v2, 0x1f4

    #@32
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@35
    goto :goto_0

    #@36
    .line 3475
    :cond_3
    const-string/jumbo v1, "ActivityManager"

    #@39
    new-instance v2, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v3, "releaseBackgroundResources: activity "

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    const-string/jumbo v3, " no longer running"

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@57
    .line 3476
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->backgroundResourcesReleased()V

    #@5a
    goto :goto_0

    #@5b
    .line 3471
    :catch_0
    move-exception v0

    #@5c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method final releaseSomeActivitiesLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;Ljava/lang/String;)I
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/TaskRecord;>;"
    const/4 v9, 0x1

    #@1
    .line 3295
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    #@4
    move-result v8

    #@5
    div-int/lit8 v4, v8, 0x4

    #@7
    .line 3296
    .local v4, "maxTasks":I
    if-ge v4, v9, :cond_0

    #@9
    .line 3297
    const/4 v4, 0x1

    #@a
    .line 3299
    :cond_0
    const/4 v5, 0x0

    #@b
    .line 3300
    .local v5, "numReleased":I
    const/4 v7, 0x0

    #@c
    .local v7, "taskNdx":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@11
    move-result v8

    #@12
    if-ge v7, v8, :cond_6

    #@14
    if-lez v4, :cond_6

    #@16
    .line 3301
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v6

    #@1c
    check-cast v6, Lcom/android/server/am/TaskRecord;

    #@1e
    .line 3302
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p2, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@21
    move-result v8

    #@22
    if-nez v8, :cond_2

    #@24
    .line 3300
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@26
    goto :goto_0

    #@27
    .line 3306
    :cond_2
    const/4 v3, 0x0

    #@28
    .line 3307
    .local v3, "curNum":I
    iget-object v1, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@2a
    .line 3308
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v0, 0x0

    #@2b
    .local v0, "actNdx":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@2e
    move-result v8

    #@2f
    if-ge v0, v8, :cond_5

    #@31
    .line 3309
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v2

    #@35
    check-cast v2, Lcom/android/server/am/ActivityRecord;

    #@37
    .line 3310
    .local v2, "activity":Lcom/android/server/am/ActivityRecord;
    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@39
    if-ne v8, p1, :cond_4

    #@3b
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    #@3e
    move-result v8

    #@3f
    if-eqz v8, :cond_4

    #@41
    .line 3314
    invoke-virtual {p0, v2, v9, p3}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    #@44
    .line 3315
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@47
    move-result-object v8

    #@48
    if-eq v8, v2, :cond_3

    #@4a
    .line 3317
    add-int/lit8 v0, v0, -0x1

    #@4c
    .line 3319
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@4e
    .line 3308
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@50
    goto :goto_2

    #@51
    .line 3322
    .end local v2    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_5
    if-lez v3, :cond_1

    #@53
    .line 3323
    add-int/2addr v5, v3

    #@54
    .line 3324
    add-int/lit8 v4, v4, -0x1

    #@56
    .line 3325
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@58
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5b
    move-result-object v8

    #@5c
    if-eq v8, v6, :cond_1

    #@5e
    .line 3327
    add-int/lit8 v7, v7, -0x1

    #@60
    goto :goto_1

    #@61
    .line 3333
    .end local v0    # "actNdx":I
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v3    # "curNum":I
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_6
    return v5
.end method

.method removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 14
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    #@0
    .prologue
    .line 3524
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    #@2
    const-string/jumbo v8, "mLRUActivities"

    #@5
    invoke-direct {p0, v7, p1, v8}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    #@8
    .line 3525
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@a
    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    #@c
    .line 3526
    const-string/jumbo v8, "mStoppingActivities"

    #@f
    .line 3525
    invoke-direct {p0, v7, p1, v8}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    #@12
    .line 3527
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@14
    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    #@16
    .line 3528
    const-string/jumbo v8, "mGoingToSleepActivities"

    #@19
    .line 3527
    invoke-direct {p0, v7, p1, v8}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    #@1c
    .line 3529
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1e
    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@20
    .line 3530
    const-string/jumbo v8, "mWaitingVisibleActivities"

    #@23
    .line 3529
    invoke-direct {p0, v7, p1, v8}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    #@26
    .line 3531
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@28
    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    #@2a
    .line 3532
    const-string/jumbo v8, "mFinishingActivities"

    #@2d
    .line 3531
    invoke-direct {p0, v7, p1, v8}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    #@30
    .line 3534
    const/4 v2, 0x0

    #@31
    .line 3537
    .local v2, "hasVisibleActivities":Z
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->numActivities()I

    #@34
    move-result v3

    #@35
    .line 3540
    .local v3, "i":I
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@37
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@3a
    move-result v7

    #@3b
    add-int/lit8 v6, v7, -0x1

    #@3d
    .local v6, "taskNdx":I
    :goto_0
    if-ltz v6, :cond_9

    #@3f
    .line 3541
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@41
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@44
    move-result-object v7

    #@45
    check-cast v7, Lcom/android/server/am/TaskRecord;

    #@47
    iget-object v0, v7, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@49
    .line 3542
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@4c
    move-result v7

    #@4d
    add-int/lit8 v1, v7, -0x1

    #@4f
    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_8

    #@51
    .line 3543
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@54
    move-result-object v4

    #@55
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    #@57
    .line 3544
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v3, v3, -0x1

    #@59
    .line 3547
    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@5b
    if-ne v7, p1, :cond_4

    #@5d
    .line 3548
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@5f
    if-eqz v7, :cond_0

    #@61
    .line 3549
    const/4 v2, 0x1

    #@62
    .line 3552
    :cond_0
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->haveState:Z

    #@64
    if-nez v7, :cond_1

    #@66
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->stateNotNeeded:Z

    #@68
    if-eqz v7, :cond_2

    #@6a
    :cond_1
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@6c
    if-eqz v7, :cond_5

    #@6e
    .line 3555
    :cond_2
    const/4 v5, 0x1

    #@6f
    .line 3565
    .local v5, "remove":Z
    :goto_2
    if-eqz v5, :cond_7

    #@71
    .line 3572
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@73
    if-nez v7, :cond_3

    #@75
    .line 3573
    const-string/jumbo v7, "ActivityManager"

    #@78
    new-instance v8, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v9, "Force removing "

    #@80
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v8

    #@84
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v8

    #@88
    const-string/jumbo v9, ": app died, no saved state"

    #@8b
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v8

    #@8f
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v8

    #@93
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@96
    .line 3574
    const/4 v7, 0x5

    #@97
    new-array v7, v7, [Ljava/lang/Object;

    #@99
    .line 3575
    iget v8, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    #@9b
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9e
    move-result-object v8

    #@9f
    const/4 v9, 0x0

    #@a0
    aput-object v8, v7, v9

    #@a2
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@a5
    move-result v8

    #@a6
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a9
    move-result-object v8

    #@aa
    const/4 v9, 0x1

    #@ab
    aput-object v8, v7, v9

    #@ad
    .line 3576
    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@af
    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    #@b1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b4
    move-result-object v8

    #@b5
    const/4 v9, 0x2

    #@b6
    aput-object v8, v7, v9

    #@b8
    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@ba
    const/4 v9, 0x3

    #@bb
    aput-object v8, v7, v9

    #@bd
    .line 3577
    const-string/jumbo v8, "proc died without state saved"

    #@c0
    const/4 v9, 0x4

    #@c1
    aput-object v8, v7, v9

    #@c3
    .line 3574
    const/16 v8, 0x7531

    #@c5
    invoke-static {v8, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@c8
    .line 3578
    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@ca
    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@cc
    if-ne v7, v8, :cond_3

    #@ce
    .line 3579
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@d0
    const/4 v8, 0x0

    #@d1
    invoke-virtual {v7, v4, v8}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    #@d4
    .line 3596
    :cond_3
    :goto_3
    const/4 v7, 0x1

    #@d5
    const/4 v8, 0x1

    #@d6
    invoke-virtual {p0, v4, v7, v8}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    #@d9
    .line 3597
    if-eqz v5, :cond_4

    #@db
    .line 3598
    const-string/jumbo v7, "appDied"

    #@de
    invoke-direct {p0, v4, v7}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    #@e1
    .line 3542
    .end local v5    # "remove":Z
    :cond_4
    add-int/lit8 v1, v1, -0x1

    #@e3
    goto/16 :goto_1

    #@e5
    .line 3556
    :cond_5
    iget v7, v4, Lcom/android/server/am/ActivityRecord;->launchCount:I

    #@e7
    const/4 v8, 0x2

    #@e8
    if-le v7, v8, :cond_6

    #@ea
    .line 3557
    iget-wide v8, v4, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    #@ec
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@ef
    move-result-wide v10

    #@f0
    const-wide/32 v12, 0xea60

    #@f3
    sub-long/2addr v10, v12

    #@f4
    cmp-long v7, v8, v10

    #@f6
    if-lez v7, :cond_6

    #@f8
    .line 3560
    const/4 v5, 0x1

    #@f9
    .line 3557
    .restart local v5    # "remove":Z
    goto/16 :goto_2

    #@fb
    .line 3563
    .end local v5    # "remove":Z
    :cond_6
    const/4 v5, 0x0

    #@fc
    .restart local v5    # "remove":Z
    goto/16 :goto_2

    #@fe
    .line 3588
    :cond_7
    const/4 v7, 0x0

    #@ff
    iput-object v7, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@101
    .line 3589
    const/4 v7, 0x0

    #@102
    iput-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    #@104
    .line 3590
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->haveState:Z

    #@106
    if-nez v7, :cond_3

    #@108
    .line 3593
    const/4 v7, 0x0

    #@109
    iput-object v7, v4, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    #@10b
    goto :goto_3

    #@10c
    .line 3540
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "remove":Z
    :cond_8
    add-int/lit8 v6, v6, -0x1

    #@10e
    goto/16 :goto_0

    #@110
    .line 3604
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_9
    return v2
.end method

.method removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
    .locals 1
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4280
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)V

    #@4
    .line 4279
    return-void
.end method

.method removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)V
    .locals 12
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "notMoving"    # Z

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 4291
    if-eqz p3, :cond_0

    #@4
    .line 4292
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@6
    invoke-virtual {v8, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V

    #@9
    .line 4293
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@b
    iget v9, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    #@d
    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->removeTask(I)V

    #@10
    .line 4296
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@12
    .line 4297
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_1

    #@14
    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@16
    if-ne v8, p1, :cond_1

    #@18
    .line 4298
    iput-object v11, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@1a
    .line 4301
    :cond_1
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@1f
    move-result v6

    #@20
    .line 4302
    .local v6, "taskNdx":I
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@25
    move-result v8

    #@26
    add-int/lit8 v7, v8, -0x1

    #@28
    .line 4303
    .local v7, "topTaskNdx":I
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    #@2b
    move-result v8

    #@2c
    if-eqz v8, :cond_2

    #@2e
    if-ge v6, v7, :cond_2

    #@30
    .line 4304
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@32
    add-int/lit8 v9, v6, 0x1

    #@34
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v3

    #@38
    check-cast v3, Lcom/android/server/am/TaskRecord;

    #@3a
    .line 4305
    .local v3, "nextTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    #@3d
    move-result v8

    #@3e
    if-nez v8, :cond_2

    #@40
    .line 4306
    invoke-virtual {v3, v10}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    #@43
    .line 4309
    .end local v3    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_2
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@48
    .line 4310
    invoke-virtual {p0, p1, v10}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    #@4b
    .line 4312
    if-eqz p3, :cond_5

    #@4d
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@4f
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    #@52
    move-result v8

    #@53
    if-eqz v8, :cond_5

    #@55
    .line 4313
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@57
    if-eqz v8, :cond_9

    #@59
    const/4 v1, 0x1

    #@5a
    .line 4314
    .local v1, "isVoiceSession":Z
    :goto_0
    if-eqz v1, :cond_3

    #@5c
    .line 4316
    :try_start_0
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@5e
    iget-object v9, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@60
    iget v10, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    #@62
    invoke-interface {v8, v9, v10}, Landroid/service/voice/IVoiceInteractionSession;->taskFinished(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@65
    .line 4320
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->autoRemoveFromRecents()Z

    #@68
    move-result v8

    #@69
    if-nez v8, :cond_4

    #@6b
    if-eqz v1, :cond_5

    #@6d
    .line 4323
    :cond_4
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@6f
    invoke-virtual {v8, p1}, Lcom/android/server/am/RecentTasks;->remove(Ljava/lang/Object;)Z

    #@72
    .line 4324
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    #@75
    .line 4328
    .end local v1    # "isVoiceSession":Z
    :cond_5
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@77
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    #@7a
    move-result v8

    #@7b
    if-eqz v8, :cond_8

    #@7d
    .line 4330
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    #@80
    move-result v8

    #@81
    if-eqz v8, :cond_a

    #@83
    const/4 v4, 0x0

    #@84
    .line 4331
    .local v4, "notHomeStack":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    #@87
    move-result v8

    #@88
    if-eqz v8, :cond_6

    #@8a
    .line 4332
    new-instance v8, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v8

    #@93
    const-string/jumbo v9, " leftTaskHistoryEmpty"

    #@96
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v8

    #@9a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v2

    #@9e
    .line 4333
    .local v2, "myReason":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    #@a0
    if-nez v8, :cond_b

    #@a2
    invoke-direct {p0, v11, v2}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextVisibleStackLocked(Lcom/android/server/am/ActivityStack;Ljava/lang/String;)Z

    #@a5
    move-result v8

    #@a6
    if-eqz v8, :cond_b

    #@a8
    .line 4337
    .end local v2    # "myReason":Ljava/lang/String;
    :cond_6
    :goto_3
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@aa
    if-eqz v8, :cond_7

    #@ac
    .line 4338
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@ae
    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@b1
    .line 4339
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@b3
    const/4 v9, 0x0

    #@b4
    invoke-virtual {v8, v9, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@b7
    .line 4341
    :cond_7
    if-eqz v4, :cond_8

    #@b9
    .line 4342
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@bb
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->onTaskListEmptyLocked()V

    #@be
    .line 4346
    .end local v4    # "notHomeStack":Z
    :cond_8
    iput-object v11, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@c0
    .line 4290
    return-void

    #@c1
    .line 4313
    :cond_9
    const/4 v1, 0x0

    #@c2
    .restart local v1    # "isVoiceSession":Z
    goto :goto_0

    #@c3
    .line 4330
    .end local v1    # "isVoiceSession":Z
    :cond_a
    const/4 v4, 0x1

    #@c4
    .restart local v4    # "notHomeStack":Z
    goto :goto_2

    #@c5
    .line 4334
    .restart local v2    # "myReason":Ljava/lang/String;
    :cond_b
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@c7
    invoke-virtual {v8, v4, v2}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(ZLjava/lang/String;)V

    #@ca
    goto :goto_3

    #@cb
    .line 4317
    .end local v2    # "myReason":Ljava/lang/String;
    .end local v4    # "notHomeStack":Z
    .restart local v1    # "isVoiceSession":Z
    :catch_0
    move-exception v0

    #@cc
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method final requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "oomAdj"    # Z

    #@0
    .prologue
    .line 2724
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    #@3
    move-result-object v1

    #@4
    .line 2729
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_0

    #@6
    .line 2730
    const/4 v0, 0x0

    #@7
    return v0

    #@8
    :cond_0
    move-object v0, p0

    #@9
    move v2, p2

    #@a
    move-object v3, p3

    #@b
    move-object v4, p4

    #@c
    move v5, p5

    #@d
    .line 2733
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@10
    .line 2734
    const/4 v0, 0x1

    #@11
    return v0
.end method

.method final resetTargetTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Z)Landroid/app/ActivityOptions;
    .locals 28
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "forceReset"    # Z

    #@0
    .prologue
    .line 2272
    const/16 v27, 0x0

    #@2
    .line 2274
    .local v27, "topOptions":Landroid/app/ActivityOptions;
    const/16 v20, -0x1

    #@4
    .line 2275
    .local v20, "replyChainEnd":I
    const/4 v12, 0x1

    #@5
    .line 2279
    .local v12, "canMoveOptions":Z
    move-object/from16 v0, p1

    #@7
    iget-object v9, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@9
    .line 2280
    .local v9, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v19

    #@d
    .line 2281
    .local v19, "numActivities":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    #@10
    move-result v21

    #@11
    .line 2282
    .local v21, "rootActivityNdx":I
    add-int/lit8 v17, v19, -0x1

    #@13
    .end local v27    # "topOptions":Landroid/app/ActivityOptions;
    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    #@15
    move/from16 v1, v21

    #@17
    if-le v0, v1, :cond_0

    #@19
    .line 2283
    move/from16 v0, v17

    #@1b
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v24

    #@1f
    check-cast v24, Lcom/android/server/am/ActivityRecord;

    #@21
    .line 2284
    .local v24, "target":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v24

    #@23
    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    #@25
    if-eqz v2, :cond_1

    #@27
    .line 2419
    .end local v24    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_0
    return-object v27

    #@28
    .line 2287
    .restart local v24    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_1
    move-object/from16 v0, v24

    #@2a
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@2c
    iget v0, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@2e
    move/from16 v16, v0

    #@30
    .line 2289
    .local v16, "flags":I
    and-int/lit8 v2, v16, 0x2

    #@32
    if-eqz v2, :cond_6

    #@34
    const/4 v15, 0x1

    #@35
    .line 2291
    .local v15, "finishOnTaskLaunch":Z
    :goto_1
    and-int/lit8 v2, v16, 0x40

    #@37
    if-eqz v2, :cond_7

    #@39
    const/4 v10, 0x1

    #@3a
    .line 2293
    .local v10, "allowTaskReparenting":Z
    :goto_2
    move-object/from16 v0, v24

    #@3c
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@3e
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    #@41
    move-result v2

    #@42
    const/high16 v4, 0x80000

    #@44
    and-int/2addr v2, v4

    #@45
    if-eqz v2, :cond_8

    #@47
    const/4 v13, 0x1

    #@48
    .line 2295
    .local v13, "clearWhenTaskReset":Z
    :goto_3
    if-nez v15, :cond_2

    #@4a
    .line 2296
    if-eqz v13, :cond_9

    #@4c
    .line 2307
    :cond_2
    if-nez v15, :cond_3

    #@4e
    .line 2308
    if-eqz v13, :cond_b

    #@50
    .line 2373
    :cond_3
    if-nez p2, :cond_4

    #@52
    if-nez v15, :cond_4

    #@54
    if-eqz v13, :cond_18

    #@56
    .line 2379
    :cond_4
    if-eqz v13, :cond_13

    #@58
    .line 2383
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@5b
    move-result v2

    #@5c
    add-int/lit8 v14, v2, -0x1

    #@5e
    .line 2389
    .local v14, "end":I
    :goto_4
    move/from16 v18, v12

    #@60
    .line 2390
    .local v18, "noOptions":Z
    move/from16 v22, v17

    #@62
    .end local v18    # "noOptions":Z
    .local v22, "srcPos":I
    :goto_5
    move/from16 v0, v22

    #@64
    if-gt v0, v14, :cond_17

    #@66
    .line 2391
    move/from16 v0, v22

    #@68
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6b
    move-result-object v3

    #@6c
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    #@6e
    .line 2392
    .local v3, "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@70
    if-eqz v2, :cond_15

    #@72
    .line 2390
    :cond_5
    :goto_6
    add-int/lit8 v22, v22, 0x1

    #@74
    goto :goto_5

    #@75
    .line 2289
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v10    # "allowTaskReparenting":Z
    .end local v13    # "clearWhenTaskReset":Z
    .end local v14    # "end":I
    .end local v15    # "finishOnTaskLaunch":Z
    .end local v22    # "srcPos":I
    :cond_6
    const/4 v15, 0x0

    #@76
    .restart local v15    # "finishOnTaskLaunch":Z
    goto :goto_1

    #@77
    .line 2291
    :cond_7
    const/4 v10, 0x0

    #@78
    .restart local v10    # "allowTaskReparenting":Z
    goto :goto_2

    #@79
    .line 2293
    :cond_8
    const/4 v13, 0x0

    #@7a
    .restart local v13    # "clearWhenTaskReset":Z
    goto :goto_3

    #@7b
    .line 2297
    :cond_9
    move-object/from16 v0, v24

    #@7d
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@7f
    if-eqz v2, :cond_2

    #@81
    .line 2304
    if-gez v20, :cond_a

    #@83
    .line 2305
    move/from16 v20, v17

    #@85
    .line 2282
    :cond_a
    :goto_7
    add-int/lit8 v17, v17, -0x1

    #@87
    goto :goto_0

    #@88
    .line 2307
    :cond_b
    if-eqz v10, :cond_3

    #@8a
    .line 2310
    move-object/from16 v0, v24

    #@8c
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    #@8e
    if-eqz v2, :cond_3

    #@90
    .line 2311
    move-object/from16 v0, v24

    #@92
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    #@94
    move-object/from16 v0, p1

    #@96
    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@98
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9b
    move-result v2

    #@9c
    if-nez v2, :cond_3

    #@9e
    .line 2320
    move-object/from16 v0, p0

    #@a0
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@a2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@a5
    move-result v2

    #@a6
    if-nez v2, :cond_c

    #@a8
    move-object/from16 v0, p0

    #@aa
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@ac
    const/4 v4, 0x0

    #@ad
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b0
    move-result-object v2

    #@b1
    check-cast v2, Lcom/android/server/am/TaskRecord;

    #@b3
    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@b5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    #@b8
    move-result v2

    #@b9
    if-eqz v2, :cond_d

    #@bb
    .line 2321
    :cond_c
    const/4 v11, 0x0

    #@bc
    .line 2322
    :goto_8
    if-eqz v11, :cond_e

    #@be
    move-object/from16 v0, v24

    #@c0
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    #@c2
    if-eqz v2, :cond_e

    #@c4
    .line 2323
    move-object/from16 v0, v24

    #@c6
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    #@c8
    iget-object v4, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@ca
    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@cc
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cf
    move-result v2

    #@d0
    .line 2322
    if-eqz v2, :cond_e

    #@d2
    .line 2327
    iget-object v0, v11, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@d4
    move-object/from16 v25, v0

    #@d6
    .line 2338
    .local v25, "targetTask":Lcom/android/server/am/TaskRecord;
    :goto_9
    move-object/from16 v0, v25

    #@d8
    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@da
    move/from16 v26, v0

    #@dc
    .line 2339
    .local v26, "targetTaskId":I
    move-object/from16 v0, p0

    #@de
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@e0
    move-object/from16 v0, v24

    #@e2
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@e4
    move/from16 v0, v26

    #@e6
    invoke-virtual {v2, v4, v0}, Lcom/android/server/wm/WindowManagerService;->setAppTask(Landroid/os/IBinder;I)V

    #@e9
    .line 2341
    move/from16 v18, v12

    #@eb
    .line 2342
    .restart local v18    # "noOptions":Z
    if-gez v20, :cond_f

    #@ed
    move/from16 v23, v17

    #@ef
    .line 2343
    .local v23, "start":I
    :goto_a
    move/from16 v22, v23

    #@f1
    .end local v18    # "noOptions":Z
    .restart local v22    # "srcPos":I
    :goto_b
    move/from16 v0, v22

    #@f3
    move/from16 v1, v17

    #@f5
    if-lt v0, v1, :cond_12

    #@f7
    .line 2344
    move/from16 v0, v22

    #@f9
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@fc
    move-result-object v3

    #@fd
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    #@ff
    .line 2345
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@101
    if-eqz v2, :cond_10

    #@103
    .line 2343
    :goto_c
    add-int/lit8 v22, v22, -0x1

    #@105
    goto :goto_b

    #@106
    .line 2321
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v22    # "srcPos":I
    .end local v23    # "start":I
    .end local v25    # "targetTask":Lcom/android/server/am/TaskRecord;
    .end local v26    # "targetTaskId":I
    :cond_d
    move-object/from16 v0, p0

    #@108
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@10a
    const/4 v4, 0x0

    #@10b
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10e
    move-result-object v2

    #@10f
    check-cast v2, Lcom/android/server/am/TaskRecord;

    #@111
    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@113
    const/4 v4, 0x0

    #@114
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@117
    move-result-object v11

    #@118
    check-cast v11, Lcom/android/server/am/ActivityRecord;

    #@11a
    .local v11, "bottom":Lcom/android/server/am/ActivityRecord;
    goto :goto_8

    #@11b
    .line 2331
    .end local v11    # "bottom":Lcom/android/server/am/ActivityRecord;
    :cond_e
    move-object/from16 v0, p0

    #@11d
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@11f
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskId()I

    #@122
    move-result v3

    #@123
    move-object/from16 v0, v24

    #@125
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@127
    .line 2332
    const/4 v5, 0x0

    #@128
    const/4 v6, 0x0

    #@129
    const/4 v7, 0x0

    #@12a
    const/4 v8, 0x0

    #@12b
    move-object/from16 v2, p0

    #@12d
    .line 2331
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    #@130
    move-result-object v25

    #@131
    .line 2333
    .restart local v25    # "targetTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v24

    #@133
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@135
    move-object/from16 v0, v25

    #@137
    iput-object v2, v0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    #@139
    goto :goto_9

    #@13a
    .line 2342
    .restart local v18    # "noOptions":Z
    .restart local v26    # "targetTaskId":I
    :cond_f
    move/from16 v23, v20

    #@13c
    .restart local v23    # "start":I
    goto :goto_a

    #@13d
    .line 2349
    .end local v18    # "noOptions":Z
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .restart local v22    # "srcPos":I
    :cond_10
    const/4 v12, 0x0

    #@13e
    .line 2350
    if-eqz v18, :cond_11

    #@140
    if-nez v27, :cond_11

    #@142
    .line 2351
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    #@145
    move-result-object v27

    #@146
    .line 2352
    .local v27, "topOptions":Landroid/app/ActivityOptions;
    if-eqz v27, :cond_11

    #@148
    .line 2353
    const/16 v18, 0x0

    #@14a
    .line 2361
    .end local v27    # "topOptions":Landroid/app/ActivityOptions;
    :cond_11
    const/4 v2, 0x0

    #@14b
    move-object/from16 v0, v25

    #@14d
    invoke-virtual {v3, v0, v2}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    #@150
    .line 2362
    move-object/from16 v0, v25

    #@152
    invoke-virtual {v0, v3}, Lcom/android/server/am/TaskRecord;->addActivityAtBottom(Lcom/android/server/am/ActivityRecord;)V

    #@155
    .line 2364
    move-object/from16 v0, p0

    #@157
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@159
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@15b
    move/from16 v0, v26

    #@15d
    invoke-virtual {v2, v4, v0}, Lcom/android/server/wm/WindowManagerService;->setAppTask(Landroid/os/IBinder;I)V

    #@160
    goto :goto_c

    #@161
    .line 2367
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    :cond_12
    move-object/from16 v0, p0

    #@163
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@165
    move/from16 v0, v26

    #@167
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->moveTaskToBottom(I)V

    #@16a
    .line 2372
    const/16 v20, -0x1

    #@16c
    .line 2311
    goto/16 :goto_7

    #@16e
    .line 2384
    .end local v22    # "srcPos":I
    .end local v23    # "start":I
    .end local v25    # "targetTask":Lcom/android/server/am/TaskRecord;
    .end local v26    # "targetTaskId":I
    :cond_13
    if-gez v20, :cond_14

    #@170
    .line 2385
    move/from16 v14, v17

    #@172
    .restart local v14    # "end":I
    goto/16 :goto_4

    #@174
    .line 2387
    .end local v14    # "end":I
    :cond_14
    move/from16 v14, v20

    #@176
    .restart local v14    # "end":I
    goto/16 :goto_4

    #@178
    .line 2395
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .restart local v22    # "srcPos":I
    :cond_15
    const/4 v12, 0x0

    #@179
    .line 2396
    if-eqz v18, :cond_16

    #@17b
    if-nez v27, :cond_16

    #@17d
    .line 2397
    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    #@180
    move-result-object v27

    #@181
    .line 2398
    .restart local v27    # "topOptions":Landroid/app/ActivityOptions;
    if-eqz v27, :cond_16

    #@183
    .line 2399
    const/16 v18, 0x0

    #@185
    .line 2405
    .end local v27    # "topOptions":Landroid/app/ActivityOptions;
    :cond_16
    const-string/jumbo v6, "reset-task"

    #@188
    const/4 v4, 0x0

    #@189
    const/4 v5, 0x0

    #@18a
    const/4 v7, 0x0

    #@18b
    move-object/from16 v2, p0

    #@18d
    .line 2404
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@190
    move-result v2

    #@191
    if-eqz v2, :cond_5

    #@193
    .line 2406
    add-int/lit8 v14, v14, -0x1

    #@195
    .line 2407
    add-int/lit8 v22, v22, -0x1

    #@197
    goto/16 :goto_6

    #@199
    .line 2410
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    :cond_17
    const/16 v20, -0x1

    #@19b
    goto/16 :goto_7

    #@19d
    .line 2415
    .end local v14    # "end":I
    .end local v22    # "srcPos":I
    :cond_18
    const/16 v20, -0x1

    #@19f
    goto/16 :goto_7
.end method

.method final resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 10
    .param p1, "taskTop"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newActivity"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 2539
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@2
    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    #@4
    and-int/lit8 v0, v0, 0x4

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v4, 0x1

    #@9
    .line 2547
    .local v4, "forceReset":Z
    :goto_0
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@b
    .line 2551
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    const/4 v3, 0x0

    #@c
    .line 2554
    .local v3, "taskFound":Z
    const/4 v9, 0x0

    #@d
    .line 2557
    .local v9, "topOptions":Landroid/app/ActivityOptions;
    const/4 v5, -0x1

    #@e
    .line 2559
    .local v5, "reparentInsertionPoint":I
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v0

    #@14
    add-int/lit8 v6, v0, -0x1

    #@16
    .end local v9    # "topOptions":Landroid/app/ActivityOptions;
    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_2

    #@18
    .line 2560
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Lcom/android/server/am/TaskRecord;

    #@20
    .line 2562
    .local v1, "targetTask":Lcom/android/server/am/TaskRecord;
    if-ne v1, v2, :cond_1

    #@22
    .line 2563
    invoke-virtual {p0, v2, v4}, Lcom/android/server/am/ActivityStack;->resetTargetTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Z)Landroid/app/ActivityOptions;

    #@25
    move-result-object v9

    #@26
    .line 2564
    .local v9, "topOptions":Landroid/app/ActivityOptions;
    const/4 v3, 0x1

    #@27
    .line 2559
    .end local v9    # "topOptions":Landroid/app/ActivityOptions;
    :goto_2
    add-int/lit8 v6, v6, -0x1

    #@29
    goto :goto_1

    #@2a
    .line 2539
    .end local v1    # "targetTask":Lcom/android/server/am/TaskRecord;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "taskFound":Z
    .end local v4    # "forceReset":Z
    .end local v5    # "reparentInsertionPoint":I
    .end local v6    # "i":I
    :cond_0
    const/4 v4, 0x0

    #@2b
    .restart local v4    # "forceReset":Z
    goto :goto_0

    #@2c
    .restart local v1    # "targetTask":Lcom/android/server/am/TaskRecord;
    .restart local v2    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v3    # "taskFound":Z
    .restart local v5    # "reparentInsertionPoint":I
    .restart local v6    # "i":I
    :cond_1
    move-object v0, p0

    #@2d
    .line 2566
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->resetAffinityTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;ZZI)I

    #@30
    move-result v5

    #@31
    goto :goto_2

    #@32
    .line 2571
    .end local v1    # "targetTask":Lcom/android/server/am/TaskRecord;
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@37
    move-result v7

    #@38
    .line 2572
    .local v7, "taskNdx":I
    if-ltz v7, :cond_4

    #@3a
    .line 2574
    :goto_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@3c
    add-int/lit8 v8, v7, -0x1

    #@3e
    .end local v7    # "taskNdx":I
    .local v8, "taskNdx":I
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@41
    move-result-object v0

    #@42
    check-cast v0, Lcom/android/server/am/TaskRecord;

    #@44
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    #@47
    move-result-object p1

    #@48
    .line 2575
    if-nez p1, :cond_3

    #@4a
    if-ltz v8, :cond_3

    #@4c
    move v7, v8

    #@4d
    .end local v8    # "taskNdx":I
    .restart local v7    # "taskNdx":I
    goto :goto_3

    #@4e
    .end local v7    # "taskNdx":I
    .restart local v8    # "taskNdx":I
    :cond_3
    move v7, v8

    #@4f
    .line 2578
    .end local v8    # "taskNdx":I
    .restart local v7    # "taskNdx":I
    :cond_4
    if-eqz v9, :cond_5

    #@51
    .line 2581
    if-eqz p1, :cond_6

    #@53
    .line 2582
    invoke-virtual {p1, v9}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    #@56
    .line 2588
    :cond_5
    :goto_4
    return-object p1

    #@57
    .line 2584
    :cond_6
    invoke-virtual {v9}, Landroid/app/ActivityOptions;->abort()V

    #@5a
    goto :goto_4
.end method

.method restartPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityRecord;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 4258
    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@4
    move-result-object v3

    #@5
    .line 4262
    .local v3, "starting":Lcom/android/server/am/ActivityRecord;
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@a
    move-result v5

    #@b
    add-int/lit8 v4, v5, -0x1

    #@d
    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_2

    #@f
    .line 4263
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@14
    move-result-object v5

    #@15
    check-cast v5, Lcom/android/server/am/TaskRecord;

    #@17
    iget-object v1, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@19
    .line 4264
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v5

    #@1d
    add-int/lit8 v2, v5, -0x1

    #@1f
    .local v2, "activityNdx":I
    :goto_1
    if-ltz v2, :cond_1

    #@21
    .line 4265
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Lcom/android/server/am/ActivityRecord;

    #@27
    .line 4266
    .local v0, "a":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@29
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@2b
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v5

    #@2f
    if-eqz v5, :cond_0

    #@31
    .line 4267
    const/4 v5, 0x1

    #@32
    iput-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    #@34
    .line 4268
    if-eqz v3, :cond_0

    #@36
    if-ne v0, v3, :cond_0

    #@38
    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@3a
    if-eqz v5, :cond_0

    #@3c
    .line 4269
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@3e
    .line 4270
    const/16 v6, 0x100

    #@40
    .line 4269
    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    #@43
    .line 4264
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@45
    goto :goto_1

    #@46
    .line 4262
    .end local v0    # "a":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    #@48
    goto :goto_0

    #@49
    .line 4276
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    :cond_2
    return-object v3
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 1537
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1541
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@4
    iget-boolean v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1543
    return v3

    #@9
    .line 1546
    :cond_0
    const/4 v0, 0x0

    #@a
    .line 1549
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@c
    const/4 v2, 0x1

    #@d
    iput-boolean v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    #@f
    .line 1550
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@11
    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mLockScreenShown:I

    #@13
    if-ne v1, v4, :cond_1

    #@15
    .line 1551
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@17
    const/4 v2, 0x0

    #@18
    iput v2, v1, Lcom/android/server/am/ActivityManagerService;->mLockScreenShown:I

    #@1a
    .line 1552
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1c
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->updateSleepIfNeededLocked()V

    #@1f
    .line 1554
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v0

    #@23
    .line 1556
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@25
    iput-boolean v3, v1, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    #@27
    .line 1558
    return v0

    #@28
    .line 1555
    .local v0, "result":Z
    :catchall_0
    move-exception v1

    #@29
    .line 1556
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@2b
    iput-boolean v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    #@2d
    .line 1555
    throw v1
.end method

.method final safelyDestroyActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3282
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3286
    const/4 v0, 0x1

    #@7
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    #@a
    move-result v0

    #@b
    return v0

    #@c
    .line 3288
    :cond_0
    const/4 v0, 0x0

    #@d
    return v0
.end method

.method final scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 3
    .param p1, "owner"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3242
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@2
    const/16 v2, 0x69

    #@4
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    .line 3243
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;

    #@a
    invoke-direct {v1, p1, p2}, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;-><init>(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    #@d
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f
    .line 3244
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@11
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@14
    .line 3241
    return-void
.end method

.method public final screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "who"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 779
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 781
    return-object v5

    #@7
    .line 784
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 788
    return-object v5

    #@e
    .line 791
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@10
    iget v1, v2, Lcom/android/server/am/ActivityManagerService;->mThumbnailWidth:I

    #@12
    .line 792
    .local v1, "w":I
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@14
    iget v0, v2, Lcom/android/server/am/ActivityManagerService;->mThumbnailHeight:I

    #@16
    .line 793
    .local v0, "h":I
    if-lez v1, :cond_2

    #@18
    .line 795
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@1a
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@1c
    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/android/server/wm/WindowManagerService;->screenshotApplications(Landroid/os/IBinder;III)Landroid/graphics/Bitmap;

    #@1f
    move-result-object v2

    #@20
    return-object v2

    #@21
    .line 798
    :cond_2
    const-string/jumbo v2, "ActivityManager"

    #@24
    new-instance v3, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v4, "Invalid thumbnail dimensions: "

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    const-string/jumbo v4, "x"

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    .line 799
    return-object v5
.end method

.method sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 9
    .param p1, "callingUid"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "resultWho"    # Ljava/lang/String;
    .param p4, "requestCode"    # I
    .param p5, "resultCode"    # I
    .param p6, "data"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2594
    if-lez p1, :cond_0

    #@3
    .line 2595
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5
    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@7
    .line 2596
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    #@a
    move-result-object v4

    #@b
    iget v5, p2, Lcom/android/server/am/ActivityRecord;->userId:I

    #@d
    move v1, p1

    #@e
    move-object v3, p6

    #@f
    .line 2595
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    #@12
    .line 2602
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@14
    if-ne v0, p2, :cond_1

    #@16
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@18
    if-eqz v0, :cond_1

    #@1a
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@1c
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@1e
    if-eqz v0, :cond_1

    #@20
    .line 2604
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    #@22
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@25
    .line 2605
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v0, Landroid/app/ResultInfo;

    #@27
    invoke-direct {v0, p3, p4, p5, p6}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    #@2a
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2d
    .line 2607
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@2f
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@31
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@33
    invoke-interface {v0, v1, v7}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 2608
    return-void

    #@37
    .line 2609
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :catch_0
    move-exception v6

    #@38
    .line 2610
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "ActivityManager"

    #@3b
    new-instance v1, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v2, "Exception thrown sending result to "

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v1

    #@4f
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@52
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v0, p2

    #@53
    move-object v1, v8

    #@54
    move-object v2, p3

    #@55
    move v3, p4

    #@56
    move v4, p5

    #@57
    move-object v5, p6

    #@58
    .line 2614
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    #@5b
    .line 2592
    return-void
.end method

.method setLaunchTime(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 695
    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_1

    #@8
    .line 696
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v0

    #@c
    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    #@e
    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    #@10
    .line 697
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    #@12
    cmp-long v0, v0, v2

    #@14
    if-nez v0, :cond_0

    #@16
    .line 698
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@18
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->startLaunchTraces(Ljava/lang/String;)V

    #@1b
    .line 699
    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    #@1d
    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    #@1f
    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    #@21
    .line 694
    :cond_0
    :goto_0
    return-void

    #@22
    .line 701
    :cond_1
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    #@24
    cmp-long v0, v0, v2

    #@26
    if-nez v0, :cond_0

    #@28
    .line 702
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@2a
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->startLaunchTraces(Ljava/lang/String;)V

    #@2d
    .line 703
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@30
    move-result-wide v0

    #@31
    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    #@33
    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    #@35
    goto :goto_0
.end method

.method setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 3497
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3498
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@8
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@a
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    #@d
    .line 3496
    :cond_0
    return-void
.end method

.method final shouldUpRecreateTaskLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 6
    .param p1, "srec"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "destAffinity"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 3015
    if-eqz p1, :cond_0

    #@4
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@6
    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@8
    if-nez v2, :cond_1

    #@a
    .line 3017
    :cond_0
    return v4

    #@b
    .line 3016
    :cond_1
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@d
    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@f
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_0

    #@15
    .line 3023
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    #@17
    if-eqz v2, :cond_5

    #@19
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@1b
    if-eqz v2, :cond_5

    #@1d
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@1f
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    #@22
    move-result-object v2

    #@23
    if-eqz v2, :cond_5

    #@25
    .line 3024
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@27
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Landroid/content/Intent;->isDocument()Z

    #@2e
    move-result v2

    #@2f
    .line 3023
    if-eqz v2, :cond_5

    #@31
    .line 3026
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@33
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_2

    #@39
    .line 3028
    return v4

    #@3a
    .line 3031
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@3c
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@3e
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@41
    move-result v1

    #@42
    .line 3032
    .local v1, "taskIdx":I
    if-gtz v1, :cond_3

    #@44
    .line 3033
    const-string/jumbo v2, "ActivityManager"

    #@47
    new-instance v3, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v4, "shouldUpRecreateTask: task not in history for "

    #@4f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5e
    .line 3034
    return v5

    #@5f
    .line 3036
    :cond_3
    if-nez v1, :cond_4

    #@61
    .line 3038
    return v4

    #@62
    .line 3040
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@64
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@67
    move-result-object v0

    #@68
    check-cast v0, Lcom/android/server/am/TaskRecord;

    #@6a
    .line 3041
    .local v0, "prevTask":Lcom/android/server/am/TaskRecord;
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@6c
    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@6e
    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@70
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@73
    move-result v2

    #@74
    if-nez v2, :cond_5

    #@76
    .line 3043
    return v4

    #@77
    .line 3046
    .end local v0    # "prevTask":Lcom/android/server/am/TaskRecord;
    .end local v1    # "taskIdx":I
    :cond_5
    return v5
.end method

.method final startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;)V
    .locals 24
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "doResume"    # Z
    .param p4, "keepCurTransition"    # Z
    .param p5, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 2076
    move-object/from16 v0, p1

    #@2
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@4
    move-object/from16 v18, v0

    #@6
    .line 2077
    .local v18, "rTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v18

    #@8
    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@a
    move/from16 v22, v0

    #@c
    .line 2079
    .local v22, "taskId":I
    move-object/from16 v0, p1

    #@e
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    #@10
    if-nez v3, :cond_1

    #@12
    move-object/from16 v0, p0

    #@14
    move/from16 v1, v22

    #@16
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    #@19
    move-result-object v3

    #@1a
    if-eqz v3, :cond_0

    #@1c
    if-eqz p2, :cond_1

    #@1e
    .line 2083
    :cond_0
    move-object/from16 v0, p0

    #@20
    move-object/from16 v1, v18

    #@22
    move-object/from16 v2, p1

    #@24
    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    #@27
    .line 2084
    move-object/from16 v0, p0

    #@29
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@2b
    move/from16 v0, v22

    #@2d
    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    #@30
    .line 2086
    :cond_1
    const/16 v21, 0x0

    #@32
    .line 2087
    .local v21, "task":Lcom/android/server/am/TaskRecord;
    if-nez p2, :cond_7

    #@34
    .line 2089
    const/16 v20, 0x1

    #@36
    .line 2090
    .local v20, "startIt":Z
    move-object/from16 v0, p0

    #@38
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@3a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@3d
    move-result v3

    #@3e
    add-int/lit8 v23, v3, -0x1

    #@40
    .end local v21    # "task":Lcom/android/server/am/TaskRecord;
    .local v23, "taskNdx":I
    :goto_0
    if-ltz v23, :cond_7

    #@42
    .line 2091
    move-object/from16 v0, p0

    #@44
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@46
    move/from16 v0, v23

    #@48
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4b
    move-result-object v21

    #@4c
    check-cast v21, Lcom/android/server/am/TaskRecord;

    #@4e
    .line 2092
    .local v21, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    #@51
    move-result-object v3

    #@52
    if-nez v3, :cond_3

    #@54
    .line 2090
    :cond_2
    :goto_1
    add-int/lit8 v23, v23, -0x1

    #@56
    goto :goto_0

    #@57
    .line 2096
    :cond_3
    move-object/from16 v0, p1

    #@59
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@5b
    move-object/from16 v0, v21

    #@5d
    if-ne v0, v3, :cond_6

    #@5f
    .line 2100
    if-nez v20, :cond_7

    #@61
    .line 2103
    move-object/from16 v0, v21

    #@63
    move-object/from16 v1, p1

    #@65
    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->addActivityToTop(Lcom/android/server/am/ActivityRecord;)V

    #@68
    .line 2104
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->putInHistory()V

    #@6b
    .line 2105
    move-object/from16 v0, p0

    #@6d
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@6f
    move-object/from16 v0, v21

    #@71
    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@73
    move-object/from16 v0, p1

    #@75
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@78
    move-result v4

    #@79
    move-object/from16 v0, p1

    #@7b
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@7d
    .line 2106
    move-object/from16 v0, p1

    #@7f
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@81
    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    #@83
    move-object/from16 v0, p0

    #@85
    iget v7, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@87
    move-object/from16 v0, p1

    #@89
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@8b
    iget v8, v8, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@8d
    move-object/from16 v0, p1

    #@8f
    iget-boolean v9, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@91
    .line 2107
    move-object/from16 v0, p1

    #@93
    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@95
    iget v10, v10, Landroid/content/pm/ActivityInfo;->flags:I

    #@97
    and-int/lit16 v10, v10, 0x400

    #@99
    if-eqz v10, :cond_4

    #@9b
    const/4 v10, 0x1

    #@9c
    .line 2108
    :goto_2
    move-object/from16 v0, p1

    #@9e
    iget v11, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@a0
    move-object/from16 v0, p1

    #@a2
    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@a4
    iget v12, v12, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@a6
    move-object/from16 v0, v21

    #@a8
    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@aa
    if-eqz v13, :cond_5

    #@ac
    const/4 v13, 0x1

    #@ad
    .line 2109
    :goto_3
    move-object/from16 v0, p1

    #@af
    iget-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    #@b1
    .line 2105
    invoke-virtual/range {v3 .. v14}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZ)V

    #@b4
    .line 2113
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    #@b7
    .line 2114
    return-void

    #@b8
    .line 2107
    :cond_4
    const/4 v10, 0x0

    #@b9
    goto :goto_2

    #@ba
    .line 2108
    :cond_5
    const/4 v13, 0x0

    #@bb
    goto :goto_3

    #@bc
    .line 2117
    :cond_6
    move-object/from16 v0, v21

    #@be
    iget v3, v0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    #@c0
    if-lez v3, :cond_2

    #@c2
    .line 2118
    const/16 v20, 0x0

    #@c4
    goto :goto_1

    #@c5
    .line 2129
    .end local v20    # "startIt":Z
    .end local v21    # "task":Lcom/android/server/am/TaskRecord;
    .end local v23    # "taskNdx":I
    :cond_7
    move-object/from16 v0, p1

    #@c7
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@c9
    move-object/from16 v0, v21

    #@cb
    if-ne v0, v3, :cond_8

    #@cd
    move-object/from16 v0, p0

    #@cf
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@d1
    move-object/from16 v0, v21

    #@d3
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@d6
    move-result v3

    #@d7
    move-object/from16 v0, p0

    #@d9
    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@db
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@de
    move-result v4

    #@df
    add-int/lit8 v4, v4, -0x1

    #@e1
    if-eq v3, v4, :cond_8

    #@e3
    .line 2130
    move-object/from16 v0, p0

    #@e5
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@e7
    const/4 v4, 0x0

    #@e8
    iput-boolean v4, v3, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    #@ea
    .line 2135
    :cond_8
    move-object/from16 v0, p1

    #@ec
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@ee
    move-object/from16 v21, v0

    #@f0
    .line 2140
    .restart local v21    # "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v21

    #@f2
    move-object/from16 v1, p1

    #@f4
    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->addActivityToTop(Lcom/android/server/am/ActivityRecord;)V

    #@f7
    .line 2141
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    #@fa
    .line 2143
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->putInHistory()V

    #@fd
    .line 2144
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    #@100
    move-result v3

    #@101
    if-eqz v3, :cond_9

    #@103
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->numActivities()I

    #@106
    move-result v3

    #@107
    if-lez v3, :cond_1b

    #@109
    .line 2148
    :cond_9
    move/from16 v19, p2

    #@10b
    .line 2149
    .local v19, "showStartingIcon":Z
    move-object/from16 v0, p1

    #@10d
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@10f
    move-object/from16 v17, v0

    #@111
    .line 2150
    .local v17, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v17, :cond_a

    #@113
    .line 2151
    move-object/from16 v0, p0

    #@115
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@117
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    #@119
    move-object/from16 v0, p1

    #@11b
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    #@11d
    move-object/from16 v0, p1

    #@11f
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@121
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@123
    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    #@125
    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    #@128
    move-result-object v17

    #@129
    .end local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    check-cast v17, Lcom/android/server/am/ProcessRecord;

    #@12b
    .line 2153
    .restart local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_a
    if-eqz v17, :cond_b

    #@12d
    move-object/from16 v0, v17

    #@12f
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@131
    if-nez v3, :cond_c

    #@133
    .line 2154
    :cond_b
    const/16 v19, 0x1

    #@135
    .line 2158
    .end local v19    # "showStartingIcon":Z
    :cond_c
    move-object/from16 v0, p1

    #@137
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@139
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    #@13c
    move-result v3

    #@13d
    const/high16 v4, 0x10000

    #@13f
    and-int/2addr v3, v4

    #@140
    if-eqz v3, :cond_10

    #@142
    .line 2159
    move-object/from16 v0, p0

    #@144
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@146
    const/4 v4, 0x0

    #@147
    move/from16 v0, p4

    #@149
    invoke-virtual {v3, v4, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    #@14c
    .line 2160
    move-object/from16 v0, p0

    #@14e
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    #@150
    move-object/from16 v0, p1

    #@152
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@155
    .line 2169
    :goto_4
    move-object/from16 v0, p0

    #@157
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@159
    move-object/from16 v0, v21

    #@15b
    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@15d
    move-object/from16 v0, p1

    #@15f
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@162
    move-result v4

    #@163
    .line 2170
    move-object/from16 v0, p1

    #@165
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@167
    move-object/from16 v0, p1

    #@169
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@16b
    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    #@16d
    move-object/from16 v0, p0

    #@16f
    iget v7, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@171
    move-object/from16 v0, p1

    #@173
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@175
    iget v8, v8, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@177
    move-object/from16 v0, p1

    #@179
    iget-boolean v9, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@17b
    .line 2171
    move-object/from16 v0, p1

    #@17d
    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@17f
    iget v10, v10, Landroid/content/pm/ActivityInfo;->flags:I

    #@181
    and-int/lit16 v10, v10, 0x400

    #@183
    if-eqz v10, :cond_13

    #@185
    const/4 v10, 0x1

    #@186
    :goto_5
    move-object/from16 v0, p1

    #@188
    iget v11, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@18a
    .line 2172
    move-object/from16 v0, p1

    #@18c
    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@18e
    iget v12, v12, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@190
    move-object/from16 v0, v21

    #@192
    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@194
    if-eqz v13, :cond_14

    #@196
    const/4 v13, 0x1

    #@197
    :goto_6
    move-object/from16 v0, p1

    #@199
    iget-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    #@19b
    .line 2169
    invoke-virtual/range {v3 .. v14}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZ)V

    #@19e
    .line 2173
    const/4 v15, 0x1

    #@19f
    .line 2174
    .local v15, "doShow":Z
    if-eqz p2, :cond_16

    #@1a1
    .line 2180
    move-object/from16 v0, p1

    #@1a3
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@1a5
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    #@1a8
    move-result v3

    #@1a9
    const/high16 v4, 0x200000

    #@1ab
    and-int/2addr v3, v4

    #@1ac
    if-eqz v3, :cond_d

    #@1ae
    .line 2181
    move-object/from16 v0, p0

    #@1b0
    move-object/from16 v1, p1

    #@1b2
    move-object/from16 v2, p1

    #@1b4
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@1b7
    .line 2182
    const/4 v3, 0x0

    #@1b8
    move-object/from16 v0, p0

    #@1ba
    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@1bd
    move-result-object v3

    #@1be
    move-object/from16 v0, p1

    #@1c0
    if-ne v3, v0, :cond_15

    #@1c2
    const/4 v15, 0x1

    #@1c3
    .line 2188
    :cond_d
    :goto_7
    move-object/from16 v0, p1

    #@1c5
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    #@1c7
    if-eqz v3, :cond_17

    #@1c9
    .line 2191
    move-object/from16 v0, p0

    #@1cb
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@1cd
    move-object/from16 v0, p1

    #@1cf
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@1d1
    const/4 v5, 0x1

    #@1d2
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    #@1d5
    .line 2192
    const/4 v3, 0x0

    #@1d6
    const/4 v4, 0x0

    #@1d7
    move-object/from16 v0, p0

    #@1d9
    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    #@1dc
    .line 2232
    .end local v15    # "doShow":Z
    .end local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local p5    # "options":Landroid/os/Bundle;
    :cond_e
    :goto_8
    if-eqz p3, :cond_f

    #@1de
    .line 2233
    move-object/from16 v0, p0

    #@1e0
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1e2
    move-object/from16 v0, p0

    #@1e4
    move-object/from16 v1, p1

    #@1e6
    move-object/from16 v2, p5

    #@1e8
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    #@1eb
    .line 2075
    :cond_f
    return-void

    #@1ec
    .line 2162
    .restart local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local p5    # "options":Landroid/os/Bundle;
    :cond_10
    move-object/from16 v0, p0

    #@1ee
    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@1f0
    if-eqz p2, :cond_12

    #@1f2
    .line 2163
    move-object/from16 v0, p1

    #@1f4
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    #@1f6
    if-eqz v3, :cond_11

    #@1f8
    .line 2164
    const/16 v3, 0x10

    #@1fa
    .line 2162
    :goto_9
    move/from16 v0, p4

    #@1fc
    invoke-virtual {v4, v3, v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    #@1ff
    .line 2167
    move-object/from16 v0, p0

    #@201
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    #@203
    move-object/from16 v0, p1

    #@205
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@208
    goto/16 :goto_4

    #@20a
    .line 2165
    :cond_11
    const/16 v3, 0x8

    #@20c
    goto :goto_9

    #@20d
    .line 2166
    :cond_12
    const/4 v3, 0x6

    #@20e
    goto :goto_9

    #@20f
    .line 2171
    :cond_13
    const/4 v10, 0x0

    #@210
    goto/16 :goto_5

    #@212
    .line 2172
    :cond_14
    const/4 v13, 0x0

    #@213
    goto :goto_6

    #@214
    .line 2182
    .restart local v15    # "doShow":Z
    :cond_15
    const/4 v15, 0x0

    #@215
    goto :goto_7

    #@216
    .line 2184
    :cond_16
    if-eqz p5, :cond_d

    #@218
    new-instance v3, Landroid/app/ActivityOptions;

    #@21a
    move-object/from16 v0, p5

    #@21c
    invoke-direct {v3, v0}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    #@21f
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getAnimationType()I

    #@222
    move-result v3

    #@223
    .line 2185
    const/4 v4, 0x5

    #@224
    .line 2184
    if-ne v3, v4, :cond_d

    #@226
    .line 2186
    const/4 v15, 0x0

    #@227
    goto :goto_7

    #@228
    .line 2193
    :cond_17
    if-eqz v15, :cond_e

    #@22a
    .line 2198
    move-object/from16 v0, p0

    #@22c
    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@22e
    move-object/from16 v16, v0

    #@230
    .line 2199
    .local v16, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v16, :cond_18

    #@232
    .line 2202
    move-object/from16 v0, v16

    #@234
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@236
    move-object/from16 v0, p1

    #@238
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@23a
    if-eq v3, v4, :cond_19

    #@23c
    .line 2203
    const/16 v16, 0x0

    #@23e
    .line 2210
    .end local v16    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_18
    :goto_a
    move-object/from16 v0, p0

    #@240
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@242
    .line 2211
    move-object/from16 v0, p1

    #@244
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@246
    move-object/from16 v0, p1

    #@248
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@24a
    move-object/from16 v0, p1

    #@24c
    iget v6, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    #@24e
    .line 2212
    move-object/from16 v0, p0

    #@250
    iget-object v7, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@252
    .line 2213
    move-object/from16 v0, p1

    #@254
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@256
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@258
    .line 2212
    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    #@25b
    move-result-object v7

    #@25c
    .line 2213
    move-object/from16 v0, p1

    #@25e
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    #@260
    .line 2214
    move-object/from16 v0, p1

    #@262
    iget v9, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    #@264
    move-object/from16 v0, p1

    #@266
    iget v10, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    #@268
    move-object/from16 v0, p1

    #@26a
    iget v11, v0, Lcom/android/server/am/ActivityRecord;->logo:I

    #@26c
    move-object/from16 v0, p1

    #@26e
    iget v12, v0, Lcom/android/server/am/ActivityRecord;->windowFlags:I

    #@270
    .line 2215
    if-eqz v16, :cond_1a

    #@272
    move-object/from16 v0, v16

    #@274
    iget-object v13, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@276
    :goto_b
    move/from16 v14, v19

    #@278
    .line 2210
    invoke-virtual/range {v3 .. v14}, Lcom/android/server/wm/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)V

    #@27b
    .line 2216
    const/4 v3, 0x1

    #@27c
    move-object/from16 v0, p1

    #@27e
    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mStartingWindowShown:Z

    #@280
    goto/16 :goto_8

    #@282
    .line 2206
    .restart local v16    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_19
    move-object/from16 v0, v16

    #@284
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    #@286
    if-eqz v3, :cond_18

    #@288
    .line 2207
    const/16 v16, 0x0

    #@28a
    .local v16, "prev":Lcom/android/server/am/ActivityRecord;
    goto :goto_a

    #@28b
    .line 2215
    .end local v16    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_1a
    const/4 v13, 0x0

    #@28c
    goto :goto_b

    #@28d
    .line 2221
    .end local v15    # "doShow":Z
    .end local v17    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_1b
    move-object/from16 v0, p0

    #@28f
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@291
    move-object/from16 v0, v21

    #@293
    iget-object v4, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@295
    move-object/from16 v0, p1

    #@297
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@29a
    move-result v4

    #@29b
    move-object/from16 v0, p1

    #@29d
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@29f
    .line 2222
    move-object/from16 v0, p1

    #@2a1
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@2a3
    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    #@2a5
    move-object/from16 v0, p0

    #@2a7
    iget v7, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@2a9
    move-object/from16 v0, p1

    #@2ab
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@2ad
    iget v8, v8, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@2af
    move-object/from16 v0, p1

    #@2b1
    iget-boolean v9, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@2b3
    .line 2223
    move-object/from16 v0, p1

    #@2b5
    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@2b7
    iget v10, v10, Landroid/content/pm/ActivityInfo;->flags:I

    #@2b9
    and-int/lit16 v10, v10, 0x400

    #@2bb
    if-eqz v10, :cond_1c

    #@2bd
    const/4 v10, 0x1

    #@2be
    :goto_c
    move-object/from16 v0, p1

    #@2c0
    iget v11, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@2c2
    .line 2224
    move-object/from16 v0, p1

    #@2c4
    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@2c6
    iget v12, v12, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@2c8
    move-object/from16 v0, v21

    #@2ca
    iget-object v13, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@2cc
    if-eqz v13, :cond_1d

    #@2ce
    const/4 v13, 0x1

    #@2cf
    :goto_d
    move-object/from16 v0, p1

    #@2d1
    iget-boolean v14, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    #@2d3
    .line 2221
    invoke-virtual/range {v3 .. v14}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZ)V

    #@2d6
    .line 2225
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    #@2d9
    .line 2226
    const/16 p5, 0x0

    #@2db
    .local p5, "options":Landroid/os/Bundle;
    goto/16 :goto_8

    #@2dd
    .line 2223
    .local p5, "options":Landroid/os/Bundle;
    :cond_1c
    const/4 v10, 0x0

    #@2de
    goto :goto_c

    #@2df
    .line 2224
    :cond_1d
    const/4 v13, 0x0

    #@2e0
    goto :goto_d
.end method

.method final startPausingLocked(ZZZZ)Z
    .locals 11
    .param p1, "userLeaving"    # Z
    .param p2, "uiSleeping"    # Z
    .param p3, "resuming"    # Z
    .param p4, "dontWait"    # Z

    #@0
    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 819
    const-string/jumbo v0, "ActivityManager"

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "Going to pause when pause is already pending for "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    .line 820
    const-string/jumbo v3, " state="

    #@1c
    .line 819
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    .line 820
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@22
    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@24
    .line 819
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@2f
    .line 821
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@31
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    #@34
    move-result v0

    #@35
    if-nez v0, :cond_0

    #@37
    .line 825
    const/4 v0, 0x0

    #@38
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->completePauseLocked(Z)V

    #@3b
    .line 828
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@3d
    .line 829
    .local v1, "prev":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_2

    #@3f
    .line 830
    if-nez p3, :cond_1

    #@41
    .line 831
    const-string/jumbo v0, "ActivityManager"

    #@44
    const-string/jumbo v2, "Trying to pause when nothing is resumed"

    #@47
    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 832
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@4c
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    #@4f
    .line 834
    :cond_1
    const/4 v0, 0x0

    #@50
    return v0

    #@51
    .line 837
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@53
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    #@55
    if-nez v0, :cond_3

    #@57
    .line 839
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@59
    move v2, p1

    #@5a
    move v3, p2

    #@5b
    move v4, p3

    #@5c
    move v5, p4

    #@5d
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->pauseChildStacks(Lcom/android/server/am/ActivityRecord;ZZZZ)V

    #@60
    .line 844
    :cond_3
    const/4 v0, 0x0

    #@61
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@63
    .line 845
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@65
    .line 846
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    #@67
    .line 847
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@69
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    #@6c
    move-result v0

    #@6d
    const/high16 v2, 0x40000000    # 2.0f

    #@6f
    and-int/2addr v0, v2

    #@70
    if-nez v0, :cond_4

    #@72
    .line 848
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@74
    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    #@76
    and-int/lit16 v0, v0, 0x80

    #@78
    if-eqz v0, :cond_9

    #@7a
    :cond_4
    move-object v0, v1

    #@7b
    .line 847
    :goto_0
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    #@7d
    .line 849
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@7f
    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@81
    .line 850
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@83
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    #@86
    .line 851
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->clearLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    #@89
    .line 852
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@8b
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@8e
    move-result-object v10

    #@8f
    .line 853
    .local v10, "next":Lcom/android/server/am/ActivityRecord;
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@91
    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mHasRecents:Z

    #@93
    if-eqz v0, :cond_6

    #@95
    if-eqz v10, :cond_5

    #@97
    iget-boolean v0, v10, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    #@99
    if-nez v0, :cond_5

    #@9b
    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@9d
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@9f
    if-eq v0, v2, :cond_a

    #@a1
    .line 854
    :cond_5
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->screenshotActivities(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    #@a4
    move-result-object v0

    #@a5
    const/4 v2, 0x0

    #@a6
    invoke-virtual {v1, v0, v2}, Lcom/android/server/am/ActivityRecord;->updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    #@a9
    .line 856
    :cond_6
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->stopFullyDrawnTraceIfNeeded()V

    #@ac
    .line 858
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@ae
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    #@b1
    .line 860
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@b3
    if-eqz v0, :cond_b

    #@b5
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@b7
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@b9
    if-eqz v0, :cond_b

    #@bb
    .line 863
    const/4 v0, 0x3

    #@bc
    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    #@be
    .line 864
    iget v2, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    #@c0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c3
    move-result-object v2

    #@c4
    const/4 v3, 0x0

    #@c5
    aput-object v2, v0, v3

    #@c7
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@ca
    move-result v2

    #@cb
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ce
    move-result-object v2

    #@cf
    const/4 v3, 0x1

    #@d0
    aput-object v2, v0, v3

    #@d2
    .line 865
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@d4
    const/4 v3, 0x2

    #@d5
    aput-object v2, v0, v3

    #@d7
    .line 863
    const/16 v2, 0x753d

    #@d9
    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@dc
    .line 866
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@de
    const/4 v2, 0x0

    #@df
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    #@e2
    .line 867
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@e4
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@e6
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@e8
    iget-boolean v4, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@ea
    .line 868
    iget v6, v1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    #@ec
    move v5, p1

    #@ed
    move v7, p4

    #@ee
    .line 867
    invoke-interface/range {v2 .. v7}, Landroid/app/IApplicationThread;->schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@f1
    .line 884
    :goto_2
    if-nez p2, :cond_7

    #@f3
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@f5
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    #@f8
    move-result v0

    #@f9
    if-eqz v0, :cond_c

    #@fb
    .line 888
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@fd
    if-eqz v0, :cond_e

    #@ff
    .line 893
    if-nez p2, :cond_8

    #@101
    .line 894
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    #@104
    .line 899
    :cond_8
    if-eqz p4, :cond_d

    #@106
    .line 902
    const/4 v0, 0x0

    #@107
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->completePauseLocked(Z)V

    #@10a
    .line 903
    const/4 v0, 0x0

    #@10b
    return v0

    #@10c
    .line 848
    .end local v10    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_9
    const/4 v0, 0x0

    #@10d
    goto/16 :goto_0

    #@10f
    .line 853
    .restart local v10    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_a
    if-eqz p2, :cond_6

    #@111
    goto :goto_1

    #@112
    .line 869
    :catch_0
    move-exception v8

    #@113
    .line 871
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "ActivityManager"

    #@116
    const-string/jumbo v2, "Exception thrown during pause"

    #@119
    invoke-static {v0, v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11c
    .line 872
    const/4 v0, 0x0

    #@11d
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@11f
    .line 873
    const/4 v0, 0x0

    #@120
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    #@122
    .line 874
    const/4 v0, 0x0

    #@123
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    #@125
    goto :goto_2

    #@126
    .line 877
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_b
    const/4 v0, 0x0

    #@127
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@129
    .line 878
    const/4 v0, 0x0

    #@12a
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    #@12c
    .line 879
    const/4 v0, 0x0

    #@12d
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    #@12f
    goto :goto_2

    #@130
    .line 885
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@132
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->acquireLaunchWakelock()V

    #@135
    goto :goto_3

    #@136
    .line 909
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@138
    const/16 v2, 0x65

    #@13a
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@13d
    move-result-object v9

    #@13e
    .line 910
    .local v9, "msg":Landroid/os/Message;
    iput-object v1, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@140
    .line 911
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@143
    move-result-wide v2

    #@144
    iput-wide v2, v1, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    #@146
    .line 912
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@148
    const-wide/16 v2, 0x1f4

    #@14a
    invoke-virtual {v0, v9, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@14d
    .line 914
    const/4 v0, 0x1

    #@14e
    return v0

    #@14f
    .line 921
    .end local v9    # "msg":Landroid/os/Message;
    :cond_e
    if-nez p3, :cond_f

    #@151
    .line 922
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@153
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    #@156
    move-result-object v0

    #@157
    const/4 v2, 0x0

    #@158
    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    #@15b
    .line 924
    :cond_f
    const/4 v0, 0x0

    #@15c
    return v0
.end method

.method final stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 2664
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@5
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    #@8
    move-result v0

    #@9
    const/high16 v1, 0x40000000    # 2.0f

    #@b
    and-int/2addr v0, v1

    #@c
    if-nez v0, :cond_0

    #@e
    .line 2665
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@10
    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    #@12
    and-int/lit16 v0, v0, 0x80

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 2666
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@18
    if-nez v0, :cond_1

    #@1a
    .line 2667
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1c
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleeping()Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_1

    #@22
    .line 2669
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@24
    .line 2670
    const-string/jumbo v4, "stop-no-history"

    #@27
    move-object v0, p0

    #@28
    move v5, v2

    #@29
    .line 2669
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_1

    #@2f
    .line 2672
    const-string/jumbo v0, "stopActivityFinished"

    #@32
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    #@35
    .line 2673
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    #@38
    .line 2674
    return-void

    #@39
    .line 2683
    :cond_1
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@3b
    if-eqz v0, :cond_4

    #@3d
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@3f
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@41
    if-eqz v0, :cond_4

    #@43
    .line 2684
    const-string/jumbo v0, "stopActivity"

    #@46
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    #@49
    .line 2685
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    #@4c
    .line 2687
    const/4 v0, 0x0

    #@4d
    :try_start_0
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    #@4f
    .line 2690
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@51
    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@53
    .line 2693
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@55
    if-nez v0, :cond_2

    #@57
    .line 2694
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@59
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@5b
    const/4 v2, 0x0

    #@5c
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    #@5f
    .line 2696
    :cond_2
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@61
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@63
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@65
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@67
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    #@69
    invoke-interface {v0, v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    #@6c
    .line 2697
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@6e
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    #@71
    move-result v0

    #@72
    if-eqz v0, :cond_3

    #@74
    .line 2698
    const/4 v0, 0x1

    #@75
    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    #@78
    .line 2700
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@7a
    const/16 v1, 0x68

    #@7c
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@7f
    move-result-object v7

    #@80
    .line 2701
    .local v7, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@82
    const-wide/16 v2, 0x2710

    #@84
    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@87
    .line 2662
    .end local v7    # "msg":Landroid/os/Message;
    :cond_4
    :goto_0
    return-void

    #@88
    .line 2702
    :catch_0
    move-exception v6

    #@89
    .line 2706
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "ActivityManager"

    #@8c
    const-string/jumbo v1, "Exception thrown during pause"

    #@8f
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@92
    .line 2708
    iput-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    #@94
    .line 2710
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@96
    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@98
    .line 2711
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    #@9a
    if-eqz v0, :cond_4

    #@9c
    .line 2712
    const-string/jumbo v0, "stop-except"

    #@9f
    invoke-virtual {p0, p1, v8, v0}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    #@a2
    goto :goto_0
.end method

.method final switchUserLocked(I)V
    .locals 6
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 635
    iget v3, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    #@3
    if-ne v3, p1, :cond_0

    #@5
    .line 636
    return-void

    #@6
    .line 638
    :cond_0
    iput p1, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    #@8
    .line 641
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v1

    #@e
    .line 642
    .local v1, "index":I
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    #@11
    .line 643
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Lcom/android/server/am/TaskRecord;

    #@19
    .line 647
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1b
    iget v4, v2, Lcom/android/server/am/TaskRecord;->userId:I

    #@1d
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    #@20
    move-result v3

    #@21
    if-nez v3, :cond_1

    #@23
    .line 648
    invoke-virtual {v2, v5}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@26
    move-result-object v3

    #@27
    if-eqz v3, :cond_2

    #@29
    .line 651
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@2b
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@2e
    .line 652
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@30
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@33
    .line 653
    add-int/lit8 v1, v1, -0x1

    #@35
    .line 648
    goto :goto_0

    #@36
    .line 656
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@38
    goto :goto_0

    #@39
    .line 634
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    return-void
.end method

.method taskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .locals 3
    .param p1, "id"    # I

    #@0
    .prologue
    .line 445
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v1, v2, -0x1

    #@8
    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_1

    #@a
    .line 446
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/am/TaskRecord;

    #@12
    .line 447
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@14
    if-ne v2, p1, :cond_0

    #@16
    .line 448
    return-object v0

    #@17
    .line 445
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@19
    goto :goto_0

    #@1a
    .line 451
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    const/4 v2, 0x0

    #@1b
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 4384
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ActivityStack{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@f
    move-result v1

    #@10
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 4385
    const-string/jumbo v1, " stackId="

    #@1b
    .line 4384
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 4385
    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@21
    .line 4384
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 4385
    const-string/jumbo v1, ", "

    #@28
    .line 4384
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 4385
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@31
    move-result v1

    #@32
    .line 4384
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 4385
    const-string/jumbo v1, " tasks}"

    #@39
    .line 4384
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    return-object v0
.end method

.method final topActivity()Lcom/android/server/am/ActivityRecord;
    .locals 5

    #@0
    .prologue
    .line 424
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v4

    #@6
    add-int/lit8 v3, v4, -0x1

    #@8
    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_2

    #@a
    .line 425
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v4

    #@10
    check-cast v4, Lcom/android/server/am/TaskRecord;

    #@12
    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@14
    .line 426
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v4

    #@18
    add-int/lit8 v1, v4, -0x1

    #@1a
    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_1

    #@1c
    .line 427
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Lcom/android/server/am/ActivityRecord;

    #@22
    .line 428
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@24
    if-nez v4, :cond_0

    #@26
    .line 429
    return-object v2

    #@27
    .line 426
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@29
    goto :goto_1

    #@2a
    .line 424
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    #@2c
    goto :goto_0

    #@2d
    .line 433
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_2
    const/4 v4, 0x0

    #@2e
    return-object v4
.end method

.method final topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "taskId"    # I

    #@0
    .prologue
    .line 406
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v5

    #@6
    add-int/lit8 v4, v5, -0x1

    #@8
    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_3

    #@a
    .line 407
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lcom/android/server/am/TaskRecord;

    #@12
    .line 408
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget v5, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    #@14
    if-ne v5, p2, :cond_1

    #@16
    .line 406
    :cond_0
    add-int/lit8 v4, v4, -0x1

    #@18
    goto :goto_0

    #@19
    .line 411
    :cond_1
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@1b
    .line 412
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1e
    move-result v5

    #@1f
    add-int/lit8 v1, v5, -0x1

    #@21
    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_0

    #@23
    .line 413
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Lcom/android/server/am/ActivityRecord;

    #@29
    .line 415
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@2b
    if-nez v5, :cond_2

    #@2d
    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@2f
    if-eq p1, v5, :cond_2

    #@31
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    #@34
    move-result v5

    #@35
    if-eqz v5, :cond_2

    #@37
    .line 416
    return-object v2

    #@38
    .line 412
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@3a
    goto :goto_1

    #@3b
    .line 420
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    const/4 v5, 0x0

    #@3c
    return-object v5
.end method

.method final topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 4
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 373
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    add-int/lit8 v1, v2, -0x1

    #@9
    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_1

    #@b
    .line 374
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Lcom/android/server/am/TaskRecord;

    #@13
    invoke-virtual {v2, p1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@16
    move-result-object v0

    #@17
    .line 375
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    #@19
    .line 376
    return-object v0

    #@1a
    .line 373
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@1c
    goto :goto_0

    #@1d
    .line 379
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-object v3
.end method

.method final topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 383
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v5

    #@6
    add-int/lit8 v4, v5, -0x1

    #@8
    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_3

    #@a
    .line 384
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lcom/android/server/am/TaskRecord;

    #@12
    .line 385
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@14
    .line 386
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@17
    move-result v5

    #@18
    add-int/lit8 v1, v5, -0x1

    #@1a
    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_2

    #@1c
    .line 387
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Lcom/android/server/am/ActivityRecord;

    #@22
    .line 388
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@24
    if-nez v5, :cond_0

    #@26
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    #@28
    if-eqz v5, :cond_1

    #@2a
    .line 386
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@2c
    goto :goto_1

    #@2d
    .line 388
    :cond_1
    if-eq v2, p1, :cond_0

    #@2f
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_0

    #@35
    .line 389
    return-object v2

    #@36
    .line 383
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    #@38
    goto :goto_0

    #@39
    .line 393
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    const/4 v5, 0x0

    #@3a
    return-object v5
.end method

.method final topTask()Lcom/android/server/am/TaskRecord;
    .locals 3

    #@0
    .prologue
    .line 437
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 438
    .local v0, "size":I
    if-lez v0, :cond_0

    #@8
    .line 439
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@a
    add-int/lit8 v2, v0, -0x1

    #@c
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/am/TaskRecord;

    #@12
    return-object v1

    #@13
    .line 441
    :cond_0
    const/4 v1, 0x0

    #@14
    return-object v1
.end method

.method public unhandledBackLocked()V
    .locals 9

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 4162
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v0

    #@7
    add-int/lit8 v8, v0, -0x1

    #@9
    .line 4164
    .local v8, "top":I
    if-ltz v8, :cond_0

    #@b
    .line 4165
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/am/TaskRecord;

    #@13
    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@15
    .line 4166
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v0

    #@19
    add-int/lit8 v7, v0, -0x1

    #@1b
    .line 4167
    .local v7, "activityTop":I
    if-lez v7, :cond_0

    #@1d
    .line 4168
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@23
    .line 4169
    const-string/jumbo v4, "unhandled-back"

    #@26
    .line 4168
    const/4 v3, 0x0

    #@27
    .line 4169
    const/4 v5, 0x1

    #@28
    move-object v0, p0

    #@29
    .line 4168
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@2c
    .line 4161
    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v7    # "activityTop":I
    :cond_0
    return-void
.end method

.method final updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 474
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    .line 475
    .local v0, "hadit":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b
    .line 476
    return v0
.end method

.method updateOverrideConfiguration(Landroid/content/res/Configuration;)Z
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 4389
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    #@2
    .line 4390
    .local v0, "oldConfig":Landroid/content/res/Configuration;
    if-nez p1, :cond_0

    #@4
    sget-object p1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@6
    .end local p1    # "newConfig":Landroid/content/res/Configuration;
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    #@8
    .line 4394
    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@a
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    #@c
    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    #@f
    move-result v1

    #@10
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    #@12
    .line 4395
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mOverrideConfig:Landroid/content/res/Configuration;

    #@14
    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    #@17
    move-result v1

    #@18
    if-eqz v1, :cond_1

    #@1a
    const/4 v1, 0x0

    #@1b
    :goto_0
    return v1

    #@1c
    :cond_1
    const/4 v1, 0x1

    #@1d
    goto :goto_0
.end method

.method updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toFront"    # Z

    #@0
    .prologue
    .line 3620
    iget-boolean v0, p1, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3621
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@7
    move-result-wide v0

    #@8
    iput-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    #@a
    .line 3625
    if-nez p2, :cond_0

    #@c
    .line 3626
    iget-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    #@e
    const-wide/16 v2, -0x1

    #@10
    mul-long/2addr v0, v2

    #@11
    iput-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    #@13
    .line 3619
    :cond_0
    return-void
.end method

.method final updateTransitLocked(ILandroid/os/Bundle;)V
    .locals 3
    .param p1, "transit"    # I
    .param p2, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3608
    if-eqz p2, :cond_0

    #@3
    .line 3609
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@6
    move-result-object v0

    #@7
    .line 3610
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    #@9
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@b
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@d
    if-eq v1, v2, :cond_1

    #@f
    .line 3611
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    #@12
    .line 3616
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@14
    const/4 v2, 0x0

    #@15
    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    #@18
    .line 3607
    return-void

    #@19
    .line 3613
    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    #@1c
    goto :goto_0
.end method

.method final validateAppTokensLocked()V
    .locals 11

    #@0
    .prologue
    .line 2238
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 2239
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    #@7
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->numActivities()I

    #@a
    move-result v9

    #@b
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->ensureCapacity(I)V

    #@e
    .line 2240
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v4

    #@14
    .line 2241
    .local v4, "numTasks":I
    const/4 v7, 0x0

    #@15
    .local v7, "taskNdx":I
    :goto_0
    if-ge v7, v4, :cond_2

    #@17
    .line 2242
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v6

    #@1d
    check-cast v6, Lcom/android/server/am/TaskRecord;

    #@1f
    .line 2243
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@21
    .line 2244
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@24
    move-result v8

    #@25
    if-eqz v8, :cond_1

    #@27
    .line 2241
    :cond_0
    add-int/lit8 v7, v7, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 2247
    :cond_1
    new-instance v2, Lcom/android/server/wm/TaskGroup;

    #@2c
    invoke-direct {v2}, Lcom/android/server/wm/TaskGroup;-><init>()V

    #@2f
    .line 2248
    .local v2, "group":Lcom/android/server/wm/TaskGroup;
    iget v8, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    #@31
    iput v8, v2, Lcom/android/server/wm/TaskGroup;->taskId:I

    #@33
    .line 2249
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@38
    .line 2250
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@3b
    move-result v3

    #@3c
    .line 2251
    .local v3, "numActivities":I
    const/4 v1, 0x0

    #@3d
    .local v1, "activityNdx":I
    :goto_1
    if-ge v1, v3, :cond_0

    #@3f
    .line 2252
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v5

    #@43
    check-cast v5, Lcom/android/server/am/ActivityRecord;

    #@45
    .line 2253
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v8, v2, Lcom/android/server/wm/TaskGroup;->tokens:Ljava/util/ArrayList;

    #@47
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@49
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4c
    .line 2251
    add-int/lit8 v1, v1, 0x1

    #@4e
    goto :goto_1

    #@4f
    .line 2256
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "group":Lcom/android/server/wm/TaskGroup;
    .end local v3    # "numActivities":I
    .end local v5    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@51
    iget v9, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@53
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    #@55
    invoke-virtual {v8, v9, v10}, Lcom/android/server/wm/WindowManagerService;->validateAppTokens(ILjava/util/List;)V

    #@58
    .line 2237
    return-void
.end method

.method willActivityBeVisibleLocked(Landroid/os/IBinder;)Z
    .locals 9
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 4012
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v4

    #@8
    add-int/lit8 v3, v4, -0x1

    #@a
    .local v3, "taskNdx":I
    :goto_0
    if-ltz v3, :cond_4

    #@c
    .line 4013
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v4

    #@12
    check-cast v4, Lcom/android/server/am/TaskRecord;

    #@14
    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@16
    .line 4014
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@19
    move-result v4

    #@1a
    add-int/lit8 v1, v4, -0x1

    #@1c
    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_3

    #@1e
    .line 4015
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Lcom/android/server/am/ActivityRecord;

    #@24
    .line 4016
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@26
    if-ne v4, p1, :cond_0

    #@28
    .line 4017
    return v6

    #@29
    .line 4019
    :cond_0
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@2b
    if-eqz v4, :cond_1

    #@2d
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@2f
    if-eqz v4, :cond_2

    #@31
    .line 4014
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@33
    goto :goto_1

    #@34
    .line 4020
    :cond_2
    return v5

    #@35
    .line 4012
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    #@37
    goto :goto_0

    #@38
    .line 4024
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_4
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    #@3b
    move-result-object v2

    #@3c
    .line 4025
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    if-nez v2, :cond_5

    #@3e
    .line 4026
    return v5

    #@3f
    .line 4028
    :cond_5
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@41
    if-eqz v4, :cond_6

    #@43
    const-string/jumbo v4, "ActivityManager"

    #@46
    new-instance v7, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v8, "willActivityBeVisibleLocked: Returning false, would have returned true for r="

    #@4e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v7

    #@52
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v7

    #@56
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v7

    #@5a
    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    .line 4030
    :cond_6
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@5f
    if-eqz v4, :cond_7

    #@61
    move v4, v5

    #@62
    :goto_2
    return v4

    #@63
    :cond_7
    move v4, v6

    #@64
    goto :goto_2
.end method
