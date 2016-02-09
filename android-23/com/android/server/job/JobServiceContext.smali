.class public Lcom/android/server/job/JobServiceContext;
.super Landroid/app/job/IJobCallback$Stub;
.source "JobServiceContext.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobServiceContext$JobServiceHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXECUTING_TIMESLICE_MILLIS:J = 0x927c0L

.field private static final MSG_CALLBACK:I = 0x1

.field private static final MSG_CANCEL:I = 0x3

.field private static final MSG_SERVICE_BOUND:I = 0x2

.field private static final MSG_SHUTDOWN_EXECUTION:I = 0x4

.field private static final MSG_TIMEOUT:I = 0x0

.field private static final OP_TIMEOUT_MILLIS:J = 0x1f40L

.field private static final TAG:Ljava/lang/String; = "JobServiceContext"

.field static final VERB_BINDING:I = 0x0

.field static final VERB_EXECUTING:I = 0x2

.field static final VERB_STARTING:I = 0x1

.field static final VERB_STOPPING:I = 0x3

.field private static final VERB_STRINGS:[Ljava/lang/String;

.field private static final defaultMaxActiveJobsPerService:I


# instance fields
.field private mAvailable:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mCallbackHandler:Landroid/os/Handler;

.field private mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mCompletedListener:Lcom/android/server/job/JobCompletedListener;

.field private final mContext:Landroid/content/Context;

.field private mExecutionStartTimeElapsed:J

.field private final mLock:Ljava/lang/Object;

.field private mParams:Landroid/app/job/JobParameters;

.field private mRunningJob:Lcom/android/server/job/controllers/JobStatus;

.field private mTimeoutElapsed:J

.field mVerb:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field service:Landroid/app/job/IJobService;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/job/JobServiceContext;)Lcom/android/internal/app/IBatteryStats;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/job/JobServiceContext;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/JobCompletedListener;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCompletedListener:Lcom/android/server/job/JobCompletedListener;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/job/JobServiceContext;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/job/JobServiceContext;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/job/JobServiceContext;)Landroid/app/job/JobParameters;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/job/JobServiceContext;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/job/JobServiceContext;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/job/JobServiceContext;Landroid/app/job/JobParameters;)Landroid/app/job/JobParameters;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    #@2
    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/job/JobServiceContext;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/job/JobServiceContext;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOut()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/job/JobServiceContext;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOut()V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v2, 0x3

    #@1
    const/4 v1, 0x1

    #@2
    .line 69
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    move v0, v1

    #@9
    .line 68
    :goto_0
    sput v0, Lcom/android/server/job/JobServiceContext;->defaultMaxActiveJobsPerService:I

    #@b
    .line 75
    const/4 v0, 0x4

    #@c
    new-array v0, v0, [Ljava/lang/String;

    #@e
    .line 76
    const-string/jumbo v3, "VERB_BINDING"

    #@11
    const/4 v4, 0x0

    #@12
    aput-object v3, v0, v4

    #@14
    const-string/jumbo v3, "VERB_STARTING"

    #@17
    aput-object v3, v0, v1

    #@19
    const-string/jumbo v1, "VERB_EXECUTING"

    #@1c
    const/4 v3, 0x2

    #@1d
    aput-object v1, v0, v3

    #@1f
    const-string/jumbo v1, "VERB_STOPPING"

    #@22
    aput-object v1, v0, v2

    #@24
    .line 75
    sput-object v0, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    #@26
    .line 64
    return-void

    #@27
    :cond_0
    move v0, v2

    #@28
    .line 69
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobCompletedListener;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p3, "completedListener"    # Lcom/android/server/job/JobCompletedListener;
    .param p4, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 133
    invoke-direct {p0}, Landroid/app/job/IJobCallback$Stub;-><init>()V

    #@3
    .line 109
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a
    .line 116
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    #@11
    .line 135
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    #@13
    .line 136
    iput-object p2, p0, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@15
    .line 137
    new-instance v0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;

    #@17
    invoke-direct {v0, p0, p4}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;-><init>(Lcom/android/server/job/JobServiceContext;Landroid/os/Looper;)V

    #@1a
    iput-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    #@1c
    .line 138
    iput-object p3, p0, Lcom/android/server/job/JobServiceContext;->mCompletedListener:Lcom/android/server/job/JobCompletedListener;

    #@1e
    .line 139
    const/4 v0, 0x1

    #@1f
    iput-boolean v0, p0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    #@21
    .line 134
    return-void
.end method

.method constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/internal/app/IBatteryStats;Landroid/os/Looper;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;
    .param p2, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p3, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 129
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/server/job/JobServiceContext;-><init>(Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobCompletedListener;Landroid/os/Looper;)V

    #@7
    .line 128
    return-void
.end method

.method private removeOpTimeOut()V
    .locals 2

    #@0
    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@6
    .line 576
    return-void
.end method

.method private scheduleOpTimeOut()V
    .locals 6

    #@0
    .prologue
    .line 561
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOut()V

    #@3
    .line 563
    iget v1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@5
    const/4 v4, 0x2

    #@6
    if-ne v1, v4, :cond_0

    #@8
    .line 564
    const-wide/32 v2, 0x927c0

    #@b
    .line 570
    .local v2, "timeoutMillis":J
    :goto_0
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    #@d
    const/4 v4, 0x0

    #@e
    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@11
    move-result-object v0

    #@12
    .line 571
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    #@14
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@17
    .line 572
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1a
    move-result-wide v4

    #@1b
    add-long/2addr v4, v2

    #@1c
    iput-wide v4, p0, Lcom/android/server/job/JobServiceContext;->mTimeoutElapsed:J

    #@1e
    .line 560
    return-void

    #@1f
    .line 564
    .end local v0    # "m":Landroid/os/Message;
    .end local v2    # "timeoutMillis":J
    :cond_0
    const-wide/16 v2, 0x1f40

    #@21
    .restart local v2    # "timeoutMillis":J
    goto :goto_0
.end method

.method private verifyCallingUid()Z
    .locals 2

    #@0
    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@7
    move-result v0

    #@8
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    #@a
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    #@d
    move-result v1

    #@e
    if-eq v0, v1, :cond_1

    #@10
    .line 286
    :cond_0
    const/4 v0, 0x0

    #@11
    return v0

    #@12
    .line 288
    :cond_1
    const/4 v0, 0x1

    #@13
    return v0
.end method


# virtual methods
.method public acknowledgeStartMessage(IZ)V
    .locals 3
    .param p1, "jobId"    # I
    .param p2, "ongoing"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 241
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->verifyCallingUid()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 242
    return-void

    #@8
    .line 244
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    #@a
    if-eqz p2, :cond_1

    #@c
    move v0, v1

    #@d
    :goto_0
    invoke-virtual {v2, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@14
    .line 240
    return-void

    #@15
    .line 244
    :cond_1
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method

.method public acknowledgeStopMessage(IZ)V
    .locals 3
    .param p1, "jobId"    # I
    .param p2, "reschedule"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 232
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->verifyCallingUid()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 233
    return-void

    #@8
    .line 235
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    #@a
    if-eqz p2, :cond_1

    #@c
    move v0, v1

    #@d
    :goto_0
    invoke-virtual {v2, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@14
    .line 231
    return-void

    #@15
    .line 235
    :cond_1
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method

.method cancelExecutingJob()V
    .locals 2

    #@0
    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x3

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 200
    return-void
.end method

.method executeRunnableJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 11
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 149
    iget-object v5, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v5

    #@4
    .line 150
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    #@6
    if-nez v4, :cond_0

    #@8
    .line 151
    const-string/jumbo v4, "JobServiceContext"

    #@b
    const-string/jumbo v6, "Starting new runnable but context is unavailable > Error."

    #@e
    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v5

    #@12
    .line 152
    return v10

    #@13
    .line 155
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    #@15
    .line 157
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_2

    #@1b
    .line 158
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    #@1e
    move-result-wide v6

    #@1f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@22
    move-result-wide v8

    #@23
    cmp-long v4, v6, v8

    #@25
    if-gez v4, :cond_1

    #@27
    const/4 v3, 0x1

    #@28
    .line 159
    .local v3, "isDeadlineExpired":Z
    :goto_0
    new-instance v4, Landroid/app/job/JobParameters;

    #@2a
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    #@2d
    move-result v6

    #@2e
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getExtras()Landroid/os/PersistableBundle;

    #@31
    move-result-object v7

    #@32
    invoke-direct {v4, p0, v6, v7, v3}, Landroid/app/job/JobParameters;-><init>(Landroid/os/IBinder;ILandroid/os/PersistableBundle;Z)V

    #@35
    iput-object v4, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    #@37
    .line 160
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3a
    move-result-wide v6

    #@3b
    iput-wide v6, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    #@3d
    .line 162
    const/4 v4, 0x0

    #@3e
    iput v4, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@40
    .line 163
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOut()V

    #@43
    .line 164
    new-instance v4, Landroid/content/Intent;

    #@45
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    #@48
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    #@4b
    move-result-object v6

    #@4c
    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@4f
    move-result-object v2

    #@50
    .line 165
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    #@52
    .line 167
    new-instance v6, Landroid/os/UserHandle;

    #@54
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    #@57
    move-result v7

    #@58
    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    #@5b
    .line 166
    const/4 v7, 0x5

    #@5c
    .line 165
    invoke-virtual {v4, v2, p0, v7, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@5f
    move-result v0

    #@60
    .line 168
    .local v0, "binding":Z
    if-nez v0, :cond_3

    #@62
    .line 172
    const/4 v4, 0x0

    #@63
    iput-object v4, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    #@65
    .line 173
    const/4 v4, 0x0

    #@66
    iput-object v4, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    #@68
    .line 174
    const-wide/16 v6, 0x0

    #@6a
    iput-wide v6, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    #@6c
    .line 175
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOut()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6f
    monitor-exit v5

    #@70
    .line 176
    return v10

    #@71
    .line 158
    .end local v0    # "binding":Z
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "isDeadlineExpired":Z
    :cond_1
    const/4 v3, 0x0

    #@72
    .restart local v3    # "isDeadlineExpired":Z
    goto :goto_0

    #@73
    .line 157
    .end local v3    # "isDeadlineExpired":Z
    :cond_2
    const/4 v3, 0x0

    #@74
    .restart local v3    # "isDeadlineExpired":Z
    goto :goto_0

    #@75
    .line 179
    .restart local v0    # "binding":Z
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@77
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getName()Ljava/lang/String;

    #@7a
    move-result-object v6

    #@7b
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    #@7e
    move-result v7

    #@7f
    invoke-interface {v4, v6, v7}, Lcom/android/internal/app/IBatteryStats;->noteJobStart(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@82
    .line 183
    :goto_1
    const/4 v4, 0x0

    #@83
    :try_start_3
    iput-boolean v4, p0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@85
    .line 184
    const/4 v4, 0x1

    #@86
    monitor-exit v5

    #@87
    return v4

    #@88
    .line 149
    .end local v0    # "binding":Z
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "isDeadlineExpired":Z
    :catchall_0
    move-exception v4

    #@89
    monitor-exit v5

    #@8a
    throw v4

    #@8b
    .line 180
    .restart local v0    # "binding":Z
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "isDeadlineExpired":Z
    :catch_0
    move-exception v1

    #@8c
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method getExecutionStartTimeElapsed()J
    .locals 2

    #@0
    .prologue
    .line 214
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    #@2
    return-wide v0
.end method

.method getRunningJob()Lcom/android/server/job/controllers/JobStatus;
    .locals 2

    #@0
    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return-object v1

    #@7
    .line 194
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method getTimeoutElapsed()J
    .locals 2

    #@0
    .prologue
    .line 218
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mTimeoutElapsed:J

    #@2
    return-wide v0
.end method

.method isAvailable()Z
    .locals 2

    #@0
    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 209
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 208
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public jobFinished(IZ)V
    .locals 3
    .param p1, "jobId"    # I
    .param p2, "reschedule"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 223
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->verifyCallingUid()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 224
    return-void

    #@8
    .line 226
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    #@a
    if-eqz p2, :cond_1

    #@c
    move v0, v1

    #@d
    :goto_0
    invoke-virtual {v2, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@14
    .line 222
    return-void

    #@15
    .line 226
    :cond_1
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 256
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    #@2
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 257
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    #@e
    const/4 v2, 0x4

    #@f
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@16
    .line 258
    return-void

    #@17
    .line 260
    :cond_0
    invoke-static {p2}, Landroid/app/job/IJobService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobService;

    #@1a
    move-result-object v1

    #@1b
    iput-object v1, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    #@1d
    .line 262
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    #@1f
    const-string/jumbo v2, "power"

    #@22
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Landroid/os/PowerManager;

    #@28
    .line 263
    .local v0, "pm":Landroid/os/PowerManager;
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    #@2a
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getTag()Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    const/4 v2, 0x1

    #@2f
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@32
    move-result-object v1

    #@33
    iput-object v1, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@35
    .line 264
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@37
    new-instance v2, Landroid/os/WorkSource;

    #@39
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    #@3b
    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    #@3e
    move-result v3

    #@3f
    invoke-direct {v2, v3}, Landroid/os/WorkSource;-><init>(I)V

    #@42
    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@45
    .line 265
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@47
    const/4 v2, 0x0

    #@48
    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@4b
    .line 266
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@4d
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@50
    .line 267
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    #@52
    const/4 v2, 0x2

    #@53
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@5a
    .line 255
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x4

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 272
    return-void
.end method
