.class public Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;
.super Ljava/lang/Object;
.source "MemoryPurgeManager.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ApplicationStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager$Natives;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final blacklist BACKGROUND_DURATION_HISTOGRAM_NAME:Ljava/lang/String; = "Android.ApplicationState.TimeInBackgroundBeforeForegroundedAgain"

.field private static final blacklist NEVER:J = -0x1L

.field static final blacklist PURGE_DELAY_MS:J = 0x3a980L

.field static final blacklist SELF_FREEZE_DELAY_MS:J = 0x493e0L

.field private static final blacklist sInstance:Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;


# instance fields
.field private blacklist mDelayedPurgeTaskPending:Z

.field private blacklist mHasBeenInForeground:Z

.field private blacklist mLastBackgroundPeriodStart:J

.field private blacklist mStarted:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$Vw4-UZVpGwO9vOJNYoxSxeiRjD8(Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->lambda$maybePostDelayedPurgingTask$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$k7jeU1ryrZMJXhXeW5c6OqVVZKg(Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->lambda$maybePostDelayedSelfFreezeTask$1()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 28
    nop

    .line 50
    new-instance v0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;-><init>()V

    sput-object v0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->sInstance:Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->mLastBackgroundPeriodStart:J

    .line 53
    return-void
.end method

.method private blacklist delayedPurge(Z)V
    .registers 7
    .param p1, "mustPurgeNow"    # Z

    .line 111
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->mLastBackgroundPeriodStart:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    return-void

    .line 113
    :cond_9
    if-nez p1, :cond_1f

    .line 114
    nop

    .line 115
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TimeUtils;->elapsedRealtimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->mLastBackgroundPeriodStart:J

    sub-long/2addr v0, v2

    .line 116
    .local v0, "inBackgroundFor":J
    const-wide/32 v2, 0x3a980

    cmp-long v4, v0, v2

    if-gez v4, :cond_1f

    .line 117
    sub-long/2addr v2, v0

    invoke-direct {p0, v2, v3}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->maybePostDelayedPurgingTask(J)V

    .line 118
    return-void

    .line 122
    .end local v0    # "inBackgroundFor":J
    :cond_1f
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->notifyMemoryPressure()V

    .line 123
    return-void
.end method

.method private blacklist delayedPurgeTask(Z)V
    .registers 3
    .param p1, "mustPurgeNow"    # Z

    .line 168
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->mDelayedPurgeTaskPending:Z

    .line 169
    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->delayedPurge(Z)V

    .line 170
    return-void
.end method

.method public static blacklist doDelayedPurge(Z)V
    .registers 2
    .param p0, "mustPurgeNow"    # Z

    .line 105
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->getInstance()Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;

    move-result-object v0

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->delayedPurgeTask(Z)V

    .line 106
    return-void
.end method

.method private blacklist doSelfFreeze()V
    .registers 5

    .line 174
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->mLastBackgroundPeriodStart:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    return-void

    .line 176
    :cond_9
    nop

    .line 177
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TimeUtils;->elapsedRealtimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->mLastBackgroundPeriodStart:J

    sub-long/2addr v0, v2

    .line 178
    .local v0, "inBackgroundFor":J
    const-wide/32 v2, 0x493e0

    cmp-long v2, v0, v2

    if-gez v2, :cond_19

    .line 179
    return-void

    .line 182
    :cond_19
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->notifySelfFreeze()V

    .line 183
    return-void
.end method

.method public static blacklist getInstance()Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;
    .registers 1

    .line 56
    sget-object v0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->sInstance:Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;

    return-object v0
.end method

.method private synthetic blacklist lambda$maybePostDelayedPurgingTask$0()V
    .registers 2

    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->delayedPurgeTask(Z)V

    .line 147
    return-void
.end method

.method private synthetic blacklist lambda$maybePostDelayedSelfFreezeTask$1()V
    .registers 1

    .line 162
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->doSelfFreeze()V

    .line 163
    return-void
.end method

.method private blacklist maybePostDelayedPurgingTask(J)V
    .registers 4
    .param p1, "delayMillis"    # J

    .line 140
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 141
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->mDelayedPurgeTaskPending:Z

    if-eqz v0, :cond_8

    return-void

    .line 143
    :cond_8
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->shouldTrimMemoryOnPreFreeze()Z

    move-result v0

    if-nez v0, :cond_17

    .line 144
    new-instance v0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager$$ExternalSyntheticLambda1;-><init>(Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;)V

    invoke-static {v0, p1, p2}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    goto :goto_1e

    .line 150
    :cond_17
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManagerJni;->get()Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager$Natives;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager$Natives;->postDelayedPurgeTaskOnUiThread(J)V

    .line 152
    :goto_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->mDelayedPurgeTaskPending:Z

    .line 153
    return-void
.end method

.method private blacklist maybePostDelayedSelfFreezeTask()V
    .registers 4

    .line 156
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 158
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->shouldSelfFreeze()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 160
    :cond_a
    new-instance v0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager$$ExternalSyntheticLambda0;-><init>(Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;)V

    const-wide/32 v1, 0x493e0

    invoke-static {v0, v1, v2}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->postOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    .line 165
    return-void
.end method

.method private blacklist shouldTrimMemoryOnPreFreeze()Z
    .registers 3

    .line 186
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->getInstance()Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 187
    :cond_c
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManagerJni;->get()Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager$Natives;

    move-result-object v0

    if-nez v0, :cond_13

    return v1

    .line 189
    :cond_13
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManagerJni;->get()Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager$Natives;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager$Natives;->isOnPreFreezeMemoryTrimEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected blacklist getApplicationState()I
    .registers 2

    .line 136
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->getStateForApplication()I

    move-result v0

    return v0
.end method

.method protected blacklist notifyMemoryPressure()V
    .registers 2

    .line 126
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener;->notifyMemoryPressure(I)V

    .line 127
    return-void
.end method

.method protected blacklist notifySelfFreeze()V
    .registers 2

    .line 130
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManagerJni;->get()Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager$Natives;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 132
    :cond_7
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/MemoryPressureListener;->notifySelfFreeze()V

    .line 133
    return-void
.end method

.method public blacklist onApplicationStateChange(I)V
    .registers 8
    .param p1, "state"    # I

    .line 76
    const-wide/16 v0, -0x1

    packed-switch p1, :pswitch_data_3a

    goto :goto_38

    .line 90
    :pswitch_6
    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->mLastBackgroundPeriodStart:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_38

    .line 91
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TimeUtils;->elapsedRealtimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->mLastBackgroundPeriodStart:J

    .line 92
    const-wide/32 v0, 0x3a980

    invoke-direct {p0, v0, v1}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->maybePostDelayedPurgingTask(J)V

    .line 93
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->maybePostDelayedSelfFreezeTask()V

    goto :goto_38

    .line 80
    :pswitch_1c
    iget-wide v2, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->mLastBackgroundPeriodStart:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_32

    iget-boolean v2, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->mHasBeenInForeground:Z

    if-eqz v2, :cond_32

    .line 82
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/TimeUtils;->elapsedRealtimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->mLastBackgroundPeriodStart:J

    sub-long/2addr v2, v4

    .line 83
    .local v2, "durationInBackgroundMs":J
    const-string v4, "Android.ApplicationState.TimeInBackgroundBeforeForegroundedAgain"

    invoke-static {v4, v2, v3}, Landroid/net/connectivity/org/chromium/base/metrics/RecordHistogram;->recordLongTimesHistogram(Ljava/lang/String;J)V

    .line 86
    .end local v2    # "durationInBackgroundMs":J
    :cond_32
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->mHasBeenInForeground:Z

    .line 87
    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->mLastBackgroundPeriodStart:J

    .line 88
    nop

    .line 101
    :cond_38
    :goto_38
    return-void

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_6
    .end packed-switch
.end method

.method protected blacklist shouldSelfFreeze()Z
    .registers 3

    .line 193
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->getInstance()Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/library_loader/LibraryLoader;->isInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 194
    :cond_c
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManagerJni;->get()Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager$Natives;

    move-result-object v0

    if-nez v0, :cond_13

    return v1

    .line 196
    :cond_13
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManagerJni;->get()Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager$Natives;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager$Natives;->isSelfFreezeEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist start()V
    .registers 2

    .line 66
    invoke-static {}, Landroid/net/connectivity/org/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 67
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->mStarted:Z

    if-eqz v0, :cond_8

    return-void

    .line 68
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->mStarted:Z

    .line 69
    invoke-static {p0}, Landroid/net/connectivity/org/chromium/base/ApplicationStatus;->registerApplicationStateListener(Landroid/net/connectivity/org/chromium/base/ApplicationStatus$ApplicationStateListener;)V

    .line 71
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->getApplicationState()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/org/chromium/base/memory/MemoryPurgeManager;->onApplicationStateChange(I)V

    .line 72
    return-void
.end method
