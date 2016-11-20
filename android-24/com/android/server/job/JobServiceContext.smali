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

.field public static final NO_PREFERRED_UID:I = -0x1

.field private static final OP_TIMEOUT_MILLIS:J = 0x1f40L

.field private static final TAG:Ljava/lang/String; = "JobServiceContext"

.field static final VERB_BINDING:I = 0x0

.field static final VERB_EXECUTING:I = 0x2

.field static final VERB_FINISHED:I = 0x4

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

.field private final mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

.field private final mLock:Ljava/lang/Object;

.field private mParams:Landroid/app/job/JobParameters;

.field private mPreferredUid:I

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

.method static synthetic -get5(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/JobPackageTracker;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/job/JobServiceContext;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/job/JobServiceContext;)Landroid/app/job/JobParameters;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/job/JobServiceContext;)Landroid/os/PowerManager$WakeLock;
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

.method static synthetic -set2(Lcom/android/server/job/JobServiceContext;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    #@2
    return p1
.end method

.method static synthetic -set3(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .locals 0

    #@0
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Lcom/android/server/job/JobServiceContext;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
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
    .line 70
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    move v0, v1

    #@9
    .line 69
    :goto_0
    sput v0, Lcom/android/server/job/JobServiceContext;->defaultMaxActiveJobsPerService:I

    #@b
    .line 76
    const/4 v0, 0x5

    #@c
    new-array v0, v0, [Ljava/lang/String;

    #@e
    .line 77
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
    const-string/jumbo v1, "VERB_FINISHED"

    #@27
    const/4 v2, 0x4

    #@28
    aput-object v1, v0, v2

    #@2a
    .line 76
    sput-object v0, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    #@2c
    .line 65
    return-void

    #@2d
    :cond_0
    move v0, v2

    #@2e
    .line 70
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Lcom/android/server/job/JobCompletedListener;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p4, "tracker"    # Lcom/android/server/job/JobPackageTracker;
    .param p5, "completedListener"    # Lcom/android/server/job/JobCompletedListener;
    .param p6, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 146
    invoke-direct {p0}, Landroid/app/job/IJobCallback$Stub;-><init>()V

    #@3
    .line 115
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@a
    .line 148
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    #@c
    .line 149
    iput-object p2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    #@e
    .line 150
    iput-object p3, p0, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@10
    .line 151
    iput-object p4, p0, Lcom/android/server/job/JobServiceContext;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    #@12
    .line 152
    new-instance v0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;

    #@14
    invoke-direct {v0, p0, p6}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;-><init>(Lcom/android/server/job/JobServiceContext;Landroid/os/Looper;)V

    #@17
    iput-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    #@19
    .line 153
    iput-object p5, p0, Lcom/android/server/job/JobServiceContext;->mCompletedListener:Lcom/android/server/job/JobCompletedListener;

    #@1b
    .line 154
    const/4 v0, 0x1

    #@1c
    iput-boolean v0, p0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    #@1e
    .line 155
    const/4 v0, 0x4

    #@1f
    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@21
    .line 156
    const/4 v0, -0x1

    #@22
    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    #@24
    .line 147
    return-void
.end method

.method constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Landroid/os/Looper;)V
    .locals 7
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;
    .param p2, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p3, "tracker"    # Lcom/android/server/job/JobPackageTracker;
    .param p4, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 142
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getLock()Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    move-object v0, p0

    #@9
    move-object v3, p2

    #@a
    move-object v4, p3

    #@b
    move-object v5, p1

    #@c
    move-object v6, p4

    #@d
    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/JobServiceContext;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobPackageTracker;Lcom/android/server/job/JobCompletedListener;Landroid/os/Looper;)V

    #@10
    .line 141
    return-void
.end method

.method private removeOpTimeOut()V
    .locals 2

    #@0
    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@6
    .line 637
    return-void
.end method

.method private scheduleOpTimeOut()V
    .locals 6

    #@0
    .prologue
    .line 622
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOut()V

    #@3
    .line 624
    iget v1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@5
    const/4 v4, 0x2

    #@6
    if-ne v1, v4, :cond_0

    #@8
    .line 625
    const-wide/32 v2, 0x927c0

    #@b
    .line 631
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
    .line 632
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    #@14
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    #@17
    .line 633
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1a
    move-result-wide v4

    #@1b
    add-long/2addr v4, v2

    #@1c
    iput-wide v4, p0, Lcom/android/server/job/JobServiceContext;->mTimeoutElapsed:J

    #@1e
    .line 621
    return-void

    #@1f
    .line 625
    .end local v0    # "m":Landroid/os/Message;
    .end local v2    # "timeoutMillis":J
    :cond_0
    const-wide/16 v2, 0x1f40

    #@21
    .restart local v2    # "timeoutMillis":J
    goto :goto_0
.end method

.method private verifyCallingUid()Z
    .locals 3

    #@0
    .prologue
    .line 328
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    #@5
    if-eqz v0, :cond_0

    #@7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    #@a
    move-result v0

    #@b
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    #@d
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result v2

    #@11
    if-eq v0, v2, :cond_1

    #@13
    .line 333
    :cond_0
    const/4 v0, 0x0

    #@14
    monitor-exit v1

    #@15
    return v0

    #@16
    .line 335
    :cond_1
    const/4 v0, 0x1

    #@17
    monitor-exit v1

    #@18
    return v0

    #@19
    .line 328
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit v1

    #@1b
    throw v0
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
    .line 280
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->verifyCallingUid()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 281
    return-void

    #@8
    .line 283
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
    .line 279
    return-void

    #@15
    .line 283
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
    .line 271
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->verifyCallingUid()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 272
    return-void

    #@8
    .line 274
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
    .line 270
    return-void

    #@15
    .line 274
    :cond_1
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method

.method cancelExecutingJob(I)V
    .locals 3
    .param p1, "reason"    # I

    #@0
    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x3

    #@3
    const/4 v2, 0x0

    #@4
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@b
    .line 234
    return-void
.end method

.method clearPreferredUid()V
    .locals 1

    #@0
    .prologue
    .line 249
    const/4 v0, -0x1

    #@1
    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    #@3
    .line 248
    return-void
.end method

.method executeRunnableJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 12
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 166
    iget-object v10, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v10

    #@4
    .line 167
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    #@6
    if-nez v0, :cond_0

    #@8
    .line 168
    const-string/jumbo v0, "JobServiceContext"

    #@b
    const-string/jumbo v1, "Starting new runnable but context is unavailable > Error."

    #@e
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v10

    #@12
    .line 169
    return v11

    #@13
    .line 172
    :cond_0
    const/4 v0, -0x1

    #@14
    :try_start_1
    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    #@16
    .line 174
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    #@18
    .line 176
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_4

    #@1e
    .line 177
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    #@21
    move-result-wide v0

    #@22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@25
    move-result-wide v2

    #@26
    cmp-long v0, v0, v2

    #@28
    if-gez v0, :cond_3

    #@2a
    const/4 v4, 0x1

    #@2b
    .line 178
    .local v4, "isDeadlineExpired":Z
    :goto_0
    const/4 v5, 0x0

    #@2c
    .line 179
    .local v5, "triggeredUris":[Landroid/net/Uri;
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    #@2e
    if-eqz v0, :cond_1

    #@30
    .line 180
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    #@32
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    #@35
    move-result v0

    #@36
    new-array v5, v0, [Landroid/net/Uri;

    #@38
    .line 181
    .local v5, "triggeredUris":[Landroid/net/Uri;
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedUris:Landroid/util/ArraySet;

    #@3a
    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@3d
    .line 183
    .end local v5    # "triggeredUris":[Landroid/net/Uri;
    :cond_1
    const/4 v6, 0x0

    #@3e
    .line 184
    .local v6, "triggeredAuthorities":[Ljava/lang/String;
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    #@40
    if-eqz v0, :cond_2

    #@42
    .line 185
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    #@44
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    #@47
    move-result v0

    #@48
    new-array v6, v0, [Ljava/lang/String;

    #@4a
    .line 186
    .local v6, "triggeredAuthorities":[Ljava/lang/String;
    iget-object v0, p1, Lcom/android/server/job/controllers/JobStatus;->changedAuthorities:Landroid/util/ArraySet;

    #@4c
    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@4f
    .line 188
    .end local v6    # "triggeredAuthorities":[Ljava/lang/String;
    :cond_2
    new-instance v0, Landroid/app/job/JobParameters;

    #@51
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    #@54
    move-result v2

    #@55
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getExtras()Landroid/os/PersistableBundle;

    #@58
    move-result-object v3

    #@59
    move-object v1, p0

    #@5a
    invoke-direct/range {v0 .. v6}, Landroid/app/job/JobParameters;-><init>(Landroid/os/IBinder;ILandroid/os/PersistableBundle;Z[Landroid/net/Uri;[Ljava/lang/String;)V

    #@5d
    iput-object v0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    #@5f
    .line 190
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@62
    move-result-wide v0

    #@63
    iput-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    #@65
    .line 192
    const/4 v0, 0x0

    #@66
    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@68
    .line 193
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOut()V

    #@6b
    .line 194
    new-instance v0, Landroid/content/Intent;

    #@6d
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    #@70
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    #@73
    move-result-object v1

    #@74
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@77
    move-result-object v9

    #@78
    .line 195
    .local v9, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    #@7a
    .line 197
    new-instance v1, Landroid/os/UserHandle;

    #@7c
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    #@7f
    move-result v2

    #@80
    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    #@83
    .line 196
    const/4 v2, 0x5

    #@84
    .line 195
    invoke-virtual {v0, v9, p0, v2, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@87
    move-result v7

    #@88
    .line 198
    .local v7, "binding":Z
    if-nez v7, :cond_5

    #@8a
    .line 202
    const/4 v0, 0x0

    #@8b
    iput-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    #@8d
    .line 203
    const/4 v0, 0x0

    #@8e
    iput-object v0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    #@90
    .line 204
    const-wide/16 v0, 0x0

    #@92
    iput-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    #@94
    .line 205
    const/4 v0, 0x4

    #@95
    iput v0, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    #@97
    .line 206
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOut()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9a
    monitor-exit v10

    #@9b
    .line 207
    return v11

    #@9c
    .line 177
    .end local v4    # "isDeadlineExpired":Z
    .end local v7    # "binding":Z
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v4, 0x0

    #@9d
    .restart local v4    # "isDeadlineExpired":Z
    goto :goto_0

    #@9e
    .line 176
    .end local v4    # "isDeadlineExpired":Z
    :cond_4
    const/4 v4, 0x0

    #@9f
    .restart local v4    # "isDeadlineExpired":Z
    goto :goto_0

    #@a0
    .line 210
    .restart local v7    # "binding":Z
    .restart local v9    # "intent":Landroid/content/Intent;
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@a2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    #@a5
    move-result-object v1

    #@a6
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@a9
    move-result v2

    #@aa
    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteJobStart(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@ad
    .line 214
    :goto_1
    :try_start_3
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mJobPackageTracker:Lcom/android/server/job/JobPackageTracker;

    #@af
    invoke-virtual {v0, p1}, Lcom/android/server/job/JobPackageTracker;->noteActive(Lcom/android/server/job/controllers/JobStatus;)V

    #@b2
    .line 215
    const/4 v0, 0x0

    #@b3
    iput-boolean v0, p0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@b5
    .line 216
    const/4 v0, 0x1

    #@b6
    monitor-exit v10

    #@b7
    return v0

    #@b8
    .line 166
    .end local v4    # "isDeadlineExpired":Z
    .end local v7    # "binding":Z
    .end local v9    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v0

    #@b9
    monitor-exit v10

    #@ba
    throw v0

    #@bb
    .line 211
    .restart local v4    # "isDeadlineExpired":Z
    .restart local v7    # "binding":Z
    .restart local v9    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v8

    #@bc
    .local v8, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method getExecutionStartTimeElapsed()J
    .locals 2

    #@0
    .prologue
    .line 253
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    #@2
    return-wide v0
.end method

.method getPreferredUid()I
    .locals 1

    #@0
    .prologue
    .line 245
    iget v0, p0, Lcom/android/server/job/JobServiceContext;->mPreferredUid:I

    #@2
    return v0
.end method

.method getRunningJob()Lcom/android/server/job/controllers/JobStatus;
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 227
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    .local v0, "job":Lcom/android/server/job/controllers/JobStatus;
    monitor-exit v2

    #@7
    .line 230
    if-nez v0, :cond_0

    #@9
    :goto_0
    return-object v1

    #@a
    .line 227
    .end local v0    # "job":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v1

    #@b
    monitor-exit v2

    #@c
    throw v1

    #@d
    .line 230
    .restart local v0    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    new-instance v1, Lcom/android/server/job/controllers/JobStatus;

    #@f
    invoke-direct {v1, v0}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;)V

    #@12
    goto :goto_0
.end method

.method getTimeoutElapsed()J
    .locals 2

    #@0
    .prologue
    .line 257
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mTimeoutElapsed:J

    #@2
    return-wide v0
.end method

.method public jobFinished(IZ)V
    .locals 3
    .param p1, "jobId"    # I
    .param p2, "reschedule"    # Z

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 262
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->verifyCallingUid()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 263
    return-void

    #@8
    .line 265
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
    .line 261
    return-void

    #@15
    .line 265
    :cond_1
    const/4 v0, 0x0

    #@16
    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 296
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 300
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .local v1, "runningJob":Lcom/android/server/job/controllers/JobStatus;
    monitor-exit v2

    #@6
    .line 302
    if-eqz v1, :cond_0

    #@8
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 306
    invoke-static {p2}, Landroid/app/job/IJobService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobService;

    #@15
    move-result-object v2

    #@16
    iput-object v2, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    #@18
    .line 308
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    #@1a
    const-string/jumbo v3, "power"

    #@1d
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Landroid/os/PowerManager;

    #@23
    .line 309
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getTag()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    const/4 v3, 0x1

    #@28
    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@2b
    move-result-object v2

    #@2c
    iput-object v2, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2e
    .line 310
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@30
    new-instance v3, Landroid/os/WorkSource;

    #@32
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    #@35
    move-result v4

    #@36
    invoke-direct {v3, v4}, Landroid/os/WorkSource;-><init>(I)V

    #@39
    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    #@3c
    .line 311
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@3e
    const/4 v3, 0x0

    #@3f
    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    #@42
    .line 312
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@44
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@47
    .line 313
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    #@49
    const/4 v3, 0x2

    #@4a
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@4d
    move-result-object v2

    #@4e
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@51
    .line 294
    return-void

    #@52
    .line 296
    .end local v0    # "pm":Landroid/os/PowerManager;
    .end local v1    # "runningJob":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v3

    #@53
    monitor-exit v2

    #@54
    throw v3

    #@55
    .line 303
    .restart local v1    # "runningJob":Lcom/android/server/job/controllers/JobStatus;
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    #@57
    const/4 v3, 0x4

    #@58
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@5b
    move-result-object v2

    #@5c
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    #@5f
    .line 304
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 319
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
    .line 318
    return-void
.end method

.method preemptExecutingJob()V
    .locals 3

    #@0
    .prologue
    .line 239
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    #@2
    const/4 v2, 0x3

    #@3
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    .line 240
    .local v0, "m":Landroid/os/Message;
    const/4 v1, 0x2

    #@8
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@a
    .line 241
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@d
    .line 238
    return-void
.end method
