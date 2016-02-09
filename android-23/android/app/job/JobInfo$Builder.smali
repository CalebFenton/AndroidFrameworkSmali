.class public final Landroid/app/job/JobInfo$Builder;
.super Ljava/lang/Object;
.source "JobInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBackoffPolicy:I

.field private mBackoffPolicySet:Z

.field private mExtras:Landroid/os/PersistableBundle;

.field private mHasEarlyConstraint:Z

.field private mHasLateConstraint:Z

.field private mInitialBackoffMillis:J

.field private mIntervalMillis:J

.field private mIsPeriodic:Z

.field private mIsPersisted:Z

.field private mJobId:I

.field private mJobService:Landroid/content/ComponentName;

.field private mMaxExecutionDelayMillis:J

.field private mMinLatencyMillis:J

.field private mNetworkType:I

.field private mRequiresCharging:Z

.field private mRequiresDeviceIdle:Z


# direct methods
.method static synthetic -get0(Landroid/app/job/JobInfo$Builder;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/app/job/JobInfo$Builder;)Landroid/os/PersistableBundle;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    #@2
    return-object v0
.end method

.method static synthetic -get10(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    #@2
    return-wide v0
.end method

.method static synthetic -get11(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    #@2
    return-wide v0
.end method

.method static synthetic -get12(Landroid/app/job/JobInfo$Builder;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkType:I

    #@2
    return v0
.end method

.method static synthetic -get13(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mRequiresCharging:Z

    #@2
    return v0
.end method

.method static synthetic -get14(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mRequiresDeviceIdle:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    #@2
    return v0
.end method

.method static synthetic -get4(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    #@2
    return-wide v0
.end method

.method static synthetic -get5(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mIntervalMillis:J

    #@2
    return-wide v0
.end method

.method static synthetic -get6(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    #@2
    return v0
.end method

.method static synthetic -get7(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPersisted:Z

    #@2
    return v0
.end method

.method static synthetic -get8(Landroid/app/job/JobInfo$Builder;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    #@2
    return v0
.end method

.method static synthetic -get9(Landroid/app/job/JobInfo$Builder;)Landroid/content/ComponentName;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mJobService:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method public constructor <init>(ILandroid/content/ComponentName;)V
    .locals 2
    .param p1, "jobId"    # I
    .param p2, "jobService"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 287
    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    #@5
    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    #@7
    .line 303
    const-wide/16 v0, 0x7530

    #@9
    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    #@b
    .line 304
    const/4 v0, 0x1

    #@c
    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    #@e
    .line 306
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    #@11
    .line 316
    iput-object p2, p0, Landroid/app/job/JobInfo$Builder;->mJobService:Landroid/content/ComponentName;

    #@13
    .line 317
    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    #@15
    .line 315
    return-void
.end method


# virtual methods
.method public build()Landroid/app/job/JobInfo;
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 449
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    #@4
    if-nez v0, :cond_0

    #@6
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 454
    :cond_0
    new-instance v0, Landroid/os/PersistableBundle;

    #@c
    iget-object v1, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    #@e
    invoke-direct {v0, v1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    #@11
    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    #@13
    .line 456
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    #@15
    if-eqz v0, :cond_2

    #@17
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    #@19
    cmp-long v0, v0, v2

    #@1b
    if-eqz v0, :cond_2

    #@1d
    .line 457
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string/jumbo v1, "Can\'t call setOverrideDeadline() on a periodic job."

    #@22
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 449
    :cond_1
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mRequiresCharging:Z

    #@28
    if-nez v0, :cond_0

    #@2a
    .line 450
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mRequiresDeviceIdle:Z

    #@2c
    if-nez v0, :cond_0

    #@2e
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkType:I

    #@30
    if-nez v0, :cond_0

    #@32
    .line 451
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@34
    const-string/jumbo v1, "You\'re trying to build a job with no constraints, this is not allowed."

    #@37
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0

    #@3b
    .line 460
    :cond_2
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    #@3d
    if-eqz v0, :cond_3

    #@3f
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    #@41
    cmp-long v0, v0, v2

    #@43
    if-eqz v0, :cond_3

    #@45
    .line 461
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@47
    const-string/jumbo v1, "Can\'t call setMinimumLatency() on a periodic job"

    #@4a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v0

    #@4e
    .line 464
    :cond_3
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    #@50
    if-eqz v0, :cond_4

    #@52
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mRequiresDeviceIdle:Z

    #@54
    if-eqz v0, :cond_4

    #@56
    .line 465
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@58
    const-string/jumbo v1, "An idle mode job will not respect any back-off policy, so calling setBackoffCriteria with setRequiresDeviceIdle is an error."

    #@5b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v0

    #@5f
    .line 469
    :cond_4
    new-instance v0, Landroid/app/job/JobInfo;

    #@61
    const/4 v1, 0x0

    #@62
    invoke-direct {v0, p0, v1}, Landroid/app/job/JobInfo;-><init>(Landroid/app/job/JobInfo$Builder;Landroid/app/job/JobInfo;)V

    #@65
    return-object v0
.end method

.method public setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;
    .locals 1
    .param p1, "initialBackoffMillis"    # J
    .param p3, "backoffPolicy"    # I

    #@0
    .prologue
    .line 425
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    #@3
    .line 426
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    #@5
    .line 427
    iput p3, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    #@7
    .line 428
    return-object p0
.end method

.method public setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 325
    iput-object p1, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    #@2
    .line 326
    return-object p0
.end method

.method public setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;
    .locals 1
    .param p1, "minLatencyMillis"    # J

    #@0
    .prologue
    .line 391
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    #@2
    .line 392
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    #@5
    .line 393
    return-object p0
.end method

.method public setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;
    .locals 1
    .param p1, "maxExecutionDelayMillis"    # J

    #@0
    .prologue
    .line 404
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    #@2
    .line 405
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    #@5
    .line 406
    return-object p0
.end method

.method public setPeriodic(J)Landroid/app/job/JobInfo$Builder;
    .locals 1
    .param p1, "intervalMillis"    # J

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 376
    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    #@3
    .line 377
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mIntervalMillis:J

    #@5
    .line 378
    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    #@7
    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    #@9
    .line 379
    return-object p0
.end method

.method public setPersisted(Z)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "isPersisted"    # Z

    #@0
    .prologue
    .line 440
    iput-boolean p1, p0, Landroid/app/job/JobInfo$Builder;->mIsPersisted:Z

    #@2
    .line 441
    return-object p0
.end method

.method public setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "networkType"    # I

    #@0
    .prologue
    .line 338
    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mNetworkType:I

    #@2
    .line 339
    return-object p0
.end method

.method public setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "requiresCharging"    # Z

    #@0
    .prologue
    .line 348
    iput-boolean p1, p0, Landroid/app/job/JobInfo$Builder;->mRequiresCharging:Z

    #@2
    .line 349
    return-object p0
.end method

.method public setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "requiresDeviceIdle"    # Z

    #@0
    .prologue
    .line 363
    iput-boolean p1, p0, Landroid/app/job/JobInfo$Builder;->mRequiresDeviceIdle:Z

    #@2
    .line 364
    return-object p0
.end method
