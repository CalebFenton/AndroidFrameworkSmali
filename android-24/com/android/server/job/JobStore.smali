.class public Lcom/android/server/job/JobStore;
.super Ljava/lang/Object;
.source "JobStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobStore$JobSet;,
        Lcom/android/server/job/JobStore$JobStatusFunctor;,
        Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;,
        Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final JOBS_FILE_VERSION:I = 0x0

.field private static final MAX_OPS_BEFORE_WRITE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "JobStore"

.field private static final XML_TAG_EXTRAS:Ljava/lang/String; = "extras"

.field private static final XML_TAG_ONEOFF:Ljava/lang/String; = "one-off"

.field private static final XML_TAG_PARAMS_CONSTRAINTS:Ljava/lang/String; = "constraints"

.field private static final XML_TAG_PERIODIC:Ljava/lang/String; = "periodic"

.field private static sSingleton:Lcom/android/server/job/JobStore;

.field private static final sSingletonLock:Ljava/lang/Object;


# instance fields
.field final mContext:Landroid/content/Context;

.field private mDirtyOperations:I

.field private final mIoHandler:Landroid/os/Handler;

.field final mJobSet:Lcom/android/server/job/JobStore$JobSet;

.field private final mJobsFile:Landroid/util/AtomicFile;

.field final mLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobsFile:Landroid/util/AtomicFile;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/job/JobStore;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/job/JobStore;->mDirtyOperations:I

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 78
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/job/JobStore;->sSingletonLock:Ljava/lang/Object;

    #@7
    .line 66
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "dataDir"    # Ljava/io/File;

    #@0
    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 81
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    #@6
    move-result-object v2

    #@7
    iput-object v2, p0, Lcom/android/server/job/JobStore;->mIoHandler:Landroid/os/Handler;

    #@9
    .line 109
    iput-object p2, p0, Lcom/android/server/job/JobStore;->mLock:Ljava/lang/Object;

    #@b
    .line 110
    iput-object p1, p0, Lcom/android/server/job/JobStore;->mContext:Landroid/content/Context;

    #@d
    .line 111
    const/4 v2, 0x0

    #@e
    iput v2, p0, Lcom/android/server/job/JobStore;->mDirtyOperations:I

    #@10
    .line 113
    new-instance v1, Ljava/io/File;

    #@12
    const-string/jumbo v2, "system"

    #@15
    invoke-direct {v1, p3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@18
    .line 114
    .local v1, "systemDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    #@1a
    const-string/jumbo v2, "job"

    #@1d
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@20
    .line 115
    .local v0, "jobDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@23
    .line 116
    new-instance v2, Landroid/util/AtomicFile;

    #@25
    new-instance v3, Ljava/io/File;

    #@27
    const-string/jumbo v4, "jobs.xml"

    #@2a
    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@2d
    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@30
    iput-object v2, p0, Lcom/android/server/job/JobStore;->mJobsFile:Landroid/util/AtomicFile;

    #@32
    .line 118
    new-instance v2, Lcom/android/server/job/JobStore$JobSet;

    #@34
    invoke-direct {v2}, Lcom/android/server/job/JobStore$JobSet;-><init>()V

    #@37
    iput-object v2, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    #@39
    .line 120
    iget-object v2, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    #@3b
    invoke-virtual {p0, v2}, Lcom/android/server/job/JobStore;->readJobMapFromDisk(Lcom/android/server/job/JobStore$JobSet;)V

    #@3e
    .line 108
    return-void
.end method

.method static initAndGet(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/JobStore;
    .locals 5
    .param p0, "jobManagerService"    # Lcom/android/server/job/JobSchedulerService;

    #@0
    .prologue
    .line 86
    sget-object v1, Lcom/android/server/job/JobStore;->sSingletonLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 87
    :try_start_0
    sget-object v0, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 88
    new-instance v0, Lcom/android/server/job/JobStore;

    #@9
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    #@c
    move-result-object v2

    #@d
    .line 89
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getLock()Ljava/lang/Object;

    #@10
    move-result-object v3

    #@11
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@14
    move-result-object v4

    #@15
    .line 88
    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/job/JobStore;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;)V

    #@18
    sput-object v0, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;

    #@1a
    .line 91
    :cond_0
    sget-object v0, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    monitor-exit v1

    #@1d
    return-object v0

    #@1e
    .line 86
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit v1

    #@20
    throw v0
.end method

.method public static initAndGetForTesting(Landroid/content/Context;Ljava/io/File;)Lcom/android/server/job/JobStore;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dataDir"    # Ljava/io/File;

    #@0
    .prologue
    .line 100
    new-instance v0, Lcom/android/server/job/JobStore;

    #@2
    new-instance v1, Ljava/lang/Object;

    #@4
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@7
    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/job/JobStore;-><init>(Landroid/content/Context;Ljava/lang/Object;Ljava/io/File;)V

    #@a
    .line 101
    .local v0, "jobStoreUnderTest":Lcom/android/server/job/JobStore;
    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->clear()V

    #@d
    .line 102
    return-object v0
.end method

.method private maybeWriteStatusToDiskAsync()V
    .locals 3

    #@0
    .prologue
    .line 237
    iget v0, p0, Lcom/android/server/job/JobStore;->mDirtyOperations:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lcom/android/server/job/JobStore;->mDirtyOperations:I

    #@6
    .line 238
    iget v0, p0, Lcom/android/server/job/JobStore;->mDirtyOperations:I

    #@8
    const/4 v1, 0x1

    #@9
    if-lt v0, v1, :cond_0

    #@b
    .line 242
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mIoHandler:Landroid/os/Handler;

    #@d
    new-instance v1, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;

    #@f
    const/4 v2, 0x0

    #@10
    invoke-direct {v1, p0, v2}, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;-><init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;)V

    #@13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@16
    .line 236
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 2
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore$JobSet;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    #@5
    move-result v0

    #@6
    .line 131
    .local v0, "replaced":Z
    iget-object v1, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    #@8
    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore$JobSet;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    #@b
    .line 132
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 133
    invoke-direct {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    #@14
    .line 138
    :cond_0
    return v0
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    #@2
    invoke-virtual {v0}, Lcom/android/server/job/JobStore$JobSet;->clear()V

    #@5
    .line 175
    invoke-direct {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    #@8
    .line 173
    return-void
.end method

.method containsJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->contains(Lcom/android/server/job/controllers/JobStatus;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public countJobsForUid(I)I
    .locals 1
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->countJobsForUid(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public forEachJob(ILcom/android/server/job/JobStore$JobStatusFunctor;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "functor"    # Lcom/android/server/job/JobStore$JobStatusFunctor;

    #@0
    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/JobStore$JobSet;->forEachJob(ILcom/android/server/job/JobStore$JobStatusFunctor;)V

    #@5
    .line 213
    return-void
.end method

.method public forEachJob(Lcom/android/server/job/JobStore$JobStatusFunctor;)V
    .locals 1
    .param p1, "functor"    # Lcom/android/server/job/JobStore$JobStatusFunctor;

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->forEachJob(Lcom/android/server/job/JobStore$JobStatusFunctor;)V

    #@5
    .line 209
    return-void
.end method

.method public getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;
    .locals 1
    .param p1, "uid"    # I
    .param p2, "jobId"    # I

    #@0
    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/job/JobStore$JobSet;->get(II)Lcom/android/server/job/controllers/JobStatus;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getJobsByUid(I)Ljava/util/List;
    .locals 1
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->getJobsByUid(I)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getJobsByUser(I)Ljava/util/List;
    .locals 1
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/job/JobStore$JobSet;->getJobsByUser(I)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public readJobMapFromDisk(Lcom/android/server/job/JobStore$JobSet;)V
    .locals 1
    .param p1, "jobSet"    # Lcom/android/server/job/JobStore$JobSet;

    #@0
    .prologue
    .line 248
    new-instance v0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;-><init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$JobSet;)V

    #@5
    invoke-virtual {v0}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->run()V

    #@8
    .line 247
    return-void
.end method

.method public remove(Lcom/android/server/job/controllers/JobStatus;Z)Z
    .locals 2
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "writeBack"    # Z

    #@0
    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/server/job/JobStore$JobSet;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    #@5
    move-result v0

    #@6
    .line 160
    .local v0, "removed":Z
    if-nez v0, :cond_0

    #@8
    .line 164
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    .line 166
    :cond_0
    if-eqz p2, :cond_1

    #@c
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 167
    invoke-direct {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    #@15
    .line 169
    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Lcom/android/server/job/JobStore$JobSet;

    #@2
    invoke-virtual {v0}, Lcom/android/server/job/JobStore$JobSet;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method
