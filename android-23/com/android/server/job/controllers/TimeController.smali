.class public Lcom/android/server/job/controllers/TimeController;
.super Lcom/android/server/job/controllers/StateController;
.source "TimeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/TimeController$1;
    }
.end annotation


# static fields
.field private static final ACTION_JOB_DELAY_EXPIRED:Ljava/lang/String; = "android.content.jobscheduler.JOB_DELAY_EXPIRED"

.field private static final ACTION_JOB_EXPIRED:Ljava/lang/String; = "android.content.jobscheduler.JOB_DEADLINE_EXPIRED"

.field private static final TAG:Ljava/lang/String; = "JobScheduler.Time"

.field private static mSingleton:Lcom/android/server/job/controllers/TimeController;


# instance fields
.field private final mAlarmExpiredReceiver:Landroid/content/BroadcastReceiver;

.field private mAlarmService:Landroid/app/AlarmManager;

.field private final mDeadlineExpiredAlarmIntent:Landroid/app/PendingIntent;

.field private final mNextDelayExpiredAlarmIntent:Landroid/app/PendingIntent;

.field private mNextDelayExpiredElapsedMillis:J

.field private mNextJobExpiredElapsedMillis:J

.field private final mTrackedJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/job/controllers/TimeController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/job/controllers/TimeController;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    #@3
    return-void
.end method

.method private constructor <init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V
    .locals 8
    .param p1, "stateChangedListener"    # Lcom/android/server/job/StateChangedListener;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const-wide v6, 0x7fffffffffffffffL

    #@5
    const/4 v4, 0x0

    #@6
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V

    #@9
    .line 56
    const/4 v1, 0x0

    #@a
    iput-object v1, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    #@c
    .line 58
    new-instance v1, Ljava/util/LinkedList;

    #@e
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    #@11
    iput-object v1, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    #@13
    .line 261
    new-instance v1, Lcom/android/server/job/controllers/TimeController$1;

    #@15
    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/TimeController$1;-><init>(Lcom/android/server/job/controllers/TimeController;)V

    #@18
    iput-object v1, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmExpiredReceiver:Landroid/content/BroadcastReceiver;

    #@1a
    .line 72
    iget-object v1, p0, Lcom/android/server/job/controllers/TimeController;->mContext:Landroid/content/Context;

    #@1c
    .line 73
    new-instance v2, Landroid/content/Intent;

    #@1e
    const-string/jumbo v3, "android.content.jobscheduler.JOB_DEADLINE_EXPIRED"

    #@21
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@24
    .line 72
    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@27
    move-result-object v1

    #@28
    .line 71
    iput-object v1, p0, Lcom/android/server/job/controllers/TimeController;->mDeadlineExpiredAlarmIntent:Landroid/app/PendingIntent;

    #@2a
    .line 75
    iget-object v1, p0, Lcom/android/server/job/controllers/TimeController;->mContext:Landroid/content/Context;

    #@2c
    .line 76
    new-instance v2, Landroid/content/Intent;

    #@2e
    const-string/jumbo v3, "android.content.jobscheduler.JOB_DELAY_EXPIRED"

    #@31
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@34
    .line 75
    invoke-static {v1, v4, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@37
    move-result-object v1

    #@38
    .line 74
    iput-object v1, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredAlarmIntent:Landroid/app/PendingIntent;

    #@3a
    .line 77
    iput-wide v6, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    #@3c
    .line 78
    iput-wide v6, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    #@3e
    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    #@40
    const-string/jumbo v1, "android.content.jobscheduler.JOB_DEADLINE_EXPIRED"

    #@43
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@46
    .line 82
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.content.jobscheduler.JOB_DELAY_EXPIRED"

    #@49
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@4c
    .line 83
    iget-object v1, p0, Lcom/android/server/job/controllers/TimeController;->mContext:Landroid/content/Context;

    #@4e
    iget-object v2, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmExpiredReceiver:Landroid/content/BroadcastReceiver;

    #@50
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@53
    .line 69
    return-void
.end method

.method private canStopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 136
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->timeDelayConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@b
    move-result v0

    #@c
    .line 135
    if-eqz v0, :cond_2

    #@e
    .line 137
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 138
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->deadlineConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@16
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@19
    move-result v0

    #@1a
    .line 135
    :goto_0
    return v0

    #@1b
    .line 137
    :cond_1
    const/4 v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 135
    :cond_2
    const/4 v0, 0x0

    #@1e
    goto :goto_0
.end method

.method private declared-synchronized checkExpiredDeadlinesAndResetAlarm()V
    .locals 10

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 152
    const-wide v4, 0x7fffffffffffffffL

    #@6
    .line 153
    .local v4, "nextExpiryTime":J
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@9
    move-result-wide v6

    #@a
    .line 155
    .local v6, "nowElapsedMillis":J
    iget-object v8, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    #@c
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v0

    #@10
    .line 156
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v8

    #@14
    if-eqz v8, :cond_2

    #@16
    .line 157
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    #@1c
    .line 158
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    #@1f
    move-result v8

    #@20
    if-eqz v8, :cond_0

    #@22
    .line 161
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    #@25
    move-result-wide v2

    #@26
    .line 163
    .local v2, "jobDeadline":J
    cmp-long v8, v2, v6

    #@28
    if-gtz v8, :cond_1

    #@2a
    .line 164
    iget-object v8, v1, Lcom/android/server/job/controllers/JobStatus;->deadlineConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2c
    const/4 v9, 0x1

    #@2d
    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@30
    .line 165
    iget-object v8, p0, Lcom/android/server/job/controllers/TimeController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    #@32
    invoke-interface {v8, v1}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    #@35
    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    goto :goto_0

    #@39
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "jobDeadline":J
    .end local v6    # "nowElapsedMillis":J
    :catchall_0
    move-exception v8

    #@3a
    monitor-exit p0

    #@3b
    throw v8

    #@3c
    .line 168
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    .restart local v2    # "jobDeadline":J
    .restart local v6    # "nowElapsedMillis":J
    :cond_1
    move-wide v4, v2

    #@3d
    .line 172
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "jobDeadline":J
    :cond_2
    :try_start_1
    invoke-direct {p0, v4, v5}, Lcom/android/server/job/controllers/TimeController;->setDeadlineExpiredAlarm(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    monitor-exit p0

    #@41
    .line 151
    return-void
.end method

.method private declared-synchronized checkExpiredDelaysAndResetAlarm()V
    .locals 11

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 180
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@4
    move-result-wide v6

    #@5
    .line 181
    .local v6, "nowElapsedMillis":J
    const-wide v4, 0x7fffffffffffffffL

    #@a
    .line 182
    .local v4, "nextDelayTime":J
    const/4 v8, 0x0

    #@b
    .line 183
    .local v8, "ready":Z
    iget-object v9, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    #@d
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v0

    #@11
    .line 184
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v9

    #@15
    if-eqz v9, :cond_3

    #@17
    .line 185
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    #@1d
    .line 186
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    #@20
    move-result v9

    #@21
    if-eqz v9, :cond_0

    #@23
    .line 189
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    #@26
    move-result-wide v2

    #@27
    .line 190
    .local v2, "jobDelayTime":J
    cmp-long v9, v2, v6

    #@29
    if-gtz v9, :cond_2

    #@2b
    .line 191
    iget-object v9, v1, Lcom/android/server/job/controllers/JobStatus;->timeDelayConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2d
    const/4 v10, 0x1

    #@2e
    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@31
    .line 192
    invoke-direct {p0, v1}, Lcom/android/server/job/controllers/TimeController;->canStopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)Z

    #@34
    move-result v9

    #@35
    if-eqz v9, :cond_1

    #@37
    .line 193
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@3a
    .line 195
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    #@3d
    move-result v9

    #@3e
    if-eqz v9, :cond_0

    #@40
    .line 196
    const/4 v8, 0x1

    #@41
    goto :goto_0

    #@42
    .line 199
    :cond_2
    cmp-long v9, v4, v2

    #@44
    if-lez v9, :cond_0

    #@46
    .line 200
    move-wide v4, v2

    #@47
    goto :goto_0

    #@48
    .line 204
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "jobDelayTime":J
    :cond_3
    if-eqz v8, :cond_4

    #@4a
    .line 205
    iget-object v9, p0, Lcom/android/server/job/controllers/TimeController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    #@4c
    invoke-interface {v9}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    #@4f
    .line 207
    :cond_4
    invoke-direct {p0, v4, v5}, Lcom/android/server/job/controllers/TimeController;->setDelayExpiredAlarm(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@52
    monitor-exit p0

    #@53
    .line 179
    return-void

    #@54
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v4    # "nextDelayTime":J
    .end local v6    # "nowElapsedMillis":J
    .end local v8    # "ready":Z
    :catchall_0
    move-exception v9

    #@55
    monitor-exit p0

    #@56
    throw v9
.end method

.method private ensureAlarmService()V
    .locals 2

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 143
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mContext:Landroid/content/Context;

    #@6
    const-string/jumbo v1, "alarm"

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Landroid/app/AlarmManager;

    #@f
    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    #@11
    .line 141
    :cond_0
    return-void
.end method

.method public static declared-synchronized get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/TimeController;
    .locals 3
    .param p0, "jms"    # Lcom/android/server/job/JobSchedulerService;

    #@0
    .prologue
    const-class v1, Lcom/android/server/job/controllers/TimeController;

    #@2
    monitor-enter v1

    #@3
    .line 63
    :try_start_0
    sget-object v0, Lcom/android/server/job/controllers/TimeController;->mSingleton:Lcom/android/server/job/controllers/TimeController;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 64
    new-instance v0, Lcom/android/server/job/controllers/TimeController;

    #@9
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v0, p0, v2}, Lcom/android/server/job/controllers/TimeController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;)V

    #@10
    sput-object v0, Lcom/android/server/job/controllers/TimeController;->mSingleton:Lcom/android/server/job/controllers/TimeController;

    #@12
    .line 66
    :cond_0
    sget-object v0, Lcom/android/server/job/controllers/TimeController;->mSingleton:Lcom/android/server/job/controllers/TimeController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v1

    #@15
    return-object v0

    #@16
    :catchall_0
    move-exception v0

    #@17
    monitor-exit v1

    #@18
    throw v0
.end method

.method private maybeAdjustAlarmTime(J)J
    .locals 3
    .param p1, "proposedAlarmTimeElapsedMillis"    # J

    #@0
    .prologue
    .line 242
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    .line 243
    .local v0, "earliestWakeupTimeElapsed":J
    cmp-long v2, p1, v0

    #@6
    if-gez v2, :cond_0

    #@8
    .line 244
    return-wide v0

    #@9
    .line 246
    :cond_0
    return-wide p1
.end method

.method private maybeUpdateAlarms(JJ)V
    .locals 3
    .param p1, "delayExpiredElapsed"    # J
    .param p3, "deadlineExpiredElapsed"    # J

    #@0
    .prologue
    .line 211
    iget-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 212
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/TimeController;->setDelayExpiredAlarm(J)V

    #@9
    .line 214
    :cond_0
    iget-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    #@b
    cmp-long v0, p3, v0

    #@d
    if-gez v0, :cond_1

    #@f
    .line 215
    invoke-direct {p0, p3, p4}, Lcom/android/server/job/controllers/TimeController;->setDeadlineExpiredAlarm(J)V

    #@12
    .line 210
    :cond_1
    return-void
.end method

.method private setDeadlineExpiredAlarm(J)V
    .locals 5
    .param p1, "alarmTimeElapsedMillis"    # J

    #@0
    .prologue
    .line 236
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/TimeController;->maybeAdjustAlarmTime(J)J

    #@3
    move-result-wide p1

    #@4
    .line 237
    iput-wide p1, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    #@6
    .line 238
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mDeadlineExpiredAlarmIntent:Landroid/app/PendingIntent;

    #@8
    iget-wide v2, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    #@a
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/job/controllers/TimeController;->updateAlarmWithPendingIntent(Landroid/app/PendingIntent;J)V

    #@d
    .line 235
    return-void
.end method

.method private setDelayExpiredAlarm(J)V
    .locals 5
    .param p1, "alarmTimeElapsedMillis"    # J

    #@0
    .prologue
    .line 225
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/TimeController;->maybeAdjustAlarmTime(J)J

    #@3
    move-result-wide p1

    #@4
    .line 226
    iput-wide p1, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    #@6
    .line 227
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredAlarmIntent:Landroid/app/PendingIntent;

    #@8
    iget-wide v2, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    #@a
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/job/controllers/TimeController;->updateAlarmWithPendingIntent(Landroid/app/PendingIntent;J)V

    #@d
    .line 224
    return-void
.end method

.method private updateAlarmWithPendingIntent(Landroid/app/PendingIntent;J)V
    .locals 2
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "alarmTimeElapsed"    # J

    #@0
    .prologue
    .line 250
    invoke-direct {p0}, Lcom/android/server/job/controllers/TimeController;->ensureAlarmService()V

    #@3
    .line 251
    const-wide v0, 0x7fffffffffffffffL

    #@8
    cmp-long v0, p2, v0

    #@a
    if-nez v0, :cond_0

    #@c
    .line 252
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    #@e
    invoke-virtual {v0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    #@11
    .line 249
    :goto_0
    return-void

    #@12
    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    #@14
    const/4 v1, 0x3

    #@15
    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    #@18
    goto :goto_0
.end method


# virtual methods
.method public dumpControllerState(Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    const-wide/16 v8, 0x3e8

    #@2
    .line 279
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@5
    move-result-wide v0

    #@6
    .line 280
    .local v0, "nowElapsed":J
    new-instance v4, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v5, "Alarms ("

    #@e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v4

    #@12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@15
    move-result-wide v6

    #@16
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    const-string/jumbo v5, ")"

    #@1d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@28
    .line 282
    new-instance v4, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v5, "Next delay alarm in "

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    iget-wide v6, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    #@36
    sub-long/2addr v6, v0

    #@37
    div-long/2addr v6, v8

    #@38
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v4

    #@3c
    const-string/jumbo v5, "s"

    #@3f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v4

    #@47
    .line 281
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4a
    .line 283
    new-instance v4, Ljava/lang/StringBuilder;

    #@4c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4f
    const-string/jumbo v5, "Next deadline alarm in "

    #@52
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v4

    #@56
    iget-wide v6, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    #@58
    sub-long/2addr v6, v0

    #@59
    div-long/2addr v6, v8

    #@5a
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v4

    #@5e
    .line 284
    const-string/jumbo v5, "s"

    #@61
    .line 283
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v4

    #@65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v4

    #@69
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6c
    .line 285
    const-string/jumbo v4, "Tracking:"

    #@6f
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@72
    .line 286
    iget-object v4, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    #@74
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@77
    move-result-object v3

    #@78
    .local v3, "ts$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@7b
    move-result v4

    #@7c
    if-eqz v4, :cond_2

    #@7e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@81
    move-result-object v2

    #@82
    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    #@84
    .line 287
    .local v2, "ts":Lcom/android/server/job/controllers/JobStatus;
    new-instance v4, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hashCode()I

    #@8c
    move-result v5

    #@8d
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@90
    move-result-object v5

    #@91
    const/4 v6, 0x0

    #@92
    const/4 v7, 0x3

    #@93
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@96
    move-result-object v5

    #@97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v4

    #@9b
    const-string/jumbo v5, ".."

    #@9e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v4

    #@a2
    .line 288
    const-string/jumbo v5, ": ("

    #@a5
    .line 287
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v5

    #@a9
    .line 288
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    #@ac
    move-result v4

    #@ad
    if-eqz v4, :cond_0

    #@af
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    #@b2
    move-result-wide v6

    #@b3
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b6
    move-result-object v4

    #@b7
    .line 287
    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v4

    #@bb
    .line 289
    const-string/jumbo v5, ", "

    #@be
    .line 287
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v5

    #@c2
    .line 289
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    #@c5
    move-result v4

    #@c6
    if-eqz v4, :cond_1

    #@c8
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    #@cb
    move-result-wide v6

    #@cc
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@cf
    move-result-object v4

    #@d0
    .line 287
    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@d3
    move-result-object v4

    #@d4
    .line 290
    const-string/jumbo v5, ")"

    #@d7
    .line 287
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v4

    #@db
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@de
    move-result-object v4

    #@df
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e2
    goto :goto_0

    #@e3
    .line 288
    :cond_0
    const-string/jumbo v4, "N/A"

    #@e6
    goto :goto_1

    #@e7
    .line 289
    :cond_1
    const-string/jumbo v4, "N/A"

    #@ea
    goto :goto_2

    #@eb
    .line 278
    .end local v2    # "ts":Lcom/android/server/job/controllers/JobStatus;
    :cond_2
    return-void
.end method

.method public declared-synchronized maybeStartTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 10
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    const-wide v4, 0x7fffffffffffffffL

    #@5
    monitor-enter p0

    #@6
    .line 92
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    #@9
    move-result v3

    #@a
    if-nez v3, :cond_0

    #@c
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_5

    #@12
    .line 93
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/TimeController;->maybeStopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    #@15
    .line 94
    const/4 v0, 0x0

    #@16
    .line 95
    .local v0, "isInsert":Z
    iget-object v3, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    #@18
    iget-object v6, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    #@1a
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@1d
    move-result v6

    #@1e
    invoke-interface {v3, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    #@21
    move-result-object v1

    #@22
    .line 96
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    #@25
    move-result v3

    #@26
    if-eqz v3, :cond_2

    #@28
    .line 97
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@2b
    move-result-object v2

    #@2c
    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    #@2e
    .line 98
    .local v2, "ts":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    #@31
    move-result-wide v6

    #@32
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    #@35
    move-result-wide v8

    #@36
    cmp-long v3, v6, v8

    #@38
    if-gez v3, :cond_1

    #@3a
    .line 100
    const/4 v0, 0x1

    #@3b
    .line 104
    .end local v2    # "ts":Lcom/android/server/job/controllers/JobStatus;
    :cond_2
    if-eqz v0, :cond_3

    #@3d
    .line 106
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@40
    .line 108
    :cond_3
    invoke-interface {v1, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    #@43
    .line 110
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    #@46
    move-result v3

    #@47
    if-eqz v3, :cond_6

    #@49
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    #@4c
    move-result-wide v6

    #@4d
    .line 111
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    #@50
    move-result v3

    #@51
    if-eqz v3, :cond_4

    #@53
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    #@56
    move-result-wide v4

    #@57
    .line 109
    :cond_4
    invoke-direct {p0, v6, v7, v4, v5}, Lcom/android/server/job/controllers/TimeController;->maybeUpdateAlarms(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5a
    .end local v0    # "isInsert":Z
    .end local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_5
    monitor-exit p0

    #@5b
    .line 91
    return-void

    #@5c
    .restart local v0    # "isInsert":Z
    .restart local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_6
    move-wide v6, v4

    #@5d
    .line 110
    goto :goto_0

    #@5e
    .end local v0    # "isInsert":Z
    .end local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_0
    move-exception v3

    #@5f
    monitor-exit p0

    #@60
    throw v3
.end method

.method public declared-synchronized maybeStopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 1
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    #@3
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 123
    invoke-direct {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    #@c
    .line 124
    invoke-direct {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :cond_0
    monitor-exit p0

    #@10
    .line 121
    return-void

    #@11
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method
