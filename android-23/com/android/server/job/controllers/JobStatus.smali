.class public Lcom/android/server/job/controllers/JobStatus;
.super Ljava/lang/Object;
.source "JobStatus.java"


# static fields
.field public static final NO_EARLIEST_RUNTIME:J = 0x0L

.field public static final NO_LATEST_RUNTIME:J = 0x7fffffffffffffffL


# instance fields
.field final appNotIdleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final chargingConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final connectivityConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final deadlineConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private earliestRunTimeElapsedMillis:J

.field final idleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final job:Landroid/app/job/JobInfo;

.field private latestRunTimeElapsedMillis:J

.field final name:Ljava/lang/String;

.field private final numFailures:I

.field final tag:Ljava/lang/String;

.field final timeDelayConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final uId:I

.field final unmeteredConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/app/job/JobInfo;I)V
    .locals 4
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "uId"    # I

    #@0
    .prologue
    .line 87
    const/4 v2, 0x0

    #@1
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;II)V

    #@4
    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@7
    move-result-wide v0

    #@8
    .line 91
    .local v0, "elapsedNow":J
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 92
    iput-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    #@10
    .line 93
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    #@13
    move-result-wide v2

    #@14
    add-long/2addr v2, v0

    #@15
    iput-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    #@17
    .line 86
    :goto_0
    return-void

    #@18
    .line 95
    :cond_0
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 96
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    #@21
    move-result-wide v2

    #@22
    add-long/2addr v2, v0

    #@23
    .line 95
    :goto_1
    iput-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    #@25
    .line 97
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_2

    #@2b
    .line 98
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    #@2e
    move-result-wide v2

    #@2f
    add-long/2addr v2, v0

    #@30
    .line 97
    :goto_2
    iput-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    #@32
    goto :goto_0

    #@33
    .line 96
    :cond_1
    const-wide/16 v2, 0x0

    #@35
    goto :goto_1

    #@36
    .line 98
    :cond_2
    const-wide v2, 0x7fffffffffffffffL

    #@3b
    goto :goto_2
.end method

.method private constructor <init>(Landroid/app/job/JobInfo;II)V
    .locals 2
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "uId"    # I
    .param p3, "numFailures"    # I

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->chargingConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a
    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@c
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->timeDelayConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@11
    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@13
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->deadlineConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@18
    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1a
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@1d
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->idleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1f
    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@21
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@24
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->unmeteredConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@26
    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@28
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@2b
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->connectivityConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2d
    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2f
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@32
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->appNotIdleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@34
    .line 78
    iput-object p1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@36
    .line 79
    iput p2, p0, Lcom/android/server/job/controllers/JobStatus;->uId:I

    #@38
    .line 80
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->name:Ljava/lang/String;

    #@42
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v1, "*job*/"

    #@4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->name:Ljava/lang/String;

    #@50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v0

    #@58
    iput-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    #@5a
    .line 82
    iput p3, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    #@5c
    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/app/job/JobInfo;IJJ)V
    .locals 1
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "uId"    # I
    .param p3, "earliestRunTimeElapsedMillis"    # J
    .param p5, "latestRunTimeElapsedMillis"    # J

    #@0
    .prologue
    .line 111
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;II)V

    #@4
    .line 113
    iput-wide p3, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    #@6
    .line 114
    iput-wide p5, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    #@8
    .line 110
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/JobStatus;JJI)V
    .locals 2
    .param p1, "rescheduling"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "newEarliestRuntimeElapsedMillis"    # J
    .param p4, "newLatestRuntimeElapsedMillis"    # J
    .param p6, "backoffAttempt"    # I

    #@0
    .prologue
    .line 120
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    #@5
    move-result v1

    #@6
    invoke-direct {p0, v0, v1, p6}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;II)V

    #@9
    .line 122
    iput-wide p2, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    #@b
    .line 123
    iput-wide p4, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    #@d
    .line 119
    return-void
.end method

.method private formatRunTime(JJ)Ljava/lang/String;
    .locals 9
    .param p1, "runtime"    # J
    .param p3, "defaultValue"    # J

    #@0
    .prologue
    .line 242
    cmp-long v4, p1, p3

    #@2
    if-nez v4, :cond_0

    #@4
    .line 243
    const-string/jumbo v4, "none"

    #@7
    return-object v4

    #@8
    .line 245
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@b
    move-result-wide v0

    #@c
    .line 246
    .local v0, "elapsedNow":J
    sub-long v2, p1, v0

    #@e
    .line 247
    .local v2, "nextRuntime":J
    const-wide/16 v4, 0x0

    #@10
    cmp-long v4, v2, v4

    #@12
    if-lez v4, :cond_1

    #@14
    .line 248
    const-wide/16 v4, 0x3e8

    #@16
    div-long v4, v2, v4

    #@18
    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    return-object v4

    #@1d
    .line 250
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v5, "-"

    #@25
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v4

    #@29
    const-wide/16 v6, -0x3e8

    #@2b
    div-long v6, v2, v6

    #@2d
    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    return-object v4
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 266
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    .line 267
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->toString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a
    .line 265
    return-void
.end method

.method public getEarliestRunTime()J
    .locals 2

    #@0
    .prologue
    .line 191
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    #@2
    return-wide v0
.end method

.method public getExtras()Landroid/os/PersistableBundle;
    .locals 1

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@2
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getJob()Landroid/app/job/JobInfo;
    .locals 1

    #@0
    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@2
    return-object v0
.end method

.method public getJobId()I
    .locals 1

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@2
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLatestRunTimeElapsed()J
    .locals 2

    #@0
    .prologue
    .line 195
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    #@2
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNumFailures()I
    .locals 1

    #@0
    .prologue
    .line 135
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    #@2
    return v0
.end method

.method public getServiceComponent()Landroid/content/ComponentName;
    .locals 1

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@2
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getServiceToken()I
    .locals 1

    #@0
    .prologue
    .line 74
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->uId:I

    #@2
    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->tag:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUid()I
    .locals 1

    #@0
    .prologue
    .line 147
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->uId:I

    #@2
    return v0
.end method

.method public getUserId()I
    .locals 1

    #@0
    .prologue
    .line 143
    iget v0, p0, Lcom/android/server/job/controllers/JobStatus;->uId:I

    #@2
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasChargingConstraint()Z
    .locals 1

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@2
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasConnectivityConstraint()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 163
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@3
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getNetworkType()I

    #@6
    move-result v1

    #@7
    if-ne v1, v0, :cond_0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public hasDeadlineConstraint()Z
    .locals 4

    #@0
    .prologue
    .line 179
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    #@2
    const-wide v2, 0x7fffffffffffffffL

    #@7
    cmp-long v0, v0, v2

    #@9
    if-eqz v0, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public hasIdleConstraint()Z
    .locals 1

    #@0
    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@2
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public hasTimingDelayConstraint()Z
    .locals 4

    #@0
    .prologue
    .line 175
    iget-wide v0, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    #@2
    const-wide/16 v2, 0x0

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

.method public hasUnmeteredConstraint()Z
    .locals 2

    #@0
    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@2
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getNetworkType()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x2

    #@7
    if-ne v0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public declared-synchronized isConstraintsSatisfied()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 214
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasChargingConstraint()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->chargingConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_5

    #@f
    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasTimingDelayConstraint()Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->timeDelayConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@17
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@1a
    move-result v0

    #@1b
    .line 214
    if-eqz v0, :cond_5

    #@1d
    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasConnectivityConstraint()Z

    #@20
    move-result v0

    #@21
    if-eqz v0, :cond_2

    #@23
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->connectivityConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@25
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@28
    move-result v0

    #@29
    .line 214
    if-eqz v0, :cond_5

    #@2b
    .line 217
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasUnmeteredConstraint()Z

    #@2e
    move-result v0

    #@2f
    if-eqz v0, :cond_3

    #@31
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->unmeteredConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@33
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@36
    move-result v0

    #@37
    .line 214
    if-eqz v0, :cond_5

    #@39
    .line 218
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasIdleConstraint()Z

    #@3c
    move-result v0

    #@3d
    if-eqz v0, :cond_4

    #@3f
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->idleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@41
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    move-result v0

    #@45
    :goto_0
    monitor-exit p0

    #@46
    .line 214
    return v0

    #@47
    .line 218
    :cond_4
    const/4 v0, 0x1

    #@48
    goto :goto_0

    #@49
    .line 214
    :cond_5
    const/4 v0, 0x0

    #@4a
    goto :goto_0

    #@4b
    :catchall_0
    move-exception v0

    #@4c
    monitor-exit p0

    #@4d
    throw v0
.end method

.method public isPersisted()Z
    .locals 1

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@2
    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPersisted()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public declared-synchronized isReady()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 205
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isConstraintsSatisfied()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 206
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->deadlineConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@f
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@12
    move-result v0

    #@13
    .line 205
    if-eqz v0, :cond_1

    #@15
    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/JobStatus;->appNotIdleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@17
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result v0

    #@1b
    :goto_0
    monitor-exit p0

    #@1c
    .line 205
    return v0

    #@1d
    :cond_1
    const/4 v0, 0x0

    #@1e
    goto :goto_0

    #@1f
    :catchall_0
    move-exception v0

    #@20
    monitor-exit p0

    #@21
    throw v0
.end method

.method public matches(II)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "jobId"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 222
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@3
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    #@6
    move-result v1

    #@7
    if-ne v1, p2, :cond_0

    #@9
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->uId:I

    #@b
    if-ne v1, p1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@7
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    const-string/jumbo v1, " jId="

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@1c
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    #@1f
    move-result v1

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    .line 261
    const-string/jumbo v1, ", u"

    #@27
    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 261
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    #@2e
    move-result v1

    #@2f
    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->hashCode()I

    #@8
    move-result v1

    #@9
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    const/4 v2, 0x0

    #@e
    const/4 v3, 0x3

    #@f
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    const-string/jumbo v1, ".."

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    .line 228
    const-string/jumbo v1, ":["

    #@21
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 228
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@27
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    #@2a
    move-result-object v1

    #@2b
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    .line 229
    const-string/jumbo v1, ",jId="

    #@32
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 229
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@38
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    #@3b
    move-result v1

    #@3c
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 230
    const-string/jumbo v1, ",u"

    #@43
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    .line 230
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    #@4a
    move-result v1

    #@4b
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v0

    #@4f
    .line 231
    const-string/jumbo v1, ",R=("

    #@52
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    .line 231
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->earliestRunTimeElapsedMillis:J

    #@58
    const-wide/16 v4, 0x0

    #@5a
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(JJ)Ljava/lang/String;

    #@5d
    move-result-object v1

    #@5e
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v0

    #@62
    .line 232
    const-string/jumbo v1, ","

    #@65
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v0

    #@69
    .line 232
    iget-wide v2, p0, Lcom/android/server/job/controllers/JobStatus;->latestRunTimeElapsedMillis:J

    #@6b
    const-wide v4, 0x7fffffffffffffffL

    #@70
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/job/controllers/JobStatus;->formatRunTime(JJ)Ljava/lang/String;

    #@73
    move-result-object v1

    #@74
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v0

    #@78
    .line 232
    const-string/jumbo v1, ")"

    #@7b
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v0

    #@7f
    .line 233
    const-string/jumbo v1, ",N="

    #@82
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v0

    #@86
    .line 233
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@88
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getNetworkType()I

    #@8b
    move-result v1

    #@8c
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v0

    #@90
    .line 233
    const-string/jumbo v1, ",C="

    #@93
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v0

    #@97
    .line 233
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@99
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    #@9c
    move-result v1

    #@9d
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v0

    #@a1
    .line 234
    const-string/jumbo v1, ",I="

    #@a4
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v0

    #@a8
    .line 234
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@aa
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    #@ad
    move-result v1

    #@ae
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v0

    #@b2
    .line 234
    const-string/jumbo v1, ",F="

    #@b5
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v0

    #@b9
    .line 234
    iget v1, p0, Lcom/android/server/job/controllers/JobStatus;->numFailures:I

    #@bb
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@be
    move-result-object v0

    #@bf
    .line 235
    const-string/jumbo v1, ",P="

    #@c2
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v0

    #@c6
    .line 235
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->job:Landroid/app/job/JobInfo;

    #@c8
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPersisted()Z

    #@cb
    move-result v1

    #@cc
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v0

    #@d0
    .line 236
    const-string/jumbo v1, ",ANI="

    #@d3
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v0

    #@d7
    .line 236
    iget-object v1, p0, Lcom/android/server/job/controllers/JobStatus;->appNotIdleConstraintSatisfied:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@d9
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@dc
    move-result v1

    #@dd
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v1

    #@e1
    .line 237
    invoke-virtual {p0}, Lcom/android/server/job/controllers/JobStatus;->isReady()Z

    #@e4
    move-result v0

    #@e5
    if-eqz v0, :cond_0

    #@e7
    const-string/jumbo v0, "(READY)"

    #@ea
    .line 227
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v0

    #@ee
    .line 238
    const-string/jumbo v1, "]"

    #@f1
    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v0

    #@f5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f8
    move-result-object v0

    #@f9
    return-object v0

    #@fa
    .line 237
    :cond_0
    const-string/jumbo v0, ""

    #@fd
    goto :goto_0
.end method
