.class public Landroid/filterfw/core/SyncRunner;
.super Landroid/filterfw/core/GraphRunner;
.source "SyncRunner.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncRunner"


# instance fields
.field private mDoneListener:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

.field private final mLogVerbose:Z

.field private mScheduler:Landroid/filterfw/core/Scheduler;

.field private mTimer:Landroid/filterfw/core/StopWatchMap;

.field private mWakeCondition:Landroid/os/ConditionVariable;

.field private mWakeExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method public constructor <init>(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FilterGraph;Ljava/lang/Class;)V
    .locals 9
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "graph"    # Landroid/filterfw/core/FilterGraph;
    .param p3, "schedulerClass"    # Ljava/lang/Class;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    .line 46
    invoke-direct {p0, p1}, Landroid/filterfw/core/GraphRunner;-><init>(Landroid/filterfw/core/FilterContext;)V

    #@5
    .line 33
    iput-object v8, p0, Landroid/filterfw/core/SyncRunner;->mScheduler:Landroid/filterfw/core/Scheduler;

    #@7
    .line 35
    iput-object v8, p0, Landroid/filterfw/core/SyncRunner;->mDoneListener:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    #@9
    .line 36
    new-instance v6, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    #@b
    invoke-direct {v6, v7}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    #@e
    iput-object v6, p0, Landroid/filterfw/core/SyncRunner;->mWakeExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    #@10
    .line 37
    new-instance v6, Landroid/os/ConditionVariable;

    #@12
    invoke-direct {v6}, Landroid/os/ConditionVariable;-><init>()V

    #@15
    iput-object v6, p0, Landroid/filterfw/core/SyncRunner;->mWakeCondition:Landroid/os/ConditionVariable;

    #@17
    .line 39
    iput-object v8, p0, Landroid/filterfw/core/SyncRunner;->mTimer:Landroid/filterfw/core/StopWatchMap;

    #@19
    .line 48
    const-string/jumbo v6, "SyncRunner"

    #@1c
    const/4 v7, 0x2

    #@1d
    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@20
    move-result v6

    #@21
    iput-boolean v6, p0, Landroid/filterfw/core/SyncRunner;->mLogVerbose:Z

    #@23
    .line 50
    iget-boolean v6, p0, Landroid/filterfw/core/SyncRunner;->mLogVerbose:Z

    #@25
    if-eqz v6, :cond_0

    #@27
    const-string/jumbo v6, "SyncRunner"

    #@2a
    const-string/jumbo v7, "Initializing SyncRunner"

    #@2d
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@30
    .line 53
    :cond_0
    const-class v6, Landroid/filterfw/core/Scheduler;

    #@32
    invoke-virtual {v6, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@35
    move-result v6

    #@36
    if-eqz v6, :cond_2

    #@38
    .line 55
    const/4 v6, 0x1

    #@39
    :try_start_0
    new-array v6, v6, [Ljava/lang/Class;

    #@3b
    const-class v7, Landroid/filterfw/core/FilterGraph;

    #@3d
    const/4 v8, 0x0

    #@3e
    aput-object v7, v6, v8

    #@40
    invoke-virtual {p3, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@43
    move-result-object v5

    #@44
    .line 56
    .local v5, "schedulerConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    #@45
    new-array v6, v6, [Ljava/lang/Object;

    #@47
    const/4 v7, 0x0

    #@48
    aput-object p2, v6, v7

    #@4a
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@4d
    move-result-object v6

    #@4e
    check-cast v6, Landroid/filterfw/core/Scheduler;

    #@50
    iput-object v6, p0, Landroid/filterfw/core/SyncRunner;->mScheduler:Landroid/filterfw/core/Scheduler;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@52
    .line 73
    iput-object p1, p0, Landroid/filterfw/core/SyncRunner;->mFilterContext:Landroid/filterfw/core/FilterContext;

    #@54
    .line 74
    iget-object v6, p0, Landroid/filterfw/core/SyncRunner;->mFilterContext:Landroid/filterfw/core/FilterContext;

    #@56
    invoke-virtual {v6, p2}, Landroid/filterfw/core/FilterContext;->addGraph(Landroid/filterfw/core/FilterGraph;)V

    #@59
    .line 76
    new-instance v6, Landroid/filterfw/core/StopWatchMap;

    #@5b
    invoke-direct {v6}, Landroid/filterfw/core/StopWatchMap;-><init>()V

    #@5e
    iput-object v6, p0, Landroid/filterfw/core/SyncRunner;->mTimer:Landroid/filterfw/core/StopWatchMap;

    #@60
    .line 78
    iget-boolean v6, p0, Landroid/filterfw/core/SyncRunner;->mLogVerbose:Z

    #@62
    if-eqz v6, :cond_1

    #@64
    const-string/jumbo v6, "SyncRunner"

    #@67
    const-string/jumbo v7, "Setting up filters"

    #@6a
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@6d
    .line 81
    :cond_1
    invoke-virtual {p2}, Landroid/filterfw/core/FilterGraph;->setupFilters()V

    #@70
    .line 45
    return-void

    #@71
    .line 65
    .end local v5    # "schedulerConstructor":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v0

    #@72
    .line 66
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    #@74
    const-string/jumbo v7, "Could not instantiate Scheduler"

    #@77
    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@7a
    throw v6

    #@7b
    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    #@7c
    .line 64
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v6, Ljava/lang/RuntimeException;

    #@7e
    const-string/jumbo v7, "Scheduler constructor threw an exception"

    #@81
    invoke-direct {v6, v7, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@84
    throw v6

    #@85
    .line 61
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    #@86
    .line 62
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/RuntimeException;

    #@88
    const-string/jumbo v7, "Cannot access Scheduler constructor!"

    #@8b
    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@8e
    throw v6

    #@8f
    .line 59
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    #@90
    .line 60
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v6, Ljava/lang/RuntimeException;

    #@92
    const-string/jumbo v7, "Could not instantiate the Scheduler instance!"

    #@95
    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@98
    throw v6

    #@99
    .line 57
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v3

    #@9a
    .line 58
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    new-instance v6, Ljava/lang/RuntimeException;

    #@9c
    const-string/jumbo v7, "Scheduler does not have constructor <init>(FilterGraph)!"

    #@9f
    invoke-direct {v6, v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@a2
    throw v6

    #@a3
    .line 69
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@a5
    const-string/jumbo v7, "Class provided is not a Scheduler subclass!"

    #@a8
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ab
    throw v6
.end method


# virtual methods
.method assertReadyToStep()V
    .locals 2

    #@0
    .prologue
    .line 221
    iget-object v0, p0, Landroid/filterfw/core/SyncRunner;->mScheduler:Landroid/filterfw/core/Scheduler;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 222
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "Attempting to run schedule with no scheduler in place!"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 223
    :cond_0
    invoke-virtual {p0}, Landroid/filterfw/core/SyncRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    #@10
    move-result-object v0

    #@11
    if-nez v0, :cond_1

    #@13
    .line 224
    new-instance v0, Ljava/lang/RuntimeException;

    #@15
    const-string/jumbo v1, "Calling step on scheduler with no graph in place!"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 220
    :cond_1
    return-void
.end method

.method public beginProcessing()V
    .locals 1

    #@0
    .prologue
    .line 98
    iget-object v0, p0, Landroid/filterfw/core/SyncRunner;->mScheduler:Landroid/filterfw/core/Scheduler;

    #@2
    invoke-virtual {v0}, Landroid/filterfw/core/Scheduler;->reset()V

    #@5
    .line 99
    invoke-virtual {p0}, Landroid/filterfw/core/SyncRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/filterfw/core/FilterGraph;->beginProcessing()V

    #@c
    .line 97
    return-void
.end method

.method public close()V
    .locals 2

    #@0
    .prologue
    .line 104
    iget-boolean v0, p0, Landroid/filterfw/core/SyncRunner;->mLogVerbose:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "SyncRunner"

    #@7
    const-string/jumbo v1, "Closing graph."

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 105
    :cond_0
    invoke-virtual {p0}, Landroid/filterfw/core/SyncRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Landroid/filterfw/core/SyncRunner;->mFilterContext:Landroid/filterfw/core/FilterContext;

    #@13
    invoke-virtual {v0, v1}, Landroid/filterfw/core/FilterGraph;->closeFilters(Landroid/filterfw/core/FilterContext;)V

    #@16
    .line 106
    iget-object v0, p0, Landroid/filterfw/core/SyncRunner;->mScheduler:Landroid/filterfw/core/Scheduler;

    #@18
    invoke-virtual {v0}, Landroid/filterfw/core/Scheduler;->reset()V

    #@1b
    .line 102
    return-void
.end method

.method protected determinePostRunState()I
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x4

    #@1
    .line 191
    const/4 v2, 0x0

    #@2
    .line 192
    .local v2, "isBlocked":Z
    iget-object v3, p0, Landroid/filterfw/core/SyncRunner;->mScheduler:Landroid/filterfw/core/Scheduler;

    #@4
    invoke-virtual {v3}, Landroid/filterfw/core/Scheduler;->getGraph()Landroid/filterfw/core/FilterGraph;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v3}, Landroid/filterfw/core/FilterGraph;->getFilters()Ljava/util/Set;

    #@b
    move-result-object v3

    #@c
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "filter$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_2

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/filterfw/core/Filter;

    #@1c
    .line 193
    .local v0, "filter":Landroid/filterfw/core/Filter;
    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->isOpen()Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_0

    #@22
    .line 194
    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getStatus()I

    #@25
    move-result v3

    #@26
    if-ne v3, v4, :cond_1

    #@28
    .line 196
    const/4 v3, 0x3

    #@29
    return v3

    #@2a
    .line 199
    :cond_1
    return v4

    #@2b
    .line 203
    .end local v0    # "filter":Landroid/filterfw/core/Filter;
    :cond_2
    const/4 v3, 0x2

    #@2c
    return v3
.end method

.method public declared-synchronized getError()Ljava/lang/Exception;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 155
    const/4 v0, 0x0

    #@2
    monitor-exit p0

    #@3
    return-object v0
.end method

.method public getGraph()Landroid/filterfw/core/FilterGraph;
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 86
    iget-object v1, p0, Landroid/filterfw/core/SyncRunner;->mScheduler:Landroid/filterfw/core/Scheduler;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v0, p0, Landroid/filterfw/core/SyncRunner;->mScheduler:Landroid/filterfw/core/Scheduler;

    #@7
    invoke-virtual {v0}, Landroid/filterfw/core/Scheduler;->getGraph()Landroid/filterfw/core/FilterGraph;

    #@a
    move-result-object v0

    #@b
    :cond_0
    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    #@0
    .prologue
    .line 140
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method performStep()Z
    .locals 3

    #@0
    .prologue
    .line 208
    iget-boolean v1, p0, Landroid/filterfw/core/SyncRunner;->mLogVerbose:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    const-string/jumbo v1, "SyncRunner"

    #@7
    const-string/jumbo v2, "Performing one step."

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 209
    :cond_0
    iget-object v1, p0, Landroid/filterfw/core/SyncRunner;->mScheduler:Landroid/filterfw/core/Scheduler;

    #@f
    invoke-virtual {v1}, Landroid/filterfw/core/Scheduler;->scheduleNextNode()Landroid/filterfw/core/Filter;

    #@12
    move-result-object v0

    #@13
    .line 210
    .local v0, "filter":Landroid/filterfw/core/Filter;
    if-eqz v0, :cond_1

    #@15
    .line 211
    iget-object v1, p0, Landroid/filterfw/core/SyncRunner;->mTimer:Landroid/filterfw/core/StopWatchMap;

    #@17
    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, v2}, Landroid/filterfw/core/StopWatchMap;->start(Ljava/lang/String;)V

    #@1e
    .line 212
    invoke-virtual {p0, v0}, Landroid/filterfw/core/SyncRunner;->processFilterNode(Landroid/filterfw/core/Filter;)V

    #@21
    .line 213
    iget-object v1, p0, Landroid/filterfw/core/SyncRunner;->mTimer:Landroid/filterfw/core/StopWatchMap;

    #@23
    invoke-virtual {v0}, Landroid/filterfw/core/Filter;->getName()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v1, v2}, Landroid/filterfw/core/StopWatchMap;->stop(Ljava/lang/String;)V

    #@2a
    .line 214
    const/4 v1, 0x1

    #@2b
    return v1

    #@2c
    .line 216
    :cond_1
    const/4 v1, 0x0

    #@2d
    return v1
.end method

.method protected processFilterNode(Landroid/filterfw/core/Filter;)V
    .locals 3
    .param p1, "filter"    # Landroid/filterfw/core/Filter;

    #@0
    .prologue
    .line 163
    iget-boolean v0, p0, Landroid/filterfw/core/SyncRunner;->mLogVerbose:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "SyncRunner"

    #@7
    const-string/jumbo v1, "Processing filter node"

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 164
    :cond_0
    iget-object v0, p0, Landroid/filterfw/core/SyncRunner;->mFilterContext:Landroid/filterfw/core/FilterContext;

    #@f
    invoke-virtual {p1, v0}, Landroid/filterfw/core/Filter;->performProcess(Landroid/filterfw/core/FilterContext;)V

    #@12
    .line 165
    invoke-virtual {p1}, Landroid/filterfw/core/Filter;->getStatus()I

    #@15
    move-result v0

    #@16
    const/4 v1, 0x6

    #@17
    if-ne v0, v1, :cond_1

    #@19
    .line 166
    new-instance v0, Ljava/lang/RuntimeException;

    #@1b
    new-instance v1, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v2, "There was an error executing "

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    const-string/jumbo v2, "!"

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@39
    throw v0

    #@3a
    .line 167
    :cond_1
    invoke-virtual {p1}, Landroid/filterfw/core/Filter;->getStatus()I

    #@3d
    move-result v0

    #@3e
    const/4 v1, 0x4

    #@3f
    if-ne v0, v1, :cond_3

    #@41
    .line 168
    iget-boolean v0, p0, Landroid/filterfw/core/SyncRunner;->mLogVerbose:Z

    #@43
    if-eqz v0, :cond_2

    #@45
    const-string/jumbo v0, "SyncRunner"

    #@48
    const-string/jumbo v1, "Scheduling filter wakeup"

    #@4b
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    .line 169
    :cond_2
    invoke-virtual {p1}, Landroid/filterfw/core/Filter;->getSleepDelay()I

    #@51
    move-result v0

    #@52
    invoke-virtual {p0, p1, v0}, Landroid/filterfw/core/SyncRunner;->scheduleFilterWake(Landroid/filterfw/core/Filter;I)V

    #@55
    .line 162
    :cond_3
    return-void
.end method

.method public run()V
    .locals 4

    #@0
    .prologue
    .line 111
    iget-boolean v2, p0, Landroid/filterfw/core/SyncRunner;->mLogVerbose:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    const-string/jumbo v2, "SyncRunner"

    #@7
    const-string/jumbo v3, "Beginning run."

    #@a
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 113
    :cond_0
    invoke-virtual {p0}, Landroid/filterfw/core/SyncRunner;->assertReadyToStep()V

    #@10
    .line 116
    invoke-virtual {p0}, Landroid/filterfw/core/SyncRunner;->beginProcessing()V

    #@13
    .line 117
    invoke-virtual {p0}, Landroid/filterfw/core/SyncRunner;->activateGlContext()Z

    #@16
    move-result v0

    #@17
    .line 120
    .local v0, "glActivated":Z
    const/4 v1, 0x1

    #@18
    .line 121
    :goto_0
    if-eqz v1, :cond_1

    #@1a
    .line 122
    invoke-virtual {p0}, Landroid/filterfw/core/SyncRunner;->performStep()Z

    #@1d
    move-result v1

    #@1e
    .local v1, "keepRunning":Z
    goto :goto_0

    #@1f
    .line 126
    .end local v1    # "keepRunning":Z
    :cond_1
    if-eqz v0, :cond_2

    #@21
    .line 127
    invoke-virtual {p0}, Landroid/filterfw/core/SyncRunner;->deactivateGlContext()V

    #@24
    .line 131
    :cond_2
    iget-object v2, p0, Landroid/filterfw/core/SyncRunner;->mDoneListener:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    #@26
    if-eqz v2, :cond_4

    #@28
    .line 132
    iget-boolean v2, p0, Landroid/filterfw/core/SyncRunner;->mLogVerbose:Z

    #@2a
    if-eqz v2, :cond_3

    #@2c
    const-string/jumbo v2, "SyncRunner"

    #@2f
    const-string/jumbo v3, "Calling completion listener."

    #@32
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@35
    .line 133
    :cond_3
    iget-object v2, p0, Landroid/filterfw/core/SyncRunner;->mDoneListener:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    #@37
    invoke-virtual {p0}, Landroid/filterfw/core/SyncRunner;->determinePostRunState()I

    #@3a
    move-result v3

    #@3b
    invoke-interface {v2, v3}, Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;->onRunnerDone(I)V

    #@3e
    .line 135
    :cond_4
    iget-boolean v2, p0, Landroid/filterfw/core/SyncRunner;->mLogVerbose:Z

    #@40
    if-eqz v2, :cond_5

    #@42
    const-string/jumbo v2, "SyncRunner"

    #@45
    const-string/jumbo v3, "Run complete"

    #@48
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@4b
    .line 110
    :cond_5
    return-void
.end method

.method protected scheduleFilterWake(Landroid/filterfw/core/Filter;I)V
    .locals 7
    .param p1, "filter"    # Landroid/filterfw/core/Filter;
    .param p2, "delay"    # I

    #@0
    .prologue
    .line 175
    iget-object v2, p0, Landroid/filterfw/core/SyncRunner;->mWakeCondition:Landroid/os/ConditionVariable;

    #@2
    invoke-virtual {v2}, Landroid/os/ConditionVariable;->close()V

    #@5
    .line 178
    move-object v1, p1

    #@6
    .line 179
    .local v1, "filterToSchedule":Landroid/filterfw/core/Filter;
    iget-object v0, p0, Landroid/filterfw/core/SyncRunner;->mWakeCondition:Landroid/os/ConditionVariable;

    #@8
    .line 181
    .local v0, "conditionToWake":Landroid/os/ConditionVariable;
    iget-object v2, p0, Landroid/filterfw/core/SyncRunner;->mWakeExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    #@a
    new-instance v3, Landroid/filterfw/core/SyncRunner$1;

    #@c
    invoke-direct {v3, p0, v1, v0}, Landroid/filterfw/core/SyncRunner$1;-><init>(Landroid/filterfw/core/SyncRunner;Landroid/filterfw/core/Filter;Landroid/os/ConditionVariable;)V

    #@f
    .line 187
    int-to-long v4, p2

    #@10
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    #@12
    .line 181
    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    #@15
    .line 173
    return-void
.end method

.method public setDoneCallback(Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    #@0
    .prologue
    .line 145
    iput-object p1, p0, Landroid/filterfw/core/SyncRunner;->mDoneListener:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    #@2
    .line 144
    return-void
.end method

.method public step()I
    .locals 2

    #@0
    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/filterfw/core/SyncRunner;->assertReadyToStep()V

    #@3
    .line 91
    invoke-virtual {p0}, Landroid/filterfw/core/SyncRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/filterfw/core/FilterGraph;->isReady()Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 92
    new-instance v0, Ljava/lang/RuntimeException;

    #@f
    const-string/jumbo v1, "Trying to process graph that is not open!"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 94
    :cond_0
    invoke-virtual {p0}, Landroid/filterfw/core/SyncRunner;->performStep()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1

    #@1c
    const/4 v0, 0x1

    #@1d
    :goto_0
    return v0

    #@1e
    :cond_1
    invoke-virtual {p0}, Landroid/filterfw/core/SyncRunner;->determinePostRunState()I

    #@21
    move-result v0

    #@22
    goto :goto_0
.end method

.method public stop()V
    .locals 2

    #@0
    .prologue
    .line 150
    new-instance v0, Ljava/lang/RuntimeException;

    #@2
    const-string/jumbo v1, "SyncRunner does not support stopping a graph!"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method protected waitUntilWake()V
    .locals 1

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Landroid/filterfw/core/SyncRunner;->mWakeCondition:Landroid/os/ConditionVariable;

    #@2
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    #@5
    .line 158
    return-void
.end method
