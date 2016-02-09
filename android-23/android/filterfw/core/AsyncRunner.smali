.class public Landroid/filterfw/core/AsyncRunner;
.super Landroid/filterfw/core/GraphRunner;
.source "AsyncRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterfw/core/AsyncRunner$RunnerResult;,
        Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AsyncRunner"


# instance fields
.field private isProcessing:Z

.field private mDoneListener:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

.field private mException:Ljava/lang/Exception;

.field private mLogVerbose:Z

.field private mRunTask:Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;

.field private mRunner:Landroid/filterfw/core/SyncRunner;

.field private mSchedulerClass:Ljava/lang/Class;


# direct methods
.method static synthetic -get0(Landroid/filterfw/core/AsyncRunner;)Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mDoneListener:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/filterfw/core/AsyncRunner;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/filterfw/core/AsyncRunner;)Landroid/filterfw/core/SyncRunner;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mRunner:Landroid/filterfw/core/SyncRunner;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/filterfw/core/AsyncRunner;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Exception;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/filterfw/core/AsyncRunner;->setException(Ljava/lang/Exception;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/filterfw/core/AsyncRunner;Z)V
    .locals 0
    .param p1, "running"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/filterfw/core/AsyncRunner;->setRunning(Z)V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 152
    invoke-direct {p0, p1}, Landroid/filterfw/core/GraphRunner;-><init>(Landroid/filterfw/core/FilterContext;)V

    #@3
    .line 154
    const-class v0, Landroid/filterfw/core/SimpleScheduler;

    #@5
    iput-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mSchedulerClass:Ljava/lang/Class;

    #@7
    .line 155
    const-string/jumbo v0, "AsyncRunner"

    #@a
    const/4 v1, 0x2

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@e
    move-result v0

    #@f
    iput-boolean v0, p0, Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z

    #@11
    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/filterfw/core/FilterContext;Ljava/lang/Class;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "schedulerClass"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 140
    invoke-direct {p0, p1}, Landroid/filterfw/core/GraphRunner;-><init>(Landroid/filterfw/core/FilterContext;)V

    #@3
    .line 142
    iput-object p2, p0, Landroid/filterfw/core/AsyncRunner;->mSchedulerClass:Ljava/lang/Class;

    #@5
    .line 143
    const-string/jumbo v0, "AsyncRunner"

    #@8
    const/4 v1, 0x2

    #@9
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@c
    move-result v0

    #@d
    iput-boolean v0, p0, Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z

    #@f
    .line 139
    return-void
.end method

.method private declared-synchronized setException(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Exception;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 236
    :try_start_0
    iput-object p1, p0, Landroid/filterfw/core/AsyncRunner;->mException:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 235
    return-void

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method private declared-synchronized setRunning(Z)V
    .locals 1
    .param p1, "running"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 232
    :try_start_0
    iput-boolean p1, p0, Landroid/filterfw/core/AsyncRunner;->isProcessing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 231
    return-void

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 213
    :try_start_0
    invoke-virtual {p0}, Landroid/filterfw/core/AsyncRunner;->isRunning()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 214
    new-instance v0, Ljava/lang/RuntimeException;

    #@9
    const-string/jumbo v1, "Cannot close graph while it is running!"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0

    #@13
    .line 216
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z

    #@15
    if-eqz v0, :cond_1

    #@17
    const-string/jumbo v0, "AsyncRunner"

    #@1a
    const-string/jumbo v1, "Closing filters."

    #@1d
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 217
    :cond_1
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mRunner:Landroid/filterfw/core/SyncRunner;

    #@22
    invoke-virtual {v0}, Landroid/filterfw/core/SyncRunner;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    monitor-exit p0

    #@26
    .line 212
    return-void
.end method

.method public declared-synchronized getError()Ljava/lang/Exception;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 228
    :try_start_0
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mException:Ljava/lang/Exception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public getGraph()Landroid/filterfw/core/FilterGraph;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 179
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner;->mRunner:Landroid/filterfw/core/SyncRunner;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mRunner:Landroid/filterfw/core/SyncRunner;

    #@7
    invoke-virtual {v0}, Landroid/filterfw/core/SyncRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method public declared-synchronized isRunning()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 223
    :try_start_0
    iget-boolean v0, p0, Landroid/filterfw/core/AsyncRunner;->isProcessing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public declared-synchronized run()V
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 185
    :try_start_0
    iget-boolean v0, p0, Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    const-string/jumbo v0, "AsyncRunner"

    #@8
    const-string/jumbo v1, "Running graph."

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 186
    :cond_0
    const/4 v0, 0x0

    #@f
    invoke-direct {p0, v0}, Landroid/filterfw/core/AsyncRunner;->setException(Ljava/lang/Exception;)V

    #@12
    .line 188
    invoke-virtual {p0}, Landroid/filterfw/core/AsyncRunner;->isRunning()Z

    #@15
    move-result v0

    #@16
    if-eqz v0, :cond_1

    #@18
    .line 189
    new-instance v0, Ljava/lang/RuntimeException;

    #@1a
    const-string/jumbo v1, "Graph is already running!"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    :catchall_0
    move-exception v0

    #@22
    monitor-exit p0

    #@23
    throw v0

    #@24
    .line 191
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mRunner:Landroid/filterfw/core/SyncRunner;

    #@26
    if-nez v0, :cond_2

    #@28
    .line 192
    new-instance v0, Ljava/lang/RuntimeException;

    #@2a
    const-string/jumbo v1, "Cannot run before a graph is set!"

    #@2d
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 194
    :cond_2
    new-instance v0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;

    #@33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@36
    const/4 v1, 0x0

    #@37
    invoke-direct {v0, p0, v1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;-><init>(Landroid/filterfw/core/AsyncRunner;Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;)V

    #@3a
    iput-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mRunTask:Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;

    #@3c
    .line 196
    const/4 v0, 0x1

    #@3d
    invoke-direct {p0, v0}, Landroid/filterfw/core/AsyncRunner;->setRunning(Z)V

    #@40
    .line 197
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mRunTask:Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;

    #@42
    const/4 v1, 0x1

    #@43
    new-array v1, v1, [Landroid/filterfw/core/SyncRunner;

    #@45
    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner;->mRunner:Landroid/filterfw/core/SyncRunner;

    #@47
    const/4 v3, 0x0

    #@48
    aput-object v2, v1, v3

    #@4a
    invoke-virtual {v0, v1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    monitor-exit p0

    #@4e
    .line 184
    return-void
.end method

.method public setDoneCallback(Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    #@0
    .prologue
    .line 164
    iput-object p1, p0, Landroid/filterfw/core/AsyncRunner;->mDoneListener:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    #@2
    .line 163
    return-void
.end method

.method public declared-synchronized setGraph(Landroid/filterfw/core/FilterGraph;)V
    .locals 3
    .param p1, "graph"    # Landroid/filterfw/core/FilterGraph;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 171
    :try_start_0
    invoke-virtual {p0}, Landroid/filterfw/core/AsyncRunner;->isRunning()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 172
    new-instance v0, Ljava/lang/RuntimeException;

    #@9
    const-string/jumbo v1, "Graph is already running!"

    #@c
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit p0

    #@12
    throw v0

    #@13
    .line 174
    :cond_0
    :try_start_1
    new-instance v0, Landroid/filterfw/core/SyncRunner;

    #@15
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner;->mFilterContext:Landroid/filterfw/core/FilterContext;

    #@17
    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner;->mSchedulerClass:Ljava/lang/Class;

    #@19
    invoke-direct {v0, v1, p1, v2}, Landroid/filterfw/core/SyncRunner;-><init>(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FilterGraph;Ljava/lang/Class;)V

    #@1c
    iput-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mRunner:Landroid/filterfw/core/SyncRunner;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    monitor-exit p0

    #@1f
    .line 170
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 205
    :try_start_0
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mRunTask:Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mRunTask:Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;

    #@7
    invoke-virtual {v0}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    :cond_0
    :goto_0
    monitor-exit p0

    #@e
    .line 204
    return-void

    #@f
    .line 206
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z

    #@11
    if-eqz v0, :cond_2

    #@13
    const-string/jumbo v0, "AsyncRunner"

    #@16
    const-string/jumbo v1, "Stopping graph."

    #@19
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@1c
    .line 207
    :cond_2
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mRunTask:Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;

    #@1e
    const/4 v1, 0x0

    #@1f
    invoke-virtual {v0, v1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->cancel(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    goto :goto_0

    #@23
    :catchall_0
    move-exception v0

    #@24
    monitor-exit p0

    #@25
    throw v0
.end method
