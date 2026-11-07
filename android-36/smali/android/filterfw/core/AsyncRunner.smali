.class public Landroid/filterfw/core/AsyncRunner;
.super Landroid/filterfw/core/GraphRunner;
.source "AsyncRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;,
        Landroid/filterfw/core/AsyncRunner$RunnerResult;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "AsyncRunner"


# instance fields
.field private greylist-max-o isProcessing:Z

.field private greylist-max-o mDoneListener:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

.field private greylist-max-o mException:Ljava/lang/Exception;

.field private greylist-max-o mLogVerbose:Z

.field private greylist-max-o mRunTask:Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;

.field private greylist-max-o mRunner:Landroid/filterfw/core/SyncRunner;

.field private greylist-max-o mSchedulerClass:Ljava/lang/Class;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDoneListener(Landroid/filterfw/core/AsyncRunner;)Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;
    .registers 1

    iget-object p0, p0, Landroid/filterfw/core/AsyncRunner;->mDoneListener:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLogVerbose(Landroid/filterfw/core/AsyncRunner;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRunner(Landroid/filterfw/core/AsyncRunner;)Landroid/filterfw/core/SyncRunner;
    .registers 1

    iget-object p0, p0, Landroid/filterfw/core/AsyncRunner;->mRunner:Landroid/filterfw/core/SyncRunner;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetException(Landroid/filterfw/core/AsyncRunner;Ljava/lang/Exception;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/filterfw/core/AsyncRunner;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetRunning(Landroid/filterfw/core/AsyncRunner;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/filterfw/core/AsyncRunner;->setRunning(Z)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 152
    invoke-direct {p0, p1}, Landroid/filterfw/core/GraphRunner;-><init>(Landroid/filterfw/core/FilterContext;)V

    .line 154
    const-class v0, Landroid/filterfw/core/SimpleScheduler;

    iput-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mSchedulerClass:Ljava/lang/Class;

    .line 155
    const-string v0, "AsyncRunner"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z

    .line 156
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/filterfw/core/FilterContext;Ljava/lang/Class;)V
    .registers 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "schedulerClass"    # Ljava/lang/Class;

    .line 140
    invoke-direct {p0, p1}, Landroid/filterfw/core/GraphRunner;-><init>(Landroid/filterfw/core/FilterContext;)V

    .line 142
    iput-object p2, p0, Landroid/filterfw/core/AsyncRunner;->mSchedulerClass:Ljava/lang/Class;

    .line 143
    const-string v0, "AsyncRunner"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z

    .line 144
    return-void
.end method

.method private declared-synchronized greylist-max-o setException(Ljava/lang/Exception;)V
    .registers 2
    .param p1, "exception"    # Ljava/lang/Exception;

    monitor-enter p0

    .line 236
    :try_start_1
    iput-object p1, p0, Landroid/filterfw/core/AsyncRunner;->mException:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 237
    monitor-exit p0

    return-void

    .line 235
    .end local p0    # "this":Landroid/filterfw/core/AsyncRunner;
    .end local p1    # "exception":Ljava/lang/Exception;
    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method

.method private declared-synchronized greylist-max-o setRunning(Z)V
    .registers 2
    .param p1, "running"    # Z

    monitor-enter p0

    .line 232
    :try_start_1
    iput-boolean p1, p0, Landroid/filterfw/core/AsyncRunner;->isProcessing:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 233
    monitor-exit p0

    return-void

    .line 231
    .end local p0    # "this":Landroid/filterfw/core/AsyncRunner;
    .end local p1    # "running":Z
    :catchall_5
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw p1
.end method


# virtual methods
.method public declared-synchronized greylist-max-o close()V
    .registers 3

    monitor-enter p0

    .line 213
    :try_start_1
    invoke-virtual {p0}, Landroid/filterfw/core/AsyncRunner;->isRunning()Z

    move-result v0

    if-nez v0, :cond_19

    .line 216
    iget-boolean v0, p0, Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z

    if-eqz v0, :cond_12

    const-string v0, "AsyncRunner"

    const-string v1, "Closing filters."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    .end local p0    # "this":Landroid/filterfw/core/AsyncRunner;
    :cond_12
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mRunner:Landroid/filterfw/core/SyncRunner;

    invoke-virtual {v0}, Landroid/filterfw/core/SyncRunner;->close()V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_21

    .line 218
    monitor-exit p0

    return-void

    .line 214
    :cond_19
    :try_start_19
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot close graph while it is running!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public declared-synchronized greylist-max-o getError()Ljava/lang/Exception;
    .registers 2

    monitor-enter p0

    .line 228
    :try_start_1
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mException:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 228
    .end local p0    # "this":Landroid/filterfw/core/AsyncRunner;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public greylist-max-o getGraph()Landroid/filterfw/core/FilterGraph;
    .registers 2

    .line 179
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mRunner:Landroid/filterfw/core/SyncRunner;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mRunner:Landroid/filterfw/core/SyncRunner;

    invoke-virtual {v0}, Landroid/filterfw/core/SyncRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public declared-synchronized greylist-max-o isRunning()Z
    .registers 2

    monitor-enter p0

    .line 223
    :try_start_1
    iget-boolean v0, p0, Landroid/filterfw/core/AsyncRunner;->isProcessing:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 223
    .end local p0    # "this":Landroid/filterfw/core/AsyncRunner;
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized greylist-max-o run()V
    .registers 5

    monitor-enter p0

    .line 185
    :try_start_1
    iget-boolean v0, p0, Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z

    if-eqz v0, :cond_c

    const-string v0, "AsyncRunner"

    const-string v1, "Running graph."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .end local p0    # "this":Landroid/filterfw/core/AsyncRunner;
    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/filterfw/core/AsyncRunner;->setException(Ljava/lang/Exception;)V

    .line 188
    invoke-virtual {p0}, Landroid/filterfw/core/AsyncRunner;->isRunning()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 191
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner;->mRunner:Landroid/filterfw/core/SyncRunner;

    if-eqz v1, :cond_33

    .line 194
    new-instance v1, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;

    invoke-direct {v1, p0, v0}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;-><init>(Landroid/filterfw/core/AsyncRunner;Landroid/filterfw/core/AsyncRunner-IA;)V

    iput-object v1, p0, Landroid/filterfw/core/AsyncRunner;->mRunTask:Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;

    .line 196
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/filterfw/core/AsyncRunner;->setRunning(Z)V

    .line 197
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner;->mRunTask:Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;

    new-array v0, v0, [Landroid/filterfw/core/SyncRunner;

    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner;->mRunner:Landroid/filterfw/core/SyncRunner;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-virtual {v1, v0}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_43

    .line 198
    monitor-exit p0

    return-void

    .line 192
    :cond_33
    :try_start_33
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot run before a graph is set!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_3b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Graph is already running!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :catchall_43
    move-exception v0

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_33 .. :try_end_45} :catchall_43

    throw v0
.end method

.method public greylist-max-o setDoneCallback(Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    .line 164
    iput-object p1, p0, Landroid/filterfw/core/AsyncRunner;->mDoneListener:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    .line 165
    return-void
.end method

.method public declared-synchronized greylist-max-o setGraph(Landroid/filterfw/core/FilterGraph;)V
    .registers 5
    .param p1, "graph"    # Landroid/filterfw/core/FilterGraph;

    monitor-enter p0

    .line 171
    :try_start_1
    invoke-virtual {p0}, Landroid/filterfw/core/AsyncRunner;->isRunning()Z

    move-result v0

    if-nez v0, :cond_14

    .line 174
    new-instance v0, Landroid/filterfw/core/SyncRunner;

    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner;->mFilterContext:Landroid/filterfw/core/FilterContext;

    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner;->mSchedulerClass:Ljava/lang/Class;

    invoke-direct {v0, v1, p1, v2}, Landroid/filterfw/core/SyncRunner;-><init>(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FilterGraph;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mRunner:Landroid/filterfw/core/SyncRunner;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1c

    .line 175
    monitor-exit p0

    return-void

    .line 172
    .end local p0    # "this":Landroid/filterfw/core/AsyncRunner;
    :cond_14
    :try_start_14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Graph is already running!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    .end local p1    # "graph":Landroid/filterfw/core/FilterGraph;
    :catchall_1c
    move-exception p1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public declared-synchronized greylist-max-o stop()V
    .registers 3

    monitor-enter p0

    .line 205
    :try_start_1
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mRunTask:Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mRunTask:Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;

    invoke-virtual {v0}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 206
    iget-boolean v0, p0, Landroid/filterfw/core/AsyncRunner;->mLogVerbose:Z

    if-eqz v0, :cond_18

    const-string v0, "AsyncRunner"

    const-string v1, "Stopping graph."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .end local p0    # "this":Landroid/filterfw/core/AsyncRunner;
    :cond_18
    iget-object v0, p0, Landroid/filterfw/core/AsyncRunner;->mRunTask:Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->cancel(Z)Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 209
    :cond_1e
    monitor-exit p0

    return-void

    .line 204
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method
