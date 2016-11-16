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

.field private mFlags:I

.field private mFlexMillis:J

.field private mHasEarlyConstraint:Z

.field private mHasLateConstraint:Z

.field private mInitialBackoffMillis:J

.field private mIntervalMillis:J

.field private mIsPeriodic:Z

.field private mIsPersisted:Z

.field private final mJobId:I

.field private final mJobService:Landroid/content/ComponentName;

.field private mMaxExecutionDelayMillis:J

.field private mMinLatencyMillis:J

.field private mNetworkType:I

.field private mPriority:I

.field private mRequiresCharging:Z

.field private mRequiresDeviceIdle:Z

.field private mTriggerContentMaxDelay:J

.field private mTriggerContentUpdateDelay:J

.field private mTriggerContentUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/job/JobInfo$TriggerContentUri;",
            ">;"
        }
    .end annotation
.end field


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

.method static synthetic -get10(Landroid/app/job/JobInfo$Builder;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    #@2
    return v0
.end method

.method static synthetic -get11(Landroid/app/job/JobInfo$Builder;)Landroid/content/ComponentName;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mJobService:Landroid/content/ComponentName;

    #@2
    return-object v0
.end method

.method static synthetic -get12(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    #@2
    return-wide v0
.end method

.method static synthetic -get13(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    #@2
    return-wide v0
.end method

.method static synthetic -get14(Landroid/app/job/JobInfo$Builder;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mNetworkType:I

    #@2
    return v0
.end method

.method static synthetic -get15(Landroid/app/job/JobInfo$Builder;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    #@2
    return v0
.end method

.method static synthetic -get16(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mRequiresCharging:Z

    #@2
    return v0
.end method

.method static synthetic -get17(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mRequiresDeviceIdle:Z

    #@2
    return v0
.end method

.method static synthetic -get18(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentMaxDelay:J

    #@2
    return-wide v0
.end method

.method static synthetic -get19(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUpdateDelay:J

    #@2
    return-wide v0
.end method

.method static synthetic -get2(Landroid/app/job/JobInfo$Builder;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    #@2
    return v0
.end method

.method static synthetic -get20(Landroid/app/job/JobInfo$Builder;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mFlexMillis:J

    #@2
    return-wide v0
.end method

.method static synthetic -get4(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    #@2
    return v0
.end method

.method static synthetic -get5(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    #@2
    return v0
.end method

.method static synthetic -get6(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    #@2
    return-wide v0
.end method

.method static synthetic -get7(Landroid/app/job/JobInfo$Builder;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mIntervalMillis:J

    #@2
    return-wide v0
.end method

.method static synthetic -get8(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    #@2
    return v0
.end method

.method static synthetic -get9(Landroid/app/job/JobInfo$Builder;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPersisted:Z

    #@2
    return v0
.end method

.method public constructor <init>(ILandroid/content/ComponentName;)V
    .locals 6
    .param p1, "jobId"    # I
    .param p2, "jobService"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const-wide/16 v4, -0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 585
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 548
    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    #@8
    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    #@a
    .line 549
    iput v2, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    #@c
    .line 556
    iput-wide v4, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUpdateDelay:J

    #@e
    .line 557
    iput-wide v4, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentMaxDelay:J

    #@10
    .line 569
    const-wide/16 v0, 0x7530

    #@12
    iput-wide v0, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    #@14
    .line 570
    const/4 v0, 0x1

    #@15
    iput v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    #@17
    .line 572
    iput-boolean v2, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    #@19
    .line 586
    iput-object p2, p0, Landroid/app/job/JobInfo$Builder;->mJobService:Landroid/content/ComponentName;

    #@1b
    .line 587
    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    #@1d
    .line 585
    return-void
.end method


# virtual methods
.method public addTriggerContentUri(Landroid/app/job/JobInfo$TriggerContentUri;)Landroid/app/job/JobInfo$Builder;
    .locals 1
    .param p1, "uri"    # Landroid/app/job/JobInfo$TriggerContentUri;

    #@0
    .prologue
    .line 671
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 672
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    #@b
    .line 674
    :cond_0
    iget-object v0, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@10
    .line 675
    return-object p0
.end method

.method public build()Landroid/app/job/JobInfo;
    .locals 8

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 795
    iget-boolean v2, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    #@5
    if-nez v2, :cond_0

    #@7
    iget-boolean v2, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    #@9
    if-eqz v2, :cond_1

    #@b
    .line 801
    :cond_0
    new-instance v2, Landroid/os/PersistableBundle;

    #@d
    iget-object v3, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    #@f
    invoke-direct {v2, v3}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    #@12
    iput-object v2, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    #@14
    .line 803
    iget-boolean v2, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    #@16
    if-eqz v2, :cond_2

    #@18
    iget-wide v2, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    #@1a
    cmp-long v2, v2, v6

    #@1c
    if-eqz v2, :cond_2

    #@1e
    .line 804
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@20
    const-string/jumbo v3, "Can\'t call setOverrideDeadline() on a periodic job."

    #@23
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v2

    #@27
    .line 795
    :cond_1
    iget-boolean v2, p0, Landroid/app/job/JobInfo$Builder;->mRequiresCharging:Z

    #@29
    if-nez v2, :cond_0

    #@2b
    .line 796
    iget-boolean v2, p0, Landroid/app/job/JobInfo$Builder;->mRequiresDeviceIdle:Z

    #@2d
    if-nez v2, :cond_0

    #@2f
    iget v2, p0, Landroid/app/job/JobInfo$Builder;->mNetworkType:I

    #@31
    if-nez v2, :cond_0

    #@33
    .line 797
    iget-object v2, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    #@35
    if-nez v2, :cond_0

    #@37
    .line 798
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@39
    const-string/jumbo v3, "You\'re trying to build a job with no constraints, this is not allowed."

    #@3c
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v2

    #@40
    .line 807
    :cond_2
    iget-boolean v2, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    #@42
    if-eqz v2, :cond_3

    #@44
    iget-wide v2, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    #@46
    cmp-long v2, v2, v6

    #@48
    if-eqz v2, :cond_3

    #@4a
    .line 808
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4c
    const-string/jumbo v3, "Can\'t call setMinimumLatency() on a periodic job"

    #@4f
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@52
    throw v2

    #@53
    .line 811
    :cond_3
    iget-boolean v2, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    #@55
    if-eqz v2, :cond_4

    #@57
    iget-object v2, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    #@59
    if-eqz v2, :cond_4

    #@5b
    .line 812
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@5d
    const-string/jumbo v3, "Can\'t call addTriggerContentUri() on a periodic job"

    #@60
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@63
    throw v2

    #@64
    .line 815
    :cond_4
    iget-boolean v2, p0, Landroid/app/job/JobInfo$Builder;->mIsPersisted:Z

    #@66
    if-eqz v2, :cond_5

    #@68
    iget-object v2, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUris:Ljava/util/ArrayList;

    #@6a
    if-eqz v2, :cond_5

    #@6c
    .line 816
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@6e
    const-string/jumbo v3, "Can\'t call addTriggerContentUri() on a persisted job"

    #@71
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@74
    throw v2

    #@75
    .line 819
    :cond_5
    iget-boolean v2, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    #@77
    if-eqz v2, :cond_6

    #@79
    iget-boolean v2, p0, Landroid/app/job/JobInfo$Builder;->mRequiresDeviceIdle:Z

    #@7b
    if-eqz v2, :cond_6

    #@7d
    .line 820
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@7f
    const-string/jumbo v3, "An idle mode job will not respect any back-off policy, so calling setBackoffCriteria with setRequiresDeviceIdle is an error."

    #@82
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@85
    throw v2

    #@86
    .line 824
    :cond_6
    new-instance v1, Landroid/app/job/JobInfo;

    #@88
    invoke-direct {v1, p0, v4}, Landroid/app/job/JobInfo;-><init>(Landroid/app/job/JobInfo$Builder;Landroid/app/job/JobInfo;)V

    #@8b
    .line 825
    .local v1, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    #@8e
    move-result v2

    #@8f
    if-eqz v2, :cond_8

    #@91
    .line 826
    invoke-static {v1}, Landroid/app/job/JobInfo;->-get2(Landroid/app/job/JobInfo;)J

    #@94
    move-result-wide v2

    #@95
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    #@98
    move-result-wide v4

    #@99
    cmp-long v2, v2, v4

    #@9b
    if-eqz v2, :cond_7

    #@9d
    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    #@9f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a2
    .line 828
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "Specified interval for "

    #@a5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v2

    #@a9
    .line 829
    iget v3, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    #@ab
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@ae
    move-result-object v3

    #@af
    .line 828
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v2

    #@b3
    .line 830
    const-string/jumbo v3, " is "

    #@b6
    .line 828
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    .line 831
    iget-wide v2, p0, Landroid/app/job/JobInfo$Builder;->mIntervalMillis:J

    #@bb
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@be
    .line 832
    const-string/jumbo v2, ". Clamped to "

    #@c1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    .line 833
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    #@c7
    move-result-wide v2

    #@c8
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@cb
    .line 834
    invoke-static {}, Landroid/app/job/JobInfo;->-get0()Ljava/lang/String;

    #@ce
    move-result-object v2

    #@cf
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v3

    #@d3
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d6
    .line 836
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_7
    invoke-static {v1}, Landroid/app/job/JobInfo;->-get1(Landroid/app/job/JobInfo;)J

    #@d9
    move-result-wide v2

    #@da
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getFlexMillis()J

    #@dd
    move-result-wide v4

    #@de
    cmp-long v2, v2, v4

    #@e0
    if-eqz v2, :cond_8

    #@e2
    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    #@e4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e7
    .line 838
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "Specified flex for "

    #@ea
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v2

    #@ee
    .line 839
    iget v3, p0, Landroid/app/job/JobInfo$Builder;->mJobId:I

    #@f0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@f3
    move-result-object v3

    #@f4
    .line 838
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    move-result-object v2

    #@f8
    .line 840
    const-string/jumbo v3, " is "

    #@fb
    .line 838
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fe
    .line 841
    iget-wide v2, p0, Landroid/app/job/JobInfo$Builder;->mFlexMillis:J

    #@100
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@103
    .line 842
    const-string/jumbo v2, ". Clamped to "

    #@106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    .line 843
    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getFlexMillis()J

    #@10c
    move-result-wide v2

    #@10d
    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    #@110
    .line 844
    invoke-static {}, Landroid/app/job/JobInfo;->-get0()Ljava/lang/String;

    #@113
    move-result-object v2

    #@114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@117
    move-result-object v3

    #@118
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11b
    .line 847
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_8
    return-object v1
.end method

.method public setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;
    .locals 1
    .param p1, "initialBackoffMillis"    # J
    .param p3, "backoffPolicy"    # I

    #@0
    .prologue
    .line 771
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicySet:Z

    #@3
    .line 772
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mInitialBackoffMillis:J

    #@5
    .line 773
    iput p3, p0, Landroid/app/job/JobInfo$Builder;->mBackoffPolicy:I

    #@7
    .line 774
    return-object p0
.end method

.method public setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/PersistableBundle;

    #@0
    .prologue
    .line 607
    iput-object p1, p0, Landroid/app/job/JobInfo$Builder;->mExtras:Landroid/os/PersistableBundle;

    #@2
    .line 608
    return-object p0
.end method

.method public setFlags(I)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 598
    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mFlags:I

    #@2
    .line 599
    return-object p0
.end method

.method public setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;
    .locals 1
    .param p1, "minLatencyMillis"    # J

    #@0
    .prologue
    .line 737
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mMinLatencyMillis:J

    #@2
    .line 738
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    #@5
    .line 739
    return-object p0
.end method

.method public setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;
    .locals 1
    .param p1, "maxExecutionDelayMillis"    # J

    #@0
    .prologue
    .line 750
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mMaxExecutionDelayMillis:J

    #@2
    .line 751
    const/4 v0, 0x1

    #@3
    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    #@5
    .line 752
    return-object p0
.end method

.method public setPeriodic(J)Landroid/app/job/JobInfo$Builder;
    .locals 1
    .param p1, "intervalMillis"    # J

    #@0
    .prologue
    .line 708
    invoke-virtual {p0, p1, p2, p1, p2}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;
    .locals 1
    .param p1, "intervalMillis"    # J
    .param p3, "flexMillis"    # J

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 721
    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mIsPeriodic:Z

    #@3
    .line 722
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mIntervalMillis:J

    #@5
    .line 723
    iput-wide p3, p0, Landroid/app/job/JobInfo$Builder;->mFlexMillis:J

    #@7
    .line 724
    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasLateConstraint:Z

    #@9
    iput-boolean v0, p0, Landroid/app/job/JobInfo$Builder;->mHasEarlyConstraint:Z

    #@b
    .line 725
    return-object p0
.end method

.method public setPersisted(Z)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "isPersisted"    # Z

    #@0
    .prologue
    .line 786
    iput-boolean p1, p0, Landroid/app/job/JobInfo$Builder;->mIsPersisted:Z

    #@2
    .line 787
    return-object p0
.end method

.method public setPriority(I)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "priority"    # I

    #@0
    .prologue
    .line 592
    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mPriority:I

    #@2
    .line 593
    return-object p0
.end method

.method public setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "networkType"    # I

    #@0
    .prologue
    .line 620
    iput p1, p0, Landroid/app/job/JobInfo$Builder;->mNetworkType:I

    #@2
    .line 621
    return-object p0
.end method

.method public setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "requiresCharging"    # Z

    #@0
    .prologue
    .line 630
    iput-boolean p1, p0, Landroid/app/job/JobInfo$Builder;->mRequiresCharging:Z

    #@2
    .line 631
    return-object p0
.end method

.method public setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;
    .locals 0
    .param p1, "requiresDeviceIdle"    # Z

    #@0
    .prologue
    .line 645
    iput-boolean p1, p0, Landroid/app/job/JobInfo$Builder;->mRequiresDeviceIdle:Z

    #@2
    .line 646
    return-object p0
.end method

.method public setTriggerContentMaxDelay(J)Landroid/app/job/JobInfo$Builder;
    .locals 1
    .param p1, "durationMs"    # J

    #@0
    .prologue
    .line 695
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentMaxDelay:J

    #@2
    .line 696
    return-object p0
.end method

.method public setTriggerContentUpdateDelay(J)Landroid/app/job/JobInfo$Builder;
    .locals 1
    .param p1, "durationMs"    # J

    #@0
    .prologue
    .line 685
    iput-wide p1, p0, Landroid/app/job/JobInfo$Builder;->mTriggerContentUpdateDelay:J

    #@2
    .line 686
    return-object p0
.end method
