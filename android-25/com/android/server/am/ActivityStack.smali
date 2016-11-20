.class final Lcom/android/server/am/ActivityStack;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStack$ActivityStackHandler;,
        Lcom/android/server/am/ActivityStack$ActivityState;,
        Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-server-am-ActivityStack$ActivityStateSwitchesValues:[I = null

.field static final ACTIVITY_INACTIVE_RESET_TIME:J = 0x0L

.field static final DESTROY_ACTIVITIES_MSG:I = 0x69

.field static final DESTROY_TIMEOUT:I = 0x2710

.field static final DESTROY_TIMEOUT_MSG:I = 0x66

.field static final FINISH_AFTER_PAUSE:I = 0x1

.field static final FINISH_AFTER_VISIBLE:I = 0x2

.field static final FINISH_IMMEDIATELY:I = 0x0

.field static final LAUNCH_TICK:I = 0x1f4

.field static final LAUNCH_TICK_MSG:I = 0x67

.field private static final MAX_STOPPING_TO_FORCE:I = 0x3

.field static final PAUSE_TIMEOUT:I = 0x1f4

.field static final PAUSE_TIMEOUT_MSG:I = 0x65

.field static final RELEASE_BACKGROUND_RESOURCES_TIMEOUT_MSG:I = 0x6b

.field static final REMOVE_TASK_MODE_DESTROYING:I = 0x0

.field static final REMOVE_TASK_MODE_MOVING:I = 0x1

.field static final REMOVE_TASK_MODE_MOVING_TO_TOP:I = 0x2

.field static final SHOW_APP_STARTING_PREVIEW:Z = true

.field static final STACK_INVISIBLE:I = 0x0

.field static final STACK_VISIBLE:I = 0x1

.field static final STACK_VISIBLE_ACTIVITY_BEHIND:I = 0x2

.field static final START_WARN_TIME:J = 0x1388L

.field static final STOP_TIMEOUT:I = 0x2710

.field static final STOP_TIMEOUT_MSG:I = 0x68

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_ADD_REMOVE:Ljava/lang/String;

.field private static final TAG_APP:Ljava/lang/String;

.field private static final TAG_CLEANUP:Ljava/lang/String;

.field private static final TAG_CONFIGURATION:Ljava/lang/String;

.field private static final TAG_CONTAINERS:Ljava/lang/String;

.field private static final TAG_PAUSE:Ljava/lang/String;

.field private static final TAG_RELEASE:Ljava/lang/String;

.field private static final TAG_RESULTS:Ljava/lang/String;

.field private static final TAG_SAVED_STATE:Ljava/lang/String;

.field private static final TAG_SCREENSHOTS:Ljava/lang/String;

.field private static final TAG_STACK:Ljava/lang/String;

.field private static final TAG_STATES:Ljava/lang/String;

.field private static final TAG_SWITCH:Ljava/lang/String;

.field private static final TAG_TASKS:Ljava/lang/String;

.field private static final TAG_TRANSITION:Ljava/lang/String;

.field private static final TAG_USER_LEAVING:Ljava/lang/String;

.field private static final TAG_VISIBILITY:Ljava/lang/String;

.field static final TRANSLUCENT_CONVERSION_TIMEOUT:J = 0x7d0L

.field static final TRANSLUCENT_TIMEOUT_MSG:I = 0x6a

.field private static final VALIDATE_TOKENS:Z


# instance fields
.field final mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

.field mBounds:Landroid/graphics/Rect;

.field mConfigWillChange:Z

.field mCurrentUser:I

.field final mDeferredBounds:Landroid/graphics/Rect;

.field final mDeferredTaskBounds:Landroid/graphics/Rect;

.field final mDeferredTaskInsetBounds:Landroid/graphics/Rect;

.field mDisplayId:I

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

.field private final mTaskHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskPositioner:Lcom/android/server/am/LaunchingTaskPositioner;

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

.field mUpdateBoundsDeferred:Z

.field mUpdateBoundsDeferredCalled:Z

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
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method private static synthetic -getcom-android-server-am-ActivityStack$ActivityStateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/server/am/ActivityStack;->-com-android-server-am-ActivityStack$ActivityStateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/am/ActivityStack;->-com-android-server-am-ActivityStack$ActivityStateSwitchesValues:[I

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
    sput-object v0, Lcom/android/server/am/ActivityStack;->-com-android-server-am-ActivityStack$ActivityStateSwitchesValues:[I

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

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 148
    const-string/jumbo v0, "ActivityManager"

    #@3
    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@5
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_ADD_REMOVE:Ljava/lang/String;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG_ADD_REMOVE:Ljava/lang/String;

    #@1c
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_APP:Ljava/lang/String;

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG_APP:Ljava/lang/String;

    #@33
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v0

    #@3e
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_CLEANUP:Ljava/lang/String;

    #@40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG_CLEANUP:Ljava/lang/String;

    #@4a
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_CONFIGURATION:Ljava/lang/String;

    #@57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v0

    #@5f
    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG_CONFIGURATION:Ljava/lang/String;

    #@61
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    #@63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@66
    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v0

    #@6c
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_CONTAINERS:Ljava/lang/String;

    #@6e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v0

    #@72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v0

    #@76
    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG_CONTAINERS:Ljava/lang/String;

    #@78
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@7f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v0

    #@83
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_PAUSE:Ljava/lang/String;

    #@85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v0

    #@89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v0

    #@8d
    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG_PAUSE:Ljava/lang/String;

    #@8f
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    #@91
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v0

    #@9a
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_RELEASE:Ljava/lang/String;

    #@9c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v0

    #@a0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v0

    #@a4
    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG_RELEASE:Ljava/lang/String;

    #@a6
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@ad
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v0

    #@b1
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_RESULTS:Ljava/lang/String;

    #@b3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    move-result-object v0

    #@b7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ba
    move-result-object v0

    #@bb
    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG_RESULTS:Ljava/lang/String;

    #@bd
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    #@bf
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c2
    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@c4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v0

    #@c8
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_SAVED_STATE:Ljava/lang/String;

    #@ca
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v0

    #@ce
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v0

    #@d2
    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG_SAVED_STATE:Ljava/lang/String;

    #@d4
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    #@d6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d9
    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@db
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v0

    #@df
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_SCREENSHOTS:Ljava/lang/String;

    #@e1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v0

    #@e5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e8
    move-result-object v0

    #@e9
    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG_SCREENSHOTS:Ljava/lang/String;

    #@eb
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    #@ed
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@f0
    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@f2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v0

    #@f6
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_STACK:Ljava/lang/String;

    #@f8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v0

    #@fc
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ff
    move-result-object v0

    #@100
    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG_STACK:Ljava/lang/String;

    #@102
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    #@104
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@107
    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v0

    #@10d
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_STATES:Ljava/lang/String;

    #@10f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v0

    #@113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@116
    move-result-object v0

    #@117
    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG_STATES:Ljava/lang/String;

    #@119
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    #@11b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@11e
    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@123
    move-result-object v0

    #@124
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_SWITCH:Ljava/lang/String;

    #@126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@129
    move-result-object v0

    #@12a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@12d
    move-result-object v0

    #@12e
    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG_SWITCH:Ljava/lang/String;

    #@130
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    #@132
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@135
    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v0

    #@13b
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_TASKS:Ljava/lang/String;

    #@13d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v0

    #@141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@144
    move-result-object v0

    #@145
    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG_TASKS:Ljava/lang/String;

    #@147
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    #@149
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@14c
    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@14e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v0

    #@152
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_TRANSITION:Ljava/lang/String;

    #@154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@157
    move-result-object v0

    #@158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15b
    move-result-object v0

    #@15c
    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG_TRANSITION:Ljava/lang/String;

    #@15e
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    #@160
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@163
    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@168
    move-result-object v0

    #@169
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_USER_LEAVING:Ljava/lang/String;

    #@16b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16e
    move-result-object v0

    #@16f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@172
    move-result-object v0

    #@173
    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG_USER_LEAVING:Ljava/lang/String;

    #@175
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    #@177
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@17a
    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@17c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17f
    move-result-object v0

    #@180
    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_VISIBILITY:Ljava/lang/String;

    #@182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v0

    #@186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@189
    move-result-object v0

    #@18a
    sput-object v0, Lcom/android/server/am/ActivityStack;->TAG_VISIBILITY:Ljava/lang/String;

    #@18c
    .line 146
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/RecentTasks;)V
    .locals 4
    .param p1, "activityContainer"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    .param p2, "recentTasks"    # Lcom/android/server/am/RecentTasks;

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    const/4 v0, 0x0

    #@3
    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 244
    new-instance v1, Ljava/util/ArrayList;

    #@8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@d
    .line 249
    new-instance v1, Ljava/util/ArrayList;

    #@f
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@12
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    #@14
    .line 256
    new-instance v1, Ljava/util/ArrayList;

    #@16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@19
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    #@1b
    .line 262
    new-instance v1, Ljava/util/ArrayList;

    #@1d
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@20
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    #@22
    .line 268
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@24
    .line 275
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    #@26
    .line 282
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    #@28
    .line 287
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@2a
    .line 294
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

    #@2c
    .line 302
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    #@2e
    .line 303
    new-instance v1, Ljava/util/ArrayList;

    #@30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@33
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    #@35
    .line 312
    const/4 v1, 0x1

    #@36
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    #@38
    .line 314
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    #@3a
    .line 318
    new-instance v1, Landroid/graphics/Rect;

    #@3c
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@3f
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    #@41
    .line 319
    new-instance v1, Landroid/graphics/Rect;

    #@43
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@46
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskBounds:Landroid/graphics/Rect;

    #@48
    .line 320
    new-instance v1, Landroid/graphics/Rect;

    #@4a
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #@4d
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskInsetBounds:Landroid/graphics/Rect;

    #@4f
    .line 322
    iput-wide v2, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    #@51
    .line 323
    iput-wide v2, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    #@53
    .line 442
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@55
    .line 443
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->getOuter()Lcom/android/server/am/ActivityStackSupervisor;

    #@58
    move-result-object v1

    #@59
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@5b
    .line 444
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@5d
    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5f
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@61
    .line 445
    new-instance v1, Lcom/android/server/am/ActivityStack$ActivityStackHandler;

    #@63
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@65
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@67
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->getLooper()Landroid/os/Looper;

    #@6a
    move-result-object v2

    #@6b
    invoke-direct {v1, p0, v2}, Lcom/android/server/am/ActivityStack$ActivityStackHandler;-><init>(Lcom/android/server/am/ActivityStack;Landroid/os/Looper;)V

    #@6e
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@70
    .line 446
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@72
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@74
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@76
    .line 447
    iget v1, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStackId:I

    #@78
    iput v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@7a
    .line 448
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@7c
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@7e
    invoke-virtual {v1}, Lcom/android/server/am/UserController;->getCurrentUserIdLocked()I

    #@81
    move-result v1

    #@82
    iput v1, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    #@84
    .line 449
    iput-object p2, p0, Lcom/android/server/am/ActivityStack;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@86
    .line 450
    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@88
    const/4 v2, 0x2

    #@89
    if-ne v1, v2, :cond_0

    #@8b
    .line 451
    new-instance v0, Lcom/android/server/am/LaunchingTaskPositioner;

    #@8d
    invoke-direct {v0}, Lcom/android/server/am/LaunchingTaskPositioner;-><init>()V

    #@90
    .line 450
    :cond_0
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskPositioner:Lcom/android/server/am/LaunchingTaskPositioner;

    #@92
    .line 441
    return-void
.end method

.method private addToStopping(Lcom/android/server/am/ActivityRecord;Z)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "immediate"    # Z

    #@0
    .prologue
    .line 1381
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@2
    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 1382
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@c
    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@11
    .line 1389
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@13
    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v1

    #@19
    const/4 v2, 0x3

    #@1a
    if-gt v1, v2, :cond_2

    #@1c
    .line 1390
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    #@1e
    if-eqz v1, :cond_3

    #@20
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x1

    #@27
    if-gt v1, v2, :cond_3

    #@29
    const/4 v0, 0x1

    #@2a
    .line 1392
    .local v0, "forceIdle":Z
    :goto_0
    if-nez p2, :cond_1

    #@2c
    if-eqz v0, :cond_4

    #@2e
    .line 1395
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@30
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    #@33
    .line 1380
    :goto_1
    return-void

    #@34
    .line 1389
    .end local v0    # "forceIdle":Z
    :cond_2
    const/4 v0, 0x1

    #@35
    .restart local v0    # "forceIdle":Z
    goto :goto_0

    #@36
    .line 1390
    .end local v0    # "forceIdle":Z
    :cond_3
    const/4 v0, 0x0

    #@37
    .restart local v0    # "forceIdle":Z
    goto :goto_0

    #@38
    .line 1397
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@3a
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    #@3d
    goto :goto_1
.end method

.method private adjustFocusToNextFocusableStackLocked(ILjava/lang/String;)Z
    .locals 5
    .param p1, "taskToReturnTo"    # I
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3239
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getNextFocusableStackLocked()Lcom/android/server/am/ActivityStack;

    #@3
    move-result-object v1

    #@4
    .line 3240
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    new-instance v3, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v3

    #@d
    const-string/jumbo v4, " adjustFocusToNextFocusableStack"

    #@10
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 3241
    .local v0, "myReason":Ljava/lang/String;
    if-nez v1, :cond_0

    #@1a
    .line 3242
    const/4 v3, 0x0

    #@1b
    return v3

    #@1c
    .line 3245
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@1f
    move-result-object v2

    #@20
    .line 3247
    .local v2, "top":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_1

    #@26
    if-eqz v2, :cond_2

    #@28
    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@2a
    if-eqz v3, :cond_2

    #@2c
    .line 3252
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2e
    invoke-virtual {v3, v2, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    #@31
    move-result v3

    #@32
    return v3

    #@33
    .line 3250
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@35
    invoke-virtual {v3, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;)Z

    #@38
    move-result v3

    #@39
    return v3
.end method

.method private adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3200
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@2
    invoke-virtual {v4, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_0

    #@8
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@a
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    #@c
    if-eq v4, p1, :cond_1

    #@e
    .line 3201
    :cond_0
    return-void

    #@f
    .line 3204
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@12
    move-result-object v1

    #@13
    .line 3205
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
    .line 3206
    .local v0, "myReason":Ljava/lang/String;
    if-eq v1, p1, :cond_4

    #@29
    .line 3207
    if-eqz v1, :cond_2

    #@2b
    iget v4, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@2d
    invoke-static {v4}, Landroid/app/ActivityManager$StackId;->keepFocusInStackIfPossible(I)Z

    #@30
    move-result v4

    #@31
    if-eqz v4, :cond_2

    #@33
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    #@36
    move-result v4

    #@37
    if-eqz v4, :cond_2

    #@39
    .line 3211
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@3b
    invoke-virtual {v4, v1, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    #@3e
    .line 3212
    return-void

    #@3f
    .line 3214
    :cond_2
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@41
    .line 3215
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    #@43
    if-eqz v4, :cond_4

    #@45
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    #@48
    move-result-object v4

    #@49
    if-ne v2, v4, :cond_4

    #@4b
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    #@4e
    move-result v4

    #@4f
    if-eqz v4, :cond_4

    #@51
    .line 3216
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    #@54
    move-result v3

    #@55
    .line 3221
    .local v3, "taskToReturnTo":I
    iget-boolean v4, p0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    #@57
    if-nez v4, :cond_3

    #@59
    .line 3222
    invoke-direct {p0, v3, v0}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStackLocked(ILjava/lang/String;)Z

    #@5c
    move-result v4

    #@5d
    .line 3221
    if-eqz v4, :cond_3

    #@5f
    .line 3223
    return-void

    #@60
    .line 3227
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@62
    invoke-virtual {v4, v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;)Z

    #@65
    move-result v4

    #@66
    if-eqz v4, :cond_4

    #@68
    .line 3229
    return-void

    #@69
    .line 3235
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    .end local v3    # "taskToReturnTo":I
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@6b
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@6d
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@70
    move-result-object v5

    #@71
    invoke-virtual {v4, v5, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    #@74
    .line 3199
    return-void
.end method

.method private static catchConfigChangesFromUnset(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)I
    .locals 13
    .param p0, "taskConfig"    # Landroid/content/res/Configuration;
    .param p1, "oldTaskOverride"    # Landroid/content/res/Configuration;
    .param p2, "taskChanges"    # I

    #@0
    .prologue
    .line 4689
    if-nez p2, :cond_4

    #@2
    .line 4692
    iget v11, p1, Landroid/content/res/Configuration;->orientation:I

    #@4
    iget v12, p0, Landroid/content/res/Configuration;->orientation:I

    #@6
    if-eq v11, v12, :cond_0

    #@8
    .line 4693
    or-int/lit16 p2, p2, 0x80

    #@a
    .line 4698
    :cond_0
    iget v4, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    #@c
    .line 4699
    .local v4, "oldHeight":I
    iget v0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    #@e
    .line 4700
    .local v0, "newHeight":I
    const/4 v8, 0x0

    #@f
    .line 4701
    .local v8, "undefinedHeight":I
    if-nez v4, :cond_5

    #@11
    if-eqz v0, :cond_5

    #@13
    .line 4703
    :goto_0
    or-int/lit16 p2, p2, 0x400

    #@15
    .line 4705
    :cond_1
    iget v7, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    #@17
    .line 4706
    .local v7, "oldWidth":I
    iget v3, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    #@19
    .line 4707
    .local v3, "newWidth":I
    const/4 v10, 0x0

    #@1a
    .line 4708
    .local v10, "undefinedWidth":I
    if-nez v7, :cond_6

    #@1c
    if-eqz v3, :cond_6

    #@1e
    .line 4710
    :goto_1
    or-int/lit16 p2, p2, 0x400

    #@20
    .line 4712
    :cond_2
    iget v6, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@22
    .line 4713
    .local v6, "oldSmallest":I
    iget v2, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@24
    .line 4714
    .local v2, "newSmallest":I
    const/4 v9, 0x0

    #@25
    .line 4715
    .local v9, "undefinedSmallest":I
    if-nez v6, :cond_7

    #@27
    if-eqz v2, :cond_7

    #@29
    .line 4717
    :goto_2
    or-int/lit16 p2, p2, 0x800

    #@2b
    .line 4719
    :cond_3
    iget v5, p1, Landroid/content/res/Configuration;->screenLayout:I

    #@2d
    .line 4720
    .local v5, "oldLayout":I
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    #@2f
    .line 4721
    .local v1, "newLayout":I
    if-nez v5, :cond_8

    #@31
    if-eqz v1, :cond_8

    #@33
    .line 4723
    :goto_3
    or-int/lit16 p2, p2, 0x100

    #@35
    .line 4726
    .end local v0    # "newHeight":I
    .end local v1    # "newLayout":I
    .end local v2    # "newSmallest":I
    .end local v3    # "newWidth":I
    .end local v4    # "oldHeight":I
    .end local v5    # "oldLayout":I
    .end local v6    # "oldSmallest":I
    .end local v7    # "oldWidth":I
    .end local v8    # "undefinedHeight":I
    .end local v9    # "undefinedSmallest":I
    .end local v10    # "undefinedWidth":I
    :cond_4
    return p2

    #@36
    .line 4702
    .restart local v0    # "newHeight":I
    .restart local v4    # "oldHeight":I
    .restart local v8    # "undefinedHeight":I
    :cond_5
    if-eqz v4, :cond_1

    #@38
    if-nez v0, :cond_1

    #@3a
    goto :goto_0

    #@3b
    .line 4709
    .restart local v3    # "newWidth":I
    .restart local v7    # "oldWidth":I
    .restart local v10    # "undefinedWidth":I
    :cond_6
    if-eqz v7, :cond_2

    #@3d
    if-nez v3, :cond_2

    #@3f
    goto :goto_1

    #@40
    .line 4716
    .restart local v2    # "newSmallest":I
    .restart local v6    # "oldSmallest":I
    .restart local v9    # "undefinedSmallest":I
    :cond_7
    if-eqz v6, :cond_3

    #@42
    if-nez v2, :cond_3

    #@44
    goto :goto_2

    #@45
    .line 4722
    .restart local v1    # "newLayout":I
    .restart local v5    # "oldLayout":I
    :cond_8
    if-eqz v5, :cond_4

    #@47
    if-nez v1, :cond_4

    #@49
    goto :goto_3
.end method

.method private checkTranslucentActivityWaiting(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "top"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1864
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    #@3
    if-eq v0, p1, :cond_1

    #@5
    .line 1865
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    #@7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@a
    .line 1866
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 1868
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V

    #@11
    .line 1869
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    #@13
    .line 1871
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@15
    const/16 v1, 0x6a

    #@17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@1a
    .line 1863
    :cond_1
    return-void
.end method

.method private completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V
    .locals 12
    .param p1, "resumeNext"    # Z
    .param p2, "resuming"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 1284
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@2
    .line 1287
    .local v1, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_2

    #@4
    .line 1288
    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@6
    sget-object v9, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@8
    if-ne v8, v9, :cond_9

    #@a
    const/4 v7, 0x1

    #@b
    .line 1289
    .local v7, "wasStopping":Z
    :goto_0
    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@d
    iput-object v8, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@f
    .line 1290
    iget-boolean v8, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@11
    if-eqz v8, :cond_a

    #@13
    .line 1292
    const/4 v8, 0x2

    #@14
    const/4 v9, 0x0

    #@15
    invoke-virtual {p0, v1, v8, v9}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    #@18
    move-result-object v1

    #@19
    .line 1323
    .end local v1    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    #@1b
    .line 1324
    const/4 v8, 0x1

    #@1c
    invoke-virtual {v1, v8}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    #@1f
    .line 1326
    :cond_1
    const/4 v8, 0x0

    #@20
    iput-object v8, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@22
    .line 1329
    .end local v7    # "wasStopping":Z
    :cond_2
    if-eqz p1, :cond_3

    #@24
    .line 1330
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@26
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    #@29
    move-result-object v6

    #@2a
    .line 1331
    .local v6, "topStack":Lcom/android/server/am/ActivityStack;
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2c
    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDownLocked()Z

    #@2f
    move-result v8

    #@30
    if-nez v8, :cond_11

    #@32
    .line 1332
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@34
    const/4 v9, 0x0

    #@35
    invoke-virtual {v8, v6, v1, v9}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    #@38
    .line 1346
    .end local v6    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_3
    :goto_2
    if-eqz v1, :cond_6

    #@3a
    .line 1347
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    #@3d
    .line 1349
    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@3f
    if-eqz v8, :cond_5

    #@41
    iget-wide v8, v1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    #@43
    const-wide/16 v10, 0x0

    #@45
    cmp-long v8, v8, v10

    #@47
    if-lez v8, :cond_5

    #@49
    .line 1350
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4b
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    #@4d
    invoke-virtual {v8}, Lcom/android/server/am/BatteryStatsService;->isOnBattery()Z

    #@50
    move-result v8

    #@51
    .line 1349
    if-eqz v8, :cond_5

    #@53
    .line 1351
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@55
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    #@57
    iget-object v9, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@59
    iget v9, v9, Lcom/android/server/am/ProcessRecord;->pid:I

    #@5b
    invoke-virtual {v8, v9}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    #@5e
    move-result-wide v8

    #@5f
    .line 1352
    iget-wide v10, v1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    #@61
    .line 1351
    sub-long v2, v8, v10

    #@63
    .line 1353
    .local v2, "diff":J
    const-wide/16 v8, 0x0

    #@65
    cmp-long v8, v2, v8

    #@67
    if-lez v8, :cond_5

    #@69
    .line 1354
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@6b
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    #@6d
    invoke-virtual {v8}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    #@70
    move-result-object v0

    #@71
    .line 1355
    .local v0, "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v0

    #@72
    .line 1357
    :try_start_0
    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@74
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@76
    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    #@78
    .line 1358
    iget-object v9, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@7a
    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@7c
    .line 1357
    invoke-virtual {v0, v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    #@7f
    move-result-object v4

    #@80
    .line 1359
    .local v4, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v4, :cond_4

    #@82
    .line 1360
    invoke-virtual {v4, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addForegroundTimeLocked(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@85
    :cond_4
    monitor-exit v0

    #@86
    .line 1365
    .end local v0    # "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v2    # "diff":J
    .end local v4    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_5
    const-wide/16 v8, 0x0

    #@88
    iput-wide v8, v1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    #@8a
    .line 1371
    :cond_6
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@8c
    iget-boolean v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    #@8e
    if-nez v8, :cond_7

    #@90
    .line 1372
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@92
    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@94
    const/4 v9, 0x4

    #@95
    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@98
    move-result-object v8

    #@99
    if-eqz v8, :cond_8

    #@9b
    .line 1373
    :cond_7
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@9d
    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->notifyTaskStackChangedLocked()V

    #@a0
    .line 1374
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@a2
    const/4 v9, 0x0

    #@a3
    iput-boolean v9, v8, Lcom/android/server/am/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    #@a5
    .line 1377
    :cond_8
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@a7
    const/4 v9, 0x0

    #@a8
    const/4 v10, 0x0

    #@a9
    invoke-virtual {v8, p2, v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    #@ac
    .line 1283
    return-void

    #@ad
    .line 1288
    .restart local v1    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_9
    const/4 v7, 0x0

    #@ae
    .restart local v7    # "wasStopping":Z
    goto/16 :goto_0

    #@b0
    .line 1293
    :cond_a
    iget-object v8, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@b2
    if-eqz v8, :cond_10

    #@b4
    .line 1296
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@b6
    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@b8
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@bb
    move-result v8

    #@bc
    if-eqz v8, :cond_b

    #@be
    .line 1300
    :cond_b
    iget-boolean v8, v1, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    #@c0
    if-eqz v8, :cond_c

    #@c2
    .line 1303
    iget v8, v1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    #@c4
    .line 1304
    iget-boolean v9, v1, Lcom/android/server/am/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    #@c6
    .line 1303
    const/4 v10, 0x0

    #@c7
    invoke-direct {p0, v1, v8, v10, v9}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZZ)V

    #@ca
    goto/16 :goto_1

    #@cc
    .line 1305
    :cond_c
    if-eqz v7, :cond_d

    #@ce
    .line 1309
    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@d0
    iput-object v8, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@d2
    goto/16 :goto_1

    #@d4
    .line 1310
    :cond_d
    iget-boolean v8, v1, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@d6
    if-nez v8, :cond_e

    #@d8
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->hasVisibleBehindActivity()Z

    #@db
    move-result v8

    #@dc
    if-eqz v8, :cond_f

    #@de
    .line 1311
    :cond_e
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@e0
    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDownLocked()Z

    #@e3
    move-result v8

    #@e4
    .line 1310
    if-eqz v8, :cond_0

    #@e6
    .line 1314
    :cond_f
    const/4 v8, 0x1

    #@e7
    invoke-direct {p0, v1, v8}, Lcom/android/server/am/ActivityStack;->addToStopping(Lcom/android/server/am/ActivityRecord;Z)V

    #@ea
    goto/16 :goto_1

    #@ec
    .line 1318
    :cond_10
    const/4 v1, 0x0

    #@ed
    .local v1, "prev":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_1

    #@ef
    .line 1334
    .end local v1    # "prev":Lcom/android/server/am/ActivityRecord;
    .end local v7    # "wasStopping":Z
    .restart local v6    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_11
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@f1
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    #@f4
    .line 1335
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@f7
    move-result-object v5

    #@f8
    .line 1336
    .local v5, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_12

    #@fa
    if-eqz v1, :cond_3

    #@fc
    if-eq v5, v1, :cond_3

    #@fe
    .line 1341
    :cond_12
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@100
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    #@103
    goto/16 :goto_2

    #@105
    .line 1355
    .end local v5    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "topStack":Lcom/android/server/am/ActivityStack;
    .restart local v0    # "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v2    # "diff":J
    :catchall_0
    move-exception v8

    #@106
    monitor-exit v0

    #@107
    throw v8
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
    .line 1407
    const/4 v1, 0x1

    #@3
    iput-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@5
    .line 1408
    iput-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->idle:Z

    #@7
    .line 1409
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    #@9
    .line 1410
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    #@b
    .line 1411
    iput-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    #@d
    .line 1413
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 1414
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@15
    iget-object v1, v1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@17
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@1d
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@1f
    .line 1415
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_0

    #@21
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@23
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    #@25
    if-eq v0, v1, :cond_0

    #@27
    .line 1416
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@29
    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    #@2b
    .line 1420
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_0
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    #@2d
    if-eqz v1, :cond_1

    #@2f
    .line 1422
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@31
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V

    #@34
    .line 1423
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@36
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->notifyActivityDrawnForKeyguard()V

    #@39
    .line 1427
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@3b
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    #@3e
    .line 1429
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@40
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    #@43
    .line 1431
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    #@46
    .line 1432
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    #@48
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@4b
    .line 1437
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@4d
    if-eqz v1, :cond_3

    #@4f
    .line 1438
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@51
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    #@53
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@55
    iget v2, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    #@57
    invoke-virtual {v1, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    #@5a
    move-result-wide v2

    #@5b
    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    #@5d
    .line 1443
    :goto_0
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    #@5f
    .line 1445
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    #@62
    move-result-object v1

    #@63
    if-ne v1, p1, :cond_2

    #@65
    .line 1447
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    #@68
    .line 1406
    :cond_2
    return-void

    #@69
    .line 1440
    :cond_3
    const-wide/16 v2, 0x0

    #@6b
    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    #@6d
    goto :goto_0
.end method

.method private getNextTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;
    .locals 6
    .param p1, "targetTask"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    .line 2585
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@5
    move-result v1

    #@6
    .line 2586
    .local v1, "index":I
    if-ltz v1, :cond_1

    #@8
    .line 2587
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@d
    move-result v2

    #@e
    .line 2588
    .local v2, "numTasks":I
    add-int/lit8 v0, v1, 0x1

    #@10
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@12
    .line 2589
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Lcom/android/server/am/TaskRecord;

    #@1a
    .line 2590
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget v4, v3, Lcom/android/server/am/TaskRecord;->userId:I

    #@1c
    iget v5, p1, Lcom/android/server/am/TaskRecord;->userId:I

    #@1e
    if-ne v4, v5, :cond_0

    #@20
    .line 2591
    return-object v3

    #@21
    .line 2588
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 2595
    .end local v0    # "i":I
    .end local v2    # "numTasks":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    const/4 v4, 0x0

    #@25
    return-object v4
.end method

.method private getTaskConfigurationChanges(Lcom/android/server/am/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)I
    .locals 6
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "taskConfig"    # Landroid/content/res/Configuration;
    .param p3, "oldTaskOverride"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 4650
    sget-object v4, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@2
    invoke-virtual {v4, p3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    #@5
    move-result v4

    #@6
    if-eqz v4, :cond_0

    #@8
    .line 4651
    sget-object v4, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@a
    invoke-virtual {v4, p2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_4

    #@10
    .line 4656
    :cond_0
    :goto_0
    sget-object v4, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@12
    invoke-virtual {v4, p2}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_1

    #@18
    .line 4657
    sget-object v4, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    #@1a
    invoke-virtual {v4, p3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    #@1d
    move-result v4

    #@1e
    if-eqz v4, :cond_5

    #@20
    .line 4665
    :cond_1
    :goto_1
    invoke-virtual {p3, p2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    #@23
    move-result v3

    #@24
    .line 4668
    .local v3, "taskChanges":I
    and-int/lit16 v4, v3, 0x400

    #@26
    if-eqz v4, :cond_2

    #@28
    .line 4670
    iget v4, p3, Landroid/content/res/Configuration;->screenWidthDp:I

    #@2a
    iget v5, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    #@2c
    .line 4669
    invoke-virtual {p1, v4, v5}, Lcom/android/server/am/ActivityRecord;->crossesHorizontalSizeThreshold(II)Z

    #@2f
    move-result v4

    #@30
    if-nez v4, :cond_6

    #@32
    .line 4672
    iget v4, p3, Landroid/content/res/Configuration;->screenHeightDp:I

    #@34
    iget v5, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    #@36
    .line 4671
    invoke-virtual {p1, v4, v5}, Lcom/android/server/am/ActivityRecord;->crossesVerticalSizeThreshold(II)Z

    #@39
    move-result v0

    #@3a
    .line 4673
    .local v0, "crosses":Z
    :goto_2
    if-nez v0, :cond_2

    #@3c
    .line 4674
    and-int/lit16 v3, v3, -0x401

    #@3e
    .line 4677
    .end local v0    # "crosses":Z
    :cond_2
    and-int/lit16 v4, v3, 0x800

    #@40
    if-eqz v4, :cond_3

    #@42
    .line 4678
    iget v2, p3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@44
    .line 4679
    .local v2, "oldSmallest":I
    iget v1, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    #@46
    .line 4680
    .local v1, "newSmallest":I
    invoke-virtual {p1, v2, v1}, Lcom/android/server/am/ActivityRecord;->crossesSmallestSizeThreshold(II)Z

    #@49
    move-result v4

    #@4a
    if-nez v4, :cond_3

    #@4c
    .line 4681
    and-int/lit16 v3, v3, -0x801

    #@4e
    .line 4684
    .end local v1    # "newSmallest":I
    .end local v2    # "oldSmallest":I
    :cond_3
    invoke-static {p2, p3, v3}, Lcom/android/server/am/ActivityStack;->catchConfigChangesFromUnset(Landroid/content/res/Configuration;Landroid/content/res/Configuration;I)I

    #@51
    move-result v4

    #@52
    return v4

    #@53
    .line 4652
    .end local v3    # "taskChanges":I
    :cond_4
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@55
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    #@57
    invoke-virtual {v4, v5}, Lcom/android/server/am/TaskRecord;->extractOverrideConfig(Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    #@5a
    move-result-object p3

    #@5b
    goto :goto_0

    #@5c
    .line 4658
    :cond_5
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@5e
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    #@60
    invoke-virtual {v4, v5}, Lcom/android/server/am/TaskRecord;->extractOverrideConfig(Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    #@63
    move-result-object p2

    #@64
    goto :goto_1

    #@65
    .line 4669
    .restart local v3    # "taskChanges":I
    :cond_6
    const/4 v0, 0x1

    #@66
    goto :goto_2
.end method

.method private handleAlreadyVisible(Lcom/android/server/am/ActivityRecord;)Z
    .locals 5
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1993
    invoke-virtual {p1, v1}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    #@4
    .line 1995
    :try_start_0
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 1996
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@a
    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@c
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@e
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    #@10
    invoke-interface {v2, v3, v4}, Landroid/app/IApplicationThread;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 2000
    :cond_0
    :goto_0
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@15
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@17
    if-ne v2, v3, :cond_1

    #@19
    const/4 v1, 0x1

    #@1a
    :cond_1
    return v1

    #@1b
    .line 1998
    :catch_0
    move-exception v0

    #@1c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private hasFullscreenTask()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1534
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    add-int/lit8 v0, v2, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@b
    .line 1535
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/am/TaskRecord;

    #@13
    .line 1536
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    iget-boolean v2, v1, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    #@15
    if-eqz v2, :cond_0

    #@17
    .line 1537
    const/4 v2, 0x1

    #@18
    return v2

    #@19
    .line 1534
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1540
    .end local v1    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    return v3
.end method

.method private insertTaskAtPosition(Lcom/android/server/am/TaskRecord;I)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "position"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2599
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    if-lt p2, v2, :cond_0

    #@9
    .line 2600
    invoke-direct {p0, p1, v3}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    #@c
    .line 2601
    return-void

    #@d
    .line 2604
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@12
    move-result v0

    #@13
    .line 2605
    .local v0, "maxPosition":I
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@15
    iget v3, p1, Lcom/android/server/am/TaskRecord;->userId:I

    #@17
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    #@1a
    move-result v2

    #@1b
    if-nez v2, :cond_1

    #@1d
    .line 2606
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@20
    move-result-object v2

    #@21
    if-nez v2, :cond_1

    #@23
    .line 2608
    :goto_0
    if-lez v0, :cond_1

    #@25
    .line 2609
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@27
    add-int/lit8 v3, v0, -0x1

    #@29
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v1

    #@2d
    check-cast v1, Lcom/android/server/am/TaskRecord;

    #@2f
    .line 2610
    .local v1, "tmpTask":Lcom/android/server/am/TaskRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@31
    iget v3, v1, Lcom/android/server/am/TaskRecord;->userId:I

    #@33
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_1

    #@39
    .line 2611
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@3c
    move-result-object v2

    #@3d
    if-nez v2, :cond_2

    #@3f
    .line 2617
    .end local v1    # "tmpTask":Lcom/android/server/am/TaskRecord;
    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    #@42
    move-result p2

    #@43
    .line 2618
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@45
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@48
    .line 2619
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@4a
    invoke-virtual {v2, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@4d
    .line 2620
    const/4 v2, 0x1

    #@4e
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    #@51
    .line 2598
    return-void

    #@52
    .line 2614
    .restart local v1    # "tmpTask":Lcom/android/server/am/TaskRecord;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@54
    goto :goto_0
.end method

.method private insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 10
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "newActivity"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 2624
    const/4 v1, 0x0

    #@2
    .line 2626
    .local v1, "isLastTaskOverHome":Z
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    #@5
    move-result v8

    #@6
    if-eqz v8, :cond_0

    #@8
    .line 2627
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->getNextTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;

    #@b
    move-result-object v3

    #@c
    .line 2628
    .local v3, "nextTask":Lcom/android/server/am/TaskRecord;
    if-eqz v3, :cond_7

    #@e
    .line 2629
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    #@11
    move-result v8

    #@12
    invoke-virtual {v3, v8}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    #@15
    .line 2637
    .end local v3    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    #@18
    move-result v8

    #@19
    if-eqz v8, :cond_a

    #@1b
    .line 2638
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1d
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    #@20
    move-result-object v2

    #@21
    .line 2639
    .local v2, "lastStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    #@24
    move-result v0

    #@25
    .line 2640
    .local v0, "fromHome":Z
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    #@28
    move-result v8

    #@29
    if-nez v8, :cond_3

    #@2b
    if-nez v0, :cond_1

    #@2d
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    #@30
    move-result-object v8

    #@31
    if-eq v8, p1, :cond_3

    #@33
    .line 2643
    :cond_1
    if-eqz v1, :cond_8

    #@35
    .line 2644
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    #@38
    move-result v5

    #@39
    .line 2645
    .local v5, "returnToType":I
    :goto_1
    if-eqz v0, :cond_2

    #@3b
    iget v8, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@3d
    invoke-static {v8}, Landroid/app/ActivityManager$StackId;->allowTopTaskToReturnHome(I)Z

    #@40
    move-result v8

    #@41
    if-eqz v8, :cond_2

    #@43
    .line 2646
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    #@46
    move-result-object v8

    #@47
    if-nez v8, :cond_9

    #@49
    .line 2647
    const/4 v5, 0x1

    #@4a
    .line 2649
    :cond_2
    :goto_2
    invoke-virtual {p1, v5}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    #@4d
    .line 2655
    .end local v0    # "fromHome":Z
    .end local v2    # "lastStack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "returnToType":I
    :cond_3
    :goto_3
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@4f
    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@52
    .line 2657
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@54
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@57
    move-result v6

    #@58
    .line 2659
    .local v6, "taskNdx":I
    if-eqz p2, :cond_b

    #@5a
    iget-object v8, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@5c
    iget v8, v8, Landroid/content/pm/ActivityInfo;->flags:I

    #@5e
    and-int/lit16 v8, v8, 0x400

    #@60
    if-nez v8, :cond_b

    #@62
    const/4 v4, 0x1

    #@63
    .line 2661
    .local v4, "notShownWhenLocked":Z
    :goto_4
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@65
    iget v9, p1, Lcom/android/server/am/TaskRecord;->userId:I

    #@67
    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    #@6a
    move-result v8

    #@6b
    if-nez v8, :cond_6

    #@6d
    if-eqz v4, :cond_6

    #@6f
    .line 2663
    :cond_4
    add-int/lit8 v6, v6, -0x1

    #@71
    if-ltz v6, :cond_5

    #@73
    .line 2664
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@75
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@78
    move-result-object v7

    #@79
    check-cast v7, Lcom/android/server/am/TaskRecord;

    #@7b
    .line 2665
    .local v7, "tmpTask":Lcom/android/server/am/TaskRecord;
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@7d
    iget v9, v7, Lcom/android/server/am/TaskRecord;->userId:I

    #@7f
    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    #@82
    move-result v8

    #@83
    if-eqz v8, :cond_5

    #@85
    .line 2666
    invoke-virtual {v7}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@88
    move-result-object v8

    #@89
    if-nez v8, :cond_4

    #@8b
    .line 2670
    .end local v7    # "tmpTask":Lcom/android/server/am/TaskRecord;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    #@8d
    .line 2672
    :cond_6
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@8f
    invoke-virtual {v8, v6, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@92
    .line 2673
    const/4 v8, 0x1

    #@93
    invoke-virtual {p0, p1, v8}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    #@96
    .line 2623
    return-void

    #@97
    .line 2631
    .end local v4    # "notShownWhenLocked":Z
    .end local v6    # "taskNdx":I
    .restart local v3    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_7
    const/4 v1, 0x1

    #@98
    goto/16 :goto_0

    #@9a
    .line 2644
    .end local v3    # "nextTask":Lcom/android/server/am/TaskRecord;
    .restart local v0    # "fromHome":Z
    .restart local v2    # "lastStack":Lcom/android/server/am/ActivityStack;
    :cond_8
    const/4 v5, 0x0

    #@9b
    .restart local v5    # "returnToType":I
    goto :goto_1

    #@9c
    .line 2647
    :cond_9
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    #@9f
    move-result-object v8

    #@a0
    iget v5, v8, Lcom/android/server/am/TaskRecord;->taskType:I

    #@a2
    goto :goto_2

    #@a3
    .line 2652
    .end local v0    # "fromHome":Z
    .end local v2    # "lastStack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "returnToType":I
    :cond_a
    invoke-virtual {p1, v9}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    #@a6
    goto :goto_3

    #@a7
    .line 2660
    .restart local v6    # "taskNdx":I
    :cond_b
    if-nez p2, :cond_c

    #@a9
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@ac
    move-result-object v8

    #@ad
    if-nez v8, :cond_c

    #@af
    const/4 v4, 0x1

    #@b0
    .restart local v4    # "notShownWhenLocked":Z
    goto :goto_4

    #@b1
    .end local v4    # "notShownWhenLocked":Z
    :cond_c
    const/4 v4, 0x0

    #@b2
    .restart local v4    # "notShownWhenLocked":Z
    goto :goto_4
.end method

.method private static isResizeOnlyChange(I)Z
    .locals 2
    .param p0, "change"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 4730
    and-int/lit16 v1, p0, -0xd81

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method private isStackTranslucent(Lcom/android/server/am/ActivityRecord;I)Z
    .locals 7
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "stackBehindId"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1551
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v5

    #@7
    add-int/lit8 v4, v5, -0x1

    #@9
    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_5

    #@b
    .line 1552
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    check-cast v3, Lcom/android/server/am/TaskRecord;

    #@13
    .line 1553
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@15
    .line 1554
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v5

    #@19
    add-int/lit8 v1, v5, -0x1

    #@1b
    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_4

    #@1d
    .line 1555
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Lcom/android/server/am/ActivityRecord;

    #@23
    .line 1557
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@25
    if-eqz v5, :cond_1

    #@27
    .line 1554
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@29
    goto :goto_1

    #@2a
    .line 1563
    :cond_1
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@2c
    if-nez v5, :cond_2

    #@2e
    if-ne v2, p1, :cond_0

    #@30
    .line 1569
    :cond_2
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@32
    if-eqz v5, :cond_3

    #@34
    .line 1572
    return v6

    #@35
    .line 1575
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    #@38
    move-result v5

    #@39
    if-nez v5, :cond_0

    #@3b
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    #@3d
    if-eqz v5, :cond_0

    #@3f
    .line 1576
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    #@42
    move-result v5

    #@43
    .line 1575
    if-eqz v5, :cond_0

    #@45
    .line 1576
    if-eqz p2, :cond_0

    #@47
    .line 1579
    return v6

    #@48
    .line 1551
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v4, v4, -0x1

    #@4a
    goto :goto_0

    #@4b
    .line 1583
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    const/4 v5, 0x1

    #@4c
    return v5
.end method

.method static final logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 5
    .param p0, "tag"    # I
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    .line 4471
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@2
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@5
    move-result-object v0

    #@6
    .line 4472
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_0

    #@8
    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 4474
    :goto_0
    const/16 v2, 0x8

    #@e
    new-array v2, v2, [Ljava/lang/Object;

    #@10
    .line 4475
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
    .line 4476
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
    .line 4477
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
    .line 4474
    invoke-static {p0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@57
    .line 4470
    return-void

    #@58
    .line 4472
    :cond_0
    const/4 v1, 0x0

    #@59
    .local v1, "strData":Ljava/lang/String;
    goto :goto_0
.end method

.method private makeInvisible(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "visibleBehind"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 1901
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1903
    return-void

    #@5
    .line 1909
    :cond_0
    const/4 v1, 0x0

    #@6
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/ActivityStack;->setVisible(Lcom/android/server/am/ActivityRecord;Z)V

    #@9
    .line 1910
    invoke-static {}, Lcom/android/server/am/ActivityStack;->-getcom-android-server-am-ActivityStack$ActivityStateSwitchesValues()[I

    #@c
    move-result-object v1

    #@d
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@f
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack$ActivityState;->ordinal()I

    #@12
    move-result v2

    #@13
    aget v1, v1, v2

    #@15
    packed-switch v1, :pswitch_data_0

    #@18
    .line 1900
    :cond_1
    :goto_0
    return-void

    #@19
    .line 1913
    :pswitch_0
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@1b
    if-eqz v1, :cond_1

    #@1d
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@1f
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@21
    if-eqz v1, :cond_1

    #@23
    .line 1916
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@25
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@27
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@29
    const/4 v3, 0x0

    #@2a
    invoke-interface {v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    goto :goto_0

    #@2e
    .line 1936
    :catch_0
    move-exception v0

    #@2f
    .line 1938
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@31
    new-instance v2, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v3, "Exception thrown making hidden: "

    #@39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@3f
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4e
    goto :goto_0

    #@4f
    .line 1926
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    if-ne p2, p1, :cond_2

    #@51
    .line 1927
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->releaseBackgroundResources(Lcom/android/server/am/ActivityRecord;)V

    #@54
    goto :goto_0

    #@55
    .line 1929
    :cond_2
    const/4 v1, 0x1

    #@56
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/ActivityStack;->addToStopping(Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@59
    goto :goto_0

    #@5a
    .line 1910
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private makeVisibleAndRestartIfNeeded(Lcom/android/server/am/ActivityRecord;IZZLcom/android/server/am/ActivityRecord;)Z
    .locals 3
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "isTop"    # Z
    .param p4, "andResume"    # Z
    .param p5, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1881
    if-nez p3, :cond_1

    #@4
    iget-boolean v0, p5, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 1897
    :cond_0
    return v1

    #@9
    .line 1885
    :cond_1
    if-eq p5, p1, :cond_2

    #@b
    .line 1886
    iget-object v0, p5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@d
    invoke-virtual {p5, v0, p2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    #@10
    .line 1888
    :cond_2
    iget-boolean v0, p5, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@12
    if-eqz v0, :cond_3

    #@14
    iget-boolean v0, p5, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    #@16
    if-eqz v0, :cond_4

    #@18
    .line 1890
    :cond_3
    invoke-direct {p0, p5, v2}, Lcom/android/server/am/ActivityStack;->setVisible(Lcom/android/server/am/ActivityRecord;Z)V

    #@1b
    .line 1892
    :cond_4
    if-eq p5, p1, :cond_0

    #@1d
    .line 1893
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1f
    invoke-virtual {v0, p5, p4, v1}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    #@22
    .line 1894
    return v2
.end method

.method private makeVisibleIfNeeded(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 1962
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@2
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@4
    if-eq v1, v2, :cond_0

    #@6
    if-ne p2, p1, :cond_1

    #@8
    .line 1965
    :cond_0
    return-void

    #@9
    .line 1972
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    #@b
    if-eqz v1, :cond_2

    #@d
    .line 1973
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    #@f
    invoke-virtual {p2, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    #@12
    .line 1974
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@17
    .line 1976
    :cond_2
    const/4 v1, 0x1

    #@18
    invoke-direct {p0, p2, v1}, Lcom/android/server/am/ActivityStack;->setVisible(Lcom/android/server/am/ActivityRecord;Z)V

    #@1b
    .line 1977
    const/4 v1, 0x0

    #@1c
    iput-boolean v1, p2, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    #@1e
    .line 1978
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@20
    const/4 v2, 0x1

    #@21
    iput-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    #@23
    .line 1979
    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@25
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@27
    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@29
    const/4 v3, 0x1

    #@2a
    invoke-interface {v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    #@2d
    .line 1982
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@2f
    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@34
    .line 1983
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@36
    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    #@38
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    .line 1989
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/am/ActivityStack;->handleAlreadyVisible(Lcom/android/server/am/ActivityRecord;)Z

    #@3e
    .line 1959
    return-void

    #@3f
    .line 1984
    :catch_0
    move-exception v0

    #@40
    .line 1987
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@42
    new-instance v2, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v3, "Exception thrown making visibile: "

    #@4a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@50
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v2

    #@58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v2

    #@5c
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5f
    goto :goto_0
.end method

.method private postAddTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "prevStack"    # Lcom/android/server/am/ActivityStack;

    #@0
    .prologue
    .line 5225
    if-eqz p2, :cond_1

    #@2
    .line 5226
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@4
    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleReportPictureInPictureModeChangedIfNeeded(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)V

    #@7
    .line 5224
    :cond_0
    :goto_0
    return-void

    #@8
    .line 5227
    :cond_1
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 5229
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@e
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@10
    iget v3, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    #@12
    invoke-interface {v1, v2, v3}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    goto :goto_0

    #@16
    .line 5230
    :catch_0
    move-exception v0

    #@17
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private preAddTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)Lcom/android/server/am/ActivityStack;
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "toTop"    # Z

    #@0
    .prologue
    .line 5216
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@2
    .line 5217
    .local v0, "prevStack":Lcom/android/server/am/ActivityStack;
    if-eqz v0, :cond_0

    #@4
    if-eq v0, p0, :cond_0

    #@6
    .line 5219
    if-eqz p3, :cond_1

    #@8
    const/4 v1, 0x2

    #@9
    .line 5218
    :goto_0
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V

    #@c
    .line 5221
    :cond_0
    return-object v0

    #@d
    .line 5219
    :cond_1
    const/4 v1, 0x1

    #@e
    goto :goto_0
.end method

.method private relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZZ)V
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "changes"    # I
    .param p3, "andResume"    # Z
    .param p4, "preserveWindow"    # Z

    #@0
    .prologue
    .line 4736
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@2
    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSuppressResizeConfigChanges:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    if-eqz p4, :cond_0

    #@8
    .line 4737
    const/4 v0, 0x0

    #@9
    iput v0, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    #@b
    .line 4738
    return-void

    #@c
    .line 4741
    :cond_0
    const/4 v2, 0x0

    #@d
    .line 4742
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v3, 0x0

    #@e
    .line 4743
    .local v3, "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    if-eqz p3, :cond_1

    #@10
    .line 4744
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    #@12
    .line 4745
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    #@14
    .line 4750
    .end local v2    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v3    # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :cond_1
    if-eqz p3, :cond_3

    #@16
    const/16 v0, 0x7543

    #@18
    :goto_0
    const/4 v1, 0x4

    #@19
    new-array v1, v1, [Ljava/lang/Object;

    #@1b
    .line 4751
    iget v4, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    #@1d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v4

    #@21
    const/4 v5, 0x0

    #@22
    aput-object v4, v1, v5

    #@24
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@27
    move-result v4

    #@28
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v4

    #@2c
    const/4 v5, 0x1

    #@2d
    aput-object v4, v1, v5

    #@2f
    .line 4752
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@31
    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    #@33
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@36
    move-result-object v4

    #@37
    const/4 v5, 0x2

    #@38
    aput-object v4, v1, v5

    #@3a
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@3c
    const/4 v5, 0x3

    #@3d
    aput-object v4, v1, v5

    #@3f
    .line 4750
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@42
    .line 4754
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@44
    const/4 v1, 0x0

    #@45
    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    #@48
    .line 4756
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@4a
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeChildActivityContainers(Lcom/android/server/am/ActivityRecord;)V

    #@4d
    .line 4762
    const/4 v0, 0x0

    #@4e
    :try_start_0
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    #@50
    .line 4763
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@52
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->activityRelaunchingLocked(Lcom/android/server/am/ActivityRecord;)V

    #@55
    .line 4764
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@57
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@59
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@5b
    .line 4765
    if-eqz p3, :cond_4

    #@5d
    const/4 v5, 0x0

    #@5e
    :goto_1
    new-instance v6, Landroid/content/res/Configuration;

    #@60
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@62
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@64
    invoke-direct {v6, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@67
    .line 4766
    new-instance v7, Landroid/content/res/Configuration;

    #@69
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@6b
    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    #@6d
    invoke-direct {v7, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    #@70
    move v4, p2

    #@71
    move v8, p4

    #@72
    .line 4764
    invoke-interface/range {v0 .. v8}, Landroid/app/IApplicationThread;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@75
    .line 4774
    :goto_2
    if-eqz p3, :cond_6

    #@77
    .line 4778
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@79
    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@7b
    .line 4783
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@7d
    if-eqz v0, :cond_2

    #@7f
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    #@81
    if-eqz v0, :cond_5

    #@83
    .line 4784
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@85
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@87
    const/4 v4, 0x1

    #@88
    invoke-virtual {v0, v1, v4}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    #@8b
    .line 4785
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V

    #@8e
    .line 4790
    :goto_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@90
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->showUnsupportedZoomDialogIfNeededLocked(Lcom/android/server/am/ActivityRecord;)V

    #@93
    .line 4791
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@95
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    #@98
    .line 4797
    :goto_4
    const/4 v0, 0x0

    #@99
    iput v0, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    #@9b
    .line 4798
    const/4 v0, 0x0

    #@9c
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    #@9e
    .line 4799
    const/4 v0, 0x0

    #@9f
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    #@a1
    .line 4735
    return-void

    #@a2
    .line 4751
    :cond_3
    const/16 v0, 0x7544

    #@a4
    goto/16 :goto_0

    #@a6
    .line 4765
    :cond_4
    const/4 v5, 0x1

    #@a7
    goto :goto_1

    #@a8
    .line 4787
    :cond_5
    const/4 v0, 0x0

    #@a9
    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    #@ab
    .line 4788
    const/4 v0, 0x0

    #@ac
    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    #@ae
    goto :goto_3

    #@af
    .line 4793
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@b1
    const/16 v1, 0x65

    #@b3
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    #@b6
    .line 4794
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@b8
    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@ba
    goto :goto_4

    #@bb
    .line 4770
    :catch_0
    move-exception v9

    #@bc
    .local v9, "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method private removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "oldTop"    # Lcom/android/server/am/TaskRecord;
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3829
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@3
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeChildActivityContainers(Lcom/android/server/am/ActivityRecord;)V

    #@6
    .line 3830
    const/4 v2, 0x0

    #@7
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    #@a
    .line 3831
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    #@d
    .line 3835
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    #@10
    .line 3836
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    #@13
    .line 3839
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@15
    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@17
    .line 3841
    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@19
    .line 3842
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@1b
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@1d
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->removeAppToken(Landroid/os/IBinder;)V

    #@20
    .line 3846
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@22
    .line 3847
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz p2, :cond_2

    #@24
    move-object v1, p2

    #@25
    .line 3848
    .local v1, "topTask":Lcom/android/server/am/TaskRecord;
    :goto_0
    if-eqz v0, :cond_1

    #@27
    invoke-virtual {v0, p1}, Lcom/android/server/am/TaskRecord;->removeActivity(Lcom/android/server/am/ActivityRecord;)Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_1

    #@2d
    .line 3851
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@2f
    invoke-virtual {v2, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    #@32
    move-result v2

    #@33
    if-eqz v2, :cond_0

    #@35
    if-ne v0, v1, :cond_0

    #@37
    .line 3852
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    #@3a
    move-result v2

    #@3b
    .line 3851
    if-eqz v2, :cond_0

    #@3d
    .line 3853
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@3f
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    #@42
    move-result v3

    #@43
    invoke-virtual {v2, v3, p3}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(ILjava/lang/String;)Z

    #@46
    .line 3855
    :cond_0
    invoke-virtual {p0, v0, p3}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    #@49
    .line 3857
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    #@4c
    .line 3858
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->removeUriPermissionsLocked()V

    #@4f
    .line 3828
    return-void

    #@50
    .line 3847
    .end local v1    # "topTask":Lcom/android/server/am/TaskRecord;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    #@53
    move-result-object v1

    #@54
    .restart local v1    # "topTask":Lcom/android/server/am/TaskRecord;
    goto :goto_0
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
    .line 4151
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v0

    #@4
    .line 4154
    .local v0, "i":I
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    #@6
    .line 4155
    add-int/lit8 v0, v0, -0x1

    #@8
    .line 4156
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@e
    .line 4158
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@10
    if-ne v2, p2, :cond_0

    #@12
    .line 4160
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@15
    .line 4161
    invoke-direct {p0, v1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    #@18
    goto :goto_0

    #@19
    .line 4150
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-void
.end method

.method private removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 3820
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    #@5
    .line 3821
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@7
    const/16 v1, 0x65

    #@9
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    #@c
    .line 3822
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@e
    const/16 v1, 0x68

    #@10
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    #@13
    .line 3823
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@15
    const/16 v1, 0x66

    #@17
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    #@1a
    .line 3824
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    #@1d
    .line 3819
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
    .line 3014
    const/4 v14, -0x1

    #@1
    .line 3015
    .local v14, "replyChainEnd":I
    move-object/from16 v0, p2

    #@3
    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@5
    move/from16 v22, v0

    #@7
    .line 3016
    .local v22, "taskId":I
    move-object/from16 v0, p2

    #@9
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@b
    move-object/from16 v21, v0

    #@d
    .line 3018
    .local v21, "taskAffinity":Ljava/lang/String;
    move-object/from16 v0, p1

    #@f
    iget-object v8, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@11
    .line 3019
    .local v8, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v13

    #@15
    .line 3020
    .local v13, "numActivities":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    #@18
    move-result v15

    #@19
    .line 3023
    .local v15, "rootActivityNdx":I
    add-int/lit8 v12, v13, -0x1

    #@1b
    .local v12, "i":I
    :goto_0
    if-le v12, v15, :cond_0

    #@1d
    .line 3024
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v18

    #@21
    check-cast v18, Lcom/android/server/am/ActivityRecord;

    #@23
    .line 3025
    .local v18, "target":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v18

    #@25
    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    #@27
    if-eqz v2, :cond_1

    #@29
    .line 3115
    .end local v18    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_0
    return p5

    #@2a
    .line 3028
    .restart local v18    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_1
    move-object/from16 v0, v18

    #@2c
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@2e
    iget v11, v2, Landroid/content/pm/ActivityInfo;->flags:I

    #@30
    .line 3029
    .local v11, "flags":I
    and-int/lit8 v2, v11, 0x2

    #@32
    if-eqz v2, :cond_3

    #@34
    const/4 v10, 0x1

    #@35
    .line 3030
    .local v10, "finishOnTaskLaunch":Z
    :goto_1
    and-int/lit8 v2, v11, 0x40

    #@37
    if-eqz v2, :cond_4

    #@39
    const/4 v9, 0x1

    #@3a
    .line 3032
    .local v9, "allowTaskReparenting":Z
    :goto_2
    move-object/from16 v0, v18

    #@3c
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@3e
    if-eqz v2, :cond_5

    #@40
    .line 3039
    if-gez v14, :cond_2

    #@42
    .line 3040
    move v14, v12

    #@43
    .line 3023
    :cond_2
    :goto_3
    add-int/lit8 v12, v12, -0x1

    #@45
    goto :goto_0

    #@46
    .line 3029
    .end local v9    # "allowTaskReparenting":Z
    .end local v10    # "finishOnTaskLaunch":Z
    :cond_3
    const/4 v10, 0x0

    #@47
    .restart local v10    # "finishOnTaskLaunch":Z
    goto :goto_1

    #@48
    .line 3030
    :cond_4
    const/4 v9, 0x0

    #@49
    .restart local v9    # "allowTaskReparenting":Z
    goto :goto_2

    #@4a
    .line 3042
    :cond_5
    if-eqz p3, :cond_2

    #@4c
    if-eqz v9, :cond_2

    #@4e
    .line 3044
    if-eqz v21, :cond_2

    #@50
    .line 3045
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
    .line 3042
    if-eqz v2, :cond_2

    #@5c
    .line 3056
    if-nez p4, :cond_6

    #@5e
    if-eqz v10, :cond_9

    #@60
    .line 3057
    :cond_6
    if-ltz v14, :cond_7

    #@62
    move/from16 v17, v14

    #@64
    .line 3060
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
    .line 3061
    move/from16 v0, v16

    #@6c
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6f
    move-result-object v3

    #@70
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    #@72
    .line 3062
    .local v3, "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@74
    if-eqz v2, :cond_8

    #@76
    .line 3060
    :goto_6
    add-int/lit8 v16, v16, -0x1

    #@78
    goto :goto_5

    #@79
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "srcPos":I
    .end local v17    # "start":I
    :cond_7
    move/from16 v17, v12

    #@7b
    .line 3057
    goto :goto_4

    #@7c
    .line 3066
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .restart local v16    # "srcPos":I
    .restart local v17    # "start":I
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
    .line 3065
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@87
    goto :goto_6

    #@88
    .line 3069
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "srcPos":I
    .end local v17    # "start":I
    :cond_9
    if-gez p5, :cond_a

    #@8a
    .line 3070
    move-object/from16 v0, p2

    #@8c
    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@8e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@91
    move-result p5

    #@92
    .line 3074
    :cond_a
    if-ltz v14, :cond_b

    #@94
    move/from16 v17, v14

    #@96
    .line 3078
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
    .line 3079
    move/from16 v0, v16

    #@9e
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@a1
    move-result-object v3

    #@a2
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    #@a4
    .line 3080
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    #@a5
    move-object/from16 v0, p2

    #@a7
    invoke-virtual {v3, v0, v2}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    #@aa
    .line 3081
    move-object/from16 v0, p2

    #@ac
    move/from16 v1, p5

    #@ae
    invoke-virtual {v0, v1, v3}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    #@b1
    .line 3088
    move-object/from16 v0, p0

    #@b3
    move-object/from16 v1, p2

    #@b5
    invoke-direct {v0, v3, v1}, Lcom/android/server/am/ActivityStack;->setAppTask(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    #@b8
    .line 3078
    add-int/lit8 v16, v16, -0x1

    #@ba
    goto :goto_8

    #@bb
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "srcPos":I
    .end local v17    # "start":I
    :cond_b
    move/from16 v17, v12

    #@bd
    .line 3074
    goto :goto_7

    #@be
    .line 3090
    .restart local v16    # "srcPos":I
    .restart local v17    # "start":I
    :cond_c
    move-object/from16 v0, p0

    #@c0
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@c2
    move/from16 v0, v22

    #@c4
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    #@c7
    .line 3099
    move-object/from16 v0, v18

    #@c9
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@cb
    iget v2, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@cd
    const/4 v4, 0x1

    #@ce
    if-ne v2, v4, :cond_d

    #@d0
    .line 3100
    move-object/from16 v0, p2

    #@d2
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@d4
    move-object/from16 v20, v0

    #@d6
    .line 3101
    .local v20, "taskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, v20

    #@d8
    move-object/from16 v1, v18

    #@da
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@dd
    move-result v19

    #@de
    .line 3102
    .local v19, "targetNdx":I
    if-lez v19, :cond_d

    #@e0
    .line 3103
    add-int/lit8 v2, v19, -0x1

    #@e2
    move-object/from16 v0, v20

    #@e4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e7
    move-result-object v3

    #@e8
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    #@ea
    .line 3104
    .restart local v3    # "p":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@ec
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@ef
    move-result-object v2

    #@f0
    move-object/from16 v0, v18

    #@f2
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@f4
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@f7
    move-result-object v4

    #@f8
    invoke-virtual {v2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@fb
    move-result v2

    #@fc
    if-eqz v2, :cond_d

    #@fe
    .line 3105
    const-string/jumbo v6, "replace"

    #@101
    const/4 v4, 0x0

    #@102
    const/4 v5, 0x0

    #@103
    .line 3106
    const/4 v7, 0x0

    #@104
    move-object/from16 v2, p0

    #@106
    .line 3105
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@109
    .line 3112
    .end local v3    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v19    # "targetNdx":I
    .end local v20    # "taskActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_d
    const/4 v14, -0x1

    #@10a
    goto/16 :goto_3
.end method

.method private resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 37
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    #@0
    .prologue
    .line 2137
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
    .line 2142
    :cond_0
    move-object/from16 v0, p0

    #@12
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@14
    iget-object v0, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    #@16
    move-object/from16 v29, v0

    #@18
    .line 2143
    .local v29, "parent":Lcom/android/server/am/ActivityRecord;
    if-eqz v29, :cond_3

    #@1a
    move-object/from16 v0, v29

    #@1c
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@1e
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@20
    if-eq v3, v4, :cond_3

    #@22
    .line 2147
    :cond_1
    const/4 v3, 0x0

    #@23
    return v3

    #@24
    .line 2139
    .end local v29    # "parent":Lcom/android/server/am/ActivityRecord;
    :cond_2
    const/4 v3, 0x0

    #@25
    return v3

    #@26
    .line 2144
    .restart local v29    # "parent":Lcom/android/server/am/ActivityRecord;
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
    .line 2150
    move-object/from16 v0, p0

    #@32
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@34
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->cancelInitializingActivities()V

    #@37
    .line 2153
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@3a
    move-result-object v24

    #@3b
    .line 2157
    .local v24, "next":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    #@3d
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@3f
    iget-boolean v0, v3, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    #@41
    move/from16 v36, v0

    #@43
    .line 2158
    .local v36, "userLeaving":Z
    move-object/from16 v0, p0

    #@45
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@47
    const/4 v4, 0x0

    #@48
    iput-boolean v4, v3, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    #@4a
    .line 2160
    if-eqz p1, :cond_4

    #@4c
    move-object/from16 v0, p1

    #@4e
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@50
    move-object/from16 v31, v0

    #@52
    .line 2161
    :goto_0
    if-nez v24, :cond_8

    #@54
    .line 2163
    const-string/jumbo v32, "noMoreActivities"

    #@57
    .line 2164
    .local v32, "reason":Ljava/lang/String;
    if-eqz v31, :cond_5

    #@59
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    #@5c
    move-result v3

    #@5d
    if-eqz v3, :cond_5

    #@5f
    .line 2165
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    #@62
    move-result v34

    #@63
    .line 2166
    .local v34, "returnTaskType":I
    :goto_1
    move-object/from16 v0, p0

    #@65
    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    #@67
    if-nez v3, :cond_6

    #@69
    const-string/jumbo v3, "noMoreActivities"

    #@6c
    move-object/from16 v0, p0

    #@6e
    move/from16 v1, v34

    #@70
    invoke-direct {v0, v1, v3}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStackLocked(ILjava/lang/String;)Z

    #@73
    move-result v3

    #@74
    if-eqz v3, :cond_6

    #@76
    .line 2169
    move-object/from16 v0, p0

    #@78
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@7a
    .line 2170
    move-object/from16 v0, p0

    #@7c
    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@7e
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    #@81
    move-result-object v4

    #@82
    const/4 v5, 0x0

    #@83
    .line 2169
    move-object/from16 v0, p1

    #@85
    invoke-virtual {v3, v4, v0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z

    #@88
    move-result v3

    #@89
    return v3

    #@8a
    .line 2160
    .end local v32    # "reason":Ljava/lang/String;
    .end local v34    # "returnTaskType":I
    :cond_4
    const/16 v31, 0x0

    #@8c
    .local v31, "prevTask":Lcom/android/server/am/TaskRecord;
    goto :goto_0

    #@8d
    .line 2165
    .end local v31    # "prevTask":Lcom/android/server/am/TaskRecord;
    .restart local v32    # "reason":Ljava/lang/String;
    :cond_5
    const/16 v34, 0x1

    #@8f
    .restart local v34    # "returnTaskType":I
    goto :goto_1

    #@90
    .line 2174
    :cond_6
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    #@93
    .line 2179
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    #@96
    move-result v3

    #@97
    if-eqz v3, :cond_7

    #@99
    .line 2180
    move-object/from16 v0, p0

    #@9b
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@9d
    const-string/jumbo v4, "noMoreActivities"

    #@a0
    move/from16 v0, v34

    #@a2
    move-object/from16 v1, p1

    #@a4
    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    #@a7
    move-result v3

    #@a8
    .line 2179
    :goto_2
    return v3

    #@a9
    :cond_7
    const/4 v3, 0x0

    #@aa
    goto :goto_2

    #@ab
    .line 2183
    .end local v32    # "reason":Ljava/lang/String;
    .end local v34    # "returnTaskType":I
    :cond_8
    const/4 v3, 0x0

    #@ac
    move-object/from16 v0, v24

    #@ae
    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    #@b0
    .line 2186
    move-object/from16 v0, p0

    #@b2
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@b4
    move-object/from16 v0, v24

    #@b6
    if-ne v3, v0, :cond_9

    #@b8
    move-object/from16 v0, v24

    #@ba
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@bc
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@be
    if-ne v3, v4, :cond_9

    #@c0
    .line 2187
    move-object/from16 v0, p0

    #@c2
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@c4
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete()Z

    #@c7
    move-result v3

    #@c8
    .line 2186
    if-eqz v3, :cond_9

    #@ca
    .line 2190
    move-object/from16 v0, p0

    #@cc
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@ce
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    #@d1
    .line 2191
    move-object/from16 v0, p0

    #@d3
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    #@d5
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@d8
    .line 2192
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    #@db
    .line 2196
    const/4 v3, 0x0

    #@dc
    return v3

    #@dd
    .line 2199
    :cond_9
    move-object/from16 v0, v24

    #@df
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@e1
    move-object/from16 v26, v0

    #@e3
    .line 2200
    .local v26, "nextTask":Lcom/android/server/am/TaskRecord;
    if-eqz v31, :cond_a

    #@e5
    move-object/from16 v0, v31

    #@e7
    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@e9
    move-object/from16 v0, p0

    #@eb
    if-ne v3, v0, :cond_a

    #@ed
    .line 2201
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    #@f0
    move-result v3

    #@f1
    .line 2200
    if-eqz v3, :cond_a

    #@f3
    .line 2201
    move-object/from16 v0, p1

    #@f5
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@f7
    .line 2200
    if-eqz v3, :cond_a

    #@f9
    .line 2201
    move-object/from16 v0, p1

    #@fb
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    #@fd
    .line 2200
    if-eqz v3, :cond_a

    #@ff
    .line 2203
    move-object/from16 v0, v31

    #@101
    move-object/from16 v1, v26

    #@103
    if-ne v0, v1, :cond_b

    #@105
    .line 2204
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    #@108
    .line 2224
    :cond_a
    :goto_3
    move-object/from16 v0, p0

    #@10a
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@10c
    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDownLocked()Z

    #@10f
    move-result v3

    #@110
    if-eqz v3, :cond_10

    #@112
    .line 2225
    move-object/from16 v0, p0

    #@114
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    #@116
    move-object/from16 v0, v24

    #@118
    if-ne v3, v0, :cond_10

    #@11a
    .line 2226
    move-object/from16 v0, p0

    #@11c
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@11e
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete()Z

    #@121
    move-result v3

    #@122
    .line 2224
    if-eqz v3, :cond_10

    #@124
    .line 2229
    move-object/from16 v0, p0

    #@126
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@128
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    #@12b
    .line 2230
    move-object/from16 v0, p0

    #@12d
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    #@12f
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@132
    .line 2231
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    #@135
    .line 2235
    const/4 v3, 0x0

    #@136
    return v3

    #@137
    .line 2205
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    #@13a
    move-result-object v3

    #@13b
    move-object/from16 v0, v31

    #@13d
    if-eq v0, v3, :cond_c

    #@13f
    .line 2208
    move-object/from16 v0, p0

    #@141
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@143
    move-object/from16 v0, v31

    #@145
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@148
    move-result v3

    #@149
    add-int/lit8 v35, v3, 0x1

    #@14b
    .line 2209
    .local v35, "taskNdx":I
    move-object/from16 v0, p0

    #@14d
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@14f
    move/from16 v0, v35

    #@151
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@154
    move-result-object v3

    #@155
    check-cast v3, Lcom/android/server/am/TaskRecord;

    #@157
    const/4 v4, 0x1

    #@158
    invoke-virtual {v3, v4}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    #@15b
    goto :goto_3

    #@15c
    .line 2210
    .end local v35    # "taskNdx":I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    #@15f
    move-result v3

    #@160
    if-nez v3, :cond_d

    #@162
    .line 2211
    const/4 v3, 0x0

    #@163
    return v3

    #@164
    .line 2212
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    #@167
    move-result v3

    #@168
    if-nez v3, :cond_a

    #@16a
    .line 2215
    if-eqz v31, :cond_e

    #@16c
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    #@16f
    move-result v3

    #@170
    if-eqz v3, :cond_e

    #@172
    .line 2216
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    #@175
    move-result v34

    #@176
    .line 2217
    .restart local v34    # "returnTaskType":I
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    #@179
    move-result v3

    #@17a
    if-eqz v3, :cond_f

    #@17c
    .line 2218
    move-object/from16 v0, p0

    #@17e
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@180
    const-string/jumbo v4, "prevFinished"

    #@183
    move/from16 v0, v34

    #@185
    move-object/from16 v1, p1

    #@187
    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    #@18a
    move-result v3

    #@18b
    .line 2217
    :goto_5
    return v3

    #@18c
    .line 2216
    .end local v34    # "returnTaskType":I
    :cond_e
    const/16 v34, 0x1

    #@18e
    .restart local v34    # "returnTaskType":I
    goto :goto_4

    #@18f
    .line 2217
    :cond_f
    const/4 v3, 0x0

    #@190
    goto :goto_5

    #@191
    .line 2241
    .end local v34    # "returnTaskType":I
    :cond_10
    move-object/from16 v0, p0

    #@193
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@195
    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    #@197
    move-object/from16 v0, v24

    #@199
    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@19b
    invoke-virtual {v3, v4}, Lcom/android/server/am/UserController;->hasStartedUserState(I)Z

    #@19e
    move-result v3

    #@19f
    if-nez v3, :cond_11

    #@1a1
    .line 2242
    sget-object v3, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@1a3
    new-instance v4, Ljava/lang/StringBuilder;

    #@1a5
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1a8
    const-string/jumbo v5, "Skipping resume of top activity "

    #@1ab
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ae
    move-result-object v4

    #@1af
    move-object/from16 v0, v24

    #@1b1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b4
    move-result-object v4

    #@1b5
    .line 2243
    const-string/jumbo v5, ": user "

    #@1b8
    .line 2242
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bb
    move-result-object v4

    #@1bc
    .line 2243
    move-object/from16 v0, v24

    #@1be
    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@1c0
    .line 2242
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c3
    move-result-object v4

    #@1c4
    .line 2243
    const-string/jumbo v5, " is stopped"

    #@1c7
    .line 2242
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ca
    move-result-object v4

    #@1cb
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ce
    move-result-object v4

    #@1cf
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1d2
    .line 2245
    const/4 v3, 0x0

    #@1d3
    return v3

    #@1d4
    .line 2250
    :cond_11
    move-object/from16 v0, p0

    #@1d6
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1d8
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    #@1da
    move-object/from16 v0, v24

    #@1dc
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@1df
    .line 2251
    move-object/from16 v0, p0

    #@1e1
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1e3
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    #@1e5
    move-object/from16 v0, v24

    #@1e7
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@1ea
    .line 2252
    const/4 v3, 0x0

    #@1eb
    move-object/from16 v0, v24

    #@1ed
    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    #@1ef
    .line 2253
    move-object/from16 v0, p0

    #@1f1
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1f3
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@1f5
    move-object/from16 v0, v24

    #@1f7
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@1fa
    .line 2258
    move-object/from16 v0, p0

    #@1fc
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1fe
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete()Z

    #@201
    move-result v3

    #@202
    if-nez v3, :cond_12

    #@204
    .line 2262
    const/4 v3, 0x0

    #@205
    return v3

    #@206
    .line 2265
    :cond_12
    move-object/from16 v0, p0

    #@208
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@20a
    move-object/from16 v0, v24

    #@20c
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@20e
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@210
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    #@212
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->setLaunchSource(I)V

    #@215
    .line 2268
    move-object/from16 v0, v24

    #@217
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@219
    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    #@21b
    and-int/lit16 v3, v3, 0x4000

    #@21d
    if-eqz v3, :cond_15

    #@21f
    const/4 v14, 0x1

    #@220
    .line 2269
    .local v14, "dontWaitForPause":Z
    :goto_6
    move-object/from16 v0, p0

    #@222
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@224
    move/from16 v0, v36

    #@226
    move-object/from16 v1, v24

    #@228
    invoke-virtual {v3, v0, v1, v14}, Lcom/android/server/am/ActivityStackSupervisor;->pauseBackStacks(ZLcom/android/server/am/ActivityRecord;Z)Z

    #@22b
    move-result v30

    #@22c
    .line 2270
    .local v30, "pausing":Z
    move-object/from16 v0, p0

    #@22e
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@230
    if-eqz v3, :cond_13

    #@232
    .line 2273
    const/4 v3, 0x0

    #@233
    move-object/from16 v0, p0

    #@235
    move/from16 v1, v36

    #@237
    move-object/from16 v2, v24

    #@239
    invoke-virtual {v0, v1, v3, v2, v14}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z

    #@23c
    move-result v3

    #@23d
    or-int v30, v30, v3

    #@23f
    .line 2275
    :cond_13
    if-eqz v30, :cond_16

    #@241
    .line 2282
    move-object/from16 v0, v24

    #@243
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@245
    if-eqz v3, :cond_14

    #@247
    move-object/from16 v0, v24

    #@249
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@24b
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@24d
    if-eqz v3, :cond_14

    #@24f
    .line 2283
    move-object/from16 v0, p0

    #@251
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@253
    move-object/from16 v0, v24

    #@255
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@257
    const/4 v5, 0x1

    #@258
    const/4 v6, 0x0

    #@259
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    #@25c
    .line 2286
    :cond_14
    const/4 v3, 0x1

    #@25d
    return v3

    #@25e
    .line 2268
    .end local v14    # "dontWaitForPause":Z
    .end local v30    # "pausing":Z
    :cond_15
    const/4 v14, 0x0

    #@25f
    .restart local v14    # "dontWaitForPause":Z
    goto :goto_6

    #@260
    .line 2287
    .restart local v30    # "pausing":Z
    :cond_16
    move-object/from16 v0, p0

    #@262
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@264
    move-object/from16 v0, v24

    #@266
    if-ne v3, v0, :cond_17

    #@268
    move-object/from16 v0, v24

    #@26a
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@26c
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@26e
    if-ne v3, v4, :cond_17

    #@270
    .line 2288
    move-object/from16 v0, p0

    #@272
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@274
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete()Z

    #@277
    move-result v3

    #@278
    .line 2287
    if-eqz v3, :cond_17

    #@27a
    .line 2294
    move-object/from16 v0, p0

    #@27c
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@27e
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    #@281
    .line 2295
    move-object/from16 v0, p0

    #@283
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    #@285
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@288
    .line 2296
    invoke-static/range {p2 .. p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    #@28b
    .line 2300
    const/4 v3, 0x1

    #@28c
    return v3

    #@28d
    .line 2306
    :cond_17
    move-object/from16 v0, p0

    #@28f
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@291
    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->isSleepingLocked()Z

    #@294
    move-result v3

    #@295
    if-eqz v3, :cond_18

    #@297
    move-object/from16 v0, p0

    #@299
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    #@29b
    if-eqz v3, :cond_18

    #@29d
    .line 2307
    move-object/from16 v0, p0

    #@29f
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    #@2a1
    iget-boolean v3, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@2a3
    if-eqz v3, :cond_21

    #@2a5
    .line 2315
    :cond_18
    :goto_7
    if-eqz p1, :cond_1a

    #@2a7
    move-object/from16 v0, p1

    #@2a9
    move-object/from16 v1, v24

    #@2ab
    if-eq v0, v1, :cond_1a

    #@2ad
    .line 2316
    move-object/from16 v0, p0

    #@2af
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@2b1
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@2b3
    move-object/from16 v0, p1

    #@2b5
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@2b8
    move-result v3

    #@2b9
    if-nez v3, :cond_19

    #@2bb
    .line 2317
    if-eqz v24, :cond_19

    #@2bd
    move-object/from16 v0, v24

    #@2bf
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    #@2c1
    if-eqz v3, :cond_22

    #@2c3
    .line 2330
    :cond_19
    move-object/from16 v0, p1

    #@2c5
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@2c7
    if-eqz v3, :cond_1a

    #@2c9
    .line 2331
    move-object/from16 v0, p0

    #@2cb
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@2cd
    move-object/from16 v0, p1

    #@2cf
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@2d1
    const/4 v5, 0x0

    #@2d2
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    #@2d5
    .line 2349
    :cond_1a
    :goto_8
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@2d8
    move-result-object v3

    #@2d9
    .line 2350
    move-object/from16 v0, v24

    #@2db
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@2dd
    move-object/from16 v0, v24

    #@2df
    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@2e1
    const/4 v6, 0x0

    #@2e2
    .line 2349
    invoke-interface {v3, v4, v6, v5}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e5
    .line 2360
    :goto_9
    const/4 v12, 0x1

    #@2e6
    .line 2361
    .local v12, "anim":Z
    if-eqz p1, :cond_29

    #@2e8
    .line 2362
    move-object/from16 v0, p1

    #@2ea
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@2ec
    if-eqz v3, :cond_25

    #@2ee
    .line 2365
    move-object/from16 v0, p0

    #@2f0
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    #@2f2
    move-object/from16 v0, p1

    #@2f4
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@2f7
    move-result v3

    #@2f8
    if-eqz v3, :cond_23

    #@2fa
    .line 2366
    const/4 v12, 0x0

    #@2fb
    .line 2367
    move-object/from16 v0, p0

    #@2fd
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@2ff
    const/4 v4, 0x0

    #@300
    const/4 v5, 0x0

    #@301
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    #@304
    .line 2373
    :goto_a
    move-object/from16 v0, p0

    #@306
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@308
    move-object/from16 v0, p1

    #@30a
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@30c
    const/4 v5, 0x0

    #@30d
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    #@310
    .line 2398
    :goto_b
    const/16 v33, 0x0

    #@312
    .line 2399
    .local v33, "resumeAnimOptions":Landroid/os/Bundle;
    if-eqz v12, :cond_2b

    #@314
    .line 2400
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityRecord;->getOptionsForTargetActivityLocked()Landroid/app/ActivityOptions;

    #@317
    move-result-object v28

    #@318
    .line 2401
    .local v28, "opts":Landroid/app/ActivityOptions;
    if-eqz v28, :cond_1b

    #@31a
    .line 2402
    invoke-virtual/range {v28 .. v28}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    #@31d
    move-result-object v33

    #@31e
    .line 2404
    .end local v33    # "resumeAnimOptions":Landroid/os/Bundle;
    :cond_1b
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityRecord;->applyOptionsLocked()V

    #@321
    .line 2409
    .end local v28    # "opts":Landroid/app/ActivityOptions;
    :goto_c
    move-object/from16 v0, p0

    #@323
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@325
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    #@328
    move-result-object v22

    #@329
    .line 2410
    .local v22, "lastStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v24

    #@32b
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@32d
    if-eqz v3, :cond_3d

    #@32f
    move-object/from16 v0, v24

    #@331
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@333
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@335
    if-eqz v3, :cond_3d

    #@337
    .line 2421
    if-eqz v22, :cond_2f

    #@339
    .line 2422
    move-object/from16 v0, v22

    #@33b
    iget-boolean v3, v0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    #@33d
    if-eqz v3, :cond_2c

    #@33f
    .line 2423
    move-object/from16 v0, v22

    #@341
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    #@343
    if-eqz v3, :cond_2e

    #@345
    .line 2424
    move-object/from16 v0, v22

    #@347
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    #@349
    iget-boolean v3, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@34b
    if-eqz v3, :cond_2d

    #@34d
    const/16 v20, 0x0

    #@34f
    .line 2427
    .local v20, "lastActivityTranslucent":Z
    :goto_d
    move-object/from16 v0, v24

    #@351
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@353
    if-eqz v3, :cond_1c

    #@355
    move-object/from16 v0, v24

    #@357
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    #@359
    if-nez v3, :cond_1c

    #@35b
    if-eqz v20, :cond_1d

    #@35d
    .line 2428
    :cond_1c
    move-object/from16 v0, p0

    #@35f
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@361
    move-object/from16 v0, v24

    #@363
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@365
    const/4 v5, 0x1

    #@366
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    #@369
    .line 2432
    :cond_1d
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    #@36c
    .line 2435
    if-nez v22, :cond_30

    #@36e
    const/16 v21, 0x0

    #@370
    .line 2436
    :goto_e
    move-object/from16 v0, v24

    #@372
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@374
    move-object/from16 v23, v0

    #@376
    .line 2438
    .local v23, "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    move-object/from16 v0, p0

    #@378
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@37a
    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    #@37d
    .line 2441
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@37f
    move-object/from16 v0, v24

    #@381
    iput-object v3, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@383
    .line 2442
    move-object/from16 v0, v24

    #@385
    move-object/from16 v1, p0

    #@387
    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@389
    .line 2443
    move-object/from16 v0, v24

    #@38b
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@38d
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    #@390
    .line 2444
    move-object/from16 v0, p0

    #@392
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@394
    move-object/from16 v0, v24

    #@396
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@398
    invoke-virtual {v3, v4}, Lcom/android/server/am/RecentTasks;->addLocked(Lcom/android/server/am/TaskRecord;)V

    #@39b
    .line 2445
    move-object/from16 v0, p0

    #@39d
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@39f
    move-object/from16 v0, v24

    #@3a1
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@3a3
    const/4 v5, 0x1

    #@3a4
    const/4 v6, 0x0

    #@3a5
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    #@3a8
    .line 2446
    move-object/from16 v0, p0

    #@3aa
    move-object/from16 v1, v24

    #@3ac
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    #@3af
    .line 2447
    move-object/from16 v0, p0

    #@3b1
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@3b3
    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    #@3b6
    .line 2451
    const/16 v27, 0x1

    #@3b8
    .line 2452
    .local v27, "notUpdated":Z
    move-object/from16 v0, p0

    #@3ba
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@3bc
    move-object/from16 v0, p0

    #@3be
    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    #@3c1
    move-result v3

    #@3c2
    if-eqz v3, :cond_1f

    #@3c4
    .line 2453
    move-object/from16 v0, p0

    #@3c6
    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@3c8
    .line 2454
    move-object/from16 v0, p0

    #@3ca
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@3cc
    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@3ce
    .line 2455
    move-object/from16 v0, v24

    #@3d0
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@3d2
    move-object/from16 v0, v24

    #@3d4
    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    #@3d7
    move-result v3

    #@3d8
    if-eqz v3, :cond_31

    #@3da
    move-object/from16 v0, v24

    #@3dc
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@3de
    .line 2453
    :goto_f
    invoke-virtual {v4, v5, v3}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    #@3e1
    move-result-object v13

    #@3e2
    .line 2456
    .local v13, "config":Landroid/content/res/Configuration;
    if-eqz v13, :cond_1e

    #@3e4
    .line 2457
    const/4 v3, 0x1

    #@3e5
    move-object/from16 v0, v24

    #@3e7
    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    #@3e9
    .line 2459
    :cond_1e
    move-object/from16 v0, p0

    #@3eb
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@3ed
    const/4 v4, 0x0

    #@3ee
    move-object/from16 v0, v24

    #@3f0
    invoke-virtual {v3, v13, v0, v4}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Z)Z

    #@3f3
    move-result v3

    #@3f4
    if-eqz v3, :cond_32

    #@3f6
    const/16 v27, 0x0

    #@3f8
    .line 2462
    .end local v13    # "config":Landroid/content/res/Configuration;
    :cond_1f
    :goto_10
    if-eqz v27, :cond_34

    #@3fa
    .line 2468
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@3fd
    move-result-object v25

    #@3fe
    .line 2472
    .local v25, "nextNext":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v25

    #@400
    move-object/from16 v1, v24

    #@402
    if-eq v0, v1, :cond_20

    #@404
    .line 2474
    move-object/from16 v0, p0

    #@406
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@408
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleResumeTopActivities()V

    #@40b
    .line 2476
    :cond_20
    move-object/from16 v0, p0

    #@40d
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@40f
    move-object/from16 v0, v24

    #@411
    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    #@414
    move-result v3

    #@415
    if-eqz v3, :cond_33

    #@417
    .line 2477
    move-object/from16 v0, p0

    #@419
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    #@41b
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@41e
    .line 2479
    const/4 v3, 0x1

    #@41f
    return v3

    #@420
    .line 2310
    .end local v12    # "anim":Z
    .end local v20    # "lastActivityTranslucent":Z
    .end local v22    # "lastStack":Lcom/android/server/am/ActivityStack;
    .end local v23    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v25    # "nextNext":Lcom/android/server/am/ActivityRecord;
    .end local v27    # "notUpdated":Z
    :cond_21
    move-object/from16 v0, p0

    #@422
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    #@424
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@426
    .line 2311
    const-string/jumbo v7, "resume-no-history"

    #@429
    .line 2310
    const/4 v5, 0x0

    #@42a
    .line 2311
    const/4 v6, 0x0

    #@42b
    const/4 v8, 0x0

    #@42c
    move-object/from16 v3, p0

    #@42e
    .line 2310
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@431
    .line 2312
    const/4 v3, 0x0

    #@432
    move-object/from16 v0, p0

    #@434
    iput-object v3, v0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    #@436
    goto/16 :goto_7

    #@438
    .line 2318
    :cond_22
    move-object/from16 v0, p0

    #@43a
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@43c
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@43e
    move-object/from16 v0, p1

    #@440
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@443
    goto/16 :goto_8

    #@445
    .line 2352
    :catch_0
    move-exception v16

    #@446
    .line 2353
    .local v16, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@448
    new-instance v4, Ljava/lang/StringBuilder;

    #@44a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@44d
    const-string/jumbo v5, "Failed trying to unstop package "

    #@450
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@453
    move-result-object v4

    #@454
    .line 2354
    move-object/from16 v0, v24

    #@456
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@458
    .line 2353
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45b
    move-result-object v4

    #@45c
    .line 2354
    const-string/jumbo v5, ": "

    #@45f
    .line 2353
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@462
    move-result-object v4

    #@463
    move-object/from16 v0, v16

    #@465
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@468
    move-result-object v4

    #@469
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46c
    move-result-object v4

    #@46d
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@470
    goto/16 :goto_9

    #@472
    .line 2369
    .end local v16    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v12    # "anim":Z
    :cond_23
    move-object/from16 v0, p0

    #@474
    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@476
    move-object/from16 v0, p1

    #@478
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@47a
    move-object/from16 v0, v24

    #@47c
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@47e
    if-ne v3, v5, :cond_24

    #@480
    .line 2370
    const/4 v3, 0x7

    #@481
    .line 2371
    :goto_11
    const/4 v5, 0x0

    #@482
    .line 2369
    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    #@485
    goto/16 :goto_a

    #@487
    .line 2371
    :cond_24
    const/16 v3, 0x9

    #@489
    goto :goto_11

    #@48a
    .line 2377
    :cond_25
    move-object/from16 v0, p0

    #@48c
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    #@48e
    move-object/from16 v0, v24

    #@490
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@493
    move-result v3

    #@494
    if-eqz v3, :cond_26

    #@496
    .line 2378
    const/4 v12, 0x0

    #@497
    .line 2379
    move-object/from16 v0, p0

    #@499
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@49b
    const/4 v4, 0x0

    #@49c
    const/4 v5, 0x0

    #@49d
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    #@4a0
    goto/16 :goto_b

    #@4a2
    .line 2381
    :cond_26
    move-object/from16 v0, p0

    #@4a4
    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@4a6
    move-object/from16 v0, p1

    #@4a8
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@4aa
    move-object/from16 v0, v24

    #@4ac
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@4ae
    if-ne v3, v5, :cond_27

    #@4b0
    .line 2382
    const/4 v3, 0x6

    #@4b1
    .line 2385
    :goto_12
    const/4 v5, 0x0

    #@4b2
    .line 2381
    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    #@4b5
    goto/16 :goto_b

    #@4b7
    .line 2383
    :cond_27
    move-object/from16 v0, v24

    #@4b9
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    #@4bb
    if-eqz v3, :cond_28

    #@4bd
    .line 2384
    const/16 v3, 0x10

    #@4bf
    goto :goto_12

    #@4c0
    .line 2385
    :cond_28
    const/16 v3, 0x8

    #@4c2
    goto :goto_12

    #@4c3
    .line 2390
    :cond_29
    move-object/from16 v0, p0

    #@4c5
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    #@4c7
    move-object/from16 v0, v24

    #@4c9
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@4cc
    move-result v3

    #@4cd
    if-eqz v3, :cond_2a

    #@4cf
    .line 2391
    const/4 v12, 0x0

    #@4d0
    .line 2392
    move-object/from16 v0, p0

    #@4d2
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@4d4
    const/4 v4, 0x0

    #@4d5
    const/4 v5, 0x0

    #@4d6
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    #@4d9
    goto/16 :goto_b

    #@4db
    .line 2394
    :cond_2a
    move-object/from16 v0, p0

    #@4dd
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@4df
    const/4 v4, 0x6

    #@4e0
    const/4 v5, 0x0

    #@4e1
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    #@4e4
    goto/16 :goto_b

    #@4e6
    .line 2406
    .restart local v33    # "resumeAnimOptions":Landroid/os/Bundle;
    :cond_2b
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    #@4e9
    goto/16 :goto_c

    #@4eb
    .line 2422
    .end local v33    # "resumeAnimOptions":Landroid/os/Bundle;
    .restart local v22    # "lastStack":Lcom/android/server/am/ActivityStack;
    :cond_2c
    const/16 v20, 0x1

    #@4ed
    .restart local v20    # "lastActivityTranslucent":Z
    goto/16 :goto_d

    #@4ef
    .line 2424
    .end local v20    # "lastActivityTranslucent":Z
    :cond_2d
    const/16 v20, 0x1

    #@4f1
    .restart local v20    # "lastActivityTranslucent":Z
    goto/16 :goto_d

    #@4f3
    .line 2423
    .end local v20    # "lastActivityTranslucent":Z
    :cond_2e
    const/16 v20, 0x0

    #@4f5
    .restart local v20    # "lastActivityTranslucent":Z
    goto/16 :goto_d

    #@4f7
    .line 2421
    .end local v20    # "lastActivityTranslucent":Z
    :cond_2f
    const/16 v20, 0x0

    #@4f9
    .restart local v20    # "lastActivityTranslucent":Z
    goto/16 :goto_d

    #@4fb
    .line 2435
    :cond_30
    move-object/from16 v0, v22

    #@4fd
    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@4ff
    move-object/from16 v21, v0

    #@501
    .local v21, "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    goto/16 :goto_e

    #@503
    .line 2455
    .end local v21    # "lastResumedActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v23    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v27    # "notUpdated":Z
    :cond_31
    const/4 v3, 0x0

    #@504
    goto/16 :goto_f

    #@506
    .line 2459
    .restart local v13    # "config":Landroid/content/res/Configuration;
    :cond_32
    const/16 v27, 0x1

    #@508
    goto/16 :goto_10

    #@50a
    .line 2482
    .end local v13    # "config":Landroid/content/res/Configuration;
    .restart local v25    # "nextNext":Lcom/android/server/am/ActivityRecord;
    :cond_33
    const/4 v3, 0x0

    #@50b
    return v3

    #@50c
    .line 2487
    .end local v25    # "nextNext":Lcom/android/server/am/ActivityRecord;
    :cond_34
    :try_start_1
    move-object/from16 v0, v24

    #@50e
    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    #@510
    .line 2488
    .local v10, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    if-eqz v10, :cond_35

    #@512
    .line 2489
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@515
    move-result v9

    #@516
    .line 2490
    .local v9, "N":I
    move-object/from16 v0, v24

    #@518
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@51a
    if-nez v3, :cond_35

    #@51c
    if-lez v9, :cond_35

    #@51e
    .line 2493
    move-object/from16 v0, v24

    #@520
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@522
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@524
    move-object/from16 v0, v24

    #@526
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@528
    invoke-interface {v3, v4, v10}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    #@52b
    .line 2497
    .end local v9    # "N":I
    :cond_35
    const/4 v11, 0x1

    #@52c
    .line 2498
    .local v11, "allowSavedSurface":Z
    move-object/from16 v0, v24

    #@52e
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    #@530
    if-eqz v3, :cond_39

    #@532
    .line 2503
    move-object/from16 v0, v24

    #@534
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    #@536
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@539
    move-result v3

    #@53a
    add-int/lit8 v18, v3, -0x1

    #@53c
    .local v18, "i":I
    :goto_13
    if-ltz v18, :cond_38

    #@53e
    .line 2504
    move-object/from16 v0, v24

    #@540
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    #@542
    move/from16 v0, v18

    #@544
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@547
    move-result-object v19

    #@548
    check-cast v19, Landroid/content/Intent;

    #@54a
    .line 2505
    .local v19, "intent":Landroid/content/Intent;
    if-eqz v19, :cond_36

    #@54c
    invoke-static/range {v19 .. v19}, Lcom/android/server/am/ActivityRecord;->isMainIntent(Landroid/content/Intent;)Z

    #@54f
    move-result v3

    #@550
    if-eqz v3, :cond_37

    #@552
    .line 2503
    :cond_36
    add-int/lit8 v18, v18, -0x1

    #@554
    goto :goto_13

    #@555
    .line 2506
    :cond_37
    const/4 v11, 0x0

    #@556
    .line 2510
    .end local v19    # "intent":Landroid/content/Intent;
    :cond_38
    move-object/from16 v0, v24

    #@558
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@55a
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@55c
    .line 2511
    move-object/from16 v0, v24

    #@55e
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    #@560
    move-object/from16 v0, v24

    #@562
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@564
    const/4 v6, 0x0

    #@565
    .line 2510
    invoke-interface {v3, v4, v5, v6}, Landroid/app/IApplicationThread;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;Z)V

    #@568
    .line 2516
    .end local v18    # "i":I
    :cond_39
    move-object/from16 v0, p0

    #@56a
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@56c
    move-object/from16 v0, v24

    #@56e
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@570
    move-object/from16 v0, v24

    #@572
    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    #@574
    invoke-virtual {v3, v4, v5, v11}, Lcom/android/server/wm/WindowManagerService;->notifyAppResumed(Landroid/os/IBinder;ZZ)V

    #@577
    .line 2518
    const/4 v3, 0x4

    #@578
    new-array v3, v3, [Ljava/lang/Object;

    #@57a
    move-object/from16 v0, v24

    #@57c
    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@57e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@581
    move-result-object v4

    #@582
    const/4 v5, 0x0

    #@583
    aput-object v4, v3, v5

    #@585
    .line 2519
    invoke-static/range {v24 .. v24}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@588
    move-result v4

    #@589
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@58c
    move-result-object v4

    #@58d
    const/4 v5, 0x1

    #@58e
    aput-object v4, v3, v5

    #@590
    move-object/from16 v0, v24

    #@592
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@594
    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    #@596
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@599
    move-result-object v4

    #@59a
    const/4 v5, 0x2

    #@59b
    aput-object v4, v3, v5

    #@59d
    move-object/from16 v0, v24

    #@59f
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@5a1
    const/4 v5, 0x3

    #@5a2
    aput-object v4, v3, v5

    #@5a4
    .line 2518
    const/16 v4, 0x7537

    #@5a6
    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@5a9
    .line 2521
    const/4 v3, 0x0

    #@5aa
    move-object/from16 v0, v24

    #@5ac
    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    #@5ae
    .line 2522
    move-object/from16 v0, p0

    #@5b0
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5b2
    move-object/from16 v0, v24

    #@5b4
    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->showUnsupportedZoomDialogIfNeededLocked(Lcom/android/server/am/ActivityRecord;)V

    #@5b7
    .line 2523
    move-object/from16 v0, p0

    #@5b9
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5bb
    move-object/from16 v0, v24

    #@5bd
    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    #@5c0
    .line 2524
    move-object/from16 v0, v24

    #@5c2
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@5c4
    const/4 v4, 0x1

    #@5c5
    iput-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z

    #@5c7
    .line 2525
    move-object/from16 v0, v24

    #@5c9
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@5cb
    move-object/from16 v0, p0

    #@5cd
    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5cf
    iget v4, v4, Lcom/android/server/am/ActivityManagerService;->mTopProcessState:I

    #@5d1
    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    #@5d4
    .line 2526
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    #@5d7
    .line 2527
    move-object/from16 v0, v24

    #@5d9
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@5db
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@5dd
    move-object/from16 v0, v24

    #@5df
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@5e1
    move-object/from16 v0, v24

    #@5e3
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@5e5
    iget v5, v5, Lcom/android/server/am/ProcessRecord;->repProcState:I

    #@5e7
    .line 2528
    move-object/from16 v0, p0

    #@5e9
    iget-object v6, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5eb
    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    #@5ee
    move-result v6

    #@5ef
    .line 2527
    move-object/from16 v0, v33

    #@5f1
    invoke-interface {v3, v4, v5, v6, v0}, Landroid/app/IApplicationThread;->scheduleResumeActivity(Landroid/os/IBinder;IZLandroid/os/Bundle;)V

    #@5f4
    .line 2530
    move-object/from16 v0, p0

    #@5f6
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@5f8
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@5fb
    .line 2556
    :try_start_2
    move-object/from16 v0, p0

    #@5fd
    move-object/from16 v1, v24

    #@5ff
    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@602
    .line 2581
    .end local v10    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .end local v11    # "allowSavedSurface":Z
    .end local v20    # "lastActivityTranslucent":Z
    .end local v23    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v27    # "notUpdated":Z
    :goto_14
    const/4 v3, 0x1

    #@603
    return v3

    #@604
    .line 2533
    .restart local v20    # "lastActivityTranslucent":Z
    .restart local v23    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v27    # "notUpdated":Z
    :catch_1
    move-exception v15

    #@605
    .line 2537
    .local v15, "e":Ljava/lang/Exception;
    move-object/from16 v0, v23

    #@607
    move-object/from16 v1, v24

    #@609
    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@60b
    .line 2538
    if-eqz v22, :cond_3a

    #@60d
    .line 2539
    move-object/from16 v0, v21

    #@60f
    move-object/from16 v1, v22

    #@611
    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@613
    .line 2541
    :cond_3a
    sget-object v3, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@615
    new-instance v4, Ljava/lang/StringBuilder;

    #@617
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@61a
    const-string/jumbo v5, "Restarting because process died: "

    #@61d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@620
    move-result-object v4

    #@621
    move-object/from16 v0, v24

    #@623
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@626
    move-result-object v4

    #@627
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62a
    move-result-object v4

    #@62b
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@62e
    .line 2542
    move-object/from16 v0, v24

    #@630
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    #@632
    if-nez v3, :cond_3c

    #@634
    .line 2543
    const/4 v3, 0x1

    #@635
    move-object/from16 v0, v24

    #@637
    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    #@639
    .line 2548
    :cond_3b
    :goto_15
    move-object/from16 v0, p0

    #@63b
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@63d
    const/4 v4, 0x1

    #@63e
    const/4 v5, 0x0

    #@63f
    move-object/from16 v0, v24

    #@641
    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    #@644
    .line 2550
    const/4 v3, 0x1

    #@645
    return v3

    #@646
    .line 2544
    :cond_3c
    if-eqz v22, :cond_3b

    #@648
    .line 2545
    move-object/from16 v0, p0

    #@64a
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@64c
    move-object/from16 v0, v22

    #@64e
    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    #@651
    move-result v3

    #@652
    .line 2544
    if-eqz v3, :cond_3b

    #@654
    .line 2546
    const/4 v3, 0x0

    #@655
    const/4 v4, 0x1

    #@656
    move-object/from16 v0, v24

    #@658
    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;Z)V

    #@65b
    goto :goto_15

    #@65c
    .line 2557
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v10    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .restart local v11    # "allowSavedSurface":Z
    :catch_2
    move-exception v15

    #@65d
    .line 2560
    .restart local v15    # "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@65f
    new-instance v4, Ljava/lang/StringBuilder;

    #@661
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@664
    const-string/jumbo v5, "Exception thrown during resume of "

    #@667
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66a
    move-result-object v4

    #@66b
    move-object/from16 v0, v24

    #@66d
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@670
    move-result-object v4

    #@671
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@674
    move-result-object v4

    #@675
    invoke-static {v3, v4, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@678
    .line 2561
    move-object/from16 v0, v24

    #@67a
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@67c
    .line 2562
    const-string/jumbo v7, "resume-exception"

    #@67f
    .line 2561
    const/4 v5, 0x0

    #@680
    const/4 v6, 0x0

    #@681
    .line 2562
    const/4 v8, 0x1

    #@682
    move-object/from16 v3, p0

    #@684
    .line 2561
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@687
    .line 2564
    const/4 v3, 0x1

    #@688
    return v3

    #@689
    .line 2568
    .end local v10    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .end local v11    # "allowSavedSurface":Z
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v20    # "lastActivityTranslucent":Z
    .end local v23    # "lastState":Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v27    # "notUpdated":Z
    :cond_3d
    move-object/from16 v0, v24

    #@68b
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    #@68d
    if-nez v3, :cond_3e

    #@68f
    .line 2569
    const/4 v3, 0x1

    #@690
    move-object/from16 v0, v24

    #@692
    iput-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    #@694
    .line 2577
    :goto_16
    move-object/from16 v0, p0

    #@696
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@698
    const/4 v4, 0x1

    #@699
    const/4 v5, 0x1

    #@69a
    move-object/from16 v0, v24

    #@69c
    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    #@69f
    goto/16 :goto_14

    #@6a1
    .line 2572
    :cond_3e
    const/4 v3, 0x0

    #@6a2
    const/4 v4, 0x1

    #@6a3
    move-object/from16 v0, v24

    #@6a5
    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;Z)V

    #@6a8
    goto :goto_16

    #@6a9
    .line 2351
    .end local v12    # "anim":Z
    .end local v22    # "lastStack":Lcom/android/server/am/ActivityStack;
    :catch_3
    move-exception v17

    #@6aa
    .local v17, "e1":Landroid/os/RemoteException;
    goto/16 :goto_9
.end method

.method private setAppTask(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 8
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    .line 5294
    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;

    #@3
    move-result-object v4

    #@4
    .line 5295
    .local v4, "bounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@6
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@8
    iget v2, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    #@a
    iget v3, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@c
    iget-object v5, p2, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    #@e
    .line 5296
    iget v6, p2, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    #@10
    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    #@13
    move-result v7

    #@14
    .line 5295
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/WindowManagerService;->setAppTask(Landroid/os/IBinder;IILandroid/graphics/Rect;Landroid/content/res/Configuration;IZ)V

    #@17
    .line 5297
    iget-object v0, p2, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    #@19
    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->taskConfigOverride:Landroid/content/res/Configuration;

    #@1b
    .line 5293
    return-void
.end method

.method private setVisible(Lcom/android/server/am/ActivityRecord;Z)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "visible"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1452
    iput-boolean p2, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@3
    .line 1453
    if-nez p2, :cond_0

    #@5
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->mUpdateTaskThumbnailWhenHidden:Z

    #@7
    if-eqz v3, :cond_0

    #@9
    .line 1454
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@b
    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@d
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityStack;->screenshotActivitiesLocked(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    #@10
    move-result-object v3

    #@11
    const/4 v4, 0x0

    #@12
    invoke-virtual {p1, v3, v4}, Lcom/android/server/am/ActivityRecord;->updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    #@15
    .line 1455
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->mUpdateTaskThumbnailWhenHidden:Z

    #@17
    .line 1457
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@19
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@1b
    invoke-virtual {v3, v4, p2}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    #@1e
    .line 1458
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->mChildContainers:Ljava/util/ArrayList;

    #@20
    .line 1459
    .local v2, "containers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@23
    move-result v3

    #@24
    add-int/lit8 v1, v3, -0x1

    #@26
    .local v1, "containerNdx":I
    :goto_0
    if-ltz v1, :cond_1

    #@28
    .line 1460
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@2e
    .line 1461
    .local v0, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->setVisible(Z)V

    #@31
    .line 1459
    add-int/lit8 v1, v1, -0x1

    #@33
    goto :goto_0

    #@34
    .line 1463
    .end local v0    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@36
    const/4 v4, 0x1

    #@37
    iput-boolean v4, v3, Lcom/android/server/am/ActivityStackSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    #@39
    .line 1451
    return-void
.end method

.method private shouldBeVisible(Lcom/android/server/am/ActivityRecord;ZZLcom/android/server/am/ActivityRecord;Z)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "behindTranslucentActivity"    # Z
    .param p3, "stackVisibleBehind"    # Z
    .param p4, "visibleBehind"    # Lcom/android/server/am/ActivityRecord;
    .param p5, "behindFullscreenActivity"    # Z

    #@0
    .prologue
    .line 1841
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_0

    #@6
    .line 1842
    const/4 v2, 0x0

    #@7
    return v2

    #@8
    .line 1848
    :cond_0
    if-nez p2, :cond_1

    #@a
    if-eqz p3, :cond_3

    #@c
    :cond_1
    if-ne p4, p1, :cond_3

    #@e
    const/4 v0, 0x1

    #@f
    .line 1851
    .local v0, "activityVisibleBehind":Z
    :goto_0
    if-eqz p5, :cond_4

    #@11
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    #@13
    if-nez v2, :cond_4

    #@15
    move v1, v0

    #@16
    .line 1853
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@18
    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mSupportsLeanbackOnly:Z

    #@1a
    if-eqz v2, :cond_2

    #@1c
    if-eqz v1, :cond_2

    #@1e
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isRecentsActivity()Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_2

    #@24
    .line 1856
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@26
    const/4 v3, 0x3

    #@27
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@2a
    move-result-object v2

    #@2b
    if-nez v2, :cond_5

    #@2d
    .line 1857
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@2f
    invoke-virtual {v2, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    #@32
    move-result v1

    #@33
    .line 1860
    :cond_2
    :goto_2
    return v1

    #@34
    .line 1848
    .end local v0    # "activityVisibleBehind":Z
    :cond_3
    const/4 v0, 0x0

    #@35
    .restart local v0    # "activityVisibleBehind":Z
    goto :goto_0

    #@36
    .line 1851
    :cond_4
    const/4 v1, 0x1

    #@37
    .local v1, "isVisible":Z
    goto :goto_1

    #@38
    .line 1856
    .end local v1    # "isVisible":Z
    :cond_5
    const/4 v1, 0x1

    #@39
    .restart local v1    # "isVisible":Z
    goto :goto_2
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
    .line 921
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    #@5
    const-wide/16 v2, 0x0

    #@7
    cmp-long v0, v0, v2

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 922
    const-string/jumbo v0, "drawing"

    #@e
    invoke-static {v6, v7, v0, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    #@11
    .line 924
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
    .line 925
    const-string/jumbo v0, "drawing"

    #@2b
    invoke-static {v6, v7, v0, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    #@2e
    .line 920
    return-void
.end method

.method private stopFullyDrawnTraceIfNeeded()V
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 929
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
    .line 930
    const-string/jumbo v0, "drawing"

    #@11
    const-wide/16 v2, 0x40

    #@13
    const/4 v1, 0x0

    #@14
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    #@17
    .line 931
    iput-wide v4, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    #@19
    .line 928
    :cond_0
    return-void
.end method

.method private updateBehindFullscreen(ZZLcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "stackInvisible"    # Z
    .param p2, "behindFullscreenActivity"    # Z
    .param p3, "task"    # Lcom/android/server/am/TaskRecord;
    .param p4, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 1944
    iget-boolean v0, p4, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 1949
    const/4 p2, 0x1

    #@5
    .line 1956
    .end local p2    # "behindFullscreenActivity":Z
    :cond_0
    :goto_0
    return p2

    #@6
    .line 1950
    .restart local p2    # "behindFullscreenActivity":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    #@9
    move-result v0

    #@a
    if-nez v0, :cond_0

    #@c
    iget-boolean v0, p4, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    #@e
    if-eqz v0, :cond_0

    #@10
    invoke-virtual {p3}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 1954
    const/4 p2, 0x1

    #@17
    .local p2, "behindFullscreenActivity":Z
    goto :goto_0
.end method


# virtual methods
.method final activityDestroyedLocked(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4079
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3
    move-result-wide v0

    #@4
    .line 4081
    .local v0, "origId":J
    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    #@7
    move-result-object v2

    #@8
    .line 4082
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    #@a
    .line 4083
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@c
    const/16 v4, 0x66

    #@e
    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    #@11
    .line 4087
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@14
    move-result-object v3

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 4088
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@19
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@1b
    if-ne v3, v4, :cond_1

    #@1d
    .line 4089
    const/4 v3, 0x1

    #@1e
    const/4 v4, 0x0

    #@1f
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    #@22
    .line 4090
    const/4 v3, 0x0

    #@23
    invoke-direct {p0, v2, v3, p2}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    #@26
    .line 4093
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@28
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2b
    .line 4095
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@2e
    .line 4078
    return-void

    #@2f
    .line 4094
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v3

    #@30
    .line 4095
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@33
    .line 4094
    throw v3
.end method

.method final activityPausedLocked(Landroid/os/IBinder;Z)V
    .locals 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "timeout"    # Z

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v4, 0x0

    #@4
    .line 1206
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    #@7
    move-result-object v0

    #@8
    .line 1207
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    #@a
    .line 1208
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@c
    const/16 v2, 0x65

    #@e
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    #@11
    .line 1209
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@13
    if-ne v1, v0, :cond_0

    #@15
    .line 1212
    invoke-direct {p0, v3, v5}, Lcom/android/server/am/ActivityStack;->completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V

    #@18
    .line 1213
    return-void

    #@19
    .line 1215
    :cond_0
    const/4 v1, 0x4

    #@1a
    new-array v2, v1, [Ljava/lang/Object;

    #@1c
    .line 1216
    iget v1, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@1e
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v1

    #@22
    aput-object v1, v2, v4

    #@24
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@27
    move-result v1

    #@28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b
    move-result-object v1

    #@2c
    aput-object v1, v2, v3

    #@2e
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@30
    aput-object v1, v2, v6

    #@32
    .line 1217
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@34
    if-eqz v1, :cond_2

    #@36
    .line 1218
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@38
    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@3a
    .line 1217
    :goto_0
    const/4 v3, 0x3

    #@3b
    aput-object v1, v2, v3

    #@3d
    .line 1215
    const/16 v1, 0x753c

    #@3f
    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@42
    .line 1219
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@44
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@46
    if-ne v1, v2, :cond_1

    #@48
    .line 1220
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@4a
    iput-object v1, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@4c
    .line 1221
    iget-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@4e
    if-eqz v1, :cond_1

    #@50
    .line 1224
    invoke-virtual {p0, v0, v6, v4}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    #@53
    .line 1229
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@55
    invoke-virtual {v1, v5, v4, v4}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    #@58
    .line 1202
    return-void

    #@59
    .line 1218
    :cond_2
    const-string/jumbo v1, "(none)"

    #@5c
    goto :goto_0
.end method

.method final activityResumedLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 1233
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    #@3
    move-result-object v0

    #@4
    .line 1235
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    #@5
    iput-object v1, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    #@7
    .line 1236
    const/4 v1, 0x0

    #@8
    iput-boolean v1, v0, Lcom/android/server/am/ActivityRecord;->haveState:Z

    #@a
    .line 1232
    return-void
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
    .line 1241
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@7
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@9
    if-eq v0, v1, :cond_0

    #@b
    .line 1242
    sget-object v0, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "Activity reported stop, but no longer stopping: "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 1243
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@26
    invoke-virtual {v0, v5, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    #@29
    .line 1244
    return-void

    #@2a
    .line 1246
    :cond_0
    if-eqz p3, :cond_1

    #@2c
    .line 1247
    iput-object p3, p1, Lcom/android/server/am/ActivityRecord;->persistentState:Landroid/os/PersistableBundle;

    #@2e
    .line 1248
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@30
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@32
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    #@35
    .line 1251
    :cond_1
    if-eqz p2, :cond_2

    #@37
    .line 1254
    iput-object p2, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    #@39
    .line 1255
    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->haveState:Z

    #@3b
    .line 1256
    iput v2, p1, Lcom/android/server/am/ActivityRecord;->launchCount:I

    #@3d
    .line 1257
    invoke-virtual {p1, v4, p4}, Lcom/android/server/am/ActivityRecord;->updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    #@40
    .line 1259
    :cond_2
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    #@42
    if-nez v0, :cond_4

    #@44
    .line 1261
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@46
    invoke-virtual {v0, v5, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    #@49
    .line 1262
    iput-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    #@4b
    .line 1263
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@4d
    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@4f
    .line 1265
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@51
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@53
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->notifyAppStopped(Landroid/os/IBinder;)V

    #@56
    .line 1267
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    #@59
    move-result-object v0

    #@5a
    if-ne v0, p1, :cond_3

    #@5c
    .line 1268
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@5e
    invoke-virtual {v0, p1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->requestVisibleBehindLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    #@61
    .line 1270
    :cond_3
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@63
    if-eqz v0, :cond_5

    #@65
    .line 1271
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->clearOptionsLocked()V

    #@68
    .line 1240
    :cond_4
    :goto_0
    return-void

    #@69
    .line 1273
    :cond_5
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    #@6b
    if-eqz v0, :cond_6

    #@6d
    .line 1274
    const-string/jumbo v0, "stop-config"

    #@70
    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    #@73
    .line 1275
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@75
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    #@78
    goto :goto_0

    #@79
    .line 1277
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@7b
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->updatePreviousProcessLocked(Lcom/android/server/am/ActivityRecord;)V

    #@7e
    goto :goto_0
.end method

.method addConfigOverride(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 20
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    .line 5236
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/TaskRecord;->updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;

    #@3
    move-result-object v13

    #@4
    .line 5238
    .local v13, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@6
    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@8
    move-object/from16 v0, p2

    #@a
    iget-object v2, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@c
    move-object/from16 v0, p1

    #@e
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@11
    move-result v2

    #@12
    move-object/from16 v0, p1

    #@14
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@16
    .line 5239
    move-object/from16 v0, p1

    #@18
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@1a
    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget v5, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@20
    move-object/from16 v0, p1

    #@22
    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@24
    iget v6, v6, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    #@26
    move-object/from16 v0, p1

    #@28
    iget-boolean v7, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@2a
    .line 5240
    move-object/from16 v0, p1

    #@2c
    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@2e
    iget v8, v8, Landroid/content/pm/ActivityInfo;->flags:I

    #@30
    and-int/lit16 v8, v8, 0x400

    #@32
    if-eqz v8, :cond_0

    #@34
    const/4 v8, 0x1

    #@35
    :goto_0
    move-object/from16 v0, p1

    #@37
    iget v9, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@39
    move-object/from16 v0, p1

    #@3b
    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@3d
    iget v10, v10, Landroid/content/pm/ActivityInfo;->configChanges:I

    #@3f
    .line 5241
    move-object/from16 v0, p2

    #@41
    iget-object v11, v0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@43
    if-eqz v11, :cond_1

    #@45
    const/4 v11, 0x1

    #@46
    :goto_1
    move-object/from16 v0, p1

    #@48
    iget-boolean v12, v0, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    #@4a
    move-object/from16 v0, p2

    #@4c
    iget-object v14, v0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    #@4e
    .line 5242
    move-object/from16 v0, p2

    #@50
    iget v15, v0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    #@52
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isAlwaysFocusable()Z

    #@55
    move-result v16

    #@56
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    #@59
    move-result v17

    #@5a
    .line 5243
    move-object/from16 v0, p1

    #@5c
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@5e
    move-object/from16 v18, v0

    #@60
    move-object/from16 v0, v18

    #@62
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@64
    move/from16 v18, v0

    #@66
    move-object/from16 v0, p1

    #@68
    iget v0, v0, Lcom/android/server/am/ActivityRecord;->mRotationAnimationHint:I

    #@6a
    move/from16 v19, v0

    #@6c
    .line 5238
    invoke-virtual/range {v1 .. v19}, Lcom/android/server/wm/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZLandroid/graphics/Rect;Landroid/content/res/Configuration;IZZII)V

    #@6f
    .line 5244
    move-object/from16 v0, p2

    #@71
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    #@73
    move-object/from16 v0, p1

    #@75
    iput-object v1, v0, Lcom/android/server/am/ActivityRecord;->taskConfigOverride:Landroid/content/res/Configuration;

    #@77
    .line 5235
    return-void

    #@78
    .line 5240
    :cond_0
    const/4 v8, 0x0

    #@79
    goto :goto_0

    #@7a
    .line 5241
    :cond_1
    const/4 v11, 0x0

    #@7b
    goto :goto_1
.end method

.method addRecentActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 914
    if-eqz p1, :cond_0

    #@2
    .line 915
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@4
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@6
    invoke-virtual {v0, v1}, Lcom/android/server/am/RecentTasks;->addLocked(Lcom/android/server/am/TaskRecord;)V

    #@9
    .line 916
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@b
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    #@e
    .line 913
    :cond_0
    return-void
.end method

.method addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V
    .locals 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toTop"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 5186
    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/am/ActivityStack;->preAddTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)Lcom/android/server/am/ActivityStack;

    #@4
    move-result-object v0

    #@5
    .line 5188
    .local v0, "prevStack":Lcom/android/server/am/ActivityStack;
    iput-object p0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@7
    .line 5189
    if-eqz p2, :cond_0

    #@9
    .line 5190
    const/4 v1, 0x0

    #@a
    invoke-direct {p0, p1, v1}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    #@d
    .line 5195
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->postAddTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)V

    #@10
    .line 5185
    return-void

    #@11
    .line 5192
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@16
    .line 5193
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    #@19
    goto :goto_0
.end method

.method attachDisplay(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;Z)V
    .locals 7
    .param p1, "activityDisplay"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    .param p2, "onTop"    # Z

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 455
    iget v0, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    #@4
    iput v0, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    #@6
    .line 456
    iget-object v0, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    #@8
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@a
    .line 457
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@c
    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@e
    iget v3, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    #@10
    invoke-virtual {v0, v1, v3, p2}, Lcom/android/server/wm/WindowManagerService;->attachStack(IIZ)Landroid/graphics/Rect;

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    #@16
    .line 458
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    #@18
    if-nez v0, :cond_2

    #@1a
    move v0, v6

    #@1b
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    #@1d
    .line 459
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskPositioner:Lcom/android/server/am/LaunchingTaskPositioner;

    #@1f
    if-eqz v0, :cond_0

    #@21
    .line 460
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskPositioner:Lcom/android/server/am/LaunchingTaskPositioner;

    #@23
    iget-object v1, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    #@25
    invoke-virtual {v0, v1}, Lcom/android/server/am/LaunchingTaskPositioner;->setDisplay(Landroid/view/Display;)V

    #@28
    .line 461
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskPositioner:Lcom/android/server/am/LaunchingTaskPositioner;

    #@2a
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    #@2c
    invoke-virtual {v0, v1}, Lcom/android/server/am/LaunchingTaskPositioner;->configure(Landroid/graphics/Rect;)V

    #@2f
    .line 464
    :cond_0
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@31
    const/4 v1, 0x3

    #@32
    if-ne v0, v1, :cond_1

    #@34
    .line 467
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@36
    .line 468
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    #@38
    move-object v3, v2

    #@39
    move-object v4, v2

    #@3a
    move-object v5, v2

    #@3b
    .line 467
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    #@3e
    .line 454
    :cond_1
    return-void

    #@3f
    .line 458
    :cond_2
    const/4 v0, 0x0

    #@40
    goto :goto_0
.end method

.method awakeFromSleepingLocked()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 960
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
    .line 961
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
    .line 962
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
    .line 963
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    #@23
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    #@26
    .line 962
    add-int/lit8 v1, v1, -0x1

    #@28
    goto :goto_1

    #@29
    .line 960
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@2b
    goto :goto_0

    #@2c
    .line 966
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@2e
    if-eqz v3, :cond_2

    #@30
    .line 967
    sget-object v3, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@32
    const-string/jumbo v4, "awakeFromSleepingLocked: previously pausing activity didn\'t pause"

    #@35
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    .line 968
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@3a
    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@3c
    const/4 v4, 0x1

    #@3d
    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/ActivityStack;->activityPausedLocked(Landroid/os/IBinder;Z)V

    #@40
    .line 958
    :cond_2
    return-void
.end method

.method final backgroundResourcesReleased()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 4125
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@3
    const/16 v2, 0x6b

    #@5
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@8
    .line 4126
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    #@b
    move-result-object v0

    #@c
    .line 4127
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    #@e
    .line 4128
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@10
    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@15
    .line 4129
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    #@18
    .line 4130
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1a
    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V

    #@1d
    .line 4132
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1f
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    #@22
    .line 4124
    return-void
.end method

.method cancelInitializingActivities()V
    .locals 9

    #@0
    .prologue
    .line 2059
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@3
    move-result-object v6

    #@4
    .line 2060
    .local v6, "topActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v0, 0x1

    #@5
    .line 2063
    .local v0, "aboveTop":Z
    const/4 v3, 0x0

    #@6
    .line 2065
    .local v3, "behindFullscreenActivity":Z
    const/4 v7, 0x0

    #@7
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    #@a
    move-result v7

    #@b
    if-nez v7, :cond_0

    #@d
    .line 2068
    const/4 v0, 0x0

    #@e
    .line 2069
    const/4 v3, 0x1

    #@f
    .line 2072
    :cond_0
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@11
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@14
    move-result v7

    #@15
    add-int/lit8 v5, v7, -0x1

    #@17
    .end local v3    # "behindFullscreenActivity":Z
    .local v5, "taskNdx":I
    :goto_0
    if-ltz v5, :cond_5

    #@19
    .line 2073
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@1b
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v7

    #@1f
    check-cast v7, Lcom/android/server/am/TaskRecord;

    #@21
    iget-object v1, v7, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@23
    .line 2074
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@26
    move-result v7

    #@27
    add-int/lit8 v2, v7, -0x1

    #@29
    .local v2, "activityNdx":I
    :goto_1
    if-ltz v2, :cond_4

    #@2b
    .line 2075
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2e
    move-result-object v4

    #@2f
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    #@31
    .line 2076
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_2

    #@33
    .line 2077
    if-ne v4, v6, :cond_1

    #@35
    .line 2078
    const/4 v0, 0x0

    #@36
    .line 2080
    :cond_1
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@38
    or-int/2addr v3, v7

    #@39
    .line 2074
    .local v3, "behindFullscreenActivity":Z
    :goto_2
    add-int/lit8 v2, v2, -0x1

    #@3b
    goto :goto_1

    #@3c
    .line 2084
    .end local v3    # "behindFullscreenActivity":Z
    :cond_2
    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@3e
    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@40
    if-ne v7, v8, :cond_3

    #@42
    .line 2085
    iget v7, v4, Lcom/android/server/am/ActivityRecord;->mStartingWindowState:I

    #@44
    const/4 v8, 0x1

    #@45
    if-ne v7, v8, :cond_3

    #@47
    .line 2084
    if-eqz v3, :cond_3

    #@49
    .line 2089
    const/4 v7, 0x2

    #@4a
    iput v7, v4, Lcom/android/server/am/ActivityRecord;->mStartingWindowState:I

    #@4c
    .line 2090
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@4e
    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@50
    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerService;->removeAppStartingWindow(Landroid/os/IBinder;)V

    #@53
    .line 2093
    :cond_3
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@55
    or-int/2addr v3, v7

    #@56
    .restart local v3    # "behindFullscreenActivity":Z
    goto :goto_2

    #@57
    .line 2072
    .end local v3    # "behindFullscreenActivity":Z
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v5, v5, -0x1

    #@59
    goto :goto_0

    #@5a
    .line 2058
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    :cond_5
    return-void
.end method

.method checkReadyForSleepLocked()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    const/4 v2, 0x1

    #@3
    .line 988
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 993
    invoke-virtual {p0, v3, v2, v4, v3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z

    #@a
    .line 994
    return v2

    #@b
    .line 996
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 999
    return v2

    #@10
    .line 1002
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->hasVisibleBehindActivity()Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_2

    #@16
    .line 1004
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    #@19
    move-result-object v0

    #@1a
    .line 1005
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1c
    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@21
    .line 1007
    return v2

    #@22
    .line 1010
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    return v3
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
    .line 3769
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@4
    if-ne v3, p1, :cond_0

    #@6
    .line 3770
    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@8
    .line 3772
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@a
    if-ne v3, p1, :cond_1

    #@c
    .line 3773
    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@e
    .line 3775
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@10
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityManagerService;->resetFocusedActivityIfNeededLocked(Lcom/android/server/am/ActivityRecord;)V

    #@13
    .line 3777
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    #@15
    .line 3778
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    #@17
    .line 3780
    if-eqz p3, :cond_2

    #@19
    .line 3782
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@1b
    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@1d
    .line 3784
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@1f
    .line 3790
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@21
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    #@23
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@26
    .line 3791
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@28
    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@2d
    .line 3794
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@2f
    if-eqz v3, :cond_5

    #@31
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    #@33
    if-eqz v3, :cond_5

    #@35
    .line 3795
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
    .line 3796
    .local v0, "apr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@4a
    move-result-object v2

    #@4b
    check-cast v2, Lcom/android/server/am/PendingIntentRecord;

    #@4d
    .line 3797
    .local v2, "rec":Lcom/android/server/am/PendingIntentRecord;
    if-eqz v2, :cond_3

    #@4f
    .line 3798
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@51
    invoke-virtual {v3, v2, v5}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V

    #@54
    goto :goto_0

    #@55
    .line 3801
    .end local v0    # "apr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v2    # "rec":Lcom/android/server/am/PendingIntentRecord;
    :cond_4
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    #@57
    .line 3804
    .end local v1    # "apr$iterator":Ljava/util/Iterator;
    :cond_5
    if-eqz p2, :cond_6

    #@59
    .line 3805
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    #@5c
    .line 3809
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    #@5f
    .line 3810
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    #@62
    move-result-object v3

    #@63
    if-ne v3, p1, :cond_7

    #@65
    .line 3811
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@67
    invoke-virtual {v3, p1, v5}, Lcom/android/server/am/ActivityStackSupervisor;->requestVisibleBehindLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    #@6a
    .line 3816
    :cond_7
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@6c
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@6e
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->notifyAppRelaunchesCleared(Landroid/os/IBinder;)V

    #@71
    .line 3768
    return-void
.end method

.method final cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 3866
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    #@3
    if-eqz v2, :cond_1

    #@5
    .line 3867
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    #@7
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .line 3868
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 3869
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    #@17
    .line 3870
    .local v0, "c":Lcom/android/server/am/ConnectionRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@19
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    #@1b
    invoke-virtual {v2, v0, v3, p1}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    #@1e
    goto :goto_0

    #@1f
    .line 3872
    .end local v0    # "c":Lcom/android/server/am/ConnectionRecord;
    :cond_0
    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    #@21
    .line 3864
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
    .line 950
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
    .line 951
    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    #@e
    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    #@10
    .line 948
    :goto_0
    return-void

    #@11
    .line 953
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@13
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    #@16
    .line 954
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
    .line 2010
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
    .line 2011
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lcom/android/server/am/TaskRecord;

    #@12
    .line 2012
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@14
    .line 2013
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
    .line 2014
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Lcom/android/server/am/ActivityRecord;

    #@22
    .line 2015
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    #@24
    if-eq v5, p1, :cond_0

    #@26
    .line 2016
    const/4 v5, 0x0

    #@27
    iput-object v5, v2, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    #@29
    .line 2013
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@2b
    goto :goto_1

    #@2c
    .line 2010
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    #@2e
    goto :goto_0

    #@2f
    .line 2009
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
    .line 4825
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
    .line 4826
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
    .line 4827
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
    .line 4828
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@23
    .line 4829
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@25
    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    #@27
    and-int/lit16 v0, v0, 0x100

    #@29
    if-eqz v0, :cond_0

    #@2b
    .line 4830
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
    .line 4827
    :cond_0
    add-int/lit8 v7, v7, -0x1

    #@36
    goto :goto_1

    #@37
    .line 4825
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v8, v8, -0x1

    #@39
    goto :goto_0

    #@3a
    .line 4824
    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v7    # "activityNdx":I
    :cond_2
    return-void
.end method

.method continueUpdateBounds()V
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 508
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferred:Z

    #@3
    .line 509
    .local v0, "wasDeferred":Z
    const/4 v1, 0x0

    #@4
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferred:Z

    #@6
    .line 510
    if-eqz v0, :cond_0

    #@8
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferredCalled:Z

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 511
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@e
    .line 512
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    #@10
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    move-object v1, v2

    #@17
    .line 513
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskBounds:Landroid/graphics/Rect;

    #@19
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    #@1c
    move-result v3

    #@1d
    if-eqz v3, :cond_2

    #@1f
    move-object v3, v2

    #@20
    .line 514
    :goto_1
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskInsetBounds:Landroid/graphics/Rect;

    #@22
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    #@25
    move-result v5

    #@26
    if-eqz v5, :cond_3

    #@28
    .line 511
    :goto_2
    invoke-virtual {v4, p0, v1, v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackUncheckedLocked(Lcom/android/server/am/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    #@2b
    .line 507
    :cond_0
    return-void

    #@2c
    .line 512
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    #@2e
    goto :goto_0

    #@2f
    .line 513
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskBounds:Landroid/graphics/Rect;

    #@31
    goto :goto_1

    #@32
    .line 514
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskInsetBounds:Landroid/graphics/Rect;

    #@34
    goto :goto_2
.end method

.method convertActivityToTranslucent(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 2004
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    #@2
    .line 2005
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    #@4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@7
    .line 2006
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@9
    const/16 v1, 0x6a

    #@b
    const-wide/16 v2, 0x7d0

    #@d
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@10
    .line 2003
    return-void
.end method

.method createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;
    .locals 8
    .param p1, "taskId"    # I
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p5, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p6, "toTop"    # Z

    #@0
    .prologue
    .line 5161
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
    .line 5164
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    const-string/jumbo v1, "createTaskRecord"

    #@f
    invoke-virtual {p0, v0, p6, v1}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V

    #@12
    .line 5165
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@14
    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mLockScreenShown:I

    #@16
    const/4 v2, 0x2

    #@17
    if-ne v1, v2, :cond_1

    #@19
    const/4 v7, 0x1

    #@1a
    .line 5166
    .local v7, "isLockscreenShown":Z
    :goto_0
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    #@1c
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ActivityStack;->layoutTaskInStack(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;)Z

    #@1f
    move-result v1

    #@20
    if-nez v1, :cond_0

    #@22
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    #@24
    if-eqz v1, :cond_0

    #@26
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    #@29
    move-result v1

    #@2a
    if-eqz v1, :cond_0

    #@2c
    .line 5167
    if-eqz v7, :cond_2

    #@2e
    .line 5170
    :cond_0
    :goto_1
    return-object v0

    #@2f
    .line 5165
    .end local v7    # "isLockscreenShown":Z
    :cond_1
    const/4 v7, 0x0

    #@30
    .restart local v7    # "isLockscreenShown":Z
    goto :goto_0

    #@31
    .line 5168
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    #@33
    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    #@36
    goto :goto_1
.end method

.method deferUpdateBounds()V
    .locals 1

    #@0
    .prologue
    .line 496
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferred:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 497
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferred:Z

    #@7
    .line 498
    const/4 v0, 0x0

    #@8
    iput-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferredCalled:Z

    #@a
    .line 495
    :cond_0
    return-void
.end method

.method final destroyActivitiesLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 7
    .param p1, "owner"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3883
    const/4 v3, 0x0

    #@1
    .line 3884
    .local v3, "lastIsOpaque":Z
    const/4 v2, 0x0

    #@2
    .line 3885
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
    .line 3886
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
    .line 3887
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
    .line 3888
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v4

    #@22
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    #@24
    .line 3889
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@26
    if-eqz v6, :cond_1

    #@28
    .line 3887
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, -0x1

    #@2a
    goto :goto_1

    #@2b
    .line 3892
    :cond_1
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@2d
    if-eqz v6, :cond_2

    #@2f
    .line 3893
    const/4 v3, 0x1

    #@30
    .line 3895
    :cond_2
    if-eqz p1, :cond_3

    #@32
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@34
    if-ne v6, p1, :cond_0

    #@36
    .line 3898
    :cond_3
    if-eqz v3, :cond_0

    #@38
    .line 3901
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    #@3b
    move-result v6

    #@3c
    if-eqz v6, :cond_0

    #@3e
    .line 3905
    const/4 v6, 0x1

    #@3f
    invoke-virtual {p0, v4, v6, p2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    #@42
    move-result v6

    #@43
    if-eqz v6, :cond_0

    #@45
    .line 3906
    const/4 v2, 0x1

    #@46
    goto :goto_2

    #@47
    .line 3885
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v5, v5, -0x1

    #@49
    goto :goto_0

    #@4a
    .line 3911
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_5
    if-eqz v2, :cond_6

    #@4c
    .line 3912
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@4e
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    #@51
    .line 3882
    :cond_6
    return-void
.end method

.method final destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "removeFromApp"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    .line 3981
    const/4 v7, 0x5

    #@4
    new-array v7, v7, [Ljava/lang/Object;

    #@6
    .line 3982
    iget v8, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    #@8
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v8

    #@c
    aput-object v8, v7, v6

    #@e
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@11
    move-result v8

    #@12
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@15
    move-result-object v8

    #@16
    aput-object v8, v7, v1

    #@18
    .line 3983
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@1a
    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    #@1c
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v8

    #@20
    const/4 v9, 0x2

    #@21
    aput-object v8, v7, v9

    #@23
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@25
    const/4 v9, 0x3

    #@26
    aput-object v8, v7, v9

    #@28
    const/4 v8, 0x4

    #@29
    aput-object p3, v7, v8

    #@2b
    .line 3981
    const/16 v8, 0x7542

    #@2d
    invoke-static {v8, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@30
    .line 3985
    const/4 v3, 0x0

    #@31
    .line 3991
    .local v3, "removedFromHistory":Z
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    #@34
    move-result-object v5

    #@35
    .line 3993
    .local v5, "topTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p0, p1, v6, v6}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    #@38
    .line 3995
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@3a
    if-eqz v7, :cond_5

    #@3c
    .line 3997
    .local v1, "hadApp":Z
    :goto_0
    if-eqz v1, :cond_7

    #@3e
    .line 3998
    if-eqz p2, :cond_1

    #@40
    .line 3999
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@42
    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@44
    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@47
    .line 4000
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@49
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    #@4b
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@4d
    if-ne v7, v8, :cond_0

    #@4f
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@51
    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@53
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@56
    move-result v7

    #@57
    if-gtz v7, :cond_0

    #@59
    .line 4001
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5b
    iput-object v11, v7, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    #@5d
    .line 4002
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5f
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    #@61
    .line 4003
    const/16 v8, 0x19

    #@63
    .line 4002
    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessage(I)Z

    #@66
    .line 4005
    :cond_0
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@68
    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@6a
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    #@6d
    move-result v7

    #@6e
    if-eqz v7, :cond_1

    #@70
    .line 4008
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@72
    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    #@74
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@76
    invoke-virtual {v7, v8}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessRecord;)V

    #@79
    .line 4010
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@7b
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@7d
    invoke-virtual {v7, v8, v6, v11}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    #@80
    .line 4011
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@82
    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    #@85
    .line 4015
    :cond_1
    const/4 v4, 0x0

    #@86
    .line 4019
    .local v4, "skipDestroy":Z
    :try_start_0
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@88
    iget-object v7, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@8a
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@8c
    iget-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@8e
    .line 4020
    iget v10, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    #@90
    .line 4019
    invoke-interface {v7, v8, v9, v10}, Landroid/app/IApplicationThread;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@93
    .line 4034
    :cond_2
    :goto_1
    iput-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    #@95
    .line 4043
    iget-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@97
    if-eqz v7, :cond_3

    #@99
    if-eqz v4, :cond_6

    #@9b
    .line 4052
    :cond_3
    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@9d
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@9f
    .line 4054
    iput-object v11, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@a1
    .line 4069
    .end local v4    # "skipDestroy":Z
    :goto_2
    iput v6, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    #@a3
    .line 4071
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    #@a5
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@a8
    move-result v6

    #@a9
    if-nez v6, :cond_4

    #@ab
    if-eqz v1, :cond_4

    #@ad
    .line 4072
    sget-object v6, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@af
    new-instance v7, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v8, "Activity "

    #@b7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v7

    #@bb
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v7

    #@bf
    const-string/jumbo v8, " being finished, but not in LRU list"

    #@c2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v7

    #@c6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c9
    move-result-object v7

    #@ca
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@cd
    .line 4075
    :cond_4
    return v3

    #@ce
    .end local v1    # "hadApp":Z
    :cond_5
    move v1, v6

    #@cf
    .line 3995
    goto/16 :goto_0

    #@d1
    .line 4021
    .restart local v1    # "hadApp":Z
    .restart local v4    # "skipDestroy":Z
    :catch_0
    move-exception v0

    #@d2
    .line 4026
    .local v0, "e":Ljava/lang/Exception;
    iget-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@d4
    if-eqz v7, :cond_2

    #@d6
    .line 4028
    new-instance v7, Ljava/lang/StringBuilder;

    #@d8
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@db
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v7

    #@df
    const-string/jumbo v8, " exceptionInScheduleDestroy"

    #@e2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    move-result-object v7

    #@e6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e9
    move-result-object v7

    #@ea
    .line 4027
    invoke-direct {p0, p1, v5, v7}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    #@ed
    .line 4029
    const/4 v3, 0x1

    #@ee
    .line 4030
    const/4 v4, 0x1

    #@ef
    goto :goto_1

    #@f0
    .line 4046
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@f2
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@f4
    .line 4047
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@f6
    const/16 v8, 0x66

    #@f8
    invoke-virtual {v7, v8, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@fb
    move-result-object v2

    #@fc
    .line 4048
    .local v2, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@fe
    const-wide/16 v8, 0x2710

    #@100
    invoke-virtual {v7, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@103
    goto :goto_2

    #@104
    .line 4058
    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "skipDestroy":Z
    :cond_7
    iget-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@106
    if-eqz v7, :cond_8

    #@108
    .line 4059
    new-instance v7, Ljava/lang/StringBuilder;

    #@10a
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@10d
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v7

    #@111
    const-string/jumbo v8, " hadNoApp"

    #@114
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v7

    #@118
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11b
    move-result-object v7

    #@11c
    invoke-direct {p0, p1, v5, v7}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    #@11f
    .line 4060
    const/4 v3, 0x1

    #@120
    goto :goto_2

    #@121
    .line 4063
    :cond_8
    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@123
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@125
    .line 4065
    iput-object v11, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@127
    goto/16 :goto_2
.end method

.method detachDisplay()V
    .locals 7

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 473
    const/4 v0, -0x1

    #@2
    iput v0, p0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    #@4
    .line 474
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@6
    .line 475
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskPositioner:Lcom/android/server/am/LaunchingTaskPositioner;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 476
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskPositioner:Lcom/android/server/am/LaunchingTaskPositioner;

    #@c
    invoke-virtual {v0}, Lcom/android/server/am/LaunchingTaskPositioner;->reset()V

    #@f
    .line 478
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@11
    iget v2, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@13
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->detachStack(I)V

    #@16
    .line 479
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@18
    const/4 v2, 0x3

    #@19
    if-ne v0, v2, :cond_1

    #@1b
    .line 482
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1d
    .line 483
    const/4 v6, 0x1

    #@1e
    move-object v2, v1

    #@1f
    move-object v3, v1

    #@20
    move-object v4, v1

    #@21
    move-object v5, v1

    #@22
    .line 482
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->resizeDockedStackLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    #@25
    .line 472
    :cond_1
    return-void
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
    .line 5005
    const/4 v12, 0x0

    #@1
    .line 5006
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
    .line 5007
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v13

    #@11
    check-cast v13, Lcom/android/server/am/TaskRecord;

    #@13
    .line 5009
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
    .line 5011
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
    const-string/jumbo v1, "\n"

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 5012
    const-string/jumbo v1, "    mFullscreen="

    #@42
    .line 5011
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 5012
    iget-boolean v1, v13, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    #@48
    .line 5011
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    .line 5012
    const-string/jumbo v1, "\n"

    #@4f
    .line 5011
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v0

    #@53
    .line 5013
    const-string/jumbo v1, "    mBounds="

    #@56
    .line 5011
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v0

    #@5a
    .line 5013
    iget-object v1, v13, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    #@5c
    .line 5011
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v0

    #@60
    .line 5013
    const-string/jumbo v1, "\n"

    #@63
    .line 5011
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v0

    #@67
    .line 5014
    const-string/jumbo v1, "    mMinWidth="

    #@6a
    .line 5011
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v0

    #@6e
    .line 5014
    iget v1, v13, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    #@70
    .line 5011
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@73
    move-result-object v0

    #@74
    .line 5014
    const-string/jumbo v1, "\n"

    #@77
    .line 5011
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v0

    #@7b
    .line 5015
    const-string/jumbo v1, "    mMinHeight="

    #@7e
    .line 5011
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v0

    #@82
    .line 5015
    iget v1, v13, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    #@84
    .line 5011
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@87
    move-result-object v0

    #@88
    .line 5015
    const-string/jumbo v1, "\n"

    #@8b
    .line 5011
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v0

    #@8f
    .line 5016
    const-string/jumbo v1, "    mLastNonFullscreenBounds="

    #@92
    .line 5011
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v0

    #@96
    .line 5016
    iget-object v1, v13, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    #@98
    .line 5011
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v0

    #@9c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v11

    #@a0
    .line 5009
    const/4 v5, 0x1

    #@a1
    move-object/from16 v0, p1

    #@a3
    move-object/from16 v1, p2

    #@a5
    move/from16 v7, p4

    #@a7
    move-object/from16 v8, p5

    #@a9
    move/from16 v9, p6

    #@ab
    move-object/from16 v10, p7

    #@ad
    .line 5008
    invoke-static/range {v0 .. v11}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    #@b0
    move-result v0

    #@b1
    or-int/2addr v12, v0

    #@b2
    .line 5017
    .local v12, "printed":Z
    if-eqz v12, :cond_0

    #@b4
    .line 5018
    const/16 p7, 0x0

    #@b6
    .line 5006
    :cond_0
    add-int/lit8 v14, v14, -0x1

    #@b8
    goto/16 :goto_0

    #@ba
    .line 5009
    .end local v12    # "printed":Z
    :cond_1
    const/4 v6, 0x1

    #@bb
    goto/16 :goto_1

    #@bd
    .line 5021
    .end local v13    # "task":Lcom/android/server/am/TaskRecord;
    :cond_2
    return v12
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V
    .locals 23
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I
    .param p3, "preserveWindows"    # Z

    #@0
    .prologue
    .line 1708
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@3
    move-result-object v22

    #@4
    .line 1711
    .local v22, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v22, :cond_0

    #@6
    .line 1712
    move-object/from16 v0, p0

    #@8
    move-object/from16 v1, v22

    #@a
    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->checkTranslucentActivityWaiting(Lcom/android/server/am/ActivityRecord;)V

    #@d
    .line 1717
    :cond_0
    if-eqz v22, :cond_2

    #@f
    const/4 v15, 0x1

    #@10
    .line 1718
    .local v15, "aboveTop":Z
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    #@13
    move-result v19

    #@14
    .line 1719
    .local v19, "stackVisibility":I
    const/4 v3, 0x1

    #@15
    move/from16 v0, v19

    #@17
    if-eq v0, v3, :cond_3

    #@19
    const/16 v18, 0x1

    #@1b
    .line 1720
    .local v18, "stackInvisible":Z
    :goto_1
    const/4 v3, 0x2

    #@1c
    move/from16 v0, v19

    #@1e
    if-ne v0, v3, :cond_4

    #@20
    const/4 v6, 0x1

    #@21
    .line 1721
    .local v6, "stackVisibleBehind":Z
    :goto_2
    move/from16 v8, v18

    #@23
    .line 1722
    .local v8, "behindFullscreenActivity":Z
    move-object/from16 v0, p0

    #@25
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@27
    move-object/from16 v0, p0

    #@29
    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_6

    #@2f
    .line 1723
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@32
    move-result-object v3

    #@33
    if-nez v3, :cond_5

    #@35
    const/4 v13, 0x1

    #@36
    .line 1724
    .local v13, "resumeNextActivity":Z
    :goto_3
    const/4 v5, 0x0

    #@37
    .line 1725
    .local v5, "behindTranslucentActivity":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    #@3a
    move-result-object v7

    #@3b
    .line 1726
    .local v7, "visibleBehind":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    #@3d
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@3f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@42
    move-result v3

    #@43
    add-int/lit8 v21, v3, -0x1

    #@45
    .end local v8    # "behindFullscreenActivity":Z
    .local v21, "taskNdx":I
    :goto_4
    if-ltz v21, :cond_16

    #@47
    .line 1727
    move-object/from16 v0, p0

    #@49
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@4b
    move/from16 v0, v21

    #@4d
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@50
    move-result-object v20

    #@51
    check-cast v20, Lcom/android/server/am/TaskRecord;

    #@53
    .line 1728
    .local v20, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v20

    #@55
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@57
    move-object/from16 v16, v0

    #@59
    .line 1729
    .local v16, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    #@5c
    move-result v3

    #@5d
    add-int/lit8 v17, v3, -0x1

    #@5f
    .local v17, "activityNdx":I
    :goto_5
    if-ltz v17, :cond_11

    #@61
    .line 1730
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@64
    move-result-object v4

    #@65
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    #@67
    .line 1731
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@69
    if-eqz v3, :cond_7

    #@6b
    .line 1735
    iget-boolean v3, v4, Lcom/android/server/am/ActivityRecord;->mUpdateTaskThumbnailWhenHidden:Z

    #@6d
    if-eqz v3, :cond_1

    #@6f
    .line 1736
    move-object/from16 v0, p0

    #@71
    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->screenshotActivitiesLocked(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    #@74
    move-result-object v3

    #@75
    const/4 v9, 0x0

    #@76
    invoke-virtual {v4, v3, v9}, Lcom/android/server/am/ActivityRecord;->updateThumbnailLocked(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    #@79
    .line 1737
    const/4 v3, 0x0

    #@7a
    iput-boolean v3, v4, Lcom/android/server/am/ActivityRecord;->mUpdateTaskThumbnailWhenHidden:Z

    #@7c
    .line 1729
    :cond_1
    :goto_6
    add-int/lit8 v17, v17, -0x1

    #@7e
    goto :goto_5

    #@7f
    .line 1717
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "behindTranslucentActivity":Z
    .end local v6    # "stackVisibleBehind":Z
    .end local v7    # "visibleBehind":Lcom/android/server/am/ActivityRecord;
    .end local v13    # "resumeNextActivity":Z
    .end local v15    # "aboveTop":Z
    .end local v16    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v17    # "activityNdx":I
    .end local v18    # "stackInvisible":Z
    .end local v19    # "stackVisibility":I
    .end local v20    # "task":Lcom/android/server/am/TaskRecord;
    .end local v21    # "taskNdx":I
    :cond_2
    const/4 v15, 0x0

    #@80
    .restart local v15    # "aboveTop":Z
    goto :goto_0

    #@81
    .line 1719
    .restart local v19    # "stackVisibility":I
    :cond_3
    const/16 v18, 0x0

    #@83
    .restart local v18    # "stackInvisible":Z
    goto :goto_1

    #@84
    .line 1720
    :cond_4
    const/4 v6, 0x0

    #@85
    .restart local v6    # "stackVisibleBehind":Z
    goto :goto_2

    #@86
    .line 1723
    .restart local v8    # "behindFullscreenActivity":Z
    :cond_5
    const/4 v13, 0x0

    #@87
    .restart local v13    # "resumeNextActivity":Z
    goto :goto_3

    #@88
    .line 1722
    .end local v13    # "resumeNextActivity":Z
    :cond_6
    const/4 v13, 0x0

    #@89
    .restart local v13    # "resumeNextActivity":Z
    goto :goto_3

    #@8a
    .line 1741
    .end local v8    # "behindFullscreenActivity":Z
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v5    # "behindTranslucentActivity":Z
    .restart local v7    # "visibleBehind":Lcom/android/server/am/ActivityRecord;
    .restart local v16    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v17    # "activityNdx":I
    .restart local v20    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v21    # "taskNdx":I
    :cond_7
    move-object/from16 v0, v22

    #@8c
    if-ne v4, v0, :cond_c

    #@8e
    const/4 v12, 0x1

    #@8f
    .line 1742
    .local v12, "isTop":Z
    :goto_7
    if-eqz v15, :cond_8

    #@91
    if-eqz v12, :cond_1

    #@93
    .line 1745
    :cond_8
    const/4 v15, 0x0

    #@94
    move-object/from16 v3, p0

    #@96
    .line 1747
    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;ZZLcom/android/server/am/ActivityRecord;Z)Z

    #@99
    move-result v3

    #@9a
    if-eqz v3, :cond_10

    #@9c
    .line 1753
    move-object/from16 v0, p1

    #@9e
    if-eq v4, v0, :cond_9

    #@a0
    .line 1754
    const/4 v3, 0x0

    #@a1
    move-object/from16 v0, p0

    #@a3
    move/from16 v1, p3

    #@a5
    invoke-virtual {v0, v4, v3, v1}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    #@a8
    .line 1757
    :cond_9
    iget-object v3, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@aa
    if-eqz v3, :cond_a

    #@ac
    iget-object v3, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@ae
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@b0
    if-nez v3, :cond_e

    #@b2
    :cond_a
    move-object/from16 v9, p0

    #@b4
    move-object/from16 v10, p1

    #@b6
    move/from16 v11, p2

    #@b8
    move-object v14, v4

    #@b9
    .line 1758
    invoke-direct/range {v9 .. v14}, Lcom/android/server/am/ActivityStack;->makeVisibleAndRestartIfNeeded(Lcom/android/server/am/ActivityRecord;IZZLcom/android/server/am/ActivityRecord;)Z

    #@bc
    move-result v3

    #@bd
    if-eqz v3, :cond_b

    #@bf
    .line 1760
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    #@c2
    move-result v3

    #@c3
    move/from16 v0, v17

    #@c5
    if-lt v0, v3, :cond_d

    #@c7
    .line 1762
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    #@ca
    move-result v3

    #@cb
    add-int/lit8 v17, v3, -0x1

    #@cd
    .line 1779
    :cond_b
    :goto_8
    iget v3, v4, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    #@cf
    or-int p2, p2, v3

    #@d1
    .line 1780
    move-object/from16 v0, p0

    #@d3
    move/from16 v1, v18

    #@d5
    move-object/from16 v2, v20

    #@d7
    invoke-direct {v0, v1, v8, v2, v4}, Lcom/android/server/am/ActivityStack;->updateBehindFullscreen(ZZLcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)Z

    #@da
    move-result v8

    #@db
    .line 1782
    .restart local v8    # "behindFullscreenActivity":Z
    if-eqz v8, :cond_1

    #@dd
    iget-boolean v3, v4, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@df
    if-nez v3, :cond_1

    #@e1
    .line 1783
    const/4 v5, 0x1

    #@e2
    goto :goto_6

    #@e3
    .line 1741
    .end local v8    # "behindFullscreenActivity":Z
    .end local v12    # "isTop":Z
    :cond_c
    const/4 v12, 0x0

    #@e4
    .restart local v12    # "isTop":Z
    goto :goto_7

    #@e5
    .line 1764
    :cond_d
    const/4 v13, 0x0

    #@e6
    goto :goto_8

    #@e7
    .line 1767
    :cond_e
    iget-boolean v3, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@e9
    if-eqz v3, :cond_f

    #@eb
    .line 1772
    move-object/from16 v0, p0

    #@ed
    invoke-direct {v0, v4}, Lcom/android/server/am/ActivityStack;->handleAlreadyVisible(Lcom/android/server/am/ActivityRecord;)Z

    #@f0
    move-result v3

    #@f1
    if-eqz v3, :cond_b

    #@f3
    .line 1773
    const/4 v13, 0x0

    #@f4
    goto :goto_8

    #@f5
    .line 1776
    :cond_f
    move-object/from16 v0, p0

    #@f7
    move-object/from16 v1, p1

    #@f9
    invoke-direct {v0, v1, v4}, Lcom/android/server/am/ActivityStack;->makeVisibleIfNeeded(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    #@fc
    goto :goto_8

    #@fd
    .line 1791
    :cond_10
    move-object/from16 v0, p0

    #@ff
    invoke-direct {v0, v4, v7}, Lcom/android/server/am/ActivityStack;->makeInvisible(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    #@102
    goto/16 :goto_6

    #@104
    .line 1794
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v12    # "isTop":Z
    :cond_11
    move-object/from16 v0, p0

    #@106
    iget v3, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@108
    const/4 v9, 0x2

    #@109
    if-ne v3, v9, :cond_14

    #@10b
    .line 1798
    if-nez v19, :cond_13

    #@10d
    const/4 v8, 0x1

    #@10e
    .line 1726
    :cond_12
    :goto_9
    add-int/lit8 v21, v21, -0x1

    #@110
    goto/16 :goto_4

    #@112
    .line 1798
    :cond_13
    const/4 v8, 0x0

    #@113
    .local v8, "behindFullscreenActivity":Z
    goto :goto_9

    #@114
    .line 1799
    .end local v8    # "behindFullscreenActivity":Z
    :cond_14
    move-object/from16 v0, p0

    #@116
    iget v3, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@118
    if-nez v3, :cond_12

    #@11a
    .line 1800
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    #@11d
    move-result v3

    #@11e
    if-eqz v3, :cond_15

    #@120
    .line 1809
    const/4 v8, 0x1

    #@121
    .restart local v8    # "behindFullscreenActivity":Z
    goto :goto_9

    #@122
    .line 1810
    .end local v8    # "behindFullscreenActivity":Z
    :cond_15
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/TaskRecord;->isRecentsTask()Z

    #@125
    move-result v3

    #@126
    if-eqz v3, :cond_12

    #@128
    .line 1811
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    #@12b
    move-result v3

    #@12c
    if-nez v3, :cond_12

    #@12e
    .line 1823
    const/4 v8, 0x1

    #@12f
    .restart local v8    # "behindFullscreenActivity":Z
    goto :goto_9

    #@130
    .line 1829
    .end local v8    # "behindFullscreenActivity":Z
    .end local v16    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v17    # "activityNdx":I
    .end local v20    # "task":Lcom/android/server/am/TaskRecord;
    :cond_16
    move-object/from16 v0, p0

    #@132
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    #@134
    if-eqz v3, :cond_17

    #@136
    .line 1830
    move-object/from16 v0, p0

    #@138
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    #@13a
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    #@13d
    move-result v3

    #@13e
    .line 1829
    if-eqz v3, :cond_17

    #@140
    .line 1832
    const/4 v3, 0x0

    #@141
    move-object/from16 v0, p0

    #@143
    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStack;->notifyActivityDrawnLocked(Lcom/android/server/am/ActivityRecord;)V

    #@146
    .line 1707
    :cond_17
    return-void
.end method

.method ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;IZ)Z
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "globalChanges"    # I
    .param p3, "preserveWindow"    # Z

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    .line 4524
    iget-boolean v6, p0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    #@4
    if-eqz v6, :cond_0

    #@6
    .line 4527
    return v8

    #@7
    .line 4535
    :cond_0
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@9
    iget-object v1, v6, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    #@b
    .line 4536
    .local v1, "newConfig":Landroid/content/res/Configuration;
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@d
    invoke-virtual {v6, v1}, Lcom/android/server/am/TaskRecord;->sanitizeOverrideConfiguration(Landroid/content/res/Configuration;)V

    #@10
    .line 4537
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@12
    iget-object v5, v6, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    #@14
    .line 4538
    .local v5, "taskConfig":Landroid/content/res/Configuration;
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    #@16
    invoke-virtual {v6, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    #@19
    move-result v6

    #@1a
    if-eqz v6, :cond_1

    #@1c
    .line 4539
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->taskConfigOverride:Landroid/content/res/Configuration;

    #@1e
    invoke-virtual {v6, v5}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    #@21
    move-result v6

    #@22
    .line 4538
    if-eqz v6, :cond_1

    #@24
    .line 4540
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    #@26
    if-eqz v6, :cond_2

    #@28
    .line 4547
    :cond_1
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@2a
    if-eqz v6, :cond_3

    #@2c
    .line 4550
    invoke-virtual {p1, v9}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    #@2f
    .line 4551
    return v8

    #@30
    .line 4543
    :cond_2
    return v8

    #@31
    .line 4556
    :cond_3
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    #@33
    .line 4557
    .local v2, "oldConfig":Landroid/content/res/Configuration;
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->taskConfigOverride:Landroid/content/res/Configuration;

    #@35
    .line 4558
    .local v3, "oldTaskOverride":Landroid/content/res/Configuration;
    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    #@37
    .line 4559
    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->taskConfigOverride:Landroid/content/res/Configuration;

    #@39
    .line 4561
    invoke-direct {p0, p1, v5, v3}, Lcom/android/server/am/ActivityStack;->getTaskConfigurationChanges(Lcom/android/server/am/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)I

    #@3c
    move-result v4

    #@3d
    .line 4562
    .local v4, "taskChanges":I
    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    #@40
    move-result v6

    #@41
    or-int v0, v6, v4

    #@43
    .line 4563
    .local v0, "changes":I
    if-nez v0, :cond_4

    #@45
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    #@47
    if-eqz v6, :cond_6

    #@49
    .line 4579
    :cond_4
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@4b
    if-eqz v6, :cond_5

    #@4d
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@4f
    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@51
    if-nez v6, :cond_7

    #@53
    .line 4582
    :cond_5
    invoke-virtual {p1, v9}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    #@56
    .line 4583
    iput-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    #@58
    .line 4584
    return v8

    #@59
    .line 4568
    :cond_6
    invoke-virtual {p1, v5, v8}, Lcom/android/server/am/ActivityRecord;->scheduleConfigurationChanged(Landroid/content/res/Configuration;Z)V

    #@5c
    .line 4569
    return v8

    #@5d
    .line 4594
    :cond_7
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@5f
    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    #@62
    move-result v6

    #@63
    not-int v6, v6

    #@64
    and-int/2addr v6, v0

    #@65
    if-nez v6, :cond_8

    #@67
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    #@69
    if-eqz v6, :cond_d

    #@6b
    .line 4596
    :cond_8
    iget v6, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    #@6d
    or-int/2addr v6, v0

    #@6e
    iput v6, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    #@70
    .line 4597
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@72
    invoke-virtual {p1, v6, p2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    #@75
    .line 4598
    iput-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    #@77
    .line 4599
    invoke-static {v0}, Lcom/android/server/am/ActivityStack;->isResizeOnlyChange(I)Z

    #@7a
    move-result v6

    #@7b
    and-int/2addr p3, v6

    #@7c
    .line 4600
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@7e
    if-eqz v6, :cond_9

    #@80
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@82
    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@84
    if-nez v6, :cond_a

    #@86
    .line 4603
    :cond_9
    const-string/jumbo v6, "config"

    #@89
    invoke-virtual {p0, p1, v8, v6}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    #@8c
    .line 4632
    :goto_0
    return v9

    #@8d
    .line 4604
    :cond_a
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@8f
    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@91
    if-ne v6, v7, :cond_b

    #@93
    .line 4609
    iput-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    #@95
    .line 4610
    iput-boolean p3, p1, Lcom/android/server/am/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    #@97
    .line 4611
    return v8

    #@98
    .line 4612
    :cond_b
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@9a
    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@9c
    if-ne v6, v7, :cond_c

    #@9e
    .line 4624
    iget v6, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    #@a0
    invoke-direct {p0, p1, v6, v8, p3}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZZ)V

    #@a3
    goto :goto_0

    #@a4
    .line 4628
    :cond_c
    iget v6, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    #@a6
    invoke-direct {p0, p1, v6, v9, p3}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZZ)V

    #@a9
    goto :goto_0

    #@aa
    .line 4639
    :cond_d
    invoke-virtual {p1, v5, v8}, Lcom/android/server/am/ActivityRecord;->scheduleConfigurationChanged(Landroid/content/res/Configuration;Z)V

    #@ad
    .line 4640
    invoke-virtual {p1, v9}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    #@b0
    .line 4642
    return v8
.end method

.method ensureVisibleActivitiesConfigurationLocked(Lcom/android/server/am/ActivityRecord;Z)V
    .locals 10
    .param p1, "start"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "preserveWindow"    # Z

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 4484
    if-eqz p1, :cond_3

    #@3
    iget-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@5
    if-eqz v8, :cond_3

    #@7
    .line 4488
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@9
    .line 4489
    .local v4, "startTask":Lcom/android/server/am/TaskRecord;
    const/4 v2, 0x0

    #@a
    .line 4490
    .local v2, "behindFullscreen":Z
    const/4 v7, 0x0

    #@b
    .line 4492
    .local v7, "updatedConfig":Z
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@10
    move-result v6

    #@11
    .end local v7    # "updatedConfig":Z
    .local v6, "taskIndex":I
    :goto_0
    if-ltz v6, :cond_1

    #@13
    .line 4493
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v5

    #@19
    check-cast v5, Lcom/android/server/am/TaskRecord;

    #@1b
    .line 4494
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@1d
    .line 4496
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@1f
    if-ne v8, v5, :cond_4

    #@21
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@24
    move-result v1

    #@25
    .line 4497
    .local v1, "activityIndex":I
    :goto_1
    if-ltz v1, :cond_0

    #@27
    .line 4498
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v3

    #@2b
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    #@2d
    .line 4499
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v3, v9, p2}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    #@30
    move-result v8

    #@31
    or-int/2addr v7, v8

    #@32
    .line 4500
    .local v7, "updatedConfig":Z
    iget-boolean v8, v3, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@34
    if-eqz v8, :cond_5

    #@36
    .line 4501
    const/4 v2, 0x1

    #@37
    .line 4505
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v7    # "updatedConfig":Z
    :cond_0
    if-eqz v2, :cond_6

    #@39
    .line 4509
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityIndex":I
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    if-eqz v7, :cond_2

    #@3b
    .line 4512
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@3d
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    #@40
    .line 4483
    :cond_2
    return-void

    #@41
    .line 4485
    .end local v2    # "behindFullscreen":Z
    .end local v4    # "startTask":Lcom/android/server/am/TaskRecord;
    .end local v6    # "taskIndex":I
    :cond_3
    return-void

    #@42
    .line 4496
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v2    # "behindFullscreen":Z
    .restart local v4    # "startTask":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v6    # "taskIndex":I
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@45
    move-result v8

    #@46
    add-int/lit8 v1, v8, -0x1

    #@48
    .restart local v1    # "activityIndex":I
    goto :goto_1

    #@49
    .line 4497
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v7    # "updatedConfig":Z
    :cond_5
    add-int/lit8 v1, v1, -0x1

    #@4b
    goto :goto_1

    #@4c
    .line 4492
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v7    # "updatedConfig":Z
    :cond_6
    add-int/lit8 v6, v6, -0x1

    #@4e
    goto :goto_0
.end method

.method findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/am/ActivityRecord;
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "compareIntentFilters"    # Z

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 832
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@4
    move-result-object v2

    #@5
    .line 833
    .local v2, "cls":Landroid/content/ComponentName;
    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@7
    if-eqz v8, :cond_0

    #@9
    .line 834
    new-instance v2, Landroid/content/ComponentName;

    #@b
    .end local v2    # "cls":Landroid/content/ComponentName;
    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@d
    iget-object v9, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@f
    invoke-direct {v2, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 836
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
    .line 838
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
    if-ltz v6, :cond_6

    #@24
    .line 839
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@26
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@29
    move-result-object v5

    #@2a
    check-cast v5, Lcom/android/server/am/TaskRecord;

    #@2c
    .line 841
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
    .line 842
    .local v3, "notCurrentUserTask":Z
    :goto_1
    iget-object v0, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@39
    .line 844
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@3c
    move-result v8

    #@3d
    add-int/lit8 v1, v8, -0x1

    #@3f
    .local v1, "activityNdx":I
    :goto_2
    if-ltz v1, :cond_5

    #@41
    .line 845
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@44
    move-result-object v4

    #@45
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    #@47
    .line 846
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
    .line 844
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@53
    goto :goto_2

    #@54
    .line 841
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
    .line 849
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    iget-boolean v8, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@58
    if-nez v8, :cond_1

    #@5a
    iget v8, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    #@5c
    if-ne v8, v7, :cond_1

    #@5e
    .line 850
    if-eqz p3, :cond_4

    #@60
    .line 851
    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@62
    invoke-virtual {v8, p1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    #@65
    move-result v8

    #@66
    if-eqz v8, :cond_1

    #@68
    .line 852
    return-object v4

    #@69
    .line 855
    :cond_4
    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@6b
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@6e
    move-result-object v8

    #@6f
    invoke-virtual {v8, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v8

    #@73
    if-eqz v8, :cond_1

    #@75
    .line 856
    return-object v4

    #@76
    .line 838
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_5
    add-int/lit8 v6, v6, -0x1

    #@78
    goto :goto_0

    #@79
    .line 863
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v3    # "notCurrentUserTask":Z
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    :cond_6
    return-object v10
.end method

.method findNextTranslucentActivity(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 14
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 1469
    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@2
    .line 1470
    .local v10, "task":Lcom/android/server/am/TaskRecord;
    if-nez v10, :cond_0

    #@4
    .line 1471
    const/4 v13, 0x0

    #@5
    return-object v13

    #@6
    .line 1474
    :cond_0
    iget-object v8, v10, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@8
    .line 1475
    .local v8, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v8, :cond_1

    #@a
    .line 1476
    const/4 v13, 0x0

    #@b
    return-object v13

    #@c
    .line 1479
    :cond_1
    iget-object v13, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@11
    move-result v9

    #@12
    .line 1481
    .local v9, "stackNdx":I
    iget-object v12, v8, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@14
    .line 1482
    .local v12, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@17
    move-result v11

    #@18
    .line 1484
    .local v11, "taskNdx":I
    iget-object v0, v10, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@1a
    .line 1485
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@1d
    move-result v13

    #@1e
    add-int/lit8 v2, v13, 0x1

    #@20
    .line 1487
    .local v2, "activityNdx":I
    iget-object v13, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    #@25
    move-result v6

    #@26
    .line 1488
    .local v6, "numStacks":I
    :goto_0
    if-ge v9, v6, :cond_6

    #@28
    .line 1489
    iget-object v13, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object v4

    #@2e
    check-cast v4, Lcom/android/server/am/ActivityStack;

    #@30
    .line 1490
    .local v4, "historyStack":Lcom/android/server/am/ActivityStack;
    iget-object v12, v4, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@32
    .line 1491
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@35
    move-result v7

    #@36
    .line 1492
    .local v7, "numTasks":I
    :goto_1
    if-ge v11, v7, :cond_5

    #@38
    .line 1493
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v3

    #@3c
    check-cast v3, Lcom/android/server/am/TaskRecord;

    #@3e
    .line 1494
    .local v3, "currentTask":Lcom/android/server/am/TaskRecord;
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@40
    .line 1495
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@43
    move-result v5

    #@44
    .line 1496
    .local v5, "numActivities":I
    :goto_2
    if-ge v2, v5, :cond_4

    #@46
    .line 1497
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@49
    move-result-object v1

    #@4a
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@4c
    .line 1498
    .local v1, "activity":Lcom/android/server/am/ActivityRecord;
    iget-boolean v13, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@4e
    if-nez v13, :cond_3

    #@50
    .line 1499
    iget-boolean v13, v4, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    #@52
    if-eqz v13, :cond_2

    #@54
    .line 1500
    iget-boolean v13, v3, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    #@56
    .line 1499
    if-eqz v13, :cond_2

    #@58
    .line 1500
    iget-boolean v13, v1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@5a
    .line 1499
    if-eqz v13, :cond_2

    #@5c
    .line 1500
    const/4 v1, 0x0

    #@5d
    .line 1499
    .end local v1    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_2
    return-object v1

    #@5e
    .line 1502
    .restart local v1    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@60
    goto :goto_2

    #@61
    .line 1504
    .end local v1    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_4
    const/4 v2, 0x0

    #@62
    .line 1505
    add-int/lit8 v11, v11, 0x1

    #@64
    goto :goto_1

    #@65
    .line 1507
    .end local v3    # "currentTask":Lcom/android/server/am/TaskRecord;
    .end local v5    # "numActivities":I
    :cond_5
    const/4 v11, 0x0

    #@66
    .line 1508
    add-int/lit8 v9, v9, 0x1

    #@68
    goto :goto_0

    #@69
    .line 1511
    .end local v4    # "historyStack":Lcom/android/server/am/ActivityStack;
    .end local v7    # "numTasks":I
    :cond_6
    const/4 v13, 0x0

    #@6a
    return-object v13
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;)V
    .locals 16
    .param p1, "target"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "result"    # Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;

    #@0
    .prologue
    .line 736
    move-object/from16 v0, p1

    #@2
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@4
    .line 737
    .local v5, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    #@6
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@8
    .line 738
    .local v4, "info":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@b
    move-result-object v2

    #@c
    .line 739
    .local v2, "cls":Landroid/content/ComponentName;
    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@e
    if-eqz v14, :cond_0

    #@10
    .line 740
    new-instance v2, Landroid/content/ComponentName;

    #@12
    .end local v2    # "cls":Landroid/content/ComponentName;
    iget-object v14, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@14
    iget-object v15, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    #@16
    invoke-direct {v2, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@19
    .line 742
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
    .line 743
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
    .line 745
    .local v6, "isDocument":Z
    if-eqz v6, :cond_3

    #@2c
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@2f
    move-result-object v3

    #@30
    .line 748
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
    if-ltz v12, :cond_5

    #@3c
    .line 749
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
    .line 750
    .local v8, "task":Lcom/android/server/am/TaskRecord;
    iget-object v14, v8, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@48
    if-eqz v14, :cond_4

    #@4a
    .line 748
    :cond_1
    :goto_3
    add-int/lit8 v12, v12, -0x1

    #@4c
    goto :goto_2

    #@4d
    .line 743
    .end local v6    # "isDocument":Z
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    .end local v12    # "taskNdx":I
    :cond_2
    const/4 v14, 0x0

    #@4e
    goto :goto_0

    #@4f
    .line 745
    .restart local v6    # "isDocument":Z
    :cond_3
    const/4 v3, 0x0

    #@50
    .local v3, "documentData":Landroid/net/Uri;
    goto :goto_1

    #@51
    .line 755
    .end local v3    # "documentData":Landroid/net/Uri;
    .restart local v8    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v12    # "taskNdx":I
    :cond_4
    iget v14, v8, Lcom/android/server/am/TaskRecord;->userId:I

    #@53
    if-ne v14, v13, :cond_1

    #@55
    .line 760
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    #@58
    move-result-object v7

    #@59
    .line 761
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
    .line 762
    iget v14, v7, Lcom/android/server/am/ActivityRecord;->launchMode:I

    #@65
    const/4 v15, 0x3

    #@66
    if-eq v14, v15, :cond_1

    #@68
    .line 766
    iget v14, v7, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    #@6a
    move-object/from16 v0, p1

    #@6c
    iget v15, v0, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    #@6e
    if-ne v14, v15, :cond_1

    #@70
    .line 771
    iget-object v10, v8, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@72
    .line 772
    .local v10, "taskIntent":Landroid/content/Intent;
    iget-object v1, v8, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    #@74
    .line 775
    .local v1, "affinityIntent":Landroid/content/Intent;
    if-eqz v10, :cond_6

    #@76
    invoke-virtual {v10}, Landroid/content/Intent;->isDocument()Z

    #@79
    move-result v14

    #@7a
    if-eqz v14, :cond_6

    #@7c
    .line 776
    const/4 v11, 0x1

    #@7d
    .line 777
    .local v11, "taskIsDocument":Z
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@80
    move-result-object v9

    #@81
    .line 791
    :goto_4
    if-eqz v10, :cond_8

    #@83
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@86
    move-result-object v14

    #@87
    if-eqz v14, :cond_8

    #@89
    .line 792
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@8c
    move-result-object v14

    #@8d
    invoke-virtual {v14, v2}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    #@90
    move-result v14

    #@91
    if-nez v14, :cond_8

    #@93
    .line 793
    invoke-static {v3, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@96
    move-result v14

    #@97
    .line 791
    if-eqz v14, :cond_8

    #@99
    .line 798
    move-object/from16 v0, p2

    #@9b
    iput-object v7, v0, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    #@9d
    .line 799
    const/4 v14, 0x0

    #@9e
    move-object/from16 v0, p2

    #@a0
    iput-boolean v14, v0, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->matchedByRootAffinity:Z

    #@a2
    .line 735
    .end local v1    # "affinityIntent":Landroid/content/Intent;
    .end local v7    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    .end local v10    # "taskIntent":Landroid/content/Intent;
    .end local v11    # "taskIsDocument":Z
    :cond_5
    :goto_5
    return-void

    #@a3
    .line 778
    .restart local v1    # "affinityIntent":Landroid/content/Intent;
    .restart local v7    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v8    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v10    # "taskIntent":Landroid/content/Intent;
    :cond_6
    if-eqz v1, :cond_7

    #@a5
    invoke-virtual {v1}, Landroid/content/Intent;->isDocument()Z

    #@a8
    move-result v14

    #@a9
    if-eqz v14, :cond_7

    #@ab
    .line 779
    const/4 v11, 0x1

    #@ac
    .line 780
    .restart local v11    # "taskIsDocument":Z
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@af
    move-result-object v9

    #@b0
    .local v9, "taskDocumentData":Landroid/net/Uri;
    goto :goto_4

    #@b1
    .line 782
    .end local v9    # "taskDocumentData":Landroid/net/Uri;
    .end local v11    # "taskIsDocument":Z
    :cond_7
    const/4 v11, 0x0

    #@b2
    .line 783
    .restart local v11    # "taskIsDocument":Z
    const/4 v9, 0x0

    #@b3
    .local v9, "taskDocumentData":Landroid/net/Uri;
    goto :goto_4

    #@b4
    .line 801
    .end local v9    # "taskDocumentData":Landroid/net/Uri;
    :cond_8
    if-eqz v1, :cond_9

    #@b6
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@b9
    move-result-object v14

    #@ba
    if-eqz v14, :cond_9

    #@bc
    .line 802
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@bf
    move-result-object v14

    #@c0
    invoke-virtual {v14, v2}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    #@c3
    move-result v14

    #@c4
    if-nez v14, :cond_9

    #@c6
    .line 803
    invoke-static {v3, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@c9
    move-result v14

    #@ca
    .line 801
    if-eqz v14, :cond_9

    #@cc
    .line 808
    move-object/from16 v0, p2

    #@ce
    iput-object v7, v0, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    #@d0
    .line 809
    const/4 v14, 0x0

    #@d1
    move-object/from16 v0, p2

    #@d3
    iput-boolean v14, v0, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->matchedByRootAffinity:Z

    #@d5
    goto :goto_5

    #@d6
    .line 811
    :cond_9
    if-nez v6, :cond_1

    #@d8
    if-nez v11, :cond_1

    #@da
    .line 812
    move-object/from16 v0, p2

    #@dc
    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    #@de
    if-nez v14, :cond_1

    #@e0
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->canMatchRootAffinity()Z

    #@e3
    move-result v14

    #@e4
    .line 811
    if-eqz v14, :cond_1

    #@e6
    .line 813
    iget-object v14, v8, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    #@e8
    move-object/from16 v0, p1

    #@ea
    iget-object v15, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    #@ec
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ef
    move-result v14

    #@f0
    if-eqz v14, :cond_1

    #@f2
    .line 818
    move-object/from16 v0, p2

    #@f4
    iput-object v7, v0, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->r:Lcom/android/server/am/ActivityRecord;

    #@f6
    .line 819
    const/4 v14, 0x1

    #@f7
    move-object/from16 v0, p2

    #@f9
    iput-boolean v14, v0, Lcom/android/server/am/ActivityStackSupervisor$FindTaskResult;->matchedByRootAffinity:Z

    #@fb
    goto/16 :goto_3
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
    .line 3430
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@4
    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@6
    .line 3431
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@9
    move-result v7

    #@a
    .local v7, "index":I
    :goto_0
    if-ltz v7, :cond_0

    #@c
    .line 3432
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@12
    .line 3433
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
    .line 3438
    .end local v1    # "cur":Lcom/android/server/am/ActivityRecord;
    :cond_0
    return v5

    #@1d
    .line 3436
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
    .line 3431
    add-int/lit8 v7, v7, -0x1

    #@27
    goto :goto_0
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/content/Intent;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "oomAdj"    # Z

    #@0
    .prologue
    .line 3479
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@2
    if-eqz v6, :cond_0

    #@4
    .line 3480
    sget-object v6, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@6
    new-instance v7, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v8, "Duplicate finish request for "

    #@e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v7

    #@12
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v7

    #@16
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v7

    #@1a
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 3481
    const/4 v6, 0x0

    #@1e
    return v6

    #@1f
    .line 3484
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    #@22
    .line 3485
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@24
    .line 3486
    .local v4, "task":Lcom/android/server/am/TaskRecord;
    const/4 v6, 0x5

    #@25
    new-array v6, v6, [Ljava/lang/Object;

    #@27
    .line 3487
    iget v7, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    #@29
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v7

    #@2d
    const/4 v8, 0x0

    #@2e
    aput-object v7, v6, v8

    #@30
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@33
    move-result v7

    #@34
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@37
    move-result-object v7

    #@38
    const/4 v8, 0x1

    #@39
    aput-object v7, v6, v8

    #@3b
    .line 3488
    iget v7, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    #@3d
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@40
    move-result-object v7

    #@41
    const/4 v8, 0x2

    #@42
    aput-object v7, v6, v8

    #@44
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@46
    const/4 v8, 0x3

    #@47
    aput-object v7, v6, v8

    #@49
    const/4 v7, 0x4

    #@4a
    aput-object p4, v6, v7

    #@4c
    .line 3486
    const/16 v7, 0x7531

    #@4e
    invoke-static {v7, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@51
    .line 3489
    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@53
    .line 3490
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@56
    move-result v2

    #@57
    .line 3491
    .local v2, "index":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5a
    move-result v6

    #@5b
    add-int/lit8 v6, v6, -0x1

    #@5d
    if-ge v2, v6, :cond_1

    #@5f
    .line 3492
    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    #@62
    .line 3493
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@64
    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    #@67
    move-result v6

    #@68
    const/high16 v7, 0x80000

    #@6a
    and-int/2addr v6, v7

    #@6b
    if-eqz v6, :cond_1

    #@6d
    .line 3497
    add-int/lit8 v6, v2, 0x1

    #@6f
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@72
    move-result-object v3

    #@73
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    #@75
    .line 3498
    .local v3, "next":Lcom/android/server/am/ActivityRecord;
    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@77
    const/high16 v7, 0x80000

    #@79
    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@7c
    .line 3502
    .end local v3    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    #@7f
    .line 3504
    const-string/jumbo v6, "finishActivity"

    #@82
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/ActivityStack;->adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    #@85
    .line 3506
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ActivityStack;->finishActivityResultsLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;)V

    #@88
    .line 3508
    if-gtz v2, :cond_4

    #@8a
    const/4 v1, 0x1

    #@8b
    .line 3509
    .local v1, "endTask":Z
    :goto_0
    if-eqz v1, :cond_5

    #@8d
    const/16 v5, 0x9

    #@8f
    .line 3510
    .local v5, "transit":I
    :goto_1
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@91
    if-ne v6, p1, :cond_6

    #@93
    .line 3514
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@95
    const/4 v7, 0x0

    #@96
    invoke-virtual {v6, v5, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    #@99
    .line 3517
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@9b
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@9d
    const/4 v8, 0x0

    #@9e
    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    #@a1
    .line 3519
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@a3
    if-nez v6, :cond_2

    #@a5
    .line 3523
    const/4 v6, 0x0

    #@a6
    const/4 v7, 0x0

    #@a7
    const/4 v8, 0x0

    #@a8
    const/4 v9, 0x0

    #@a9
    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z

    #@ac
    .line 3526
    :cond_2
    if-eqz v1, :cond_3

    #@ae
    .line 3527
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@b0
    invoke-virtual {v6, v4}, Lcom/android/server/am/ActivityStackSupervisor;->removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V

    #@b3
    .line 3547
    :cond_3
    const/4 v6, 0x0

    #@b4
    return v6

    #@b5
    .line 3508
    .end local v1    # "endTask":Z
    .end local v5    # "transit":I
    :cond_4
    const/4 v1, 0x0

    #@b6
    goto :goto_0

    #@b7
    .line 3509
    .restart local v1    # "endTask":Z
    :cond_5
    const/4 v5, 0x7

    #@b8
    .restart local v5    # "transit":I
    goto :goto_1

    #@b9
    .line 3529
    :cond_6
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@bb
    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@bd
    if-eq v6, v7, :cond_3

    #@bf
    .line 3533
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@c1
    if-eqz v6, :cond_7

    #@c3
    .line 3534
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@c5
    const/4 v7, 0x0

    #@c6
    invoke-virtual {v6, v5, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    #@c9
    .line 3535
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@cb
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@cd
    const/4 v8, 0x0

    #@ce
    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    #@d1
    .line 3536
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@d3
    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    #@d6
    .line 3537
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@d8
    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@da
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@dd
    move-result v6

    #@de
    if-nez v6, :cond_7

    #@e0
    .line 3538
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@e2
    iget-object v6, v6, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@e4
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e7
    .line 3541
    :cond_7
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@e9
    if-nez v6, :cond_8

    #@eb
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    #@ed
    if-eqz v6, :cond_9

    #@ef
    .line 3542
    :cond_8
    const/4 v6, 0x2

    #@f0
    .line 3541
    :goto_2
    invoke-virtual {p0, p1, v6, p5}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    #@f3
    move-result-object v6

    #@f4
    if-nez v6, :cond_a

    #@f6
    const/4 v6, 0x1

    #@f7
    :goto_3
    return v6

    #@f8
    .line 3542
    :cond_9
    const/4 v6, 0x1

    #@f9
    goto :goto_2

    #@fa
    .line 3541
    :cond_a
    const/4 v6, 0x0

    #@fb
    goto :goto_3
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
    .line 3443
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@3
    .line 3444
    .local v6, "resultTo":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_2

    #@5
    .line 3448
    iget v0, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    #@7
    iget v1, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    #@9
    if-eq v0, v1, :cond_0

    #@b
    .line 3449
    if-eqz p3, :cond_0

    #@d
    .line 3450
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    #@f
    invoke-virtual {p3, v0}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    #@12
    .line 3453
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@14
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@16
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    #@18
    if-lez v0, :cond_1

    #@1a
    .line 3454
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1c
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@1e
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@20
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@22
    .line 3455
    iget-object v2, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@24
    .line 3456
    invoke-virtual {v6}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    #@27
    move-result-object v4

    #@28
    iget v5, v6, Lcom/android/server/am/ActivityRecord;->userId:I

    #@2a
    move-object v3, p3

    #@2b
    .line 3454
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    #@2e
    .line 3458
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
    .line 3460
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@3b
    .line 3467
    :cond_2
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    #@3d
    .line 3468
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    #@3f
    .line 3469
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    #@41
    .line 3470
    iput-object v7, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    #@43
    .line 3441
    return-void
.end method

.method finishAllActivitiesLocked(Z)V
    .locals 9
    .param p1, "immediately"    # Z

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 3622
    const/4 v2, 0x1

    #@2
    .line 3623
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
    .line 3624
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
    .line 3625
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
    .line 3626
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    #@24
    .line 3627
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v2, 0x0

    #@25
    .line 3628
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@27
    if-eqz v5, :cond_0

    #@29
    if-eqz p1, :cond_1

    #@2b
    .line 3631
    :cond_0
    sget-object v5, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@2d
    new-instance v6, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v7, "finishAllActivitiesLocked: finishing "

    #@35
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v6

    #@39
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v6

    #@3d
    const-string/jumbo v7, " immediately"

    #@40
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v6

    #@44
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v6

    #@48
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 3632
    invoke-virtual {p0, v3, v8, v8}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    #@4e
    .line 3625
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@50
    goto :goto_1

    #@51
    .line 3623
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    #@53
    goto :goto_0

    #@54
    .line 3635
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_3
    if-eqz v2, :cond_4

    #@56
    .line 3636
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@58
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->onTaskListEmptyLocked()V

    #@5b
    .line 3621
    :cond_4
    return-void
.end method

.method final finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "mode"    # I
    .param p3, "oomAdj"    # Z

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    const/4 v8, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v7, 0x0

    #@4
    .line 3559
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@6
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@9
    move-result-object v2

    #@a
    .line 3561
    .local v2, "next":Lcom/android/server/am/ActivityRecord;
    if-ne p2, v9, :cond_1

    #@c
    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@e
    if-nez v5, :cond_0

    #@10
    iget-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    #@12
    if-eqz v5, :cond_1

    #@14
    .line 3562
    :cond_0
    if-eqz v2, :cond_1

    #@16
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    #@18
    if-eqz v5, :cond_7

    #@1a
    .line 3576
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1c
    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@21
    .line 3577
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@23
    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@28
    .line 3578
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@2a
    iget-object v5, v5, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@2f
    .line 3579
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@31
    if-ne v5, p1, :cond_2

    #@33
    .line 3580
    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@35
    .line 3582
    :cond_2
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@37
    .line 3584
    .local v3, "prevState":Lcom/android/server/am/ActivityStack$ActivityState;
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@39
    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@3b
    .line 3586
    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@3d
    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@3f
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@41
    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    #@44
    move-result-object v6

    #@45
    if-eq v5, v6, :cond_b

    #@47
    .line 3587
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@49
    if-ne v3, v5, :cond_b

    #@4b
    if-ne p2, v9, :cond_a

    #@4d
    const/4 v1, 0x1

    #@4e
    .line 3589
    .local v1, "finishingActivityInNonFocusedStack":Z
    :goto_0
    if-eqz p2, :cond_3

    #@50
    .line 3590
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@52
    if-ne v3, v5, :cond_c

    #@54
    .line 3591
    if-eq p2, v8, :cond_3

    #@56
    iget v5, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@58
    const/4 v6, 0x4

    #@59
    if-ne v5, v6, :cond_c

    #@5b
    .line 3595
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->makeFinishingLocked()V

    #@5e
    .line 3596
    const-string/jumbo v5, "finish-imm"

    #@61
    invoke-virtual {p0, p1, v8, v5}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    #@64
    move-result v0

    #@65
    .line 3598
    .local v0, "activityRemoved":Z
    if-eqz v1, :cond_4

    #@67
    .line 3601
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@69
    invoke-virtual {v5, v4, v7, v7}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    #@6c
    .line 3603
    :cond_4
    if-eqz v0, :cond_5

    #@6e
    .line 3604
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@70
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    #@73
    .line 3609
    :cond_5
    if-eqz v0, :cond_6

    #@75
    move-object p1, v4

    #@76
    .end local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_6
    return-object p1

    #@77
    .line 3563
    .end local v0    # "activityRemoved":Z
    .end local v1    # "finishingActivityInNonFocusedStack":Z
    .end local v3    # "prevState":Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local p1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_7
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@79
    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    #@7b
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@7e
    move-result v4

    #@7f
    if-nez v4, :cond_8

    #@81
    .line 3564
    invoke-direct {p0, p1, v7}, Lcom/android/server/am/ActivityStack;->addToStopping(Lcom/android/server/am/ActivityRecord;Z)V

    #@84
    .line 3568
    :cond_8
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@86
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@88
    .line 3569
    if-eqz p3, :cond_9

    #@8a
    .line 3570
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@8c
    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    #@8f
    .line 3572
    :cond_9
    return-object p1

    #@90
    .line 3587
    .restart local v3    # "prevState":Lcom/android/server/am/ActivityStack$ActivityState;
    :cond_a
    const/4 v1, 0x0

    #@91
    .restart local v1    # "finishingActivityInNonFocusedStack":Z
    goto :goto_0

    #@92
    .line 3586
    .end local v1    # "finishingActivityInNonFocusedStack":Z
    :cond_b
    const/4 v1, 0x0

    #@93
    .restart local v1    # "finishingActivityInNonFocusedStack":Z
    goto :goto_0

    #@94
    .line 3589
    :cond_c
    if-nez v1, :cond_3

    #@96
    .line 3593
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@98
    if-eq v3, v5, :cond_3

    #@9a
    .line 3594
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@9c
    if-eq v3, v5, :cond_3

    #@9e
    .line 3615
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@a0
    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    #@a2
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a5
    .line 3616
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    #@a8
    .line 3617
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@aa
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    #@ad
    .line 3618
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
    .line 4838
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v9, 0x0

    #@1
    .line 4839
    .local v9, "didSomething":Z
    const/4 v11, 0x0

    #@2
    .line 4840
    .local v11, "lastTask":Lcom/android/server/am/TaskRecord;
    const/4 v10, 0x0

    #@3
    .line 4841
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
    .line 4842
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
    .line 4843
    .local v7, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@1a
    move-result v12

    #@1b
    .line 4844
    .local v12, "numActivities":I
    const/4 v8, 0x0

    #@1c
    .local v8, "activityNdx":I
    :goto_1
    if-ge v8, v12, :cond_c

    #@1e
    .line 4845
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Lcom/android/server/am/ActivityRecord;

    #@24
    .line 4847
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
    .line 4848
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
    .line 4847
    if-nez v1, :cond_4

    #@3e
    .line 4849
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
    .line 4850
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
    .line 4851
    :cond_1
    if-nez v13, :cond_2

    #@54
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@56
    if-ne v1, v11, :cond_3

    #@58
    .line 4852
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
    .line 4844
    :cond_3
    :goto_3
    add-int/lit8 v8, v8, 0x1

    #@66
    goto :goto_1

    #@67
    .line 4847
    .end local v13    # "sameComponent":Z
    :cond_4
    const/4 v13, 0x1

    #@68
    .restart local v13    # "sameComponent":Z
    goto :goto_2

    #@69
    .line 4849
    .end local v13    # "sameComponent":Z
    :cond_5
    const/4 v13, 0x0

    #@6a
    .restart local v13    # "sameComponent":Z
    goto :goto_2

    #@6b
    .line 4853
    :cond_6
    if-nez p3, :cond_7

    #@6d
    .line 4854
    iget-boolean v1, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@6f
    if-nez v1, :cond_3

    #@71
    .line 4859
    const/4 v1, 0x1

    #@72
    return v1

    #@73
    .line 4861
    :cond_7
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    #@76
    move-result v1

    #@77
    if-eqz v1, :cond_9

    #@79
    .line 4862
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
    .line 4863
    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@85
    new-instance v3, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    const-string/jumbo v4, "Skip force-stop again "

    #@8d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v3

    #@91
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v3

    #@95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v3

    #@99
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@9c
    goto :goto_3

    #@9d
    .line 4866
    :cond_8
    iget-object v10, v2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    #@9f
    .line 4869
    :cond_9
    const/4 v9, 0x1

    #@a0
    .line 4870
    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@a2
    new-instance v3, Ljava/lang/StringBuilder;

    #@a4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a7
    const-string/jumbo v4, "  Force finishing activity "

    #@aa
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v3

    #@ae
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v3

    #@b2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v3

    #@b6
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@b9
    .line 4871
    if-eqz v13, :cond_b

    #@bb
    .line 4872
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@bd
    if-eqz v1, :cond_a

    #@bf
    .line 4873
    iget-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@c1
    const/4 v3, 0x1

    #@c2
    iput-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->removed:Z

    #@c4
    .line 4875
    :cond_a
    const/4 v1, 0x0

    #@c5
    iput-object v1, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@c7
    .line 4877
    :cond_b
    iget-object v11, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@c9
    .line 4878
    .local v11, "lastTask":Lcom/android/server/am/TaskRecord;
    const-string/jumbo v5, "force-stop"

    #@cc
    const/4 v3, 0x0

    #@cd
    const/4 v4, 0x0

    #@ce
    .line 4879
    const/4 v6, 0x1

    #@cf
    move-object v1, p0

    #@d0
    .line 4878
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@d3
    move-result v1

    #@d4
    if-eqz v1, :cond_3

    #@d6
    .line 4881
    add-int/lit8 v12, v12, -0x1

    #@d8
    .line 4882
    add-int/lit8 v8, v8, -0x1

    #@da
    goto :goto_3

    #@db
    .line 4841
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "lastTask":Lcom/android/server/am/TaskRecord;
    .end local v13    # "sameComponent":Z
    :cond_c
    add-int/lit8 v14, v14, -0x1

    #@dd
    goto/16 :goto_0

    #@df
    .line 4887
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
    .line 3333
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
    .line 3334
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
    .line 3335
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
    .line 3336
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v1

    #@22
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@24
    .line 3337
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@26
    if-ne v0, p1, :cond_0

    #@28
    iget v0, v1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    #@2a
    if-ne v0, p3, :cond_0

    #@2c
    .line 3338
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    #@2e
    if-nez v0, :cond_1

    #@30
    if-nez p2, :cond_1

    #@32
    .line 3340
    :goto_2
    const-string/jumbo v4, "request-sub"

    #@35
    move-object v0, p0

    #@36
    move v5, v2

    #@37
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@3a
    .line 3335
    :cond_0
    add-int/lit8 v7, v7, -0x1

    #@3c
    goto :goto_1

    #@3d
    .line 3339
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
    .line 3338
    if-eqz v0, :cond_0

    #@49
    goto :goto_2

    #@4a
    .line 3333
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v8, v8, -0x1

    #@4c
    goto :goto_0

    #@4d
    .line 3346
    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v7    # "activityNdx":I
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4f
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    #@52
    .line 3332
    return-void
.end method

.method final finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/TaskRecord;
    .locals 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 3350
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@5
    move-result-object v1

    #@6
    .line 3351
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v7, 0x0

    #@7
    .line 3352
    .local v7, "finishedTask":Lcom/android/server/am/TaskRecord;
    if-eqz v1, :cond_0

    #@9
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@b
    if-eq v0, p1, :cond_1

    #@d
    .line 3353
    :cond_0
    return-object v3

    #@e
    .line 3355
    :cond_1
    sget-object v0, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@10
    new-instance v4, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v5, "  Force finishing activity "

    #@18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    .line 3356
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@1e
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@25
    move-result-object v5

    #@26
    .line 3355
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 3357
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@33
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@35
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@38
    move-result v8

    #@39
    .line 3358
    .local v8, "taskNdx":I
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@3b
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@3d
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@40
    move-result v6

    #@41
    .local v6, "activityNdx":I
    move-object v0, p0

    #@42
    move-object v4, p2

    #@43
    move v5, v2

    #@44
    .line 3359
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@47
    .line 3360
    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@49
    .line 3364
    .local v7, "finishedTask":Lcom/android/server/am/TaskRecord;
    add-int/lit8 v6, v6, -0x1

    #@4b
    .line 3365
    if-gez v6, :cond_2

    #@4d
    .line 3367
    :goto_0
    add-int/lit8 v8, v8, -0x1

    #@4f
    .line 3368
    if-gez v8, :cond_6

    #@51
    .line 3374
    :cond_2
    if-ltz v6, :cond_5

    #@53
    .line 3375
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@55
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@58
    move-result-object v0

    #@59
    check-cast v0, Lcom/android/server/am/TaskRecord;

    #@5b
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@5d
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@60
    move-result-object v1

    #@61
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@63
    .line 3376
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@65
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@67
    if-eq v0, v4, :cond_3

    #@69
    .line 3377
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@6b
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@6d
    if-ne v0, v4, :cond_7

    #@6f
    .line 3379
    :cond_3
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    #@72
    move-result v0

    #@73
    if-eqz v0, :cond_4

    #@75
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@77
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    #@79
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@7b
    if-eq v0, v4, :cond_5

    #@7d
    .line 3380
    :cond_4
    sget-object v0, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@7f
    new-instance v4, Ljava/lang/StringBuilder;

    #@81
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@84
    const-string/jumbo v5, "  Force finishing activity "

    #@87
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v4

    #@8b
    .line 3381
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@8d
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@90
    move-result-object v5

    #@91
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@94
    move-result-object v5

    #@95
    .line 3380
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v4

    #@99
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9c
    move-result-object v4

    #@9d
    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@a0
    move-object v0, p0

    #@a1
    move-object v4, p2

    #@a2
    move v5, v2

    #@a3
    .line 3382
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@a6
    .line 3386
    :cond_5
    return-object v7

    #@a7
    .line 3371
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@a9
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@ac
    move-result-object v0

    #@ad
    check-cast v0, Lcom/android/server/am/TaskRecord;

    #@af
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@b1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@b4
    move-result v0

    #@b5
    add-int/lit8 v6, v0, -0x1

    #@b7
    .line 3372
    if-gez v6, :cond_2

    #@b9
    goto :goto_0

    #@ba
    .line 3378
    :cond_7
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@bc
    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@be
    if-ne v0, v4, :cond_5

    #@c0
    goto :goto_1
.end method

.method final finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .locals 12
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 3390
    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    #@5
    move-result-object v9

    #@6
    .line 3391
    .local v9, "sessionBinder":Landroid/os/IBinder;
    const/4 v7, 0x0

    #@7
    .line 3392
    .local v7, "didOne":Z
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v0

    #@d
    add-int/lit8 v10, v0, -0x1

    #@f
    .local v10, "taskNdx":I
    :goto_0
    if-ltz v10, :cond_4

    #@11
    .line 3393
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@16
    move-result-object v11

    #@17
    check-cast v11, Lcom/android/server/am/TaskRecord;

    #@19
    .line 3394
    .local v11, "tr":Lcom/android/server/am/TaskRecord;
    iget-object v0, v11, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@1b
    if-eqz v0, :cond_1

    #@1d
    iget-object v0, v11, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@1f
    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    #@22
    move-result-object v0

    #@23
    if-ne v0, v9, :cond_1

    #@25
    .line 3395
    iget-object v0, v11, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@2a
    move-result v0

    #@2b
    add-int/lit8 v6, v0, -0x1

    #@2d
    .local v6, "activityNdx":I
    :goto_1
    if-ltz v6, :cond_2

    #@2f
    .line 3396
    iget-object v0, v11, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@31
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v1

    #@35
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@37
    .line 3397
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@39
    if-nez v0, :cond_0

    #@3b
    .line 3398
    const-string/jumbo v4, "finish-voice"

    #@3e
    move-object v0, p0

    #@3f
    move v5, v2

    #@40
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@43
    .line 3400
    const/4 v7, 0x1

    #@44
    .line 3395
    :cond_0
    add-int/lit8 v6, v6, -0x1

    #@46
    goto :goto_1

    #@47
    .line 3405
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "activityNdx":I
    :cond_1
    iget-object v0, v11, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@49
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@4c
    move-result v0

    #@4d
    add-int/lit8 v6, v0, -0x1

    #@4f
    .restart local v6    # "activityNdx":I
    :goto_2
    if-ltz v6, :cond_2

    #@51
    .line 3406
    iget-object v0, v11, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@53
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@56
    move-result-object v1

    #@57
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@59
    .line 3407
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@5b
    if-eqz v0, :cond_3

    #@5d
    .line 3408
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@5f
    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    #@62
    move-result-object v0

    #@63
    if-ne v0, v9, :cond_3

    #@65
    .line 3410
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->clearVoiceSessionLocked()V

    #@68
    .line 3412
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@6a
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@6c
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@6e
    .line 3413
    const/4 v5, 0x0

    #@6f
    .line 3412
    invoke-interface {v0, v4, v5}, Landroid/app/IApplicationThread;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@72
    .line 3417
    :goto_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@74
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->finishRunningVoiceLocked()V

    #@77
    .line 3392
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v10, v10, -0x1

    #@79
    goto :goto_0

    #@7a
    .line 3405
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    add-int/lit8 v6, v6, -0x1

    #@7c
    goto :goto_2

    #@7d
    .line 3424
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v6    # "activityNdx":I
    .end local v11    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_4
    if-eqz v7, :cond_5

    #@7f
    .line 3425
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@81
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    #@84
    .line 3389
    :cond_5
    return-void

    #@85
    .line 3414
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v6    # "activityNdx":I
    .restart local v11    # "tr":Lcom/android/server/am/TaskRecord;
    :catch_0
    move-exception v8

    #@86
    .local v8, "re":Landroid/os/RemoteException;
    goto :goto_3
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
    .line 5182
    new-instance v0, Ljava/util/ArrayList;

    #@2
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@7
    return-object v0
.end method

.method public getDisplaySize(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "out"    # Landroid/graphics/Point;

    #@0
    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@2
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@4
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    #@6
    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    #@9
    .line 487
    return-void
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
    .line 5025
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 5027
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const-string/jumbo v8, "all"

    #@8
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v8

    #@c
    if-eqz v8, :cond_0

    #@e
    .line 5028
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
    .line 5029
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
    .line 5028
    add-int/lit8 v6, v6, -0x1

    #@27
    goto :goto_0

    #@28
    .line 5031
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
    .line 5032
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@33
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@36
    move-result v8

    #@37
    add-int/lit8 v7, v8, -0x1

    #@39
    .line 5033
    .local v7, "top":I
    if-ltz v7, :cond_1

    #@3b
    .line 5034
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
    .line 5035
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@48
    move-result v8

    #@49
    add-int/lit8 v2, v8, -0x1

    #@4b
    .line 5036
    .local v2, "listTop":I
    if-ltz v2, :cond_1

    #@4d
    .line 5037
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@50
    move-result-object v8

    #@51
    check-cast v8, Lcom/android/server/am/ActivityRecord;

    #@53
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@56
    .line 5053
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "listTop":I
    .end local v7    # "top":I
    :cond_1
    return-object v0

    #@57
    .line 5041
    :cond_2
    new-instance v3, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    #@59
    invoke-direct {v3}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    #@5c
    .line 5042
    .local v3, "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    #@5f
    .line 5044
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
    .line 5045
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
    .line 5046
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
    .line 5047
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@92
    goto :goto_2

    #@93
    .line 5044
    .end local v4    # "r1":Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v6, v6, -0x1

    #@95
    goto :goto_1
.end method

.method getNextFocusableStackLocked()Lcom/android/server/am/ActivityStack;
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1515
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@3
    .line 1516
    .local v3, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityStack;>;"
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@5
    iget-object v1, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    #@7
    .line 1517
    .local v1, "parent":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    #@9
    .line 1518
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@b
    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@d
    iget-object v3, v4, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@f
    .line 1520
    :cond_0
    if-eqz v3, :cond_2

    #@11
    .line 1521
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
    .line 1522
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    check-cast v2, Lcom/android/server/am/ActivityStack;

    #@1f
    .line 1523
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-eq v2, p0, :cond_1

    #@21
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isFocusable()Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_1

    #@27
    .line 1524
    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    #@2a
    move-result v4

    #@2b
    if-eqz v4, :cond_1

    #@2d
    .line 1525
    return-object v2

    #@2e
    .line 1521
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@30
    goto :goto_0

    #@31
    .line 1529
    .end local v0    # "i":I
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    return-object v5
.end method

.method public getStackId()I
    .locals 1

    #@0
    .prologue
    .line 5301
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@2
    return v0
.end method

.method getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I
    .locals 14
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v13, 0x4

    #@1
    const/4 v12, 0x3

    #@2
    const/4 v8, 0x0

    #@3
    const/4 v11, 0x1

    #@4
    const/4 v10, 0x0

    #@5
    .line 1592
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    #@8
    move-result v9

    #@9
    if-nez v9, :cond_0

    #@b
    .line 1593
    return v10

    #@c
    .line 1596
    :cond_0
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@e
    invoke-virtual {v9, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    #@11
    move-result v9

    #@12
    if-nez v9, :cond_1

    #@14
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@16
    invoke-virtual {v9, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    #@19
    move-result v9

    #@1a
    if-eqz v9, :cond_2

    #@1c
    .line 1597
    :cond_1
    return v11

    #@1d
    .line 1600
    :cond_2
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v9, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@22
    move-result v7

    #@23
    .line 1602
    .local v7, "stackIndex":I
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@28
    move-result v9

    #@29
    add-int/lit8 v9, v9, -0x1

    #@2b
    if-ne v7, v9, :cond_3

    #@2d
    .line 1603
    sget-object v9, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@2f
    .line 1604
    new-instance v11, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v12, "Stack="

    #@37
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v11

    #@3b
    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v11

    #@3f
    const-string/jumbo v12, " isn\'t front stack but is at the top of the stack list"

    #@42
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v11

    #@46
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v11

    #@4a
    .line 1603
    invoke-static {v9, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@4d
    .line 1605
    return v10

    #@4e
    .line 1608
    :cond_3
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@50
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    #@53
    move-result-object v0

    #@54
    .line 1609
    .local v0, "focusedStack":Lcom/android/server/am/ActivityStack;
    iget v1, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@56
    .line 1611
    .local v1, "focusedStackId":I
    iget v9, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@58
    if-ne v9, v11, :cond_4

    #@5a
    .line 1612
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->hasVisibleBehindActivity()Z

    #@5d
    move-result v9

    #@5e
    .line 1611
    if-eqz v9, :cond_4

    #@60
    .line 1612
    if-nez v1, :cond_4

    #@62
    .line 1613
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    #@65
    move-result-object v9

    #@66
    iget-boolean v9, v9, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@68
    if-eqz v9, :cond_7

    #@6a
    .line 1619
    :cond_4
    iget v9, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@6c
    if-ne v9, v12, :cond_9

    #@6e
    .line 1623
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@71
    move-result-object v3

    #@72
    .line 1624
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_5

    #@74
    iget-object v8, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@76
    .line 1625
    .local v8, "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    if-eqz v8, :cond_6

    #@78
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->canGoInDockedStack()Z

    #@7b
    move-result v9

    #@7c
    if-nez v9, :cond_6

    #@7e
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    #@81
    move-result v9

    #@82
    if-eqz v9, :cond_8

    #@84
    :cond_6
    move v9, v11

    #@85
    :goto_0
    return v9

    #@86
    .line 1616
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    :cond_7
    const/4 v9, 0x2

    #@87
    return v9

    #@88
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v8    # "task":Lcom/android/server/am/TaskRecord;
    :cond_8
    move v9, v10

    #@89
    .line 1626
    goto :goto_0

    #@8a
    .line 1630
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    :cond_9
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@8c
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@8f
    move-result v9

    #@90
    add-int/lit8 v6, v9, -0x1

    #@92
    .line 1631
    .local v6, "stackBehindFocusedIndex":I
    :goto_1
    if-ltz v6, :cond_a

    #@94
    .line 1632
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@96
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@99
    move-result-object v9

    #@9a
    check-cast v9, Lcom/android/server/am/ActivityStack;

    #@9c
    invoke-virtual {v9}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@9f
    move-result-object v9

    #@a0
    if-nez v9, :cond_a

    #@a2
    .line 1633
    add-int/lit8 v6, v6, -0x1

    #@a4
    goto :goto_1

    #@a5
    .line 1635
    :cond_a
    if-eq v1, v12, :cond_b

    #@a7
    if-ne v1, v13, :cond_c

    #@a9
    .line 1636
    :cond_b
    if-ne v7, v6, :cond_c

    #@ab
    .line 1638
    return v11

    #@ac
    .line 1641
    :cond_c
    if-ltz v6, :cond_d

    #@ae
    .line 1642
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@b0
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b3
    move-result-object v9

    #@b4
    check-cast v9, Lcom/android/server/am/ActivityStack;

    #@b6
    iget v5, v9, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@b8
    .line 1644
    .local v5, "stackBehindFocusedId":I
    :goto_2
    if-ne v1, v11, :cond_10

    #@ba
    .line 1645
    invoke-direct {v0, p1, v5}, Lcom/android/server/am/ActivityStack;->isStackTranslucent(Lcom/android/server/am/ActivityRecord;I)Z

    #@bd
    move-result v9

    #@be
    .line 1644
    if-eqz v9, :cond_10

    #@c0
    .line 1649
    if-ne v7, v6, :cond_e

    #@c2
    .line 1650
    return v11

    #@c3
    .line 1642
    .end local v5    # "stackBehindFocusedId":I
    :cond_d
    const/4 v5, -0x1

    #@c4
    .restart local v5    # "stackBehindFocusedId":I
    goto :goto_2

    #@c5
    .line 1652
    :cond_e
    if-ltz v6, :cond_10

    #@c7
    .line 1653
    if-eq v5, v12, :cond_f

    #@c9
    .line 1654
    if-ne v5, v13, :cond_10

    #@cb
    .line 1655
    :cond_f
    add-int/lit8 v9, v6, -0x1

    #@cd
    if-ne v7, v9, :cond_10

    #@cf
    .line 1658
    return v11

    #@d0
    .line 1663
    :cond_10
    iget v9, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@d2
    invoke-static {v9}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    #@d5
    move-result v9

    #@d6
    if-eqz v9, :cond_11

    #@d8
    .line 1665
    return v10

    #@d9
    .line 1668
    :cond_11
    add-int/lit8 v2, v7, 0x1

    #@db
    .local v2, "i":I
    :goto_3
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@dd
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@e0
    move-result v9

    #@e1
    if-ge v2, v9, :cond_15

    #@e3
    .line 1669
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@e5
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e8
    move-result-object v4

    #@e9
    check-cast v4, Lcom/android/server/am/ActivityStack;

    #@eb
    .line 1671
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    iget-boolean v9, v4, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    #@ed
    if-nez v9, :cond_12

    #@ef
    invoke-direct {v4}, Lcom/android/server/am/ActivityStack;->hasFullscreenTask()Z

    #@f2
    move-result v9

    #@f3
    if-eqz v9, :cond_14

    #@f5
    .line 1675
    :cond_12
    iget v9, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@f7
    invoke-static {v9}, Landroid/app/ActivityManager$StackId;->isDynamicStacksVisibleBehindAllowed(I)Z

    #@fa
    move-result v9

    #@fb
    if-nez v9, :cond_13

    #@fd
    .line 1677
    return v10

    #@fe
    .line 1680
    :cond_13
    const/4 v9, -0x1

    #@ff
    invoke-direct {v4, p1, v9}, Lcom/android/server/am/ActivityStack;->isStackTranslucent(Lcom/android/server/am/ActivityRecord;I)Z

    #@102
    move-result v9

    #@103
    if-nez v9, :cond_14

    #@105
    .line 1681
    return v10

    #@106
    .line 1668
    :cond_14
    add-int/lit8 v2, v2, 0x1

    #@108
    goto :goto_3

    #@109
    .line 1685
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_15
    return v11
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
    .line 4891
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
    .line 4892
    .local v5, "focusedStack":Z
    :goto_0
    const/4 v13, 0x1

    #@e
    .line 4893
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
    .line 4894
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
    .line 4895
    .local v9, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    #@27
    move-result-object v14

    #@28
    if-nez v14, :cond_1

    #@2a
    .line 4893
    :goto_2
    add-int/lit8 v10, v10, -0x1

    #@2c
    goto :goto_1

    #@2d
    .line 4891
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
    .line 4898
    .restart local v9    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v10    # "taskNdx":I
    .restart local v13    # "topTask":Z
    :cond_1
    const/4 v8, 0x0

    #@30
    .line 4899
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    const/4 v12, 0x0

    #@31
    .line 4901
    .local v12, "top":Lcom/android/server/am/ActivityRecord;
    const/4 v6, 0x0

    #@32
    .line 4902
    .local v6, "numActivities":I
    const/4 v7, 0x0

    #@33
    .line 4903
    .local v7, "numRunning":I
    iget-object v2, v9, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@35
    .line 4904
    .local v2, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    if-nez p3, :cond_2

    #@37
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    #@3a
    move-result v14

    #@3b
    if-eqz v14, :cond_4

    #@3d
    .line 4907
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
    .line 4908
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@48
    move-result-object v11

    #@49
    check-cast v11, Lcom/android/server/am/ActivityRecord;

    #@4b
    .line 4909
    .local v11, "tmp":Lcom/android/server/am/ActivityRecord;
    iget-boolean v14, v11, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@4d
    if-eqz v14, :cond_5

    #@4f
    .line 4907
    :cond_3
    :goto_4
    add-int/lit8 v3, v3, -0x1

    #@51
    goto :goto_3

    #@52
    .line 4904
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
    .line 4912
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v12    # "top":Lcom/android/server/am/ActivityRecord;
    .restart local v3    # "activityNdx":I
    .restart local v11    # "tmp":Lcom/android/server/am/ActivityRecord;
    :cond_5
    move-object v8, v11

    #@5a
    .line 4915
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v12, :cond_6

    #@5c
    iget-object v14, v12, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@5e
    sget-object v15, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@60
    if-ne v14, v15, :cond_7

    #@62
    .line 4916
    :cond_6
    move-object v12, v11

    #@63
    .line 4917
    .local v12, "top":Lcom/android/server/am/ActivityRecord;
    const/4 v7, 0x0

    #@64
    const/4 v6, 0x0

    #@65
    .line 4921
    .end local v12    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_7
    add-int/lit8 v6, v6, 0x1

    #@67
    .line 4922
    iget-object v14, v11, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@69
    if-eqz v14, :cond_3

    #@6b
    iget-object v14, v11, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@6d
    iget-object v14, v14, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@6f
    if-eqz v14, :cond_3

    #@71
    .line 4923
    add-int/lit8 v7, v7, 0x1

    #@73
    goto :goto_4

    #@74
    .line 4931
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "tmp":Lcom/android/server/am/ActivityRecord;
    :cond_8
    new-instance v4, Landroid/app/ActivityManager$RunningTaskInfo;

    #@76
    invoke-direct {v4}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    #@79
    .line 4932
    .local v4, "ci":Landroid/app/ActivityManager$RunningTaskInfo;
    iget v14, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    #@7b
    iput v14, v4, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    #@7d
    .line 4933
    move-object/from16 v0, p0

    #@7f
    iget v14, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@81
    iput v14, v4, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    #@83
    .line 4934
    iget-object v14, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@85
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@88
    move-result-object v14

    #@89
    iput-object v14, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    #@8b
    .line 4935
    iget-object v14, v12, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@8d
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@90
    move-result-object v14

    #@91
    iput-object v14, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    #@93
    .line 4936
    iget-wide v14, v9, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    #@95
    iput-wide v14, v4, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    #@97
    .line 4937
    if-eqz v5, :cond_9

    #@99
    if-eqz v13, :cond_9

    #@9b
    .line 4940
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@9e
    move-result-wide v14

    #@9f
    iput-wide v14, v4, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    #@a1
    .line 4941
    const/4 v13, 0x0

    #@a2
    .line 4944
    :cond_9
    iget-object v14, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@a4
    if-eqz v14, :cond_a

    #@a6
    .line 4945
    iget-object v14, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@a8
    iget-object v14, v14, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    #@aa
    iput-object v14, v4, Landroid/app/ActivityManager$RunningTaskInfo;->description:Ljava/lang/CharSequence;

    #@ac
    .line 4947
    :cond_a
    iput v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    #@ae
    .line 4948
    iput v7, v4, Landroid/app/ActivityManager$RunningTaskInfo;->numRunning:I

    #@b0
    .line 4949
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->canGoInDockedStack()Z

    #@b3
    move-result v14

    #@b4
    iput-boolean v14, v4, Landroid/app/ActivityManager$RunningTaskInfo;->isDockable:Z

    #@b6
    .line 4950
    iget v14, v9, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    #@b8
    iput v14, v4, Landroid/app/ActivityManager$RunningTaskInfo;->resizeMode:I

    #@ba
    .line 4951
    move-object/from16 v0, p1

    #@bc
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@bf
    goto/16 :goto_2

    #@c1
    .line 4890
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
    .line 4146
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
    .line 1014
    const/4 v4, 0x0

    #@2
    invoke-virtual {p0, v4, v5, v5}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    #@5
    .line 1018
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
    if-ltz v3, :cond_4

    #@f
    .line 1019
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
    .line 1020
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@1c
    move-result v4

    #@1d
    add-int/lit8 v1, v4, -0x1

    #@1f
    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_3

    #@21
    .line 1021
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Lcom/android/server/am/ActivityRecord;

    #@27
    .line 1022
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
    if-ne v4, v5, :cond_2

    #@33
    .line 1024
    :cond_0
    :goto_2
    const/4 v4, 0x1

    #@34
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    #@37
    .line 1020
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@39
    goto :goto_1

    #@3a
    .line 1023
    :cond_2
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@3c
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@3e
    if-eq v4, v5, :cond_0

    #@40
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@42
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@44
    if-ne v4, v5, :cond_1

    #@46
    goto :goto_2

    #@47
    .line 1018
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    #@49
    goto :goto_0

    #@4a
    .line 1013
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_4
    return-void
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 4988
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
    .line 4989
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
    .line 4990
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
    .line 4991
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Lcom/android/server/am/ActivityRecord;

    #@23
    .line 4992
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@25
    if-ne v4, p1, :cond_0

    #@27
    .line 4993
    sget-object v4, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@29
    new-instance v5, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    const-string/jumbo v6, "  Force finishing activity "

    #@31
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v5

    #@35
    .line 4994
    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@37
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@3a
    move-result-object v6

    #@3b
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@3e
    move-result-object v6

    #@3f
    .line 4993
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v5

    #@47
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 4996
    const/4 v4, 0x0

    #@4b
    iput-object v4, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@4d
    .line 4997
    invoke-virtual {p0, v2, v7, v7}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    #@50
    .line 4990
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@52
    goto :goto_1

    #@53
    .line 4988
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    #@55
    goto :goto_0

    #@56
    .line 4987
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
    .line 4974
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
    .line 4977
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@d
    .line 4979
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
    .line 4980
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    #@19
    .line 4981
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    #@1b
    .line 4984
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
    .line 4136
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
    .line 728
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

.method final isDockedStack()Z
    .locals 2

    #@0
    .prologue
    .line 665
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@2
    const/4 v1, 0x3

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method isFocusable()Z
    .locals 2

    #@0
    .prologue
    .line 718
    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@2
    invoke-static {v1}, Landroid/app/ActivityManager$StackId;->canReceiveKeys(I)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 719
    const/4 v1, 0x1

    #@9
    return v1

    #@a
    .line 723
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@d
    move-result-object v0

    #@e
    .line 724
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    #@10
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isFocusable()Z

    #@13
    move-result v1

    #@14
    :goto_0
    return v1

    #@15
    :cond_1
    const/4 v1, 0x0

    #@16
    goto :goto_0
.end method

.method final isHomeStack()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 661
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
    .line 636
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    #@3
    move-result-object v0

    #@4
    .line 637
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
    .line 641
    if-nez p1, :cond_0

    #@3
    .line 642
    return-object v2

    #@4
    .line 644
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@6
    .line 645
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v0, :cond_2

    #@8
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@a
    if-eqz v1, :cond_2

    #@c
    .line 646
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    .line 645
    if-eqz v1, :cond_2

    #@14
    .line 646
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    .line 645
    if-eqz v1, :cond_2

    #@1c
    .line 647
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@1e
    if-eq v1, p0, :cond_1

    #@20
    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@22
    .line 648
    const-string/jumbo v2, "Illegal state! task does not point to stack it is in."

    #@25
    .line 647
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@28
    .line 649
    :cond_1
    return-object p1

    #@29
    .line 651
    :cond_2
    return-object v2
.end method

.method final isOnHomeDisplay()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 673
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 674
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
    .line 673
    :cond_0
    return v0
.end method

.method final isPinnedStack()Z
    .locals 2

    #@0
    .prologue
    .line 669
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@2
    const/4 v1, 0x4

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method layoutTaskInStack(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;)Z
    .locals 2
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "windowLayout"    # Landroid/content/pm/ActivityInfo$WindowLayout;

    #@0
    .prologue
    .line 5174
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskPositioner:Lcom/android/server/am/LaunchingTaskPositioner;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 5175
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 5177
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskPositioner:Lcom/android/server/am/LaunchingTaskPositioner;

    #@8
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/am/LaunchingTaskPositioner;->updateDefaultBounds(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/content/pm/ActivityInfo$WindowLayout;)V

    #@d
    .line 5178
    const/4 v0, 0x1

    #@e
    return v0
.end method

.method minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 900
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@2
    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@4
    .line 903
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@6
    .line 904
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@8
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    #@b
    .line 905
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@d
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@f
    invoke-virtual {v0, v1}, Lcom/android/server/am/RecentTasks;->addLocked(Lcom/android/server/am/TaskRecord;)V

    #@12
    .line 906
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V

    #@15
    .line 907
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@17
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    #@1a
    .line 908
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->setLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    #@1d
    .line 899
    return-void
.end method

.method moveActivityToStack(Lcom/android/server/am/ActivityRecord;)V
    .locals 11
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 5270
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@5
    iget-object v7, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@7
    .line 5271
    .local v7, "prevStack":Lcom/android/server/am/ActivityStack;
    iget v0, v7, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@9
    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@b
    if-ne v0, v1, :cond_0

    #@d
    .line 5273
    return-void

    #@e
    .line 5276
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@10
    invoke-virtual {v0, v7}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 5277
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@18
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@1b
    move-result-object v0

    #@1c
    if-ne v0, p1, :cond_1

    #@1e
    move v9, v6

    #@1f
    .line 5278
    .local v9, "wasFocused":Z
    :cond_1
    if-eqz v9, :cond_3

    #@21
    iget-object v0, v7, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@23
    if-ne v0, p1, :cond_3

    #@25
    const/4 v10, 0x1

    #@26
    .line 5281
    .local v10, "wasResumed":Z
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@28
    iget v1, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    #@2a
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    #@2d
    move-result v1

    #@2e
    .line 5282
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@30
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@32
    move-object v0, p0

    #@33
    move-object v5, v4

    #@34
    .line 5280
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    #@37
    move-result-object v8

    #@38
    .line 5283
    .local v8, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p1, v8, v4}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    #@3b
    .line 5284
    invoke-virtual {v8, p1}, Lcom/android/server/am/TaskRecord;->addActivityToTop(Lcom/android/server/am/ActivityRecord;)V

    #@3e
    .line 5285
    invoke-direct {p0, p1, v8}, Lcom/android/server/am/ActivityStack;->setAppTask(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    #@41
    .line 5286
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@43
    invoke-virtual {v0, v8, v7}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleReportPictureInPictureModeChangedIfNeeded(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)V

    #@46
    .line 5287
    const-string/jumbo v0, "moveActivityToStack"

    #@49
    invoke-virtual {p0, p1, v9, v10, v0}, Lcom/android/server/am/ActivityStack;->moveToFrontAndResumeStateIfNeeded(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)V

    #@4c
    .line 5288
    if-eqz v10, :cond_2

    #@4e
    .line 5289
    iput-object v4, v7, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@50
    .line 5269
    :cond_2
    return-void

    #@51
    .line 5278
    .end local v8    # "task":Lcom/android/server/am/TaskRecord;
    .end local v10    # "wasResumed":Z
    :cond_3
    const/4 v10, 0x0

    #@52
    .restart local v10    # "wasResumed":Z
    goto :goto_0
.end method

.method moveHomeStackTaskToTop(I)V
    .locals 4
    .param p1, "homeStackTaskType"    # I

    #@0
    .prologue
    .line 4283
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v3

    #@6
    add-int/lit8 v2, v3, -0x1

    #@8
    .line 4284
    .local v2, "top":I
    move v1, v2

    #@9
    .local v1, "taskNdx":I
    :goto_0
    if-ltz v1, :cond_1

    #@b
    .line 4285
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Lcom/android/server/am/TaskRecord;

    #@13
    .line 4286
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget v3, v0, Lcom/android/server/am/TaskRecord;->taskType:I

    #@15
    if-ne v3, p1, :cond_0

    #@17
    .line 4289
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@1c
    .line 4290
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@21
    .line 4291
    const/4 v3, 0x1

    #@22
    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    #@25
    .line 4292
    return-void

    #@26
    .line 4284
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@28
    goto :goto_0

    #@29
    .line 4282
    .end local v0    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    return-void
.end method

.method final moveTaskToBackLocked(I)Z
    .locals 18
    .param p1, "taskId"    # I

    #@0
    .prologue
    .line 4367
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    #@3
    move-result-object v13

    #@4
    .line 4368
    .local v13, "tr":Lcom/android/server/am/TaskRecord;
    if-nez v13, :cond_0

    #@6
    .line 4369
    sget-object v15, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@8
    new-instance v16, Ljava/lang/StringBuilder;

    #@a
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v17, "moveTaskToBack: bad taskId="

    #@10
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v16

    #@14
    move-object/from16 v0, v16

    #@16
    move/from16 v1, p1

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v16

    #@1c
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v16

    #@20
    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@23
    .line 4370
    const/4 v15, 0x0

    #@24
    return v15

    #@25
    .line 4373
    :cond_0
    sget-object v15, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@27
    new-instance v16, Ljava/lang/StringBuilder;

    #@29
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v17, "moveTaskToBack: "

    #@2f
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v16

    #@33
    move-object/from16 v0, v16

    #@35
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v16

    #@39
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v16

    #@3d
    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@40
    .line 4374
    move-object/from16 v0, p0

    #@42
    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@44
    invoke-virtual {v15, v13}, Lcom/android/server/am/ActivityStackSupervisor;->removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V

    #@47
    .line 4379
    move-object/from16 v0, p0

    #@49
    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@4b
    move-object/from16 v0, p0

    #@4d
    invoke-virtual {v15, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    #@50
    move-result v15

    #@51
    if-eqz v15, :cond_2

    #@53
    move-object/from16 v0, p0

    #@55
    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@57
    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    #@59
    if-eqz v15, :cond_2

    #@5b
    .line 4380
    const/4 v15, 0x0

    #@5c
    move-object/from16 v0, p0

    #@5e
    move/from16 v1, p1

    #@60
    invoke-virtual {v0, v15, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    #@63
    move-result-object v6

    #@64
    .line 4381
    .local v6, "next":Lcom/android/server/am/ActivityRecord;
    if-nez v6, :cond_1

    #@66
    .line 4382
    const/4 v15, 0x0

    #@67
    const/16 v16, 0x0

    #@69
    move-object/from16 v0, p0

    #@6b
    move/from16 v1, v16

    #@6d
    invoke-virtual {v0, v15, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    #@70
    move-result-object v6

    #@71
    .line 4384
    :cond_1
    if-eqz v6, :cond_2

    #@73
    .line 4386
    const/4 v5, 0x1

    #@74
    .line 4388
    .local v5, "moveOK":Z
    :try_start_0
    move-object/from16 v0, p0

    #@76
    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@78
    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    #@7a
    iget-object v0, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@7c
    move-object/from16 v16, v0

    #@7e
    invoke-interface/range {v15 .. v16}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@81
    move-result v5

    #@82
    .line 4393
    .end local v5    # "moveOK":Z
    :goto_0
    if-nez v5, :cond_2

    #@84
    .line 4394
    const/4 v15, 0x0

    #@85
    return v15

    #@86
    .line 4389
    .restart local v5    # "moveOK":Z
    :catch_0
    move-exception v3

    #@87
    .line 4390
    .local v3, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    #@89
    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@8b
    const/16 v16, 0x0

    #@8d
    move-object/from16 v0, v16

    #@8f
    iput-object v0, v15, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    #@91
    .line 4391
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    #@94
    move-result-object v15

    #@95
    const/16 v16, 0x0

    #@97
    invoke-virtual/range {v15 .. v16}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    #@9a
    goto :goto_0

    #@9b
    .line 4401
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v5    # "moveOK":Z
    .end local v6    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_2
    move-object/from16 v0, p0

    #@9d
    iget v15, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@9f
    if-nez v15, :cond_3

    #@a1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    #@a4
    move-result-object v15

    #@a5
    invoke-virtual {v15}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    #@a8
    move-result v15

    #@a9
    if-eqz v15, :cond_3

    #@ab
    .line 4406
    move-object/from16 v0, p0

    #@ad
    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@af
    const/16 v16, 0x1

    #@b1
    invoke-virtual/range {v15 .. v16}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@b4
    move-result-object v4

    #@b5
    .line 4407
    .local v4, "fullscreenStack":Lcom/android/server/am/ActivityStack;
    if-eqz v4, :cond_3

    #@b7
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->hasVisibleBehindActivity()Z

    #@ba
    move-result v15

    #@bb
    if-eqz v15, :cond_3

    #@bd
    .line 4408
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->getVisibleBehindActivity()Lcom/android/server/am/ActivityRecord;

    #@c0
    move-result-object v14

    #@c1
    .line 4409
    .local v14, "visibleBehind":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    #@c3
    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@c5
    const-string/jumbo v16, "moveTaskToBack"

    #@c8
    move-object/from16 v0, v16

    #@ca
    invoke-virtual {v15, v14, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    #@cd
    .line 4410
    move-object/from16 v0, p0

    #@cf
    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@d1
    invoke-virtual {v15}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    #@d4
    .line 4411
    const/4 v15, 0x1

    #@d5
    return v15

    #@d6
    .line 4415
    .end local v4    # "fullscreenStack":Lcom/android/server/am/ActivityStack;
    .end local v14    # "visibleBehind":Lcom/android/server/am/ActivityRecord;
    :cond_3
    const/4 v9, 0x0

    #@d7
    .line 4420
    .local v9, "prevIsHome":Z
    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    #@da
    move-result v15

    #@db
    if-nez v15, :cond_9

    #@dd
    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    #@e0
    move-result v2

    #@e1
    .line 4421
    .local v2, "canGoHome":Z
    :goto_1
    if-eqz v2, :cond_4

    #@e3
    .line 4422
    move-object/from16 v0, p0

    #@e5
    invoke-direct {v0, v13}, Lcom/android/server/am/ActivityStack;->getNextTask(Lcom/android/server/am/TaskRecord;)Lcom/android/server/am/TaskRecord;

    #@e8
    move-result-object v7

    #@e9
    .line 4423
    .local v7, "nextTask":Lcom/android/server/am/TaskRecord;
    if-eqz v7, :cond_a

    #@eb
    .line 4424
    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    #@ee
    move-result v15

    #@ef
    invoke-virtual {v7, v15}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    #@f2
    .line 4429
    .end local v7    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    #@f4
    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@f6
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@f9
    .line 4430
    move-object/from16 v0, p0

    #@fb
    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@fd
    const/16 v16, 0x0

    #@ff
    move/from16 v0, v16

    #@101
    invoke-virtual {v15, v0, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@104
    .line 4431
    const/4 v15, 0x0

    #@105
    move-object/from16 v0, p0

    #@107
    invoke-virtual {v0, v13, v15}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    #@10a
    .line 4435
    move-object/from16 v0, p0

    #@10c
    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@10e
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    #@111
    move-result v8

    #@112
    .line 4436
    .local v8, "numTasks":I
    add-int/lit8 v11, v8, -0x1

    #@114
    .local v11, "taskNdx":I
    :goto_3
    const/4 v15, 0x1

    #@115
    if-lt v11, v15, :cond_5

    #@117
    .line 4437
    move-object/from16 v0, p0

    #@119
    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@11b
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11e
    move-result-object v10

    #@11f
    check-cast v10, Lcom/android/server/am/TaskRecord;

    #@121
    .line 4438
    .local v10, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    #@124
    move-result v15

    #@125
    if-eqz v15, :cond_b

    #@127
    .line 4447
    .end local v10    # "task":Lcom/android/server/am/TaskRecord;
    :cond_5
    move-object/from16 v0, p0

    #@129
    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@12b
    const/16 v16, 0xb

    #@12d
    const/16 v17, 0x0

    #@12f
    invoke-virtual/range {v15 .. v17}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    #@132
    .line 4448
    move-object/from16 v0, p0

    #@134
    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@136
    move/from16 v0, p1

    #@138
    invoke-virtual {v15, v0}, Lcom/android/server/wm/WindowManagerService;->moveTaskToBottom(I)V

    #@13b
    .line 4454
    move-object/from16 v0, p0

    #@13d
    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@13f
    if-eqz v15, :cond_d

    #@141
    move-object/from16 v0, p0

    #@143
    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@145
    iget-object v10, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@147
    .line 4455
    :goto_4
    if-nez v9, :cond_7

    #@149
    if-ne v10, v13, :cond_6

    #@14b
    if-nez v2, :cond_7

    #@14d
    :cond_6
    const/4 v15, 0x1

    #@14e
    if-gt v8, v15, :cond_f

    #@150
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    #@153
    move-result v15

    #@154
    if-eqz v15, :cond_f

    #@156
    .line 4456
    :cond_7
    move-object/from16 v0, p0

    #@158
    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@15a
    iget-boolean v15, v15, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    #@15c
    if-nez v15, :cond_8

    #@15e
    move-object/from16 v0, p0

    #@160
    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@162
    iget-boolean v15, v15, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    #@164
    if-eqz v15, :cond_e

    #@166
    .line 4460
    :cond_8
    invoke-virtual {v13}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    #@169
    move-result v12

    #@16a
    .line 4461
    .local v12, "taskToReturnTo":I
    const/4 v15, 0x0

    #@16b
    invoke-virtual {v13, v15}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    #@16e
    .line 4462
    move-object/from16 v0, p0

    #@170
    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@172
    const-string/jumbo v16, "moveTaskToBack"

    #@175
    const/16 v17, 0x0

    #@177
    move-object/from16 v0, v17

    #@179
    move-object/from16 v1, v16

    #@17b
    invoke-virtual {v15, v12, v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeHomeStackTask(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    #@17e
    move-result v15

    #@17f
    return v15

    #@180
    .line 4420
    .end local v2    # "canGoHome":Z
    .end local v8    # "numTasks":I
    .end local v11    # "taskNdx":I
    .end local v12    # "taskToReturnTo":I
    :cond_9
    const/4 v2, 0x0

    #@181
    goto/16 :goto_1

    #@183
    .line 4426
    .restart local v2    # "canGoHome":Z
    .restart local v7    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_a
    const/4 v9, 0x1

    #@184
    goto/16 :goto_2

    #@186
    .line 4441
    .end local v7    # "nextTask":Lcom/android/server/am/TaskRecord;
    .restart local v8    # "numTasks":I
    .restart local v10    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v11    # "taskNdx":I
    :cond_b
    const/4 v15, 0x1

    #@187
    if-ne v11, v15, :cond_c

    #@189
    .line 4443
    const/4 v15, 0x1

    #@18a
    invoke-virtual {v10, v15}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    #@18d
    .line 4436
    :cond_c
    add-int/lit8 v11, v11, -0x1

    #@18f
    goto :goto_3

    #@190
    .line 4454
    .end local v10    # "task":Lcom/android/server/am/TaskRecord;
    :cond_d
    const/4 v10, 0x0

    #@191
    .local v10, "task":Lcom/android/server/am/TaskRecord;
    goto :goto_4

    #@192
    .line 4458
    .end local v10    # "task":Lcom/android/server/am/TaskRecord;
    :cond_e
    const/4 v15, 0x0

    #@193
    return v15

    #@194
    .line 4465
    :cond_f
    move-object/from16 v0, p0

    #@196
    iget-object v15, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@198
    invoke-virtual {v15}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    #@19b
    .line 4466
    const/4 v15, 0x1

    #@19c
    return v15
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V
    .locals 9
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;
    .param p2, "noAnimation"    # Z
    .param p3, "options"    # Landroid/app/ActivityOptions;
    .param p4, "timeTracker"    # Lcom/android/server/am/AppTimeTracker;
    .param p5, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v8, 0xa

    #@2
    const/4 v6, 0x0

    #@3
    const/4 v7, 0x0

    #@4
    .line 4301
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v2

    #@a
    .line 4302
    .local v2, "numTasks":I
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@f
    move-result v1

    #@10
    .line 4303
    .local v1, "index":I
    if-eqz v2, :cond_0

    #@12
    if-gez v1, :cond_2

    #@14
    .line 4305
    :cond_0
    if-eqz p2, :cond_1

    #@16
    .line 4306
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    #@19
    .line 4310
    :goto_0
    return-void

    #@1a
    .line 4308
    :cond_1
    invoke-virtual {p0, v8, p3}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/app/ActivityOptions;)V

    #@1d
    goto :goto_0

    #@1e
    .line 4313
    :cond_2
    if-eqz p4, :cond_3

    #@20
    .line 4315
    iget-object v5, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@22
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@25
    move-result v5

    #@26
    add-int/lit8 v0, v5, -0x1

    #@28
    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_3

    #@2a
    .line 4316
    iget-object v5, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@2c
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v5

    #@30
    check-cast v5, Lcom/android/server/am/ActivityRecord;

    #@32
    iput-object p4, v5, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    #@34
    .line 4315
    add-int/lit8 v0, v0, -0x1

    #@36
    goto :goto_1

    #@37
    .line 4322
    .end local v0    # "i":I
    :cond_3
    invoke-direct {p0, p1, v6}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    #@3a
    .line 4325
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    #@3d
    move-result-object v4

    #@3e
    .line 4326
    .local v4, "top":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    #@41
    move-result v5

    #@42
    if-nez v5, :cond_4

    #@44
    .line 4327
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->addRecentActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    #@47
    .line 4328
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    #@4a
    .line 4329
    return-void

    #@4b
    .line 4333
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@4e
    move-result-object v3

    #@4f
    .line 4334
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@51
    invoke-virtual {v5, v3, p5}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z

    #@54
    .line 4337
    if-eqz p2, :cond_6

    #@56
    .line 4338
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@58
    invoke-virtual {v5, v7, v7}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    #@5b
    .line 4339
    if-eqz v3, :cond_5

    #@5d
    .line 4340
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    #@5f
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@62
    .line 4342
    :cond_5
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    #@65
    .line 4347
    :goto_2
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@67
    invoke-virtual {v5}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    #@6a
    .line 4348
    const/4 v5, 0x2

    #@6b
    new-array v5, v5, [Ljava/lang/Object;

    #@6d
    iget v6, p1, Lcom/android/server/am/TaskRecord;->userId:I

    #@6f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@72
    move-result-object v6

    #@73
    aput-object v6, v5, v7

    #@75
    iget v6, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    #@77
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7a
    move-result-object v6

    #@7b
    const/4 v7, 0x1

    #@7c
    aput-object v6, v5, v7

    #@7e
    const/16 v6, 0x7532

    #@80
    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@83
    .line 4298
    return-void

    #@84
    .line 4344
    :cond_6
    invoke-virtual {p0, v8, p3}, Lcom/android/server/am/ActivityStack;->updateTransitLocked(ILandroid/app/ActivityOptions;)V

    #@87
    goto :goto_2
.end method

.method moveToFront(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 678
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V

    #@4
    .line 677
    return-void
.end method

.method moveToFront(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 686
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 687
    return-void

    #@8
    .line 690
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@d
    .line 691
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@12
    move-result v0

    #@13
    .line 693
    .local v0, "addIndex":I
    if-lez v0, :cond_1

    #@15
    .line 694
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@17
    add-int/lit8 v3, v0, -0x1

    #@19
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Lcom/android/server/am/ActivityStack;

    #@1f
    .line 695
    .local v1, "topStack":Lcom/android/server/am/ActivityStack;
    iget v2, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@21
    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->isAlwaysOnTop(I)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_1

    #@27
    if-eq v1, p0, :cond_1

    #@29
    .line 697
    add-int/lit8 v0, v0, -0x1

    #@2b
    .line 701
    .end local v1    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@2d
    invoke-virtual {v2, v0, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@30
    .line 704
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    #@33
    move-result v2

    #@34
    if-eqz v2, :cond_2

    #@36
    .line 705
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@38
    invoke-virtual {v2, p1, p0}, Lcom/android/server/am/ActivityStackSupervisor;->setFocusStackUnchecked(Ljava/lang/String;Lcom/android/server/am/ActivityStack;)V

    #@3b
    .line 707
    :cond_2
    if-eqz p2, :cond_4

    #@3d
    .line 708
    invoke-direct {p0, p2, v4}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    #@40
    .line 712
    :goto_0
    if-eqz p2, :cond_3

    #@42
    .line 713
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@44
    iget v3, p2, Lcom/android/server/am/TaskRecord;->taskId:I

    #@46
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    #@49
    .line 685
    :cond_3
    return-void

    #@4a
    .line 710
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    #@4d
    move-result-object p2

    #@4e
    goto :goto_0
.end method

.method moveToFrontAndResumeStateIfNeeded(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)V
    .locals 0
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "moveToFront"    # Z
    .param p3, "setResume"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 5249
    if-nez p2, :cond_0

    #@2
    .line 5250
    return-void

    #@3
    .line 5256
    :cond_0
    if-eqz p3, :cond_1

    #@5
    .line 5257
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@7
    .line 5261
    :cond_1
    invoke-virtual {p0, p4}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    #@a
    .line 5248
    return-void
.end method

.method final navigateUpToLocked(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;ILandroid/content/Intent;)Z
    .locals 44
    .param p1, "srec"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "destIntent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "resultData"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 3679
    move-object/from16 v0, p1

    #@2
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@4
    move-object/from16 v43, v0

    #@6
    .line 3680
    .local v43, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v43

    #@8
    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@a
    move-object/from16 v26, v0

    #@c
    .line 3681
    .local v26, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, v26

    #@e
    move-object/from16 v1, p1

    #@10
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@13
    move-result v42

    #@14
    .line 3682
    .local v42, "start":I
    move-object/from16 v0, p0

    #@16
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@18
    move-object/from16 v0, v43

    #@1a
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_0

    #@20
    if-gez v42, :cond_1

    #@22
    .line 3683
    :cond_0
    const/4 v2, 0x0

    #@23
    return v2

    #@24
    .line 3685
    :cond_1
    add-int/lit8 v31, v42, -0x1

    #@26
    .line 3686
    .local v31, "finishTo":I
    if-gez v31, :cond_3

    #@28
    const/16 v35, 0x0

    #@2a
    .line 3687
    :goto_0
    const/16 v32, 0x0

    #@2c
    .line 3688
    .local v32, "foundParentInTask":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@2f
    move-result-object v28

    #@30
    .line 3689
    .local v28, "dest":Landroid/content/ComponentName;
    if-lez v42, :cond_2

    #@32
    if-eqz v28, :cond_2

    #@34
    .line 3690
    move/from16 v33, v31

    #@36
    .local v33, "i":I
    :goto_1
    if-ltz v33, :cond_2

    #@38
    .line 3691
    move-object/from16 v0, v26

    #@3a
    move/from16 v1, v33

    #@3c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3f
    move-result-object v39

    #@40
    check-cast v39, Lcom/android/server/am/ActivityRecord;

    #@42
    .line 3692
    .local v39, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v39

    #@44
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@46
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@48
    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v2

    #@50
    if-eqz v2, :cond_4

    #@52
    .line 3693
    move-object/from16 v0, v39

    #@54
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@56
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@58
    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@5b
    move-result-object v3

    #@5c
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5f
    move-result v2

    #@60
    .line 3692
    if-eqz v2, :cond_4

    #@62
    .line 3694
    move/from16 v31, v33

    #@64
    .line 3695
    move-object/from16 v35, v39

    #@66
    .line 3696
    .local v35, "parent":Lcom/android/server/am/ActivityRecord;
    const/16 v32, 0x1

    #@68
    .line 3702
    .end local v33    # "i":I
    .end local v35    # "parent":Lcom/android/server/am/ActivityRecord;
    .end local v39    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    move-object/from16 v0, p0

    #@6a
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@6c
    iget-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    #@6e
    move-object/from16 v27, v0

    #@70
    .line 3703
    .local v27, "controller":Landroid/app/IActivityController;
    if-eqz v27, :cond_5

    #@72
    .line 3704
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
    move-result-object v34

    #@7d
    .line 3705
    .local v34, "next":Lcom/android/server/am/ActivityRecord;
    if-eqz v34, :cond_5

    #@7f
    .line 3707
    const/16 v41, 0x1

    #@81
    .line 3709
    .local v41, "resumeOK":Z
    :try_start_0
    move-object/from16 v0, v34

    #@83
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@85
    move-object/from16 v0, v27

    #@87
    invoke-interface {v0, v2}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8a
    move-result v41

    #@8b
    .line 3715
    .end local v41    # "resumeOK":Z
    :goto_2
    if-nez v41, :cond_5

    #@8d
    .line 3716
    const/4 v2, 0x0

    #@8e
    return v2

    #@8f
    .line 3686
    .end local v27    # "controller":Landroid/app/IActivityController;
    .end local v28    # "dest":Landroid/content/ComponentName;
    .end local v32    # "foundParentInTask":Z
    .end local v34    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_3
    move-object/from16 v0, v26

    #@91
    move/from16 v1, v31

    #@93
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@96
    move-result-object v35

    #@97
    check-cast v35, Lcom/android/server/am/ActivityRecord;

    #@99
    .restart local v35    # "parent":Lcom/android/server/am/ActivityRecord;
    goto :goto_0

    #@9a
    .line 3690
    .end local v35    # "parent":Lcom/android/server/am/ActivityRecord;
    .restart local v28    # "dest":Landroid/content/ComponentName;
    .restart local v32    # "foundParentInTask":Z
    .restart local v33    # "i":I
    .restart local v39    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_4
    add-int/lit8 v33, v33, -0x1

    #@9c
    goto :goto_1

    #@9d
    .line 3710
    .end local v33    # "i":I
    .end local v39    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v27    # "controller":Landroid/app/IActivityController;
    .restart local v34    # "next":Lcom/android/server/am/ActivityRecord;
    .restart local v41    # "resumeOK":Z
    :catch_0
    move-exception v30

    #@9e
    .line 3711
    .local v30, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    #@a0
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@a2
    const/4 v3, 0x0

    #@a3
    iput-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    #@a5
    .line 3712
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
    .line 3720
    .end local v30    # "e":Landroid/os/RemoteException;
    .end local v34    # "next":Lcom/android/server/am/ActivityRecord;
    .end local v41    # "resumeOK":Z
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@b1
    move-result-wide v36

    #@b2
    .line 3721
    .local v36, "origId":J
    move/from16 v33, v42

    #@b4
    .end local p4    # "resultData":Landroid/content/Intent;
    .restart local v33    # "i":I
    :goto_3
    move/from16 v0, v33

    #@b6
    move/from16 v1, v31

    #@b8
    if-le v0, v1, :cond_6

    #@ba
    .line 3722
    move-object/from16 v0, v26

    #@bc
    move/from16 v1, v33

    #@be
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c1
    move-result-object v39

    #@c2
    check-cast v39, Lcom/android/server/am/ActivityRecord;

    #@c4
    .line 3723
    .restart local v39    # "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v39

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
    .line 3725
    const/16 p3, 0x0

    #@d7
    .line 3726
    const/16 p4, 0x0

    #@d9
    .line 3721
    .local p4, "resultData":Landroid/content/Intent;
    add-int/lit8 v33, v33, -0x1

    #@db
    goto :goto_3

    #@dc
    .line 3729
    .end local v39    # "r":Lcom/android/server/am/ActivityRecord;
    .end local p4    # "resultData":Landroid/content/Intent;
    :cond_6
    if-eqz v35, :cond_8

    #@de
    if-eqz v32, :cond_8

    #@e0
    .line 3730
    move-object/from16 v0, v35

    #@e2
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@e4
    iget v0, v2, Landroid/content/pm/ActivityInfo;->launchMode:I

    #@e6
    move/from16 v38, v0

    #@e8
    .line 3731
    .local v38, "parentLaunchMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    #@eb
    move-result v29

    #@ec
    .line 3732
    .local v29, "destIntentFlags":I
    const/4 v2, 0x3

    #@ed
    move/from16 v0, v38

    #@ef
    if-eq v0, v2, :cond_7

    #@f1
    .line 3733
    const/4 v2, 0x2

    #@f2
    move/from16 v0, v38

    #@f4
    if-ne v0, v2, :cond_9

    #@f6
    .line 3736
    :cond_7
    move-object/from16 v0, p1

    #@f8
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@fa
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@fc
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    #@fe
    .line 3737
    move-object/from16 v0, p1

    #@100
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@102
    .line 3736
    move-object/from16 v0, v35

    #@104
    move-object/from16 v1, p2

    #@106
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Ljava/lang/String;)V

    #@109
    .line 3755
    .end local v29    # "destIntentFlags":I
    .end local v38    # "parentLaunchMode":I
    :cond_8
    :goto_4
    invoke-static/range {v36 .. v37}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@10c
    .line 3756
    return v32

    #@10d
    .line 3734
    .restart local v29    # "destIntentFlags":I
    .restart local v38    # "parentLaunchMode":I
    :cond_9
    const/4 v2, 0x1

    #@10e
    move/from16 v0, v38

    #@110
    if-eq v0, v2, :cond_7

    #@112
    .line 3735
    const/high16 v2, 0x4000000

    #@114
    and-int v2, v2, v29

    #@116
    if-nez v2, :cond_7

    #@118
    .line 3740
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    #@11b
    move-result-object v2

    #@11c
    .line 3741
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
    .line 3740
    invoke-interface {v2, v3, v5, v4}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    #@128
    move-result-object v7

    #@129
    .line 3742
    .local v7, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    #@12b
    iget-object v2, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@12d
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mActivityStarter:Lcom/android/server/am/ActivityStarter;

    #@12f
    move-object/from16 v0, p1

    #@131
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@133
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@135
    .line 3744
    move-object/from16 v0, v35

    #@137
    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@139
    move-object/from16 v0, v35

    #@13b
    iget v15, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    #@13d
    .line 3745
    move-object/from16 v0, v35

    #@13f
    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    #@141
    move-object/from16 v16, v0

    #@143
    move-object/from16 v0, v35

    #@145
    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    #@147
    move/from16 v18, v0

    #@149
    .line 3743
    const/4 v5, 0x0

    #@14a
    const/4 v6, 0x0

    #@14b
    const/4 v8, 0x0

    #@14c
    const/4 v9, 0x0

    #@14d
    .line 3744
    const/4 v10, 0x0

    #@14e
    const/4 v12, 0x0

    #@14f
    const/4 v13, 0x0

    #@150
    const/4 v14, -0x1

    #@151
    .line 3745
    const/16 v17, -0x1

    #@153
    const/16 v19, 0x0

    #@155
    const/16 v20, 0x0

    #@157
    .line 3746
    const/16 v21, 0x0

    #@159
    const/16 v22, 0x1

    #@15b
    const/16 v23, 0x0

    #@15d
    const/16 v24, 0x0

    #@15f
    const/16 v25, 0x0

    #@161
    move-object/from16 v4, p2

    #@163
    .line 3742
    invoke-virtual/range {v2 .. v25}, Lcom/android/server/am/ActivityStarter;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ResolveInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;IIILandroid/app/ActivityOptions;ZZ[Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;Lcom/android/server/am/TaskRecord;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@166
    move-result v40

    #@167
    .line 3747
    .local v40, "res":I
    if-nez v40, :cond_a

    #@169
    const/16 v32, 0x1

    #@16b
    .line 3751
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v40    # "res":I
    :goto_5
    move-object/from16 v0, v35

    #@16d
    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@16f
    .line 3752
    const-string/jumbo v12, "navigate-top"

    #@172
    const/4 v13, 0x1

    #@173
    move-object/from16 v8, p0

    #@175
    move/from16 v10, p3

    #@177
    move-object/from16 v11, p4

    #@179
    .line 3751
    invoke-virtual/range {v8 .. v13}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@17c
    goto :goto_4

    #@17d
    .line 3747
    .restart local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v40    # "res":I
    :cond_a
    const/16 v32, 0x0

    #@17f
    goto :goto_5

    #@180
    .line 3748
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v40    # "res":I
    :catch_1
    move-exception v30

    #@181
    .line 3749
    .restart local v30    # "e":Landroid/os/RemoteException;
    const/16 v32, 0x0

    #@183
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
    .line 2031
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@4
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->setDrawn()V

    #@7
    .line 2032
    if-eqz p1, :cond_0

    #@9
    .line 2033
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_2

    #@11
    .line 2034
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    #@16
    move-result v3

    #@17
    .line 2032
    if-eqz v3, :cond_2

    #@19
    .line 2037
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    #@1b
    .line 2038
    .local v1, "waitingActivity":Lcom/android/server/am/ActivityRecord;
    iput-object v4, p0, Lcom/android/server/am/ActivityStack;->mTranslucentActivityWaiting:Lcom/android/server/am/ActivityRecord;

    #@1d
    .line 2039
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    #@1f
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    #@22
    .line 2040
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@24
    const/16 v4, 0x6a

    #@26
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    #@29
    .line 2042
    if-eqz v1, :cond_2

    #@2b
    .line 2043
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@2d
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@2f
    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaque(Landroid/os/IBinder;Z)V

    #@32
    .line 2044
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
    .line 2046
    :try_start_0
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@3e
    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@40
    .line 2047
    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@42
    if-eqz p1, :cond_1

    #@44
    const/4 v2, 0x1

    #@45
    .line 2046
    :cond_1
    invoke-interface {v3, v4, v2}, Landroid/app/IApplicationThread;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@48
    .line 2030
    .end local v1    # "waitingActivity":Lcom/android/server/am/ActivityRecord;
    :cond_2
    :goto_0
    return-void

    #@49
    .line 2048
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
    .line 433
    const/4 v0, 0x0

    #@1
    .line 434
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
    .line 435
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
    .line 434
    add-int/lit8 v1, v1, -0x1

    #@1c
    goto :goto_0

    #@1d
    .line 437
    :cond_0
    return v0
.end method

.method okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method onLockTaskPackagesUpdatedLocked()V
    .locals 2

    #@0
    .prologue
    .line 5311
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
    .line 5312
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
    .line 5311
    add-int/lit8 v0, v0, -0x1

    #@17
    goto :goto_0

    #@18
    .line 5310
    :cond_0
    return-void
.end method

.method positionTask(Lcom/android/server/am/TaskRecord;I)V
    .locals 6
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "position"    # I

    #@0
    .prologue
    .line 5199
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@3
    move-result-object v1

    #@4
    .line 5200
    .local v1, "topRunningActivity":Lcom/android/server/am/ActivityRecord;
    iget-object v3, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@6
    iget-object v3, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@8
    if-ne v1, v3, :cond_2

    #@a
    const/4 v2, 0x1

    #@b
    .line 5201
    .local v2, "wasResumed":Z
    :goto_0
    const-string/jumbo v3, "positionTask"

    #@e
    const/4 v4, 0x0

    #@f
    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/am/ActivityStack;->preAddTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;Z)Lcom/android/server/am/ActivityStack;

    #@12
    move-result-object v0

    #@13
    .line 5202
    .local v0, "prevStack":Lcom/android/server/am/ActivityStack;
    iput-object p0, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@15
    .line 5203
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->insertTaskAtPosition(Lcom/android/server/am/TaskRecord;I)V

    #@18
    .line 5204
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->postAddTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)V

    #@1b
    .line 5205
    if-eqz v2, :cond_1

    #@1d
    .line 5206
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@1f
    if-eqz v3, :cond_0

    #@21
    .line 5207
    sget-object v3, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@23
    new-instance v4, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v5, "mResumedActivity was already set when moving mResumedActivity from other stack to this stack mResumedActivity="

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    .line 5208
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@31
    .line 5207
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    .line 5209
    const-string/jumbo v5, " other mResumedActivity="

    #@38
    .line 5207
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v4

    #@40
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@47
    .line 5211
    :cond_0
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@49
    .line 5198
    :cond_1
    return-void

    #@4a
    .line 5200
    .end local v0    # "prevStack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "wasResumed":Z
    :cond_2
    const/4 v2, 0x0

    #@4b
    .restart local v2    # "wasResumed":Z
    goto :goto_0
.end method

.method final rankTaskLayers(I)I
    .locals 6
    .param p1, "baseLayer"    # I

    #@0
    .prologue
    .line 1689
    const/4 v0, 0x0

    #@1
    .line 1690
    .local v0, "layer":I
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v5

    #@7
    add-int/lit8 v4, v5, -0x1

    #@9
    .local v4, "taskNdx":I
    move v1, v0

    #@a
    .end local v0    # "layer":I
    .local v1, "layer":I
    :goto_0
    if-ltz v4, :cond_1

    #@c
    .line 1691
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Lcom/android/server/am/TaskRecord;

    #@14
    .line 1692
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@17
    move-result-object v2

    #@18
    .line 1693
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    #@1a
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@1c
    if-nez v5, :cond_0

    #@1e
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@20
    if-eqz v5, :cond_0

    #@22
    .line 1696
    add-int/lit8 v0, v1, 0x1

    #@24
    .end local v1    # "layer":I
    .restart local v0    # "layer":I
    add-int v5, p1, v1

    #@26
    iput v5, v3, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    #@28
    .line 1690
    :goto_1
    add-int/lit8 v4, v4, -0x1

    #@2a
    move v1, v0

    #@2b
    .end local v0    # "layer":I
    .restart local v1    # "layer":I
    goto :goto_0

    #@2c
    .line 1694
    :cond_0
    const/4 v5, -0x1

    #@2d
    iput v5, v3, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    #@2f
    move v0, v1

    #@30
    .line 1693
    .end local v1    # "layer":I
    .restart local v0    # "layer":I
    goto :goto_1

    #@31
    .line 1699
    .end local v0    # "layer":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v1    # "layer":I
    :cond_1
    return v1
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
    .line 4100
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->hasVisibleBehindActivity()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 4101
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@b
    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 4099
    :cond_0
    :goto_0
    return-void

    #@12
    .line 4102
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@15
    move-result-object v1

    #@16
    if-ne p1, v1, :cond_2

    #@18
    .line 4103
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    #@1b
    move-result v1

    #@1c
    const/4 v2, 0x1

    #@1d
    if-ne v1, v2, :cond_2

    #@1f
    .line 4106
    return-void

    #@20
    .line 4111
    :cond_2
    if-eqz p1, :cond_3

    #@22
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@24
    if-eqz v1, :cond_3

    #@26
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@28
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@2a
    if-eqz v1, :cond_3

    #@2c
    .line 4113
    :try_start_0
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@2e
    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@30
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@32
    invoke-interface {v1, v2}, Landroid/app/IApplicationThread;->scheduleCancelVisibleBehind(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 4116
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@37
    const-wide/16 v2, 0x1f4

    #@39
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@3c
    goto :goto_0

    #@3d
    .line 4118
    :cond_3
    sget-object v1, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@3f
    new-instance v2, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v3, "releaseBackgroundResources: activity "

    #@47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v2

    #@4f
    const-string/jumbo v3, " no longer running"

    #@52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v2

    #@5a
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    .line 4119
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->backgroundResourcesReleased()V

    #@60
    goto :goto_0

    #@61
    .line 4114
    :catch_0
    move-exception v0

    #@62
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
    .line 3930
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    #@4
    move-result v8

    #@5
    div-int/lit8 v4, v8, 0x4

    #@7
    .line 3931
    .local v4, "maxTasks":I
    if-ge v4, v9, :cond_0

    #@9
    .line 3932
    const/4 v4, 0x1

    #@a
    .line 3934
    :cond_0
    const/4 v5, 0x0

    #@b
    .line 3935
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
    .line 3936
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@18
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1b
    move-result-object v6

    #@1c
    check-cast v6, Lcom/android/server/am/TaskRecord;

    #@1e
    .line 3937
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p2, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@21
    move-result v8

    #@22
    if-nez v8, :cond_2

    #@24
    .line 3935
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@26
    goto :goto_0

    #@27
    .line 3941
    :cond_2
    const/4 v3, 0x0

    #@28
    .line 3942
    .local v3, "curNum":I
    iget-object v1, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@2a
    .line 3943
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
    .line 3944
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@34
    move-result-object v2

    #@35
    check-cast v2, Lcom/android/server/am/ActivityRecord;

    #@37
    .line 3945
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
    .line 3949
    invoke-virtual {p0, v2, v9, p3}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    #@44
    .line 3950
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@47
    move-result-object v8

    #@48
    if-eq v8, v2, :cond_3

    #@4a
    .line 3952
    add-int/lit8 v0, v0, -0x1

    #@4c
    .line 3954
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@4e
    .line 3943
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@50
    goto :goto_2

    #@51
    .line 3957
    .end local v2    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_5
    if-lez v3, :cond_1

    #@53
    .line 3958
    add-int/2addr v5, v3

    #@54
    .line 3959
    add-int/lit8 v4, v4, -0x1

    #@56
    .line 3960
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@58
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5b
    move-result-object v8

    #@5c
    if-eq v8, v6, :cond_1

    #@5e
    .line 3962
    add-int/lit8 v7, v7, -0x1

    #@60
    goto :goto_1

    #@61
    .line 3968
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
    .line 4167
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    #@2
    const-string/jumbo v8, "mLRUActivities"

    #@5
    invoke-direct {p0, v7, p1, v8}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    #@8
    .line 4168
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@a
    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    #@c
    .line 4169
    const-string/jumbo v8, "mStoppingActivities"

    #@f
    .line 4168
    invoke-direct {p0, v7, p1, v8}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    #@12
    .line 4170
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@14
    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    #@16
    .line 4171
    const-string/jumbo v8, "mGoingToSleepActivities"

    #@19
    .line 4170
    invoke-direct {p0, v7, p1, v8}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    #@1c
    .line 4172
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1e
    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    #@20
    .line 4173
    const-string/jumbo v8, "mWaitingVisibleActivities"

    #@23
    .line 4172
    invoke-direct {p0, v7, p1, v8}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    #@26
    .line 4174
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@28
    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    #@2a
    .line 4175
    const-string/jumbo v8, "mFinishingActivities"

    #@2d
    .line 4174
    invoke-direct {p0, v7, p1, v8}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    #@30
    .line 4177
    const/4 v2, 0x0

    #@31
    .line 4180
    .local v2, "hasVisibleActivities":Z
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->numActivities()I

    #@34
    move-result v3

    #@35
    .line 4183
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
    .line 4184
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
    .line 4185
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
    .line 4186
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@54
    move-result-object v4

    #@55
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    #@57
    .line 4187
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v3, v3, -0x1

    #@59
    .line 4190
    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@5b
    if-ne v7, p1, :cond_4

    #@5d
    .line 4191
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@5f
    if-eqz v7, :cond_0

    #@61
    .line 4192
    const/4 v2, 0x1

    #@62
    .line 4195
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
    .line 4198
    :cond_2
    const/4 v5, 0x1

    #@6f
    .line 4211
    .local v5, "remove":Z
    :goto_2
    if-eqz v5, :cond_7

    #@71
    .line 4218
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@73
    if-nez v7, :cond_3

    #@75
    .line 4219
    sget-object v7, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@77
    new-instance v8, Ljava/lang/StringBuilder;

    #@79
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@7c
    const-string/jumbo v9, "Force removing "

    #@7f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v8

    #@83
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v8

    #@87
    const-string/jumbo v9, ": app died, no saved state"

    #@8a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v8

    #@8e
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@91
    move-result-object v8

    #@92
    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@95
    .line 4220
    const/4 v7, 0x5

    #@96
    new-array v7, v7, [Ljava/lang/Object;

    #@98
    .line 4221
    iget v8, v4, Lcom/android/server/am/ActivityRecord;->userId:I

    #@9a
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9d
    move-result-object v8

    #@9e
    const/4 v9, 0x0

    #@9f
    aput-object v8, v7, v9

    #@a1
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@a4
    move-result v8

    #@a5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a8
    move-result-object v8

    #@a9
    const/4 v9, 0x1

    #@aa
    aput-object v8, v7, v9

    #@ac
    .line 4222
    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@ae
    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    #@b0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b3
    move-result-object v8

    #@b4
    const/4 v9, 0x2

    #@b5
    aput-object v8, v7, v9

    #@b7
    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@b9
    const/4 v9, 0x3

    #@ba
    aput-object v8, v7, v9

    #@bc
    .line 4223
    const-string/jumbo v8, "proc died without state saved"

    #@bf
    const/4 v9, 0x4

    #@c0
    aput-object v8, v7, v9

    #@c2
    .line 4220
    const/16 v8, 0x7531

    #@c4
    invoke-static {v8, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@c7
    .line 4224
    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@c9
    sget-object v8, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@cb
    if-ne v7, v8, :cond_3

    #@cd
    .line 4225
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@cf
    const/4 v8, 0x0

    #@d0
    invoke-virtual {v7, v4, v8}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    #@d3
    .line 4246
    :cond_3
    :goto_3
    const/4 v7, 0x1

    #@d4
    const/4 v8, 0x1

    #@d5
    invoke-virtual {p0, v4, v7, v8}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    #@d8
    .line 4247
    if-eqz v5, :cond_4

    #@da
    .line 4248
    const-string/jumbo v7, "appDied"

    #@dd
    const/4 v8, 0x0

    #@de
    invoke-direct {p0, v4, v8, v7}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V

    #@e1
    .line 4185
    .end local v5    # "remove":Z
    :cond_4
    add-int/lit8 v1, v1, -0x1

    #@e3
    goto/16 :goto_1

    #@e5
    .line 4199
    :cond_5
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@e7
    if-nez v7, :cond_6

    #@e9
    iget v7, v4, Lcom/android/server/am/ActivityRecord;->launchCount:I

    #@eb
    const/4 v8, 0x2

    #@ec
    if-le v7, v8, :cond_6

    #@ee
    .line 4200
    iget-wide v8, v4, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    #@f0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@f3
    move-result-wide v10

    #@f4
    const-wide/32 v12, 0xea60

    #@f7
    sub-long/2addr v10, v12

    #@f8
    cmp-long v7, v8, v10

    #@fa
    if-lez v7, :cond_6

    #@fc
    .line 4206
    const/4 v5, 0x1

    #@fd
    .line 4200
    .restart local v5    # "remove":Z
    goto/16 :goto_2

    #@ff
    .line 4209
    .end local v5    # "remove":Z
    :cond_6
    const/4 v5, 0x0

    #@100
    .restart local v5    # "remove":Z
    goto/16 :goto_2

    #@102
    .line 4234
    :cond_7
    const/4 v7, 0x0

    #@103
    iput-object v7, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@105
    .line 4239
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@107
    iput-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    #@109
    .line 4240
    iget-boolean v7, v4, Lcom/android/server/am/ActivityRecord;->haveState:Z

    #@10b
    if-nez v7, :cond_3

    #@10d
    .line 4243
    const/4 v7, 0x0

    #@10e
    iput-object v7, v4, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    #@110
    goto :goto_3

    #@111
    .line 4183
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "remove":Z
    :cond_8
    add-int/lit8 v6, v6, -0x1

    #@113
    goto/16 :goto_0

    #@115
    .line 4254
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
    .line 5079
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V

    #@4
    .line 5078
    return-void
.end method

.method removeTask(Lcom/android/server/am/TaskRecord;Ljava/lang/String;I)V
    .locals 12
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "mode"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v11, 0x0

    #@3
    .line 5090
    if-nez p3, :cond_0

    #@5
    .line 5091
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@7
    invoke-virtual {v8, p1}, Lcom/android/server/am/ActivityStackSupervisor;->removeLockedTaskLocked(Lcom/android/server/am/TaskRecord;)V

    #@a
    .line 5092
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@c
    iget v9, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    #@e
    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->removeTask(I)V

    #@11
    .line 5093
    iget v8, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@13
    invoke-static {v8}, Landroid/app/ActivityManager$StackId;->persistTaskBounds(I)Z

    #@16
    move-result v8

    #@17
    if-nez v8, :cond_0

    #@19
    .line 5096
    invoke-virtual {p1, v11}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    #@1c
    .line 5100
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@1e
    .line 5101
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_1

    #@20
    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@22
    if-ne v8, p1, :cond_1

    #@24
    .line 5102
    iput-object v11, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@26
    .line 5105
    :cond_1
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@2b
    move-result v5

    #@2c
    .line 5106
    .local v5, "taskNdx":I
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@31
    move-result v8

    #@32
    add-int/lit8 v6, v8, -0x1

    #@34
    .line 5107
    .local v6, "topTaskNdx":I
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    #@37
    move-result v8

    #@38
    if-eqz v8, :cond_2

    #@3a
    if-ge v5, v6, :cond_2

    #@3c
    .line 5108
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@3e
    add-int/lit8 v9, v5, 0x1

    #@40
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@43
    move-result-object v3

    #@44
    check-cast v3, Lcom/android/server/am/TaskRecord;

    #@46
    .line 5109
    .local v3, "nextTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isOverHomeStack()Z

    #@49
    move-result v8

    #@4a
    if-nez v8, :cond_2

    #@4c
    .line 5110
    invoke-virtual {v3, v1}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    #@4f
    .line 5113
    .end local v3    # "nextTask":Lcom/android/server/am/TaskRecord;
    :cond_2
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@51
    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@54
    .line 5114
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/ActivityStack;->updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V

    #@57
    .line 5116
    if-nez p3, :cond_5

    #@59
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@5b
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    #@5e
    move-result v8

    #@5f
    if-eqz v8, :cond_5

    #@61
    .line 5118
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@63
    if-eqz v8, :cond_9

    #@65
    .line 5119
    .local v1, "isVoiceSession":Z
    :goto_0
    if-eqz v1, :cond_3

    #@67
    .line 5121
    :try_start_0
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    #@69
    iget-object v9, p1, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    #@6b
    iget v10, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    #@6d
    invoke-interface {v8, v9, v10}, Landroid/service/voice/IVoiceInteractionSession;->taskFinished(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@70
    .line 5125
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->autoRemoveFromRecents()Z

    #@73
    move-result v8

    #@74
    if-nez v8, :cond_4

    #@76
    if-eqz v1, :cond_5

    #@78
    .line 5128
    :cond_4
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    #@7a
    invoke-virtual {v8, p1}, Lcom/android/server/am/RecentTasks;->remove(Ljava/lang/Object;)Z

    #@7d
    .line 5129
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    #@80
    .line 5133
    .end local v1    # "isVoiceSession":Z
    :cond_5
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@82
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    #@85
    move-result v8

    #@86
    if-eqz v8, :cond_8

    #@88
    .line 5137
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isOnHomeDisplay()Z

    #@8b
    move-result v8

    #@8c
    if-eqz v8, :cond_6

    #@8e
    const/4 v8, 0x2

    #@8f
    if-eq p3, v8, :cond_6

    #@91
    .line 5138
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@93
    invoke-virtual {v8, p0}, Lcom/android/server/am/ActivityStackSupervisor;->isFocusedStack(Lcom/android/server/am/ActivityStack;)Z

    #@96
    move-result v8

    #@97
    .line 5137
    if-eqz v8, :cond_6

    #@99
    .line 5139
    new-instance v8, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v8

    #@a2
    const-string/jumbo v9, " leftTaskHistoryEmpty"

    #@a5
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v8

    #@a9
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v2

    #@ad
    .line 5140
    .local v2, "myReason":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    #@af
    if-nez v8, :cond_a

    #@b1
    .line 5142
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    #@b4
    move-result v8

    #@b5
    .line 5141
    invoke-direct {p0, v8, v2}, Lcom/android/server/am/ActivityStack;->adjustFocusToNextFocusableStackLocked(ILjava/lang/String;)Z

    #@b8
    move-result v8

    #@b9
    if-eqz v8, :cond_a

    #@bb
    .line 5146
    .end local v2    # "myReason":Ljava/lang/String;
    :cond_6
    :goto_2
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@bd
    if-eqz v8, :cond_7

    #@bf
    .line 5147
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@c1
    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@c4
    .line 5148
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    #@c6
    invoke-virtual {v8, v7, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@c9
    .line 5150
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    #@cc
    move-result v7

    #@cd
    if-nez v7, :cond_8

    #@cf
    .line 5151
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@d1
    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->onTaskListEmptyLocked()V

    #@d4
    .line 5155
    :cond_8
    iput-object v11, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    #@d6
    .line 5089
    return-void

    #@d7
    :cond_9
    move v1, v7

    #@d8
    .line 5118
    goto :goto_0

    #@d9
    .line 5143
    .restart local v2    # "myReason":Ljava/lang/String;
    :cond_a
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@db
    invoke-virtual {v8, v2}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackToFront(Ljava/lang/String;)V

    #@de
    goto :goto_2

    #@df
    .line 5122
    .end local v2    # "myReason":Ljava/lang/String;
    .restart local v1    # "isVoiceSession":Z
    :catch_0
    move-exception v0

    #@e0
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
    .line 3319
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    #@3
    move-result-object v1

    #@4
    .line 3324
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_0

    #@6
    .line 3325
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
    .line 3328
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@10
    .line 3329
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
    .line 2854
    const/16 v27, 0x0

    #@2
    .line 2856
    .local v27, "topOptions":Landroid/app/ActivityOptions;
    const/16 v21, -0x1

    #@4
    .line 2857
    .local v21, "replyChainEnd":I
    const/4 v13, 0x1

    #@5
    .line 2861
    .local v13, "canMoveOptions":Z
    move-object/from16 v0, p1

    #@7
    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@9
    .line 2862
    .local v10, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v20

    #@d
    .line 2863
    .local v20, "numActivities":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    #@10
    move-result v22

    #@11
    .line 2864
    .local v22, "rootActivityNdx":I
    add-int/lit8 v18, v20, -0x1

    #@13
    .end local v27    # "topOptions":Landroid/app/ActivityOptions;
    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    #@15
    move/from16 v1, v22

    #@17
    if-le v0, v1, :cond_0

    #@19
    .line 2865
    move/from16 v0, v18

    #@1b
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v25

    #@1f
    check-cast v25, Lcom/android/server/am/ActivityRecord;

    #@21
    .line 2866
    .local v25, "target":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v25

    #@23
    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    #@25
    if-eqz v3, :cond_1

    #@27
    .line 3001
    .end local v25    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_0
    return-object v27

    #@28
    .line 2869
    .restart local v25    # "target":Lcom/android/server/am/ActivityRecord;
    :cond_1
    move-object/from16 v0, v25

    #@2a
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@2c
    iget v0, v3, Landroid/content/pm/ActivityInfo;->flags:I

    #@2e
    move/from16 v17, v0

    #@30
    .line 2871
    .local v17, "flags":I
    and-int/lit8 v3, v17, 0x2

    #@32
    if-eqz v3, :cond_6

    #@34
    const/16 v16, 0x1

    #@36
    .line 2873
    .local v16, "finishOnTaskLaunch":Z
    :goto_1
    and-int/lit8 v3, v17, 0x40

    #@38
    if-eqz v3, :cond_7

    #@3a
    const/4 v11, 0x1

    #@3b
    .line 2875
    .local v11, "allowTaskReparenting":Z
    :goto_2
    move-object/from16 v0, v25

    #@3d
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@3f
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    #@42
    move-result v3

    #@43
    const/high16 v5, 0x80000

    #@45
    and-int/2addr v3, v5

    #@46
    if-eqz v3, :cond_8

    #@48
    const/4 v14, 0x1

    #@49
    .line 2877
    .local v14, "clearWhenTaskReset":Z
    :goto_3
    if-nez v16, :cond_2

    #@4b
    .line 2878
    if-eqz v14, :cond_9

    #@4d
    .line 2889
    :cond_2
    if-nez v16, :cond_3

    #@4f
    .line 2890
    if-eqz v14, :cond_b

    #@51
    .line 2955
    :cond_3
    if-nez p2, :cond_4

    #@53
    if-nez v16, :cond_4

    #@55
    if-eqz v14, :cond_18

    #@57
    .line 2961
    :cond_4
    if-eqz v14, :cond_13

    #@59
    .line 2965
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@5c
    move-result v3

    #@5d
    add-int/lit8 v15, v3, -0x1

    #@5f
    .line 2971
    .local v15, "end":I
    :goto_4
    move/from16 v19, v13

    #@61
    .line 2972
    .local v19, "noOptions":Z
    move/from16 v23, v18

    #@63
    .end local v19    # "noOptions":Z
    .local v23, "srcPos":I
    :goto_5
    move/from16 v0, v23

    #@65
    if-gt v0, v15, :cond_17

    #@67
    .line 2973
    move/from16 v0, v23

    #@69
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6c
    move-result-object v4

    #@6d
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    #@6f
    .line 2974
    .local v4, "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@71
    if-eqz v3, :cond_15

    #@73
    .line 2972
    :cond_5
    :goto_6
    add-int/lit8 v23, v23, 0x1

    #@75
    goto :goto_5

    #@76
    .line 2871
    .end local v4    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "allowTaskReparenting":Z
    .end local v14    # "clearWhenTaskReset":Z
    .end local v15    # "end":I
    .end local v16    # "finishOnTaskLaunch":Z
    .end local v23    # "srcPos":I
    :cond_6
    const/16 v16, 0x0

    #@78
    .restart local v16    # "finishOnTaskLaunch":Z
    goto :goto_1

    #@79
    .line 2873
    :cond_7
    const/4 v11, 0x0

    #@7a
    .restart local v11    # "allowTaskReparenting":Z
    goto :goto_2

    #@7b
    .line 2875
    :cond_8
    const/4 v14, 0x0

    #@7c
    .restart local v14    # "clearWhenTaskReset":Z
    goto :goto_3

    #@7d
    .line 2879
    :cond_9
    move-object/from16 v0, v25

    #@7f
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    #@81
    if-eqz v3, :cond_2

    #@83
    .line 2886
    if-gez v21, :cond_a

    #@85
    .line 2887
    move/from16 v21, v18

    #@87
    .line 2864
    :cond_a
    :goto_7
    add-int/lit8 v18, v18, -0x1

    #@89
    goto :goto_0

    #@8a
    .line 2889
    :cond_b
    if-eqz v11, :cond_3

    #@8c
    .line 2892
    move-object/from16 v0, v25

    #@8e
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    #@90
    if-eqz v3, :cond_3

    #@92
    .line 2893
    move-object/from16 v0, v25

    #@94
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    #@96
    move-object/from16 v0, p1

    #@98
    iget-object v5, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@9a
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9d
    move-result v3

    #@9e
    if-nez v3, :cond_3

    #@a0
    .line 2902
    move-object/from16 v0, p0

    #@a2
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@a4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    #@a7
    move-result v3

    #@a8
    if-nez v3, :cond_c

    #@aa
    move-object/from16 v0, p0

    #@ac
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@ae
    const/4 v5, 0x0

    #@af
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b2
    move-result-object v3

    #@b3
    check-cast v3, Lcom/android/server/am/TaskRecord;

    #@b5
    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@b7
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    #@ba
    move-result v3

    #@bb
    if-eqz v3, :cond_d

    #@bd
    .line 2903
    :cond_c
    const/4 v12, 0x0

    #@be
    .line 2904
    .local v12, "bottom":Lcom/android/server/am/ActivityRecord;
    :goto_8
    if-eqz v12, :cond_e

    #@c0
    move-object/from16 v0, v25

    #@c2
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    #@c4
    if-eqz v3, :cond_e

    #@c6
    .line 2905
    move-object/from16 v0, v25

    #@c8
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    #@ca
    iget-object v5, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@cc
    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@ce
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d1
    move-result v3

    #@d2
    .line 2904
    if-eqz v3, :cond_e

    #@d4
    .line 2909
    iget-object v0, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@d6
    move-object/from16 v26, v0

    #@d8
    .line 2921
    .local v26, "targetTask":Lcom/android/server/am/TaskRecord;
    :goto_9
    move-object/from16 v0, p0

    #@da
    move-object/from16 v1, v25

    #@dc
    move-object/from16 v2, v26

    #@de
    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->setAppTask(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    #@e1
    .line 2923
    move/from16 v19, v13

    #@e3
    .line 2924
    .restart local v19    # "noOptions":Z
    if-gez v21, :cond_f

    #@e5
    move/from16 v24, v18

    #@e7
    .line 2925
    .local v24, "start":I
    :goto_a
    move/from16 v23, v24

    #@e9
    .end local v19    # "noOptions":Z
    .restart local v23    # "srcPos":I
    :goto_b
    move/from16 v0, v23

    #@eb
    move/from16 v1, v18

    #@ed
    if-lt v0, v1, :cond_12

    #@ef
    .line 2926
    move/from16 v0, v23

    #@f1
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f4
    move-result-object v4

    #@f5
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    #@f7
    .line 2927
    .restart local v4    # "p":Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@f9
    if-eqz v3, :cond_10

    #@fb
    .line 2925
    :goto_c
    add-int/lit8 v23, v23, -0x1

    #@fd
    goto :goto_b

    #@fe
    .line 2903
    .end local v4    # "p":Lcom/android/server/am/ActivityRecord;
    .end local v12    # "bottom":Lcom/android/server/am/ActivityRecord;
    .end local v23    # "srcPos":I
    .end local v24    # "start":I
    .end local v26    # "targetTask":Lcom/android/server/am/TaskRecord;
    :cond_d
    move-object/from16 v0, p0

    #@100
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@102
    const/4 v5, 0x0

    #@103
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@106
    move-result-object v3

    #@107
    check-cast v3, Lcom/android/server/am/TaskRecord;

    #@109
    iget-object v3, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@10b
    const/4 v5, 0x0

    #@10c
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10f
    move-result-object v3

    #@110
    check-cast v3, Lcom/android/server/am/ActivityRecord;

    #@112
    move-object v12, v3

    #@113
    goto :goto_8

    #@114
    .line 2914
    .restart local v12    # "bottom":Lcom/android/server/am/ActivityRecord;
    :cond_e
    move-object/from16 v0, p0

    #@116
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@118
    move-object/from16 v0, v25

    #@11a
    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    #@11c
    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskIdForUserLocked(I)I

    #@11f
    move-result v4

    #@120
    .line 2915
    move-object/from16 v0, v25

    #@122
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@124
    const/4 v6, 0x0

    #@125
    const/4 v7, 0x0

    #@126
    const/4 v8, 0x0

    #@127
    const/4 v9, 0x0

    #@128
    move-object/from16 v3, p0

    #@12a
    .line 2913
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Z)Lcom/android/server/am/TaskRecord;

    #@12d
    move-result-object v26

    #@12e
    .line 2916
    .restart local v26    # "targetTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v25

    #@130
    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@132
    move-object/from16 v0, v26

    #@134
    iput-object v3, v0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    #@136
    goto :goto_9

    #@137
    .restart local v19    # "noOptions":Z
    :cond_f
    move/from16 v24, v21

    #@139
    .line 2924
    goto :goto_a

    #@13a
    .line 2931
    .end local v19    # "noOptions":Z
    .restart local v4    # "p":Lcom/android/server/am/ActivityRecord;
    .restart local v23    # "srcPos":I
    .restart local v24    # "start":I
    :cond_10
    const/4 v13, 0x0

    #@13b
    .line 2932
    if-eqz v19, :cond_11

    #@13d
    if-nez v27, :cond_11

    #@13f
    .line 2933
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    #@142
    move-result-object v27

    #@143
    .line 2934
    .local v27, "topOptions":Landroid/app/ActivityOptions;
    if-eqz v27, :cond_11

    #@145
    .line 2935
    const/16 v19, 0x0

    #@147
    .line 2943
    .end local v27    # "topOptions":Landroid/app/ActivityOptions;
    :cond_11
    const/4 v3, 0x0

    #@148
    move-object/from16 v0, v26

    #@14a
    invoke-virtual {v4, v0, v3}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)V

    #@14d
    .line 2944
    move-object/from16 v0, v26

    #@14f
    invoke-virtual {v0, v4}, Lcom/android/server/am/TaskRecord;->addActivityAtBottom(Lcom/android/server/am/ActivityRecord;)V

    #@152
    .line 2946
    move-object/from16 v0, p0

    #@154
    move-object/from16 v1, v26

    #@156
    invoke-direct {v0, v4, v1}, Lcom/android/server/am/ActivityStack;->setAppTask(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    #@159
    goto :goto_c

    #@15a
    .line 2949
    .end local v4    # "p":Lcom/android/server/am/ActivityRecord;
    :cond_12
    move-object/from16 v0, p0

    #@15c
    iget-object v3, v0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@15e
    move-object/from16 v0, v26

    #@160
    iget v5, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@162
    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowManagerService;->moveTaskToBottom(I)V

    #@165
    .line 2954
    const/16 v21, -0x1

    #@167
    .line 2893
    goto/16 :goto_7

    #@169
    .line 2966
    .end local v12    # "bottom":Lcom/android/server/am/ActivityRecord;
    .end local v23    # "srcPos":I
    .end local v24    # "start":I
    .end local v26    # "targetTask":Lcom/android/server/am/TaskRecord;
    :cond_13
    if-gez v21, :cond_14

    #@16b
    .line 2967
    move/from16 v15, v18

    #@16d
    .restart local v15    # "end":I
    goto/16 :goto_4

    #@16f
    .line 2969
    .end local v15    # "end":I
    :cond_14
    move/from16 v15, v21

    #@171
    .restart local v15    # "end":I
    goto/16 :goto_4

    #@173
    .line 2977
    .restart local v4    # "p":Lcom/android/server/am/ActivityRecord;
    .restart local v23    # "srcPos":I
    :cond_15
    const/4 v13, 0x0

    #@174
    .line 2978
    if-eqz v19, :cond_16

    #@176
    if-nez v27, :cond_16

    #@178
    .line 2979
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    #@17b
    move-result-object v27

    #@17c
    .line 2980
    .restart local v27    # "topOptions":Landroid/app/ActivityOptions;
    if-eqz v27, :cond_16

    #@17e
    .line 2981
    const/16 v19, 0x0

    #@180
    .line 2987
    .end local v27    # "topOptions":Landroid/app/ActivityOptions;
    :cond_16
    const-string/jumbo v7, "reset-task"

    #@183
    const/4 v5, 0x0

    #@184
    const/4 v6, 0x0

    #@185
    const/4 v8, 0x0

    #@186
    move-object/from16 v3, p0

    #@188
    .line 2986
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@18b
    move-result v3

    #@18c
    if-eqz v3, :cond_5

    #@18e
    .line 2988
    add-int/lit8 v15, v15, -0x1

    #@190
    .line 2989
    add-int/lit8 v23, v23, -0x1

    #@192
    goto/16 :goto_6

    #@194
    .line 2992
    .end local v4    # "p":Lcom/android/server/am/ActivityRecord;
    :cond_17
    const/16 v21, -0x1

    #@196
    goto/16 :goto_7

    #@198
    .line 2997
    .end local v15    # "end":I
    .end local v23    # "srcPos":I
    :cond_18
    const/16 v21, -0x1

    #@19a
    goto/16 :goto_7
.end method

.method final resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 10
    .param p1, "taskTop"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newActivity"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 3121
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
    .line 3129
    .local v4, "forceReset":Z
    :goto_0
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@b
    .line 3133
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    const/4 v3, 0x0

    #@c
    .line 3136
    .local v3, "taskFound":Z
    const/4 v9, 0x0

    #@d
    .line 3139
    .local v9, "topOptions":Landroid/app/ActivityOptions;
    const/4 v5, -0x1

    #@e
    .line 3141
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
    .line 3142
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@1a
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Lcom/android/server/am/TaskRecord;

    #@20
    .line 3144
    .local v1, "targetTask":Lcom/android/server/am/TaskRecord;
    if-ne v1, v2, :cond_1

    #@22
    .line 3145
    invoke-virtual {p0, v2, v4}, Lcom/android/server/am/ActivityStack;->resetTargetTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Z)Landroid/app/ActivityOptions;

    #@25
    move-result-object v9

    #@26
    .line 3146
    .local v9, "topOptions":Landroid/app/ActivityOptions;
    const/4 v3, 0x1

    #@27
    .line 3141
    .end local v9    # "topOptions":Landroid/app/ActivityOptions;
    :goto_2
    add-int/lit8 v6, v6, -0x1

    #@29
    goto :goto_1

    #@2a
    .line 3121
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
    .line 3148
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->resetAffinityTaskIfNeededLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;ZZI)I

    #@30
    move-result v5

    #@31
    goto :goto_2

    #@32
    .line 3153
    .end local v1    # "targetTask":Lcom/android/server/am/TaskRecord;
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@34
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@37
    move-result v7

    #@38
    .line 3154
    .local v7, "taskNdx":I
    if-ltz v7, :cond_4

    #@3a
    .line 3156
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
    .line 3157
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
    .line 3160
    .end local v8    # "taskNdx":I
    .restart local v7    # "taskNdx":I
    :cond_4
    if-eqz v9, :cond_5

    #@51
    .line 3163
    if-eqz p1, :cond_6

    #@53
    .line 3164
    invoke-virtual {p1, v9}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    #@56
    .line 3170
    :cond_5
    :goto_4
    return-object p1

    #@57
    .line 3166
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
    .line 5057
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@3
    move-result-object v3

    #@4
    .line 5061
    .local v3, "starting":Lcom/android/server/am/ActivityRecord;
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v5

    #@a
    add-int/lit8 v4, v5, -0x1

    #@c
    .local v4, "taskNdx":I
    :goto_0
    if-ltz v4, :cond_2

    #@e
    .line 5062
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@13
    move-result-object v5

    #@14
    check-cast v5, Lcom/android/server/am/TaskRecord;

    #@16
    iget-object v1, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@18
    .line 5063
    .local v1, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@1b
    move-result v5

    #@1c
    add-int/lit8 v2, v5, -0x1

    #@1e
    .local v2, "activityNdx":I
    :goto_1
    if-ltz v2, :cond_1

    #@20
    .line 5064
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Lcom/android/server/am/ActivityRecord;

    #@26
    .line 5065
    .local v0, "a":Lcom/android/server/am/ActivityRecord;
    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@28
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@2a
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_0

    #@30
    .line 5066
    const/4 v5, 0x1

    #@31
    iput-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    #@33
    .line 5067
    if-eqz v3, :cond_0

    #@35
    if-ne v0, v3, :cond_0

    #@37
    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@39
    if-eqz v5, :cond_0

    #@3b
    .line 5068
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@3d
    .line 5069
    const/16 v6, 0x100

    #@3f
    .line 5068
    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    #@42
    .line 5063
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@44
    goto :goto_1

    #@45
    .line 5061
    .end local v0    # "a":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    #@47
    goto :goto_0

    #@48
    .line 5075
    .end local v1    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v2    # "activityNdx":I
    :cond_2
    return-object v3
.end method

.method resumeTopActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .locals 5
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 2114
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@4
    iget-boolean v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 2116
    return v3

    #@9
    .line 2119
    :cond_0
    const/4 v0, 0x0

    #@a
    .line 2122
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@c
    const/4 v2, 0x1

    #@d
    iput-boolean v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    #@f
    .line 2123
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@11
    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mLockScreenShown:I

    #@13
    if-ne v1, v4, :cond_1

    #@15
    .line 2124
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@17
    const/4 v2, 0x0

    #@18
    iput v2, v1, Lcom/android/server/am/ActivityManagerService;->mLockScreenShown:I

    #@1a
    .line 2125
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1c
    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->updateSleepIfNeededLocked()V

    #@1f
    .line 2127
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityStack;->resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v0

    #@23
    .line 2129
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@25
    iput-boolean v3, v1, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    #@27
    .line 2131
    return v0

    #@28
    .line 2128
    .local v0, "result":Z
    :catchall_0
    move-exception v1

    #@29
    .line 2129
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@2b
    iput-boolean v3, v2, Lcom/android/server/am/ActivityStackSupervisor;->inResumeTopActivity:Z

    #@2d
    .line 2128
    throw v1
.end method

.method final safelyDestroyActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3917
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isDestroyable()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 3921
    const/4 v0, 0x1

    #@7
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    #@a
    move-result v0

    #@b
    return v0

    #@c
    .line 3923
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
    .line 3877
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@2
    const/16 v2, 0x69

    #@4
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    .line 3878
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;

    #@a
    invoke-direct {v1, p1, p2}, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;-><init>(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    #@d
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@f
    .line 3879
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@11
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@14
    .line 3876
    return-void
.end method

.method public final screenshotActivitiesLocked(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "who"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 1032
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1034
    return-object v6

    #@7
    .line 1037
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 1041
    return-object v6

    #@e
    .line 1044
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@10
    iget v3, v0, Lcom/android/server/am/ActivityManagerService;->mThumbnailWidth:I

    #@12
    .line 1045
    .local v3, "w":I
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@14
    iget v4, v0, Lcom/android/server/am/ActivityManagerService;->mThumbnailHeight:I

    #@16
    .line 1047
    .local v4, "h":I
    if-gtz v3, :cond_2

    #@18
    .line 1048
    sget-object v0, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@1a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v2, "\tInvalid thumbnail dimensions: "

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    const-string/jumbo v2, "x"

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 1049
    return-object v6

    #@3d
    .line 1052
    :cond_2
    iget v0, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@3f
    const/4 v1, 0x3

    #@40
    if-ne v0, v1, :cond_3

    #@42
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@44
    iget-boolean v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mIsDockMinimized:Z

    #@46
    if-eqz v0, :cond_3

    #@48
    .line 1057
    return-object v6

    #@49
    .line 1060
    :cond_3
    const/high16 v5, 0x3f800000    # 1.0f

    #@4b
    .line 1067
    .local v5, "scale":F
    const/4 v4, -0x1

    #@4c
    const/4 v3, -0x1

    #@4d
    .line 1068
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@4f
    iget v5, v0, Lcom/android/server/am/ActivityManagerService;->mFullscreenThumbnailScale:F

    #@51
    .line 1071
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@53
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@55
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->screenshotApplications(Landroid/os/IBinder;IIIF)Landroid/graphics/Bitmap;

    #@58
    move-result-object v0

    #@59
    return-object v0
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
    .line 3176
    if-lez p1, :cond_0

    #@3
    .line 3177
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@5
    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@7
    .line 3178
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
    .line 3177
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;I)V

    #@12
    .line 3184
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
    .line 3186
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    #@22
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@25
    .line 3187
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v0, Landroid/app/ResultInfo;

    #@27
    invoke-direct {v0, p3, p4, p5, p6}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    #@2a
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2d
    .line 3189
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
    .line 3190
    return-void

    #@37
    .line 3191
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :catch_0
    move-exception v6

    #@38
    .line 3192
    .local v6, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@3a
    new-instance v1, Ljava/lang/StringBuilder;

    #@3c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3f
    const-string/jumbo v2, "Exception thrown sending result to "

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v1

    #@4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@51
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v0, p2

    #@52
    move-object v1, v8

    #@53
    move-object v2, p3

    #@54
    move v3, p4

    #@55
    move v4, p5

    #@56
    move-object v5, p6

    #@57
    .line 3196
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    #@5a
    .line 3174
    return-void
.end method

.method setBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 543
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mFullscreen:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    :goto_0
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    #@7
    .line 544
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskPositioner:Lcom/android/server/am/LaunchingTaskPositioner;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 545
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskPositioner:Lcom/android/server/am/LaunchingTaskPositioner;

    #@d
    invoke-virtual {v0, p1}, Lcom/android/server/am/LaunchingTaskPositioner;->configure(Landroid/graphics/Rect;)V

    #@10
    .line 542
    :cond_0
    return-void

    #@11
    .line 543
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    #@13
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    #@16
    goto :goto_0
.end method

.method setLaunchTime(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 936
    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_1

    #@8
    .line 937
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v0

    #@c
    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    #@e
    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->fullyDrawnStartTime:J

    #@10
    .line 938
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    #@12
    cmp-long v0, v0, v2

    #@14
    if-nez v0, :cond_0

    #@16
    .line 939
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@18
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->startLaunchTraces(Ljava/lang/String;)V

    #@1b
    .line 940
    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->displayStartTime:J

    #@1d
    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mFullyDrawnStartTime:J

    #@1f
    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    #@21
    .line 935
    :cond_0
    :goto_0
    return-void

    #@22
    .line 942
    :cond_1
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    #@24
    cmp-long v0, v0, v2

    #@26
    if-nez v0, :cond_0

    #@28
    .line 943
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@2a
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityStack;->startLaunchTraces(Ljava/lang/String;)V

    #@2d
    .line 944
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
    .line 4140
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 4141
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@8
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    #@a
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->setVisibleBehindActivity(Lcom/android/server/am/ActivityRecord;)V

    #@d
    .line 4139
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
    .line 3643
    if-eqz p1, :cond_0

    #@4
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@6
    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@8
    if-nez v2, :cond_1

    #@a
    .line 3645
    :cond_0
    return v4

    #@b
    .line 3644
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
    .line 3651
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
    .line 3652
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
    .line 3651
    if-eqz v2, :cond_5

    #@31
    .line 3654
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@33
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getTaskToReturnTo()I

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_2

    #@39
    .line 3656
    return v4

    #@3a
    .line 3659
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@3c
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@3e
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@41
    move-result v1

    #@42
    .line 3660
    .local v1, "taskIdx":I
    if-gtz v1, :cond_3

    #@44
    .line 3661
    sget-object v2, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@46
    new-instance v3, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v4, "shouldUpRecreateTask: task not in history for "

    #@4e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v3

    #@56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@5d
    .line 3662
    return v5

    #@5e
    .line 3664
    :cond_3
    if-nez v1, :cond_4

    #@60
    .line 3666
    return v4

    #@61
    .line 3668
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@63
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@66
    move-result-object v0

    #@67
    check-cast v0, Lcom/android/server/am/TaskRecord;

    #@69
    .line 3669
    .local v0, "prevTask":Lcom/android/server/am/TaskRecord;
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@6b
    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@6d
    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    #@6f
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@72
    move-result v2

    #@73
    if-nez v2, :cond_5

    #@75
    .line 3671
    return v4

    #@76
    .line 3674
    .end local v0    # "prevTask":Lcom/android/server/am/TaskRecord;
    .end local v1    # "taskIdx":I
    :cond_5
    return v5
.end method

.method final startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLandroid/app/ActivityOptions;)V
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "newTask"    # Z
    .param p3, "keepCurTransition"    # Z
    .param p4, "options"    # Landroid/app/ActivityOptions;

    #@0
    .prologue
    .line 2678
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@2
    .line 2679
    .local v3, "rTask":Lcom/android/server/am/TaskRecord;
    iget v7, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    #@4
    .line 2681
    .local v7, "taskId":I
    iget-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    #@6
    if-nez v9, :cond_1

    #@8
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    #@b
    move-result-object v9

    #@c
    if-eqz v9, :cond_0

    #@e
    if-eqz p2, :cond_1

    #@10
    .line 2685
    :cond_0
    invoke-direct {p0, v3, p1}, Lcom/android/server/am/ActivityStack;->insertTaskAtTop(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    #@13
    .line 2686
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@15
    invoke-virtual {v9, v7}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    #@18
    .line 2688
    :cond_1
    const/4 v6, 0x0

    #@19
    .line 2689
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    if-nez p2, :cond_5

    #@1b
    .line 2691
    const/4 v5, 0x1

    #@1c
    .line 2692
    .local v5, "startIt":Z
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@1e
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@21
    move-result v9

    #@22
    add-int/lit8 v8, v9, -0x1

    #@24
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .local v8, "taskNdx":I
    :goto_0
    if-ltz v8, :cond_5

    #@26
    .line 2693
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@28
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2b
    move-result-object v6

    #@2c
    check-cast v6, Lcom/android/server/am/TaskRecord;

    #@2e
    .line 2694
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    #@31
    move-result-object v9

    #@32
    if-nez v9, :cond_3

    #@34
    .line 2692
    :cond_2
    :goto_1
    add-int/lit8 v8, v8, -0x1

    #@36
    goto :goto_0

    #@37
    .line 2698
    :cond_3
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@39
    if-ne v6, v9, :cond_4

    #@3b
    .line 2702
    if-nez v5, :cond_5

    #@3d
    .line 2705
    invoke-virtual {v6, p1}, Lcom/android/server/am/TaskRecord;->addActivityToTop(Lcom/android/server/am/ActivityRecord;)V

    #@40
    .line 2706
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->putInHistory()V

    #@43
    .line 2707
    invoke-virtual {p0, p1, v6}, Lcom/android/server/am/ActivityStack;->addConfigOverride(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    #@46
    .line 2711
    invoke-static/range {p4 .. p4}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    #@49
    .line 2712
    return-void

    #@4a
    .line 2715
    :cond_4
    iget v9, v6, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    #@4c
    if-lez v9, :cond_2

    #@4e
    .line 2716
    const/4 v5, 0x0

    #@4f
    goto :goto_1

    #@50
    .line 2727
    .end local v5    # "startIt":Z
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v8    # "taskNdx":I
    :cond_5
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@52
    if-ne v6, v9, :cond_6

    #@54
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@56
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    #@59
    move-result v9

    #@5a
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@5c
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    #@5f
    move-result v10

    #@60
    add-int/lit8 v10, v10, -0x1

    #@62
    if-eq v9, v10, :cond_6

    #@64
    .line 2728
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@66
    const/4 v10, 0x0

    #@67
    iput-boolean v10, v9, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    #@69
    .line 2733
    :cond_6
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@6b
    .line 2738
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v6, p1}, Lcom/android/server/am/TaskRecord;->addActivityToTop(Lcom/android/server/am/ActivityRecord;)V

    #@6e
    .line 2739
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->setFrontOfTask()V

    #@71
    .line 2741
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->putInHistory()V

    #@74
    .line 2742
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    #@77
    move-result v9

    #@78
    if-eqz v9, :cond_7

    #@7a
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->numActivities()I

    #@7d
    move-result v9

    #@7e
    if-lez v9, :cond_15

    #@80
    .line 2746
    :cond_7
    move v4, p2

    #@81
    .line 2747
    .local v4, "showStartingIcon":Z
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@83
    .line 2748
    .local v2, "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v2, :cond_8

    #@85
    .line 2749
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@87
    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    #@89
    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    #@8b
    iget-object v11, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@8d
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8f
    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    #@91
    invoke-virtual {v9, v10, v11}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    #@94
    move-result-object v2

    #@95
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    check-cast v2, Lcom/android/server/am/ProcessRecord;

    #@97
    .line 2751
    .restart local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_8
    if-eqz v2, :cond_9

    #@99
    iget-object v9, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@9b
    if-nez v9, :cond_a

    #@9d
    .line 2752
    :cond_9
    const/4 v4, 0x1

    #@9e
    .line 2756
    .end local v4    # "showStartingIcon":Z
    :cond_a
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@a0
    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    #@a3
    move-result v9

    #@a4
    const/high16 v10, 0x10000

    #@a6
    and-int/2addr v9, v10

    #@a7
    if-eqz v9, :cond_d

    #@a9
    .line 2757
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@ab
    const/4 v10, 0x0

    #@ac
    invoke-virtual {v9, v10, p3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    #@af
    .line 2758
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    #@b1
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b4
    .line 2767
    :goto_2
    invoke-virtual {p0, p1, v6}, Lcom/android/server/am/ActivityStack;->addConfigOverride(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    #@b7
    .line 2768
    const/4 v0, 0x1

    #@b8
    .line 2769
    .local v0, "doShow":Z
    if-eqz p2, :cond_11

    #@ba
    .line 2775
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@bc
    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    #@bf
    move-result v9

    #@c0
    const/high16 v10, 0x200000

    #@c2
    and-int/2addr v9, v10

    #@c3
    if-eqz v9, :cond_b

    #@c5
    .line 2776
    invoke-virtual {p0, p1, p1}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@c8
    .line 2777
    const/4 v9, 0x0

    #@c9
    invoke-virtual {p0, v9}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    #@cc
    move-result-object v9

    #@cd
    if-ne v9, p1, :cond_10

    #@cf
    const/4 v0, 0x1

    #@d0
    .line 2783
    :cond_b
    :goto_3
    iget-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    #@d2
    if-eqz v9, :cond_12

    #@d4
    .line 2786
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@d6
    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@d8
    const/4 v11, 0x1

    #@d9
    invoke-virtual {v9, v10, v11}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    #@dc
    .line 2787
    const/4 v9, 0x0

    #@dd
    const/4 v10, 0x0

    #@de
    const/4 v11, 0x0

    #@df
    invoke-virtual {p0, v9, v10, v11}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    #@e2
    .line 2677
    .end local v0    # "doShow":Z
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local p4    # "options":Landroid/app/ActivityOptions;
    :cond_c
    :goto_4
    return-void

    #@e3
    .line 2760
    .restart local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local p4    # "options":Landroid/app/ActivityOptions;
    :cond_d
    iget-object v10, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@e5
    if-eqz p2, :cond_f

    #@e7
    .line 2761
    iget-boolean v9, p1, Lcom/android/server/am/ActivityRecord;->mLaunchTaskBehind:Z

    #@e9
    if-eqz v9, :cond_e

    #@eb
    .line 2762
    const/16 v9, 0x10

    #@ed
    .line 2760
    :goto_5
    invoke-virtual {v10, v9, p3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    #@f0
    .line 2765
    iget-object v9, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    #@f2
    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@f5
    goto :goto_2

    #@f6
    .line 2763
    :cond_e
    const/16 v9, 0x8

    #@f8
    goto :goto_5

    #@f9
    .line 2764
    :cond_f
    const/4 v9, 0x6

    #@fa
    goto :goto_5

    #@fb
    .line 2777
    .restart local v0    # "doShow":Z
    :cond_10
    const/4 v0, 0x0

    #@fc
    goto :goto_3

    #@fd
    .line 2779
    :cond_11
    if-eqz p4, :cond_b

    #@ff
    invoke-virtual/range {p4 .. p4}, Landroid/app/ActivityOptions;->getAnimationType()I

    #@102
    move-result v9

    #@103
    .line 2780
    const/4 v10, 0x5

    #@104
    .line 2779
    if-ne v9, v10, :cond_b

    #@106
    .line 2781
    const/4 v0, 0x0

    #@107
    goto :goto_3

    #@108
    .line 2788
    :cond_12
    if-eqz v0, :cond_c

    #@10a
    .line 2793
    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@10c
    invoke-virtual {v9}, Lcom/android/server/am/TaskRecord;->topRunningActivityWithStartingWindowLocked()Lcom/android/server/am/ActivityRecord;

    #@10f
    move-result-object v1

    #@110
    .line 2794
    .local v1, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_13

    #@112
    .line 2797
    iget-object v9, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@114
    iget-object v10, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@116
    if-eq v9, v10, :cond_14

    #@118
    .line 2798
    const/4 v1, 0x0

    #@119
    .line 2805
    .end local v1    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_13
    :goto_6
    invoke-virtual {p1, v1, v4}, Lcom/android/server/am/ActivityRecord;->showStartingWindow(Lcom/android/server/am/ActivityRecord;Z)V

    #@11c
    goto :goto_4

    #@11d
    .line 2801
    .restart local v1    # "prev":Lcom/android/server/am/ActivityRecord;
    :cond_14
    iget-boolean v9, v1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    #@11f
    if-eqz v9, :cond_13

    #@121
    .line 2802
    const/4 v1, 0x0

    #@122
    .local v1, "prev":Lcom/android/server/am/ActivityRecord;
    goto :goto_6

    #@123
    .line 2810
    .end local v0    # "doShow":Z
    .end local v1    # "prev":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_15
    invoke-virtual {p0, p1, v6}, Lcom/android/server/am/ActivityStack;->addConfigOverride(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    #@126
    .line 2811
    invoke-static/range {p4 .. p4}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    #@129
    .line 2812
    const/16 p4, 0x0

    #@12b
    .local p4, "options":Landroid/app/ActivityOptions;
    goto :goto_4
.end method

.method final startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z
    .locals 11
    .param p1, "userLeaving"    # Z
    .param p2, "uiSleeping"    # Z
    .param p3, "resuming"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "dontWait"    # Z

    #@0
    .prologue
    .line 1091
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1092
    sget-object v0, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "Going to pause when pause is already pending for "

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    .line 1093
    const-string/jumbo v3, " state="

    #@1b
    .line 1092
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    .line 1093
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@21
    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@23
    .line 1092
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@2e
    .line 1094
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@30
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleepingLocked()Z

    #@33
    move-result v0

    #@34
    if-nez v0, :cond_0

    #@36
    .line 1098
    const/4 v0, 0x0

    #@37
    invoke-direct {p0, v0, p3}, Lcom/android/server/am/ActivityStack;->completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V

    #@3a
    .line 1101
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@3c
    .line 1102
    .local v1, "prev":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_2

    #@3e
    .line 1103
    if-nez p3, :cond_1

    #@40
    .line 1104
    sget-object v0, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@42
    const-string/jumbo v2, "Trying to pause when nothing is resumed"

    #@45
    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@48
    .line 1105
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@4a
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    #@4d
    .line 1107
    :cond_1
    const/4 v0, 0x0

    #@4e
    return v0

    #@4f
    .line 1110
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    #@51
    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mParentActivity:Lcom/android/server/am/ActivityRecord;

    #@53
    if-nez v0, :cond_3

    #@55
    .line 1112
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@57
    move v2, p1

    #@58
    move v3, p2

    #@59
    move-object v4, p3

    #@5a
    move v5, p4

    #@5b
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->pauseChildStacks(Lcom/android/server/am/ActivityRecord;ZZLcom/android/server/am/ActivityRecord;Z)V

    #@5e
    .line 1117
    :cond_3
    const/4 v0, 0x0

    #@5f
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    #@61
    .line 1118
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@63
    .line 1119
    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    #@65
    .line 1120
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    #@67
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    #@6a
    move-result v0

    #@6b
    const/high16 v2, 0x40000000    # 2.0f

    #@6d
    and-int/2addr v0, v2

    #@6e
    if-nez v0, :cond_4

    #@70
    .line 1121
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@72
    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    #@74
    and-int/lit16 v0, v0, 0x80

    #@76
    if-eqz v0, :cond_9

    #@78
    :cond_4
    move-object v0, v1

    #@79
    .line 1120
    :goto_0
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    #@7b
    .line 1122
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@7d
    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@7f
    .line 1123
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@81
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    #@84
    .line 1124
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->clearLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    #@87
    .line 1125
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@89
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@8c
    move-result-object v10

    #@8d
    .line 1126
    .local v10, "next":Lcom/android/server/am/ActivityRecord;
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@8f
    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mHasRecents:Z

    #@91
    if-eqz v0, :cond_6

    #@93
    .line 1127
    if-eqz v10, :cond_5

    #@95
    iget-boolean v0, v10, Lcom/android/server/am/ActivityRecord;->noDisplay:Z

    #@97
    if-nez v0, :cond_5

    #@99
    iget-object v0, v10, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@9b
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    #@9d
    if-eq v0, v2, :cond_a

    #@9f
    .line 1128
    :cond_5
    :goto_1
    const/4 v0, 0x1

    #@a0
    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->mUpdateTaskThumbnailWhenHidden:Z

    #@a2
    .line 1130
    :cond_6
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->stopFullyDrawnTraceIfNeeded()V

    #@a5
    .line 1132
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@a7
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    #@aa
    .line 1134
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@ac
    if-eqz v0, :cond_b

    #@ae
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@b0
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@b2
    if-eqz v0, :cond_b

    #@b4
    .line 1137
    const/4 v0, 0x3

    #@b5
    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    #@b7
    .line 1138
    iget v2, v1, Lcom/android/server/am/ActivityRecord;->userId:I

    #@b9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@bc
    move-result-object v2

    #@bd
    const/4 v3, 0x0

    #@be
    aput-object v2, v0, v3

    #@c0
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@c3
    move-result v2

    #@c4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@c7
    move-result-object v2

    #@c8
    const/4 v3, 0x1

    #@c9
    aput-object v2, v0, v3

    #@cb
    .line 1139
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@cd
    const/4 v3, 0x2

    #@ce
    aput-object v2, v0, v3

    #@d0
    .line 1137
    const/16 v2, 0x753d

    #@d2
    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@d5
    .line 1140
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@d7
    const/4 v2, 0x0

    #@d8
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    #@db
    .line 1141
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@dd
    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@df
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@e1
    iget-boolean v4, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@e3
    .line 1142
    iget v6, v1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    #@e5
    move v5, p1

    #@e6
    move v7, p4

    #@e7
    .line 1141
    invoke-interface/range {v2 .. v7}, Landroid/app/IApplicationThread;->schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@ea
    .line 1158
    :goto_2
    if-nez p2, :cond_7

    #@ec
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@ee
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDownLocked()Z

    #@f1
    move-result v0

    #@f2
    if-eqz v0, :cond_c

    #@f4
    .line 1162
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@f6
    if-eqz v0, :cond_e

    #@f8
    .line 1167
    if-nez p2, :cond_8

    #@fa
    .line 1168
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    #@fd
    .line 1173
    :cond_8
    if-eqz p4, :cond_d

    #@ff
    .line 1176
    const/4 v0, 0x0

    #@100
    invoke-direct {p0, v0, p3}, Lcom/android/server/am/ActivityStack;->completePauseLocked(ZLcom/android/server/am/ActivityRecord;)V

    #@103
    .line 1177
    const/4 v0, 0x0

    #@104
    return v0

    #@105
    .line 1121
    .end local v10    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_9
    const/4 v0, 0x0

    #@106
    goto/16 :goto_0

    #@108
    .line 1126
    .restart local v10    # "next":Lcom/android/server/am/ActivityRecord;
    :cond_a
    if-eqz p2, :cond_6

    #@10a
    goto :goto_1

    #@10b
    .line 1143
    :catch_0
    move-exception v8

    #@10c
    .line 1145
    .local v8, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@10e
    const-string/jumbo v2, "Exception thrown during pause"

    #@111
    invoke-static {v0, v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@114
    .line 1146
    const/4 v0, 0x0

    #@115
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@117
    .line 1147
    const/4 v0, 0x0

    #@118
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    #@11a
    .line 1148
    const/4 v0, 0x0

    #@11b
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    #@11d
    goto :goto_2

    #@11e
    .line 1151
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_b
    const/4 v0, 0x0

    #@11f
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    #@121
    .line 1152
    const/4 v0, 0x0

    #@122
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    #@124
    .line 1153
    const/4 v0, 0x0

    #@125
    iput-object v0, p0, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    #@127
    goto :goto_2

    #@128
    .line 1159
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@12a
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->acquireLaunchWakelock()V

    #@12d
    goto :goto_3

    #@12e
    .line 1183
    :cond_d
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@130
    const/16 v2, 0x65

    #@132
    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@135
    move-result-object v9

    #@136
    .line 1184
    .local v9, "msg":Landroid/os/Message;
    iput-object v1, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@138
    .line 1185
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@13b
    move-result-wide v2

    #@13c
    iput-wide v2, v1, Lcom/android/server/am/ActivityRecord;->pauseTime:J

    #@13e
    .line 1186
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@140
    const-wide/16 v2, 0x1f4

    #@142
    invoke-virtual {v0, v9, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@145
    .line 1188
    const/4 v0, 0x1

    #@146
    return v0

    #@147
    .line 1195
    .end local v9    # "msg":Landroid/os/Message;
    :cond_e
    if-nez p3, :cond_f

    #@149
    .line 1196
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@14b
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeFocusedStackTopActivityLocked()Z

    #@14e
    .line 1198
    :cond_f
    const/4 v0, 0x0

    #@14f
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
    .line 3257
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
    .line 3258
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@10
    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    #@12
    and-int/lit16 v0, v0, 0x80

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 3259
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@18
    if-nez v0, :cond_1

    #@1a
    .line 3260
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@1c
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleepingLocked()Z

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_1

    #@22
    .line 3262
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@24
    .line 3263
    const-string/jumbo v4, "stop-no-history"

    #@27
    move-object v0, p0

    #@28
    move v5, v2

    #@29
    .line 3262
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_1

    #@2f
    .line 3265
    const-string/jumbo v0, "stopActivityFinished"

    #@32
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    #@35
    .line 3266
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    #@38
    .line 3267
    return-void

    #@39
    .line 3276
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
    .line 3277
    const-string/jumbo v0, "stopActivity"

    #@46
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActivityStack;->adjustFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    #@49
    .line 3278
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    #@4c
    .line 3280
    const/4 v0, 0x0

    #@4d
    :try_start_0
    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    #@4f
    .line 3283
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    #@51
    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@53
    .line 3286
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@55
    if-nez v0, :cond_2

    #@57
    .line 3287
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@59
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@5b
    const/4 v2, 0x0

    #@5c
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    #@5f
    .line 3290
    :cond_2
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    #@61
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@64
    move-result v1

    #@65
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@67
    .line 3289
    invoke-static {v0, v1, v2}, Lcom/android/server/am/EventLogTags;->writeAmStopActivity(IILjava/lang/String;)V

    #@6a
    .line 3291
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    #@6c
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    #@6e
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@70
    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    #@72
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    #@74
    invoke-interface {v0, v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    #@77
    .line 3292
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    #@79
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDownLocked()Z

    #@7c
    move-result v0

    #@7d
    if-eqz v0, :cond_3

    #@7f
    .line 3293
    const/4 v0, 0x1

    #@80
    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityRecord;->setSleeping(Z)V

    #@83
    .line 3295
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@85
    const/16 v1, 0x68

    #@87
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@8a
    move-result-object v7

    #@8b
    .line 3296
    .local v7, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    #@8d
    const-wide/16 v2, 0x2710

    #@8f
    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@92
    .line 3255
    .end local v7    # "msg":Landroid/os/Message;
    :cond_4
    :goto_0
    return-void

    #@93
    .line 3297
    :catch_0
    move-exception v6

    #@94
    .line 3301
    .local v6, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@96
    const-string/jumbo v1, "Exception thrown during pause"

    #@99
    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@9c
    .line 3303
    iput-boolean v8, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    #@9e
    .line 3305
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@a0
    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@a2
    .line 3306
    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->deferRelaunchUntilPaused:Z

    #@a4
    if-eqz v0, :cond_4

    #@a6
    .line 3307
    const-string/jumbo v0, "stop-except"

    #@a9
    invoke-virtual {p0, p1, v8, v0}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z

    #@ac
    goto :goto_0
.end method

.method final switchUserLocked(I)V
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 870
    iget v3, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    #@2
    if-ne v3, p1, :cond_0

    #@4
    .line 871
    return-void

    #@5
    .line 873
    :cond_0
    iput p1, p0, Lcom/android/server/am/ActivityStack;->mCurrentUser:I

    #@7
    .line 876
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v1

    #@d
    .line 877
    .local v1, "index":I
    const/4 v0, 0x0

    #@e
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    #@10
    .line 878
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@12
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Lcom/android/server/am/TaskRecord;

    #@18
    .line 882
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@1a
    iget v4, v2, Lcom/android/server/am/TaskRecord;->userId:I

    #@1c
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isCurrentProfileLocked(I)Z

    #@1f
    move-result v3

    #@20
    if-nez v3, :cond_1

    #@22
    .line 883
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@25
    move-result-object v3

    #@26
    if-eqz v3, :cond_2

    #@28
    .line 886
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@2a
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@2d
    .line 887
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@2f
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@32
    .line 888
    add-int/lit8 v1, v1, -0x1

    #@34
    .line 883
    goto :goto_0

    #@35
    .line 891
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@37
    goto :goto_0

    #@38
    .line 869
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    return-void
.end method

.method taskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .locals 3
    .param p1, "id"    # I

    #@0
    .prologue
    .line 626
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
    .line 627
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/am/TaskRecord;

    #@12
    .line 628
    .local v0, "task":Lcom/android/server/am/TaskRecord;
    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    #@14
    if-ne v2, p1, :cond_0

    #@16
    .line 629
    return-object v0

    #@17
    .line 626
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@19
    goto :goto_0

    #@1a
    .line 632
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
    .line 5306
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
    .line 5307
    const-string/jumbo v1, " stackId="

    #@1b
    .line 5306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 5307
    iget v1, p0, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@21
    .line 5306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 5307
    const-string/jumbo v1, ", "

    #@28
    .line 5306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 5307
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@2e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@31
    move-result v1

    #@32
    .line 5306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 5307
    const-string/jumbo v1, " tasks}"

    #@39
    .line 5306
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
    .line 605
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
    .line 606
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
    .line 607
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
    .line 608
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Lcom/android/server/am/ActivityRecord;

    #@22
    .line 609
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@24
    if-nez v4, :cond_0

    #@26
    .line 610
    return-object v2

    #@27
    .line 607
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@29
    goto :goto_1

    #@2a
    .line 605
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    #@2c
    goto :goto_0

    #@2d
    .line 614
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_2
    const/4 v4, 0x0

    #@2e
    return-object v4
.end method

.method final topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 554
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
    .line 555
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Lcom/android/server/am/TaskRecord;

    #@13
    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@16
    move-result-object v0

    #@17
    .line 556
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    #@19
    .line 557
    return-object v0

    #@1a
    .line 554
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@1c
    goto :goto_0

    #@1d
    .line 560
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-object v3
.end method

.method final topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "taskId"    # I

    #@0
    .prologue
    .line 587
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
    .line 588
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lcom/android/server/am/TaskRecord;

    #@12
    .line 589
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget v5, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    #@14
    if-ne v5, p2, :cond_1

    #@16
    .line 587
    :cond_0
    add-int/lit8 v4, v4, -0x1

    #@18
    goto :goto_0

    #@19
    .line 592
    :cond_1
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@1b
    .line 593
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
    .line 594
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Lcom/android/server/am/ActivityRecord;

    #@29
    .line 596
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
    .line 597
    return-object v2

    #@38
    .line 593
    :cond_2
    add-int/lit8 v1, v1, -0x1

    #@3a
    goto :goto_1

    #@3b
    .line 601
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3
    const/4 v5, 0x0

    #@3c
    return-object v5
.end method

.method final topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .param p1, "notTop"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 564
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
    .line 565
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Lcom/android/server/am/TaskRecord;

    #@12
    .line 566
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@14
    .line 567
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
    .line 568
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Lcom/android/server/am/ActivityRecord;

    #@22
    .line 569
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@24
    if-nez v5, :cond_0

    #@26
    iget-boolean v5, v2, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    #@28
    if-eqz v5, :cond_1

    #@2a
    .line 567
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@2c
    goto :goto_1

    #@2d
    .line 569
    :cond_1
    if-eq v2, p1, :cond_0

    #@2f
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_0

    #@35
    .line 570
    return-object v2

    #@36
    .line 564
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v4, v4, -0x1

    #@38
    goto :goto_0

    #@39
    .line 574
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
    .line 618
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    .line 619
    .local v0, "size":I
    if-lez v0, :cond_0

    #@8
    .line 620
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
    .line 622
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
    .line 4956
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v0

    #@7
    add-int/lit8 v8, v0, -0x1

    #@9
    .line 4958
    .local v8, "top":I
    if-ltz v8, :cond_0

    #@b
    .line 4959
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
    .line 4960
    .local v6, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v0

    #@19
    add-int/lit8 v7, v0, -0x1

    #@1b
    .line 4961
    .local v7, "activityTop":I
    if-lez v7, :cond_0

    #@1d
    .line 4962
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@23
    .line 4963
    const-string/jumbo v4, "unhandled-back"

    #@26
    .line 4962
    const/4 v3, 0x0

    #@27
    .line 4963
    const/4 v5, 0x1

    #@28
    move-object v0, p0

    #@29
    .line 4962
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    #@2c
    .line 4955
    .end local v6    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v7    # "activityTop":I
    :cond_0
    return-void
.end method

.method updateActivityApplicationInfoLocked(Landroid/content/pm/ApplicationInfo;)V
    .locals 5
    .param p1, "aInfo"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    .line 973
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@2
    .line 974
    .local v2, "packageName":Ljava/lang/String;
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
    if-ltz v3, :cond_2

    #@c
    .line 975
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
    .line 976
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@19
    move-result v4

    #@1a
    add-int/lit8 v1, v4, -0x1

    #@1c
    .local v1, "activityNdx":I
    :goto_1
    if-ltz v1, :cond_1

    #@1e
    .line 977
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v4

    #@22
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    #@24
    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    #@26
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v4

    #@2a
    if-eqz v4, :cond_0

    #@2c
    .line 978
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2f
    move-result-object v4

    #@30
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    #@32
    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    #@34
    iput-object p1, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@36
    .line 976
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@38
    goto :goto_1

    #@39
    .line 974
    :cond_1
    add-int/lit8 v3, v3, -0x1

    #@3b
    goto :goto_0

    #@3c
    .line 972
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_2
    return-void
.end method

.method updateBoundsAllowed(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "tempTaskBounds"    # Landroid/graphics/Rect;
    .param p3, "tempTaskInsetBounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 520
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferred:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 521
    return v1

    #@6
    .line 523
    :cond_0
    if-eqz p1, :cond_1

    #@8
    .line 524
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    #@a
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@d
    .line 528
    :goto_0
    if-eqz p2, :cond_2

    #@f
    .line 529
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskBounds:Landroid/graphics/Rect;

    #@11
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@14
    .line 533
    :goto_1
    if-eqz p3, :cond_3

    #@16
    .line 534
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskInsetBounds:Landroid/graphics/Rect;

    #@18
    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    #@1b
    .line 538
    :goto_2
    iput-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mUpdateBoundsDeferredCalled:Z

    #@1d
    .line 539
    const/4 v0, 0x0

    #@1e
    return v0

    #@1f
    .line 526
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredBounds:Landroid/graphics/Rect;

    #@21
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@24
    goto :goto_0

    #@25
    .line 531
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskBounds:Landroid/graphics/Rect;

    #@27
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@2a
    goto :goto_1

    #@2b
    .line 536
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mDeferredTaskInsetBounds:Landroid/graphics/Rect;

    #@2d
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    #@30
    goto :goto_2
.end method

.method final updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    .line 655
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    .line 656
    .local v0, "hadit":Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@b
    .line 657
    return v0
.end method

.method updateTaskMovement(Lcom/android/server/am/TaskRecord;Z)V
    .locals 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "toFront"    # Z

    #@0
    .prologue
    .line 4270
    iget-boolean v0, p1, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 4271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@7
    move-result-wide v0

    #@8
    iput-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    #@a
    .line 4275
    if-nez p2, :cond_0

    #@c
    .line 4276
    iget-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    #@e
    const-wide/16 v2, -0x1

    #@10
    mul-long/2addr v0, v2

    #@11
    iput-wide v0, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    #@13
    .line 4279
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@15
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStackSupervisor;->invalidateTaskLayers()V

    #@18
    .line 4269
    return-void
.end method

.method final updateTransitLocked(ILandroid/app/ActivityOptions;)V
    .locals 3
    .param p1, "transit"    # I
    .param p2, "options"    # Landroid/app/ActivityOptions;

    #@0
    .prologue
    .line 4258
    if-eqz p2, :cond_0

    #@2
    .line 4259
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    #@5
    move-result-object v0

    #@6
    .line 4260
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    #@8
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    #@a
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    #@c
    if-eq v1, v2, :cond_1

    #@e
    .line 4261
    invoke-virtual {v0, p2}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    #@11
    .line 4266
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    #@13
    const/4 v2, 0x0

    #@14
    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    #@17
    .line 4257
    return-void

    #@18
    .line 4263
    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    #@1b
    goto :goto_0
.end method

.method final validateAppTokensLocked()V
    .locals 11

    #@0
    .prologue
    .line 2820
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 2821
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    #@7
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStack;->numActivities()I

    #@a
    move-result v9

    #@b
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->ensureCapacity(I)V

    #@e
    .line 2822
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@13
    move-result v4

    #@14
    .line 2823
    .local v4, "numTasks":I
    const/4 v7, 0x0

    #@15
    .local v7, "taskNdx":I
    :goto_0
    if-ge v7, v4, :cond_2

    #@17
    .line 2824
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mTaskHistory:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v6

    #@1d
    check-cast v6, Lcom/android/server/am/TaskRecord;

    #@1f
    .line 2825
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    iget-object v0, v6, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    #@21
    .line 2826
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@24
    move-result v8

    #@25
    if-eqz v8, :cond_1

    #@27
    .line 2823
    :cond_0
    add-int/lit8 v7, v7, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 2829
    :cond_1
    new-instance v2, Lcom/android/server/wm/TaskGroup;

    #@2c
    invoke-direct {v2}, Lcom/android/server/wm/TaskGroup;-><init>()V

    #@2f
    .line 2830
    .local v2, "group":Lcom/android/server/wm/TaskGroup;
    iget v8, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    #@31
    iput v8, v2, Lcom/android/server/wm/TaskGroup;->taskId:I

    #@33
    .line 2831
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mValidateAppTokens:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@38
    .line 2832
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@3b
    move-result v3

    #@3c
    .line 2833
    .local v3, "numActivities":I
    const/4 v1, 0x0

    #@3d
    .local v1, "activityNdx":I
    :goto_1
    if-ge v1, v3, :cond_0

    #@3f
    .line 2834
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v5

    #@43
    check-cast v5, Lcom/android/server/am/ActivityRecord;

    #@45
    .line 2835
    .local v5, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v8, v2, Lcom/android/server/wm/TaskGroup;->tokens:Ljava/util/ArrayList;

    #@47
    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@49
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@4c
    .line 2833
    add-int/lit8 v1, v1, 0x1

    #@4e
    goto :goto_1

    #@4f
    .line 2838
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
    .line 2819
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
    .line 4803
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
    .line 4804
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
    .line 4805
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
    .line 4806
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@21
    move-result-object v2

    #@22
    check-cast v2, Lcom/android/server/am/ActivityRecord;

    #@24
    .line 4807
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    #@26
    if-ne v4, p1, :cond_0

    #@28
    .line 4808
    return v6

    #@29
    .line 4810
    :cond_0
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    #@2b
    if-eqz v4, :cond_1

    #@2d
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@2f
    if-eqz v4, :cond_2

    #@31
    .line 4805
    :cond_1
    add-int/lit8 v1, v1, -0x1

    #@33
    goto :goto_1

    #@34
    .line 4811
    :cond_2
    return v5

    #@35
    .line 4803
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    add-int/lit8 v3, v3, -0x1

    #@37
    goto :goto_0

    #@38
    .line 4815
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    :cond_4
    invoke-static {p1}, Lcom/android/server/am/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    #@3b
    move-result-object v2

    #@3c
    .line 4816
    .restart local v2    # "r":Lcom/android/server/am/ActivityRecord;
    if-nez v2, :cond_5

    #@3e
    .line 4817
    return v5

    #@3f
    .line 4819
    :cond_5
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@41
    if-eqz v4, :cond_6

    #@43
    sget-object v4, Lcom/android/server/am/ActivityStack;->TAG:Ljava/lang/String;

    #@45
    new-instance v7, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v8, "willActivityBeVisibleLocked: Returning false, would have returned true for r="

    #@4d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v7

    #@51
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v7

    #@55
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v7

    #@59
    invoke-static {v4, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    .line 4821
    :cond_6
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    #@5e
    if-eqz v4, :cond_7

    #@60
    move v4, v5

    #@61
    :goto_2
    return v4

    #@62
    :cond_7
    move v4, v6

    #@63
    goto :goto_2
.end method
