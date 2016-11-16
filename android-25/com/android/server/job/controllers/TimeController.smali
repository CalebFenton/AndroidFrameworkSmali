.class public Lcom/android/server/job/controllers/TimeController;
.super Lcom/android/server/job/controllers/StateController;
.source "TimeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/controllers/TimeController$1;,
        Lcom/android/server/job/controllers/TimeController$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "JobScheduler.Time"

.field private static mSingleton:Lcom/android/server/job/controllers/TimeController;


# instance fields
.field private final DEADLINE_TAG:Ljava/lang/String;

.field private final DELAY_TAG:Ljava/lang/String;

.field private mAlarmService:Landroid/app/AlarmManager;

.field private final mDeadlineExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mNextDelayExpiredElapsedMillis:J

.field private final mNextDelayExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

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

.method private constructor <init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;Ljava/lang/Object;)V
    .locals 4
    .param p1, "stateChangedListener"    # Lcom/android/server/job/StateChangedListener;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "lock"    # Ljava/lang/Object;

    #@0
    .prologue
    const-wide v2, 0x7fffffffffffffffL

    #@5
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;Ljava/lang/Object;)V

    #@8
    .line 45
    const-string/jumbo v0, "*job.deadline*"

    #@b
    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->DEADLINE_TAG:Ljava/lang/String;

    #@d
    .line 47
    const-string/jumbo v0, "*job.delay*"

    #@10
    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->DELAY_TAG:Ljava/lang/String;

    #@12
    .line 52
    const/4 v0, 0x0

    #@13
    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    #@15
    .line 54
    new-instance v0, Ljava/util/LinkedList;

    #@17
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@1a
    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    #@1c
    .line 268
    new-instance v0, Lcom/android/server/job/controllers/TimeController$1;

    #@1e
    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/TimeController$1;-><init>(Lcom/android/server/job/controllers/TimeController;)V

    #@21
    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mDeadlineExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@23
    .line 278
    new-instance v0, Lcom/android/server/job/controllers/TimeController$2;

    #@25
    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/TimeController$2;-><init>(Lcom/android/server/job/controllers/TimeController;)V

    #@28
    iput-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@2a
    .line 69
    iput-wide v2, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    #@2c
    .line 70
    iput-wide v2, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    #@2e
    .line 66
    return-void
.end method

.method private canStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 3
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 122
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_0

    #@8
    .line 123
    iget v2, p1, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    #@a
    and-int/lit8 v2, v2, 0x2

    #@c
    if-eqz v2, :cond_2

    #@e
    .line 124
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 125
    iget v2, p1, Lcom/android/server/job/controllers/JobStatus;->satisfiedConstraints:I

    #@16
    and-int/lit8 v2, v2, 0x4

    #@18
    if-eqz v2, :cond_3

    #@1a
    :cond_1
    :goto_0
    move v1, v0

    #@1b
    .line 122
    :cond_2
    return v1

    #@1c
    :cond_3
    move v0, v1

    #@1d
    .line 125
    goto :goto_0
.end method

.method private checkExpiredDeadlinesAndResetAlarm()V
    .locals 11

    #@0
    .prologue
    .line 139
    iget-object v10, p0, Lcom/android/server/job/controllers/TimeController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v10

    #@3
    .line 140
    const-wide v4, 0x7fffffffffffffffL

    #@8
    .line 141
    .local v4, "nextExpiryTime":J
    const/4 v6, 0x0

    #@9
    .line 142
    .local v6, "nextExpiryUid":I
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@c
    move-result-wide v8

    #@d
    .line 144
    .local v8, "nowElapsedMillis":J
    iget-object v7, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    #@f
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v0

    #@13
    .line 145
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v7

    #@17
    if-eqz v7, :cond_3

    #@19
    .line 146
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    #@1f
    .line 147
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    #@22
    move-result v7

    #@23
    if-eqz v7, :cond_0

    #@25
    .line 150
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    #@28
    move-result-wide v2

    #@29
    .line 152
    .local v2, "jobDeadline":J
    cmp-long v7, v2, v8

    #@2b
    if-gtz v7, :cond_2

    #@2d
    .line 153
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    #@30
    move-result v7

    #@31
    if-eqz v7, :cond_1

    #@33
    .line 154
    const/4 v7, 0x1

    #@34
    invoke-virtual {v1, v7}, Lcom/android/server/job/controllers/JobStatus;->setTimingDelayConstraintSatisfied(Z)Z

    #@37
    .line 156
    :cond_1
    const/4 v7, 0x1

    #@38
    invoke-virtual {v1, v7}, Lcom/android/server/job/controllers/JobStatus;->setDeadlineConstraintSatisfied(Z)Z

    #@3b
    .line 157
    iget-object v7, p0, Lcom/android/server/job/controllers/TimeController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    #@3d
    invoke-interface {v7, v1}, Lcom/android/server/job/StateChangedListener;->onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V

    #@40
    .line 158
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@43
    goto :goto_0

    #@44
    .line 139
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "jobDeadline":J
    .end local v8    # "nowElapsedMillis":J
    :catchall_0
    move-exception v7

    #@45
    monitor-exit v10

    #@46
    throw v7

    #@47
    .line 160
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    .restart local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    .restart local v2    # "jobDeadline":J
    .restart local v8    # "nowElapsedMillis":J
    :cond_2
    move-wide v4, v2

    #@48
    .line 161
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@4b
    move-result v6

    #@4c
    .line 165
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "jobDeadline":J
    :cond_3
    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/job/controllers/TimeController;->setDeadlineExpiredAlarmLocked(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4f
    monitor-exit v10

    #@50
    .line 138
    return-void
.end method

.method private checkExpiredDelaysAndResetAlarm()V
    .locals 12

    #@0
    .prologue
    .line 174
    iget-object v11, p0, Lcom/android/server/job/controllers/TimeController;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v11

    #@3
    .line 175
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@6
    move-result-wide v8

    #@7
    .line 176
    .local v8, "nowElapsedMillis":J
    const-wide v4, 0x7fffffffffffffffL

    #@c
    .line 177
    .local v4, "nextDelayTime":J
    const/4 v6, 0x0

    #@d
    .line 178
    .local v6, "nextDelayUid":I
    const/4 v7, 0x0

    #@e
    .line 179
    .local v7, "ready":Z
    iget-object v10, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    #@10
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@13
    move-result-object v0

    #@14
    .line 180
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@17
    move-result v10

    #@18
    if-eqz v10, :cond_3

    #@1a
    .line 181
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1d
    move-result-object v1

    #@1e
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    #@20
    .line 182
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    #@23
    move-result v10

    #@24
    if-eqz v10, :cond_0

    #@26
    .line 185
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    #@29
    move-result-wide v2

    #@2a
    .line 186
    .local v2, "jobDelayTime":J
    cmp-long v10, v2, v8

    #@2c
    if-gtz v10, :cond_2

    #@2e
    .line 187
    const/4 v10, 0x1

    #@2f
    invoke-virtual {v1, v10}, Lcom/android/server/job/controllers/JobStatus;->setTimingDelayConstraintSatisfied(Z)Z

    #@32
    .line 188
    invoke-direct {p0, v1}, Lcom/android/server/job/controllers/TimeController;->canStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    #@35
    move-result v10

    #@36
    if-eqz v10, :cond_1

    #@38
    .line 189
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@3b
    .line 191
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    #@3e
    move-result v10

    #@3f
    if-eqz v10, :cond_0

    #@41
    .line 192
    const/4 v7, 0x1

    #@42
    goto :goto_0

    #@43
    .line 194
    :cond_2
    const/4 v10, 0x2

    #@44
    invoke-virtual {v1, v10}, Lcom/android/server/job/controllers/JobStatus;->isConstraintSatisfied(I)Z

    #@47
    move-result v10

    #@48
    if-nez v10, :cond_0

    #@4a
    .line 197
    cmp-long v10, v4, v2

    #@4c
    if-lez v10, :cond_0

    #@4e
    .line 198
    move-wide v4, v2

    #@4f
    .line 199
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@52
    move-result v6

    #@53
    goto :goto_0

    #@54
    .line 203
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "jobDelayTime":J
    :cond_3
    if-eqz v7, :cond_4

    #@56
    .line 204
    iget-object v10, p0, Lcom/android/server/job/controllers/TimeController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    #@58
    invoke-interface {v10}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    #@5b
    .line 206
    :cond_4
    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/job/controllers/TimeController;->setDelayExpiredAlarmLocked(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5e
    monitor-exit v11

    #@5f
    .line 173
    return-void

    #@60
    .line 174
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v4    # "nextDelayTime":J
    .end local v6    # "nextDelayUid":I
    .end local v7    # "ready":Z
    .end local v8    # "nowElapsedMillis":J
    :catchall_0
    move-exception v10

    #@61
    monitor-exit v11

    #@62
    throw v10
.end method

.method private ensureAlarmServiceLocked()V
    .locals 2

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 130
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
    .line 128
    :cond_0
    return-void
.end method

.method public static declared-synchronized get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/TimeController;
    .locals 4
    .param p0, "jms"    # Lcom/android/server/job/JobSchedulerService;

    #@0
    .prologue
    const-class v1, Lcom/android/server/job/controllers/TimeController;

    #@2
    monitor-enter v1

    #@3
    .line 59
    :try_start_0
    sget-object v0, Lcom/android/server/job/controllers/TimeController;->mSingleton:Lcom/android/server/job/controllers/TimeController;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 60
    new-instance v0, Lcom/android/server/job/controllers/TimeController;

    #@9
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getLock()Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/job/controllers/TimeController;-><init>(Lcom/android/server/job/StateChangedListener;Landroid/content/Context;Ljava/lang/Object;)V

    #@14
    sput-object v0, Lcom/android/server/job/controllers/TimeController;->mSingleton:Lcom/android/server/job/controllers/TimeController;

    #@16
    .line 62
    :cond_0
    sget-object v0, Lcom/android/server/job/controllers/TimeController;->mSingleton:Lcom/android/server/job/controllers/TimeController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v1

    #@19
    return-object v0

    #@1a
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method private maybeAdjustAlarmTime(J)J
    .locals 3
    .param p1, "proposedAlarmTimeElapsedMillis"    # J

    #@0
    .prologue
    .line 245
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    .line 246
    .local v0, "earliestWakeupTimeElapsed":J
    cmp-long v2, p1, v0

    #@6
    if-gez v2, :cond_0

    #@8
    .line 247
    return-wide v0

    #@9
    .line 249
    :cond_0
    return-wide p1
.end method

.method private maybeUpdateAlarmsLocked(JJI)V
    .locals 3
    .param p1, "delayExpiredElapsed"    # J
    .param p3, "deadlineExpiredElapsed"    # J
    .param p5, "uid"    # I

    #@0
    .prologue
    .line 212
    iget-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    #@2
    cmp-long v0, p1, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 213
    invoke-direct {p0, p1, p2, p5}, Lcom/android/server/job/controllers/TimeController;->setDelayExpiredAlarmLocked(JI)V

    #@9
    .line 215
    :cond_0
    iget-wide v0, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    #@b
    cmp-long v0, p3, v0

    #@d
    if-gez v0, :cond_1

    #@f
    .line 216
    invoke-direct {p0, p3, p4, p5}, Lcom/android/server/job/controllers/TimeController;->setDeadlineExpiredAlarmLocked(JI)V

    #@12
    .line 211
    :cond_1
    return-void
.end method

.method private setDeadlineExpiredAlarmLocked(JI)V
    .locals 7
    .param p1, "alarmTimeElapsedMillis"    # J
    .param p3, "uid"    # I

    #@0
    .prologue
    .line 238
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/TimeController;->maybeAdjustAlarmTime(J)J

    #@3
    move-result-wide p1

    #@4
    .line 239
    iput-wide p1, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    #@6
    .line 240
    const-string/jumbo v2, "*job.deadline*"

    #@9
    iget-object v3, p0, Lcom/android/server/job/controllers/TimeController;->mDeadlineExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@b
    .line 241
    iget-wide v4, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    #@d
    move-object v1, p0

    #@e
    move v6, p3

    #@f
    .line 240
    invoke-direct/range {v1 .. v6}, Lcom/android/server/job/controllers/TimeController;->updateAlarmWithListenerLocked(Ljava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;JI)V

    #@12
    .line 237
    return-void
.end method

.method private setDelayExpiredAlarmLocked(JI)V
    .locals 7
    .param p1, "alarmTimeElapsedMillis"    # J
    .param p3, "uid"    # I

    #@0
    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/TimeController;->maybeAdjustAlarmTime(J)J

    #@3
    move-result-wide p1

    #@4
    .line 227
    iput-wide p1, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    #@6
    .line 228
    const-string/jumbo v2, "*job.delay*"

    #@9
    iget-object v3, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredListener:Landroid/app/AlarmManager$OnAlarmListener;

    #@b
    .line 229
    iget-wide v4, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    #@d
    move-object v1, p0

    #@e
    move v6, p3

    #@f
    .line 228
    invoke-direct/range {v1 .. v6}, Lcom/android/server/job/controllers/TimeController;->updateAlarmWithListenerLocked(Ljava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;JI)V

    #@12
    .line 225
    return-void
.end method

.method private updateAlarmWithListenerLocked(Ljava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;JI)V
    .locals 15
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/app/AlarmManager$OnAlarmListener;
    .param p3, "alarmTimeElapsed"    # J
    .param p5, "uid"    # I

    #@0
    .prologue
    .line 254
    invoke-direct {p0}, Lcom/android/server/job/controllers/TimeController;->ensureAlarmServiceLocked()V

    #@3
    .line 255
    const-wide v2, 0x7fffffffffffffffL

    #@8
    cmp-long v2, p3, v2

    #@a
    if-nez v2, :cond_0

    #@c
    .line 256
    iget-object v2, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    #@e
    move-object/from16 v0, p2

    #@10
    invoke-virtual {v2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    #@13
    .line 253
    :goto_0
    return-void

    #@14
    .line 261
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/controllers/TimeController;->mAlarmService:Landroid/app/AlarmManager;

    #@16
    .line 262
    const-wide/16 v8, 0x0

    #@18
    new-instance v13, Landroid/os/WorkSource;

    #@1a
    move/from16 v0, p5

    #@1c
    invoke-direct {v13, v0}, Landroid/os/WorkSource;-><init>(I)V

    #@1f
    .line 261
    const/4 v3, 0x2

    #@20
    .line 262
    const-wide/16 v6, -0x1

    #@22
    const/4 v12, 0x0

    #@23
    move-wide/from16 v4, p3

    #@25
    move-object/from16 v10, p1

    #@27
    move-object/from16 v11, p2

    #@29
    .line 261
    invoke-virtual/range {v2 .. v13}, Landroid/app/AlarmManager;->set(IJJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;Landroid/os/WorkSource;)V

    #@2c
    goto :goto_0
.end method


# virtual methods
.method public dumpControllerStateLocked(Ljava/io/PrintWriter;I)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filterUid"    # I

    #@0
    .prologue
    .line 290
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v0

    #@4
    .line 291
    .local v0, "nowElapsed":J
    const-string/jumbo v4, "Alarms: now="

    #@7
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a
    .line 292
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@d
    move-result-wide v4

    #@e
    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    #@11
    .line 293
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@14
    .line 294
    const-string/jumbo v4, "Next delay alarm in "

    #@17
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1a
    .line 295
    iget-wide v4, p0, Lcom/android/server/job/controllers/TimeController;->mNextDelayExpiredElapsedMillis:J

    #@1c
    invoke-static {v4, v5, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@1f
    .line 296
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@22
    .line 297
    const-string/jumbo v4, "Next deadline alarm in "

    #@25
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@28
    .line 298
    iget-wide v4, p0, Lcom/android/server/job/controllers/TimeController;->mNextJobExpiredElapsedMillis:J

    #@2a
    invoke-static {v4, v5, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@2d
    .line 299
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@30
    .line 300
    const-string/jumbo v4, "Tracking "

    #@33
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@36
    .line 301
    iget-object v4, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    #@38
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@3b
    move-result v4

    #@3c
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    #@3f
    .line 302
    const-string/jumbo v4, ":"

    #@42
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@45
    .line 303
    iget-object v4, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    #@47
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4a
    move-result-object v3

    #@4b
    .local v3, "ts$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@4e
    move-result v4

    #@4f
    if-eqz v4, :cond_3

    #@51
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@54
    move-result-object v2

    #@55
    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    #@57
    .line 304
    .local v2, "ts":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v2, p2}, Lcom/android/server/job/controllers/JobStatus;->shouldDump(I)Z

    #@5a
    move-result v4

    #@5b
    if-eqz v4, :cond_0

    #@5d
    .line 307
    const-string/jumbo v4, "  #"

    #@60
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@63
    .line 308
    invoke-virtual {v2, p1}, Lcom/android/server/job/controllers/JobStatus;->printUniqueId(Ljava/io/PrintWriter;)V

    #@66
    .line 309
    const-string/jumbo v4, " from "

    #@69
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6c
    .line 310
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@6f
    move-result v4

    #@70
    invoke-static {p1, v4}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    #@73
    .line 311
    const-string/jumbo v4, ": Delay="

    #@76
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@79
    .line 312
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    #@7c
    move-result v4

    #@7d
    if-eqz v4, :cond_1

    #@7f
    .line 313
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    #@82
    move-result-wide v4

    #@83
    invoke-static {v4, v5, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@86
    .line 317
    :goto_1
    const-string/jumbo v4, ", Deadline="

    #@89
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8c
    .line 318
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    #@8f
    move-result v4

    #@90
    if-eqz v4, :cond_2

    #@92
    .line 319
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    #@95
    move-result-wide v4

    #@96
    invoke-static {v4, v5, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    #@99
    .line 323
    :goto_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@9c
    goto :goto_0

    #@9d
    .line 315
    :cond_1
    const-string/jumbo v4, "N/A"

    #@a0
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a3
    goto :goto_1

    #@a4
    .line 321
    :cond_2
    const-string/jumbo v4, "N/A"

    #@a7
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@aa
    goto :goto_2

    #@ab
    .line 289
    .end local v2    # "ts":Lcom/android/server/job/controllers/JobStatus;
    :cond_3
    return-void
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 12
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "lastJob"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    const-wide v4, 0x7fffffffffffffffL

    #@5
    .line 79
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_5

    #@11
    .line 80
    :cond_0
    const/4 v1, 0x0

    #@12
    const/4 v2, 0x0

    #@13
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/job/controllers/TimeController;->maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V

    #@16
    .line 81
    const/4 v0, 0x0

    #@17
    .line 82
    .local v0, "isInsert":Z
    iget-object v1, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    #@19
    iget-object v2, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    #@1b
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@1e
    move-result v2

    #@1f
    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    #@22
    move-result-object v7

    #@23
    .line 83
    .local v7, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_1
    invoke-interface {v7}, Ljava/util/ListIterator;->hasPrevious()Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_2

    #@29
    .line 84
    invoke-interface {v7}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@2c
    move-result-object v8

    #@2d
    check-cast v8, Lcom/android/server/job/controllers/JobStatus;

    #@2f
    .line 85
    .local v8, "ts":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    #@32
    move-result-wide v2

    #@33
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    #@36
    move-result-wide v10

    #@37
    cmp-long v1, v2, v10

    #@39
    if-gez v1, :cond_1

    #@3b
    .line 87
    const/4 v0, 0x1

    #@3c
    .line 91
    .end local v8    # "ts":Lcom/android/server/job/controllers/JobStatus;
    :cond_2
    if-eqz v0, :cond_3

    #@3e
    .line 92
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    #@41
    .line 94
    :cond_3
    invoke-interface {v7, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    #@44
    .line 96
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    #@47
    move-result v1

    #@48
    if-eqz v1, :cond_6

    #@4a
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    #@4d
    move-result-wide v2

    #@4e
    .line 97
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    #@51
    move-result v1

    #@52
    if-eqz v1, :cond_4

    #@54
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    #@57
    move-result-wide v4

    #@58
    .line 98
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@5b
    move-result v6

    #@5c
    move-object v1, p0

    #@5d
    .line 95
    invoke-direct/range {v1 .. v6}, Lcom/android/server/job/controllers/TimeController;->maybeUpdateAlarmsLocked(JJI)V

    #@60
    .line 78
    .end local v0    # "isInsert":Z
    .end local v7    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_5
    return-void

    #@61
    .restart local v0    # "isInsert":Z
    .restart local v7    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_6
    move-wide v2, v4

    #@62
    .line 96
    goto :goto_0
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 1
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "incomingJob"    # Lcom/android/server/job/controllers/JobStatus;
    .param p3, "forUpdate"    # Z

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController;->mTrackedJobs:Ljava/util/List;

    #@2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 110
    invoke-direct {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    #@b
    .line 111
    invoke-direct {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDeadlinesAndResetAlarm()V

    #@e
    .line 108
    :cond_0
    return-void
.end method
