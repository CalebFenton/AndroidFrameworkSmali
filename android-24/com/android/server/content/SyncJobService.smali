.class public Lcom/android/server/content/SyncJobService;
.super Landroid/app/job/JobService;
.source "SyncJobService.java"


# static fields
.field public static final EXTRA_MESSENGER:Ljava/lang/String; = "messenger"

.field private static final TAG:Ljava/lang/String; = "SyncManager"


# instance fields
.field private jobParamsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/job/JobParameters;",
            ">;"
        }
    .end annotation
.end field

.field private mMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    #@3
    .line 35
    new-instance v0, Landroid/util/SparseArray;

    #@5
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/content/SyncJobService;->jobParamsMap:Landroid/util/SparseArray;

    #@a
    .line 29
    return-void
.end method

.method private sendMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    #@0
    .prologue
    .line 53
    iget-object v1, p0, Lcom/android/server/content/SyncJobService;->mMessenger:Landroid/os/Messenger;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 54
    const-string/jumbo v1, "SyncManager"

    #@7
    const-string/jumbo v2, "Messenger not initialized."

    #@a
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 55
    return-void

    #@e
    .line 58
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncJobService;->mMessenger:Landroid/os/Messenger;

    #@10
    invoke-virtual {v1, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 52
    :goto_0
    return-void

    #@14
    .line 59
    :catch_0
    move-exception v0

    #@15
    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "SyncManager"

    #@18
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    goto :goto_0
.end method


# virtual methods
.method public callJobFinished(IZ)V
    .locals 5
    .param p1, "jobId"    # I
    .param p2, "needsReschedule"    # Z

    #@0
    .prologue
    .line 112
    iget-object v2, p0, Lcom/android/server/content/SyncJobService;->jobParamsMap:Landroid/util/SparseArray;

    #@2
    monitor-enter v2

    #@3
    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncJobService;->jobParamsMap:Landroid/util/SparseArray;

    #@5
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/app/job/JobParameters;

    #@b
    .line 114
    .local v0, "params":Landroid/app/job/JobParameters;
    if-eqz v0, :cond_0

    #@d
    .line 115
    invoke-virtual {p0, v0, p2}, Lcom/android/server/content/SyncJobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    #@10
    .line 116
    iget-object v1, p0, Lcom/android/server/content/SyncJobService;->jobParamsMap:Landroid/util/SparseArray;

    #@12
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    :goto_0
    monitor-exit v2

    #@16
    .line 111
    return-void

    #@17
    .line 118
    :cond_0
    :try_start_1
    const-string/jumbo v1, "SyncManager"

    #@1a
    new-instance v3, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    const-string/jumbo v4, "Job params not found for "

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@35
    goto :goto_0

    #@36
    .line 112
    .end local v0    # "params":Landroid/app/job/JobParameters;
    :catchall_0
    move-exception v1

    #@37
    monitor-exit v2

    #@38
    throw v1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    #@0
    .prologue
    .line 43
    const-string/jumbo v1, "messenger"

    #@3
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroid/os/Messenger;

    #@9
    iput-object v1, p0, Lcom/android/server/content/SyncJobService;->mMessenger:Landroid/os/Messenger;

    #@b
    .line 44
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@e
    move-result-object v0

    #@f
    .line 45
    .local v0, "m":Landroid/os/Message;
    const/4 v1, 0x7

    #@10
    iput v1, v0, Landroid/os/Message;->what:I

    #@12
    .line 46
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14
    .line 47
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncJobService;->sendMessage(Landroid/os/Message;)V

    #@17
    .line 49
    const/4 v1, 0x2

    #@18
    return v1
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 6
    .param p1, "params"    # Landroid/app/job/JobParameters;

    #@0
    .prologue
    .line 66
    const-string/jumbo v3, "SyncManager"

    #@3
    const/4 v4, 0x2

    #@4
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    .line 67
    .local v0, "isLoggable":Z
    iget-object v4, p0, Lcom/android/server/content/SyncJobService;->jobParamsMap:Landroid/util/SparseArray;

    #@a
    monitor-enter v4

    #@b
    .line 68
    :try_start_0
    iget-object v3, p0, Lcom/android/server/content/SyncJobService;->jobParamsMap:Landroid/util/SparseArray;

    #@d
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    #@10
    move-result v5

    #@11
    invoke-virtual {v3, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v4

    #@15
    .line 70
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@18
    move-result-object v1

    #@19
    .line 71
    .local v1, "m":Landroid/os/Message;
    const/16 v3, 0xa

    #@1b
    iput v3, v1, Landroid/os/Message;->what:I

    #@1d
    .line 72
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    #@20
    move-result-object v3

    #@21
    invoke-static {v3}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    #@24
    move-result-object v2

    #@25
    .line 73
    .local v2, "op":Lcom/android/server/content/SyncOperation;
    if-nez v2, :cond_0

    #@27
    .line 74
    const-string/jumbo v3, "SyncManager"

    #@2a
    new-instance v4, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v5, "Got invalid job "

    #@32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    #@39
    move-result v5

    #@3a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@45
    .line 75
    const/4 v3, 0x0

    #@46
    return v3

    #@47
    .line 67
    .end local v1    # "m":Landroid/os/Message;
    .end local v2    # "op":Lcom/android/server/content/SyncOperation;
    :catchall_0
    move-exception v3

    #@48
    monitor-exit v4

    #@49
    throw v3

    #@4a
    .line 77
    .restart local v1    # "m":Landroid/os/Message;
    .restart local v2    # "op":Lcom/android/server/content/SyncOperation;
    :cond_0
    if-eqz v0, :cond_1

    #@4c
    .line 78
    const-string/jumbo v3, "SyncManager"

    #@4f
    new-instance v4, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v5, "Got start job message "

    #@57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v4

    #@5b
    iget-object v5, v2, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    #@5d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@68
    .line 80
    :cond_1
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@6a
    .line 81
    invoke-direct {p0, v1}, Lcom/android/server/content/SyncJobService;->sendMessage(Landroid/os/Message;)V

    #@6d
    .line 82
    const/4 v3, 0x1

    #@6e
    return v3
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 6
    .param p1, "params"    # Landroid/app/job/JobParameters;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 87
    const-string/jumbo v1, "SyncManager"

    #@5
    const/4 v4, 0x2

    #@6
    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 88
    const-string/jumbo v1, "SyncManager"

    #@f
    new-instance v4, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v5, "onStopJob called "

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    #@1e
    move-result v5

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    const-string/jumbo v5, ", reason: "

    #@26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    .line 89
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getStopReason()I

    #@2d
    move-result v5

    #@2e
    .line 88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@39
    .line 92
    :cond_0
    iget-object v4, p0, Lcom/android/server/content/SyncJobService;->jobParamsMap:Landroid/util/SparseArray;

    #@3b
    monitor-enter v4

    #@3c
    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/android/server/content/SyncJobService;->jobParamsMap:Landroid/util/SparseArray;

    #@3e
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    #@41
    move-result v5

    #@42
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    monitor-exit v4

    #@46
    .line 95
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@49
    move-result-object v0

    #@4a
    .line 96
    .local v0, "m":Landroid/os/Message;
    const/16 v1, 0xb

    #@4c
    iput v1, v0, Landroid/os/Message;->what:I

    #@4e
    .line 97
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    #@51
    move-result-object v1

    #@52
    invoke-static {v1}, Lcom/android/server/content/SyncOperation;->maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;

    #@55
    move-result-object v1

    #@56
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@58
    .line 98
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5a
    if-nez v1, :cond_1

    #@5c
    .line 99
    return v3

    #@5d
    .line 92
    .end local v0    # "m":Landroid/os/Message;
    :catchall_0
    move-exception v1

    #@5e
    monitor-exit v4

    #@5f
    throw v1

    #@60
    .line 103
    .restart local v0    # "m":Landroid/os/Message;
    :cond_1
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getStopReason()I

    #@63
    move-result v1

    #@64
    if-eqz v1, :cond_2

    #@66
    move v1, v2

    #@67
    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    #@69
    .line 105
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getStopReason()I

    #@6c
    move-result v1

    #@6d
    const/4 v4, 0x3

    #@6e
    if-ne v1, v4, :cond_3

    #@70
    :goto_1
    iput v2, v0, Landroid/os/Message;->arg2:I

    #@72
    .line 107
    invoke-direct {p0, v0}, Lcom/android/server/content/SyncJobService;->sendMessage(Landroid/os/Message;)V

    #@75
    .line 108
    return v3

    #@76
    :cond_2
    move v1, v3

    #@77
    .line 103
    goto :goto_0

    #@78
    :cond_3
    move v2, v3

    #@79
    .line 105
    goto :goto_1
.end method
