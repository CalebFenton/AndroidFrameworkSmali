.class Lcom/android/server/am/ActivityMetricsLogger;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# static fields
.field private static final INVALID_START_TIME:J = -0x1L

.field private static final TAG:Ljava/lang/String;

.field private static final TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

.field private static final WINDOW_STATE_FREEFORM:I = 0x2

.field private static final WINDOW_STATE_INVALID:I = -0x1

.field private static final WINDOW_STATE_SIDE_BY_SIDE:I = 0x1

.field private static final WINDOW_STATE_STANDARD:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentTransitionStartTime:J

.field private mLastLogTimeSecs:J

.field private mLoggedStartingWindowDrawn:Z

.field private mLoggedTransitionStarting:Z

.field private mLoggedWindowsDrawn:Z

.field private final mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mWindowState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 28
    const-string/jumbo v0, "ActivityManager"

    #@3
    sput-object v0, Lcom/android/server/am/ActivityMetricsLogger;->TAG:Ljava/lang/String;

    #@5
    .line 41
    const/4 v0, 0x3

    #@6
    new-array v0, v0, [Ljava/lang/String;

    #@8
    .line 42
    const-string/jumbo v1, "window_time_0"

    #@b
    const/4 v2, 0x0

    #@c
    aput-object v1, v0, v2

    #@e
    const-string/jumbo v1, "window_time_1"

    #@11
    const/4 v2, 0x1

    #@12
    aput-object v1, v0, v2

    #@14
    const-string/jumbo v1, "window_time_2"

    #@17
    const/4 v2, 0x2

    #@18
    aput-object v1, v0, v2

    #@1a
    .line 41
    sput-object v0, Lcom/android/server/am/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    #@1c
    .line 26
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Context;)V
    .locals 4
    .param p1, "supervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    #@6
    .line 49
    const-wide/16 v0, -0x1

    #@8
    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    #@a
    .line 55
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@d
    move-result-wide v0

    #@e
    const-wide/16 v2, 0x3e8

    #@10
    div-long/2addr v0, v2

    #@11
    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastLogTimeSecs:J

    #@13
    .line 56
    iput-object p1, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@15
    .line 57
    iput-object p2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    #@17
    .line 54
    return-void
.end method

.method private calculateCurrentDelay()I
    .locals 4

    #@0
    .prologue
    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    iget-wide v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    #@6
    sub-long/2addr v0, v2

    #@7
    long-to-int v0, v0

    #@8
    return v0
.end method

.method private hasStartedActivity(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 5
    .param p1, "record"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "launchedActivity"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 131
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    #@3
    .line 132
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v3

    #@7
    add-int/lit8 v2, v3, -0x1

    #@9
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    #@b
    .line 133
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    #@11
    .line 134
    .local v1, "activity":Lcom/android/server/am/ActivityRecord;
    if-ne p2, v1, :cond_1

    #@13
    .line 132
    :cond_0
    add-int/lit8 v2, v2, -0x1

    #@15
    goto :goto_0

    #@16
    .line 137
    :cond_1
    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    #@18
    if-nez v3, :cond_0

    #@1a
    .line 138
    const/4 v3, 0x1

    #@1b
    return v3

    #@1c
    .line 141
    .end local v1    # "activity":Lcom/android/server/am/ActivityRecord;
    :cond_2
    return v4
.end method

.method private isTransitionActive()Z
    .locals 4

    #@0
    .prologue
    .line 220
    iget-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    #@2
    const-wide/16 v2, -0x1

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method private notifyActivityLaunched(ILjava/lang/String;ZZ)V
    .locals 6
    .param p1, "resultCode"    # I
    .param p2, "componentName"    # Ljava/lang/String;
    .param p3, "processRunning"    # Z
    .param p4, "processSwitch"    # Z

    #@0
    .prologue
    .line 158
    if-ltz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->reset()V

    #@7
    .line 162
    return-void

    #@8
    .line 158
    :cond_1
    if-eqz p4, :cond_0

    #@a
    .line 165
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    #@c
    const/16 v1, 0x143

    #@e
    invoke-static {v0, v1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    #@11
    .line 167
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    #@13
    const/16 v1, 0x144

    #@15
    invoke-static {v0, v1, p3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    #@18
    .line 169
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    #@1a
    .line 170
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@1d
    move-result-wide v2

    #@1e
    const-wide/16 v4, 0x3e8

    #@20
    div-long/2addr v2, v4

    #@21
    long-to-int v1, v2

    #@22
    .line 169
    const/16 v2, 0x145

    #@24
    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    #@27
    .line 156
    return-void
.end method

.method private reset()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 224
    const-wide/16 v0, -0x1

    #@3
    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    #@5
    .line 225
    iput-boolean v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedWindowsDrawn:Z

    #@7
    .line 226
    iput-boolean v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    #@9
    .line 227
    iput-boolean v2, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedStartingWindowDrawn:Z

    #@b
    .line 223
    return-void
.end method


# virtual methods
.method logWindowState()V
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x3

    #@1
    const/4 v11, 0x2

    #@2
    const/4 v10, 0x1

    #@3
    const/4 v9, 0x0

    #@4
    const/4 v8, -0x1

    #@5
    .line 61
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@8
    move-result-wide v4

    #@9
    const-wide/16 v6, 0x3e8

    #@b
    div-long v0, v4, v6

    #@d
    .line 62
    .local v0, "now":J
    iget v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    #@f
    if-eq v3, v8, :cond_0

    #@11
    .line 66
    iget-object v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    #@13
    sget-object v4, Lcom/android/server/am/ActivityMetricsLogger;->TRON_WINDOW_STATE_VARZ_STRINGS:[Ljava/lang/String;

    #@15
    iget v5, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    #@17
    aget-object v4, v4, v5

    #@19
    .line 67
    iget-wide v6, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastLogTimeSecs:J

    #@1b
    sub-long v6, v0, v6

    #@1d
    long-to-int v5, v6

    #@1e
    .line 66
    invoke-static {v3, v4, v5}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    #@21
    .line 69
    :cond_0
    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLastLogTimeSecs:J

    #@23
    .line 71
    iget-object v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@25
    invoke-virtual {v3, v12}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    #@28
    move-result-object v2

    #@29
    .line 72
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz v2, :cond_1

    #@2b
    const/4 v3, 0x0

    #@2c
    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStack;->getStackVisibilityLocked(Lcom/android/server/am/ActivityRecord;)I

    #@2f
    move-result v3

    #@30
    if-eqz v3, :cond_1

    #@32
    .line 73
    iput v10, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    #@34
    .line 74
    return-void

    #@35
    .line 76
    :cond_1
    iput v8, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    #@37
    .line 77
    iget-object v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@39
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    #@3c
    move-result-object v2

    #@3d
    .line 78
    iget v3, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@3f
    const/4 v4, 0x4

    #@40
    if-ne v3, v4, :cond_2

    #@42
    .line 79
    iget-object v3, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@44
    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->findStackBehind(Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityStack;

    #@47
    move-result-object v2

    #@48
    .line 81
    :cond_2
    iget v3, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@4a
    if-eqz v3, :cond_3

    #@4c
    .line 82
    iget v3, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@4e
    if-ne v3, v10, :cond_5

    #@50
    .line 83
    :cond_3
    iput v9, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    #@52
    .line 60
    :cond_4
    :goto_0
    return-void

    #@53
    .line 84
    :cond_5
    iget v3, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@55
    if-ne v3, v12, :cond_6

    #@57
    .line 85
    sget-object v3, Lcom/android/server/am/ActivityMetricsLogger;->TAG:Ljava/lang/String;

    #@59
    const-string/jumbo v4, "Docked stack shouldn\'t be the focused stack, because it reported not being visible."

    #@5c
    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@5f
    .line 87
    iput v8, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    #@61
    goto :goto_0

    #@62
    .line 88
    :cond_6
    iget v3, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@64
    if-ne v3, v11, :cond_7

    #@66
    .line 89
    iput v11, p0, Lcom/android/server/am/ActivityMetricsLogger;->mWindowState:I

    #@68
    goto :goto_0

    #@69
    .line 90
    :cond_7
    iget v3, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    #@6b
    invoke-static {v3}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    #@6e
    move-result v3

    #@6f
    if-eqz v3, :cond_4

    #@71
    .line 91
    new-instance v3, Ljava/lang/IllegalStateException;

    #@73
    new-instance v4, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v5, "Unknown stack="

    #@7b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v4

    #@7f
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v4

    #@83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v4

    #@87
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@8a
    throw v3
.end method

.method notifyActivityLaunched(ILcom/android/server/am/ActivityRecord;)V
    .locals 7
    .param p1, "resultCode"    # I
    .param p2, "launchedActivity"    # Lcom/android/server/am/ActivityRecord;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 111
    if-eqz p2, :cond_0

    #@4
    .line 112
    iget-object v4, p0, Lcom/android/server/am/ActivityMetricsLogger;->mSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    #@6
    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    #@8
    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    #@a
    iget-object v5, p2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    #@c
    .line 113
    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    #@e
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    #@10
    .line 112
    invoke-virtual {v4, v5, v6}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    #@13
    move-result-object v4

    #@14
    check-cast v4, Lcom/android/server/am/ProcessRecord;

    #@16
    move-object v1, v4

    #@17
    .line 115
    .local v1, "processRecord":Lcom/android/server/am/ProcessRecord;
    :cond_0
    if-eqz v1, :cond_2

    #@19
    const/4 v2, 0x1

    #@1a
    .line 116
    .local v2, "processRunning":Z
    :goto_0
    if-eqz p2, :cond_3

    #@1c
    .line 117
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    #@1e
    .line 124
    :goto_1
    if-eqz v1, :cond_1

    #@20
    .line 125
    invoke-direct {p0, v1, p2}, Lcom/android/server/am/ActivityMetricsLogger;->hasStartedActivity(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_1

    #@26
    const/4 v3, 0x0

    #@27
    .line 127
    .local v3, "processSwitch":Z
    :cond_1
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/server/am/ActivityMetricsLogger;->notifyActivityLaunched(ILjava/lang/String;ZZ)V

    #@2a
    .line 110
    return-void

    #@2b
    .line 115
    .end local v2    # "processRunning":Z
    .end local v3    # "processSwitch":Z
    :cond_2
    const/4 v2, 0x0

    #@2c
    .restart local v2    # "processRunning":Z
    goto :goto_0

    #@2d
    .line 118
    :cond_3
    const/4 v0, 0x0

    #@2e
    .local v0, "componentName":Ljava/lang/String;
    goto :goto_1
.end method

.method notifyActivityLaunching()V
    .locals 2

    #@0
    .prologue
    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mCurrentTransitionStartTime:J

    #@6
    .line 99
    return-void
.end method

.method notifyStartingWindowDrawn()V
    .locals 3

    #@0
    .prologue
    .line 192
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->isTransitionActive()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedStartingWindowDrawn:Z

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 193
    :cond_0
    return-void

    #@b
    .line 195
    :cond_1
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedStartingWindowDrawn:Z

    #@e
    .line 196
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    #@10
    .line 197
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->calculateCurrentDelay()I

    #@13
    move-result v1

    #@14
    .line 196
    const/16 v2, 0x141

    #@16
    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    #@19
    .line 191
    return-void
.end method

.method notifyTransitionStarting(I)V
    .locals 3
    .param p1, "reason"    # I

    #@0
    .prologue
    .line 207
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->isTransitionActive()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 208
    :cond_0
    return-void

    #@b
    .line 210
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    #@d
    const/16 v1, 0x140

    #@f
    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    #@12
    .line 211
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    #@14
    .line 212
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->calculateCurrentDelay()I

    #@17
    move-result v1

    #@18
    .line 211
    const/16 v2, 0x13f

    #@1a
    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    #@1d
    .line 213
    const/4 v0, 0x1

    #@1e
    iput-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    #@20
    .line 214
    iget-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedWindowsDrawn:Z

    #@22
    if-eqz v0, :cond_2

    #@24
    .line 215
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->reset()V

    #@27
    .line 206
    :cond_2
    return-void
.end method

.method notifyWindowsDrawn()V
    .locals 3

    #@0
    .prologue
    .line 177
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->isTransitionActive()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedWindowsDrawn:Z

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 178
    :cond_0
    return-void

    #@b
    .line 180
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mContext:Landroid/content/Context;

    #@d
    .line 181
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->calculateCurrentDelay()I

    #@10
    move-result v1

    #@11
    .line 180
    const/16 v2, 0x142

    #@13
    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    #@16
    .line 182
    const/4 v0, 0x1

    #@17
    iput-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedWindowsDrawn:Z

    #@19
    .line 183
    iget-boolean v0, p0, Lcom/android/server/am/ActivityMetricsLogger;->mLoggedTransitionStarting:Z

    #@1b
    if-eqz v0, :cond_2

    #@1d
    .line 184
    invoke-direct {p0}, Lcom/android/server/am/ActivityMetricsLogger;->reset()V

    #@20
    .line 176
    :cond_2
    return-void
.end method
