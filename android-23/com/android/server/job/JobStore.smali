.class public Lcom/android/server/job/JobStore;
.super Ljava/lang/Object;
.source "JobStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;,
        Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;
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

.field final mJobSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mJobsFile:Landroid/util/AtomicFile;


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
    .line 75
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lcom/android/server/job/JobStore;->sSingletonLock:Ljava/lang/Object;

    #@7
    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataDir"    # Ljava/io/File;

    #@0
    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 78
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    #@6
    move-result-object v2

    #@7
    iput-object v2, p0, Lcom/android/server/job/JobStore;->mIoHandler:Landroid/os/Handler;

    #@9
    .line 106
    iput-object p1, p0, Lcom/android/server/job/JobStore;->mContext:Landroid/content/Context;

    #@b
    .line 107
    const/4 v2, 0x0

    #@c
    iput v2, p0, Lcom/android/server/job/JobStore;->mDirtyOperations:I

    #@e
    .line 109
    new-instance v1, Ljava/io/File;

    #@10
    const-string/jumbo v2, "system"

    #@13
    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@16
    .line 110
    .local v1, "systemDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    #@18
    const-string/jumbo v2, "job"

    #@1b
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@1e
    .line 111
    .local v0, "jobDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    #@21
    .line 112
    new-instance v2, Landroid/util/AtomicFile;

    #@23
    new-instance v3, Ljava/io/File;

    #@25
    const-string/jumbo v4, "jobs.xml"

    #@28
    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@2b
    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    #@2e
    iput-object v2, p0, Lcom/android/server/job/JobStore;->mJobsFile:Landroid/util/AtomicFile;

    #@30
    .line 114
    new-instance v2, Landroid/util/ArraySet;

    #@32
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    #@35
    iput-object v2, p0, Lcom/android/server/job/JobStore;->mJobSet:Landroid/util/ArraySet;

    #@37
    .line 116
    iget-object v2, p0, Lcom/android/server/job/JobStore;->mJobSet:Landroid/util/ArraySet;

    #@39
    invoke-virtual {p0, v2}, Lcom/android/server/job/JobStore;->readJobMapFromDisk(Landroid/util/ArraySet;)V

    #@3c
    .line 105
    return-void
.end method

.method static initAndGet(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/JobStore;
    .locals 4
    .param p0, "jobManagerService"    # Lcom/android/server/job/JobSchedulerService;

    #@0
    .prologue
    .line 83
    sget-object v1, Lcom/android/server/job/JobStore;->sSingletonLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 84
    :try_start_0
    sget-object v0, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 85
    new-instance v0, Lcom/android/server/job/JobStore;

    #@9
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    #@c
    move-result-object v2

    #@d
    .line 86
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@10
    move-result-object v3

    #@11
    .line 85
    invoke-direct {v0, v2, v3}, Lcom/android/server/job/JobStore;-><init>(Landroid/content/Context;Ljava/io/File;)V

    #@14
    sput-object v0, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;

    #@16
    .line 88
    :cond_0
    sget-object v0, Lcom/android/server/job/JobStore;->sSingleton:Lcom/android/server/job/JobStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v1

    #@19
    return-object v0

    #@1a
    .line 83
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method public static initAndGetForTesting(Landroid/content/Context;Ljava/io/File;)Lcom/android/server/job/JobStore;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dataDir"    # Ljava/io/File;

    #@0
    .prologue
    .line 97
    new-instance v0, Lcom/android/server/job/JobStore;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/server/job/JobStore;-><init>(Landroid/content/Context;Ljava/io/File;)V

    #@5
    .line 98
    .local v0, "jobStoreUnderTest":Lcom/android/server/job/JobStore;
    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->clear()V

    #@8
    .line 99
    return-object v0
.end method

.method private maybeWriteStatusToDiskAsync()V
    .locals 3

    #@0
    .prologue
    .line 253
    iget v0, p0, Lcom/android/server/job/JobStore;->mDirtyOperations:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lcom/android/server/job/JobStore;->mDirtyOperations:I

    #@6
    .line 254
    iget v0, p0, Lcom/android/server/job/JobStore;->mDirtyOperations:I

    #@8
    const/4 v1, 0x1

    #@9
    if-lt v0, v1, :cond_0

    #@b
    .line 258
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
    .line 252
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 2
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 126
    iget-object v1, p0, Lcom/android/server/job/JobStore;->mJobSet:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    .line 127
    .local v0, "replaced":Z
    iget-object v1, p0, Lcom/android/server/job/JobStore;->mJobSet:Landroid/util/ArraySet;

    #@8
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@b
    .line 128
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 129
    invoke-direct {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    #@14
    .line 134
    :cond_0
    return v0
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    #@5
    .line 179
    invoke-direct {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    #@8
    .line 177
    return-void
.end method

.method containsJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public containsJobIdForUid(II)Z
    .locals 4
    .param p1, "jobId"    # I
    .param p2, "uId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 141
    iget-object v2, p0, Lcom/android/server/job/JobStore;->mJobSet:Landroid/util/ArraySet;

    #@3
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    #@6
    move-result v2

    #@7
    add-int/lit8 v0, v2, -0x1

    #@9
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@b
    .line 142
    iget-object v2, p0, Lcom/android/server/job/JobStore;->mJobSet:Landroid/util/ArraySet;

    #@d
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    #@13
    .line 143
    .local v1, "ts":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    #@16
    move-result v2

    #@17
    if-ne v2, p2, :cond_0

    #@19
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    #@1c
    move-result v2

    #@1d
    if-ne v2, p1, :cond_0

    #@1f
    .line 144
    const/4 v2, 0x1

    #@20
    return v2

    #@21
    .line 141
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@23
    goto :goto_0

    #@24
    .line 147
    .end local v1    # "ts":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    return v3
.end method

.method public getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "jobId"    # I

    #@0
    .prologue
    .line 220
    iget-object v2, p0, Lcom/android/server/job/JobStore;->mJobSet:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    .line 221
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_1

    #@c
    .line 222
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    #@12
    .line 223
    .local v1, "ts":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    #@15
    move-result v2

    #@16
    if-ne v2, p1, :cond_0

    #@18
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    #@1b
    move-result v2

    #@1c
    if-ne v2, p2, :cond_0

    #@1e
    .line 224
    return-object v1

    #@1f
    .line 227
    .end local v1    # "ts":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    const/4 v2, 0x0

    #@20
    return-object v2
.end method

.method public getJobs()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Landroid/util/ArraySet;

    #@2
    return-object v0
.end method

.method public getJobsByUid(I)Ljava/util/List;
    .locals 4
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
    .line 203
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 204
    .local v1, "matchingJobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v3, p0, Lcom/android/server/job/JobStore;->mJobSet:Landroid/util/ArraySet;

    #@7
    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v0

    #@b
    .line 205
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 206
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    #@17
    .line 207
    .local v2, "ts":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    #@1a
    move-result v3

    #@1b
    if-ne v3, p1, :cond_0

    #@1d
    .line 208
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@20
    goto :goto_0

    #@21
    .line 211
    .end local v2    # "ts":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    return-object v1
.end method

.method public getJobsByUser(I)Ljava/util/List;
    .locals 4
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
    .line 187
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 188
    .local v1, "matchingJobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v3, p0, Lcom/android/server/job/JobStore;->mJobSet:Landroid/util/ArraySet;

    #@7
    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v0

    #@b
    .line 189
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    .line 190
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v2

    #@15
    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    #@17
    .line 191
    .local v2, "ts":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    #@1a
    move-result v3

    #@1b
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    #@1e
    move-result v3

    #@1f
    if-ne v3, p1, :cond_0

    #@21
    .line 192
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@24
    goto :goto_0

    #@25
    .line 195
    .end local v2    # "ts":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    return-object v1
.end method

.method public readJobMapFromDisk(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 264
    .local p1, "jobSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;-><init>(Lcom/android/server/job/JobStore;Landroid/util/ArraySet;)V

    #@5
    invoke-virtual {v0}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->run()V

    #@8
    .line 263
    return-void
.end method

.method public remove(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 2
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    #@0
    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/server/job/JobStore;->mJobSet:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    .line 164
    .local v0, "removed":Z
    if-nez v0, :cond_0

    #@8
    .line 168
    const/4 v1, 0x0

    #@9
    return v1

    #@a
    .line 170
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 171
    invoke-direct {p0}, Lcom/android/server/job/JobStore;->maybeWriteStatusToDiskAsync()V

    #@13
    .line 173
    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/job/JobStore;->mJobSet:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method
