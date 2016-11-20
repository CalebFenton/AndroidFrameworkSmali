.class public abstract Ljava/util/concurrent/AbstractExecutorService;
.super Ljava/lang/Object;
.source "AbstractExecutorService.java"

# interfaces
.implements Ljava/util/concurrent/ExecutorService;


# static fields
.field static final synthetic -assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/util/concurrent/AbstractExecutorService;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Ljava/util/concurrent/AbstractExecutorService;->-assertionsDisabled:Z

    #@b
    .line 48
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static cancelAll(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 275
    .local p0, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->cancelAll(Ljava/util/ArrayList;I)V

    #@4
    .line 274
    return-void
.end method

.method private static cancelAll(Ljava/util/ArrayList;I)V
    .locals 3
    .param p1, "j"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 280
    .local p0, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    #@3
    move-result v0

    #@4
    .local v0, "size":I
    :goto_0
    if-ge p1, v0, :cond_0

    #@6
    .line 281
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Ljava/util/concurrent/Future;

    #@c
    const/4 v2, 0x1

    #@d
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    #@10
    .line 280
    add-int/lit8 p1, p1, 0x1

    #@12
    goto :goto_0

    #@13
    .line 279
    :cond_0
    return-void
.end method

.method private doInvokeAny(Ljava/util/Collection;ZJ)Ljava/lang/Object;
    .locals 17
    .param p2, "timed"    # Z
    .param p3, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;ZJ)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    #@0
    .prologue
    .line 121
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    if-nez p1, :cond_0

    #@2
    .line 122
    new-instance v14, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v14

    #@8
    .line 123
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    #@b
    move-result v12

    #@c
    .line 124
    .local v12, "ntasks":I
    if-nez v12, :cond_1

    #@e
    .line 125
    new-instance v14, Ljava/lang/IllegalArgumentException;

    #@10
    invoke-direct {v14}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@13
    throw v14

    #@14
    .line 126
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    #@16
    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    #@19
    .line 128
    .local v10, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    new-instance v3, Ljava/util/concurrent/ExecutorCompletionService;

    #@1b
    move-object/from16 v0, p0

    #@1d
    invoke-direct {v3, v0}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    #@20
    .line 139
    .local v3, "ecs":Ljava/util/concurrent/ExecutorCompletionService;, "Ljava/util/concurrent/ExecutorCompletionService<TT;>;"
    const/4 v6, 0x0

    #@21
    .line 140
    .local v6, "ee":Ljava/util/concurrent/ExecutionException;
    if-eqz p2, :cond_3

    #@23
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@26
    move-result-wide v14

    #@27
    add-long v4, v14, p3

    #@29
    .line 141
    .local v4, "deadline":J
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@2c
    move-result-object v11

    #@2d
    .line 144
    .local v11, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30
    move-result-object v14

    #@31
    check-cast v14, Ljava/util/concurrent/Callable;

    #@33
    invoke-virtual {v3, v14}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    #@36
    move-result-object v14

    #@37
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    .line 145
    add-int/lit8 v12, v12, -0x1

    #@3c
    .line 146
    const/4 v2, 0x1

    #@3d
    .local v2, "active":I
    move-object v7, v6

    #@3e
    .line 149
    .end local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .local v7, "ee":Ljava/util/concurrent/ExecutionException;
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/concurrent/ExecutorCompletionService;->poll()Ljava/util/concurrent/Future;

    #@41
    move-result-object v9

    #@42
    .line 150
    .local v9, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    if-nez v9, :cond_2

    #@44
    .line 151
    if-lez v12, :cond_4

    #@46
    .line 152
    add-int/lit8 v12, v12, -0x1

    #@48
    .line 153
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4b
    move-result-object v14

    #@4c
    check-cast v14, Ljava/util/concurrent/Callable;

    #@4e
    invoke-virtual {v3, v14}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    #@51
    move-result-object v14

    #@52
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@55
    .line 154
    add-int/lit8 v2, v2, 0x1

    #@57
    .line 167
    :cond_2
    :goto_2
    if-eqz v9, :cond_9

    #@59
    .line 168
    add-int/lit8 v2, v2, -0x1

    #@5b
    .line 170
    :try_start_2
    invoke-interface {v9}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@5e
    move-result-object v14

    #@5f
    .line 184
    invoke-static {v10}, Ljava/util/concurrent/AbstractExecutorService;->cancelAll(Ljava/util/ArrayList;)V

    #@62
    .line 170
    return-object v14

    #@63
    .line 140
    .end local v2    # "active":I
    .end local v4    # "deadline":J
    .end local v7    # "ee":Ljava/util/concurrent/ExecutionException;
    .end local v9    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .restart local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    :cond_3
    const-wide/16 v4, 0x0

    #@65
    .restart local v4    # "deadline":J
    goto :goto_0

    #@66
    .line 156
    .end local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v2    # "active":I
    .restart local v7    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v9    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .restart local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    :cond_4
    if-nez v2, :cond_5

    #@68
    .line 179
    if-nez v7, :cond_8

    #@6a
    .line 180
    :try_start_3
    new-instance v6, Ljava/util/concurrent/ExecutionException;

    #@6c
    invoke-direct {v6}, Ljava/util/concurrent/ExecutionException;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@6f
    .line 181
    .end local v7    # "ee":Ljava/util/concurrent/ExecutionException;
    .local v6, "ee":Ljava/util/concurrent/ExecutionException;
    :goto_3
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@70
    .line 183
    .end local v2    # "active":I
    .end local v4    # "deadline":J
    .end local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .end local v9    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    :catchall_0
    move-exception v14

    #@71
    .line 184
    :goto_4
    invoke-static {v10}, Ljava/util/concurrent/AbstractExecutorService;->cancelAll(Ljava/util/ArrayList;)V

    #@74
    .line 183
    throw v14

    #@75
    .line 158
    .restart local v2    # "active":I
    .restart local v4    # "deadline":J
    .restart local v7    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v9    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .restart local v11    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    :cond_5
    if-eqz p2, :cond_7

    #@77
    .line 159
    :try_start_5
    sget-object v14, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@79
    move-wide/from16 v0, p3

    #@7b
    invoke-virtual {v3, v0, v1, v14}, Ljava/util/concurrent/ExecutorCompletionService;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    #@7e
    move-result-object v9

    #@7f
    .line 160
    if-nez v9, :cond_6

    #@81
    .line 161
    new-instance v14, Ljava/util/concurrent/TimeoutException;

    #@83
    invoke-direct {v14}, Ljava/util/concurrent/TimeoutException;-><init>()V

    #@86
    throw v14

    #@87
    .line 183
    .end local v9    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :catchall_1
    move-exception v14

    #@88
    move-object v6, v7

    #@89
    .end local v7    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    goto :goto_4

    #@8a
    .line 162
    .end local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v7    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v9    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@8d
    move-result-wide v14

    #@8e
    sub-long p3, v4, v14

    #@90
    goto :goto_2

    #@91
    .line 165
    :cond_7
    invoke-virtual {v3}, Ljava/util/concurrent/ExecutorCompletionService;->take()Ljava/util/concurrent/Future;

    #@94
    move-result-object v9

    #@95
    goto :goto_2

    #@96
    .line 173
    :catch_0
    move-exception v13

    #@97
    .line 174
    .local v13, "rex":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/util/concurrent/ExecutionException;

    #@99
    invoke-direct {v6, v13}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@9c
    .end local v7    # "ee":Ljava/util/concurrent/ExecutionException;
    .end local v13    # "rex":Ljava/lang/RuntimeException;
    .restart local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    :goto_5
    move-object v7, v6

    #@9d
    .end local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v7    # "ee":Ljava/util/concurrent/ExecutionException;
    goto :goto_1

    #@9e
    .line 171
    :catch_1
    move-exception v8

    #@9f
    .line 172
    .local v8, "eex":Ljava/util/concurrent/ExecutionException;
    move-object v6, v8

    #@a0
    .end local v7    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    goto :goto_5

    #@a1
    .end local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .end local v8    # "eex":Ljava/util/concurrent/ExecutionException;
    .restart local v7    # "ee":Ljava/util/concurrent/ExecutionException;
    :cond_8
    move-object v6, v7

    #@a2
    .end local v7    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    goto :goto_3

    #@a3
    .end local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v7    # "ee":Ljava/util/concurrent/ExecutionException;
    :cond_9
    move-object v6, v7

    #@a4
    .end local v7    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v6    # "ee":Ljava/util/concurrent/ExecutionException;
    goto :goto_5
.end method


# virtual methods
.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 206
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    if-nez p1, :cond_0

    #@2
    .line 207
    new-instance v10, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v10}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v10

    #@8
    .line 208
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    #@a
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@d
    move-result v10

    #@e
    invoke-direct {v2, v10}, Ljava/util/ArrayList;-><init>(I)V

    #@11
    .line 210
    .local v2, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v9

    #@15
    .local v9, "t$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v10

    #@19
    if-eqz v10, :cond_1

    #@1b
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v8

    #@1f
    check-cast v8, Ljava/util/concurrent/Callable;

    #@21
    .line 211
    .local v8, "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-virtual {p0, v8}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;

    #@24
    move-result-object v1

    #@25
    .line 212
    .local v1, "f":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<TT;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@28
    .line 213
    invoke-virtual {p0, v1}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    goto :goto_0

    #@2c
    .line 224
    .end local v1    # "f":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<TT;>;"
    .end local v8    # "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .end local v9    # "t$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v7

    #@2d
    .line 225
    .local v7, "t":Ljava/lang/Throwable;
    invoke-static {v2}, Ljava/util/concurrent/AbstractExecutorService;->cancelAll(Ljava/util/ArrayList;)V

    #@30
    .line 226
    throw v7

    #@31
    .line 215
    .end local v7    # "t":Ljava/lang/Throwable;
    .restart local v9    # "t$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v3, 0x0

    #@32
    .local v3, "i":I
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@35
    move-result v6

    #@36
    .local v6, "size":I
    :goto_1
    if-ge v3, v6, :cond_3

    #@38
    .line 216
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v0

    #@3c
    check-cast v0, Ljava/util/concurrent/Future;

    #@3e
    .line 217
    .local v0, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@41
    move-result v10

    #@42
    if-nez v10, :cond_2

    #@44
    .line 218
    :try_start_2
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    #@47
    .line 215
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@49
    goto :goto_1

    #@4a
    .line 220
    :catch_1
    move-exception v5

    #@4b
    .local v5, "ignore":Ljava/util/concurrent/ExecutionException;
    goto :goto_2

    #@4c
    .line 219
    .end local v5    # "ignore":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v4

    #@4d
    .local v4, "ignore":Ljava/util/concurrent/CancellationException;
    goto :goto_2

    #@4e
    .line 223
    .end local v0    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v4    # "ignore":Ljava/util/concurrent/CancellationException;
    :cond_3
    return-object v2
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 24
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/concurrent/Future",
            "<TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 233
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    if-nez p1, :cond_0

    #@2
    .line 234
    new-instance v19, Ljava/lang/NullPointerException;

    #@4
    invoke-direct/range {v19 .. v19}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v19

    #@8
    .line 235
    :cond_0
    move-object/from16 v0, p4

    #@a
    move-wide/from16 v1, p2

    #@c
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@f
    move-result-wide v12

    #@10
    .line 236
    .local v12, "nanos":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@13
    move-result-wide v20

    #@14
    add-long v4, v20, v12

    #@16
    .line 237
    .local v4, "deadline":J
    new-instance v7, Ljava/util/ArrayList;

    #@18
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    #@1b
    move-result v19

    #@1c
    move/from16 v0, v19

    #@1e
    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@21
    .line 238
    .local v7, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    const/4 v11, 0x0

    #@22
    .line 240
    .local v11, "j":I
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@25
    move-result-object v17

    #@26
    .local v17, "t$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v19

    #@2a
    if-eqz v19, :cond_1

    #@2c
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v16

    #@30
    check-cast v16, Ljava/util/concurrent/Callable;

    #@32
    .line 241
    .local v16, "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    move-object/from16 v0, p0

    #@34
    move-object/from16 v1, v16

    #@36
    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;

    #@39
    move-result-object v19

    #@3a
    move-object/from16 v0, v19

    #@3c
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    goto :goto_0

    #@40
    .line 265
    .end local v16    # "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .end local v17    # "t$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v15

    #@41
    .line 266
    .local v15, "t":Ljava/lang/Throwable;
    invoke-static {v7}, Ljava/util/concurrent/AbstractExecutorService;->cancelAll(Ljava/util/ArrayList;)V

    #@44
    .line 267
    throw v15

    #@45
    .line 243
    .end local v15    # "t":Ljava/lang/Throwable;
    .restart local v17    # "t$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    #@48
    move-result v14

    #@49
    .line 247
    .local v14, "size":I
    const/4 v8, 0x0

    #@4a
    .local v8, "i":I
    :goto_1
    if-ge v8, v14, :cond_4

    #@4c
    .line 248
    if-nez v8, :cond_2

    #@4e
    move-wide/from16 v20, v12

    #@50
    :goto_2
    const-wide/16 v22, 0x0

    #@52
    cmp-long v19, v20, v22

    #@54
    if-gtz v19, :cond_3

    #@56
    .line 270
    :goto_3
    invoke-static {v7, v11}, Ljava/util/concurrent/AbstractExecutorService;->cancelAll(Ljava/util/ArrayList;I)V

    #@59
    .line 271
    return-object v7

    #@5a
    .line 248
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@5d
    move-result-wide v20

    #@5e
    sub-long v20, v4, v20

    #@60
    goto :goto_2

    #@61
    .line 250
    :cond_3
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@64
    move-result-object v19

    #@65
    check-cast v19, Ljava/lang/Runnable;

    #@67
    move-object/from16 v0, p0

    #@69
    move-object/from16 v1, v19

    #@6b
    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    #@6e
    .line 247
    add-int/lit8 v8, v8, 0x1

    #@70
    goto :goto_1

    #@71
    .line 253
    :cond_4
    :goto_4
    if-ge v11, v14, :cond_6

    #@73
    .line 254
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@76
    move-result-object v6

    #@77
    check-cast v6, Ljava/util/concurrent/Future;

    #@79
    .line 255
    .local v6, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v6}, Ljava/util/concurrent/Future;->isDone()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    #@7c
    move-result v19

    #@7d
    if-nez v19, :cond_5

    #@7f
    .line 256
    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@82
    move-result-wide v20

    #@83
    sub-long v20, v4, v20

    #@85
    sget-object v19, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@87
    move-wide/from16 v0, v20

    #@89
    move-object/from16 v2, v19

    #@8b
    invoke-interface {v6, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    #@8e
    .line 253
    :cond_5
    :goto_5
    add-int/lit8 v11, v11, 0x1

    #@90
    goto :goto_4

    #@91
    .line 264
    .end local v6    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :cond_6
    return-object v7

    #@92
    .line 257
    .restart local v6    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :catch_1
    move-exception v9

    #@93
    .local v9, "ignore":Ljava/util/concurrent/CancellationException;
    goto :goto_5

    #@94
    .line 258
    .end local v9    # "ignore":Ljava/util/concurrent/CancellationException;
    :catch_2
    move-exception v10

    #@95
    .local v10, "ignore":Ljava/util/concurrent/ExecutionException;
    goto :goto_5

    #@96
    .line 259
    .end local v10    # "ignore":Ljava/util/concurrent/ExecutionException;
    :catch_3
    move-exception v18

    #@97
    .local v18, "timedOut":Ljava/util/concurrent/TimeoutException;
    goto :goto_3
.end method

.method public invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    #@0
    .prologue
    .line 191
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const-wide/16 v2, 0x0

    #@2
    const/4 v1, 0x0

    #@3
    :try_start_0
    invoke-direct {p0, p1, v1, v2, v3}, Ljava/util/concurrent/AbstractExecutorService;->doInvokeAny(Ljava/util/Collection;ZJ)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v1

    #@7
    return-object v1

    #@8
    .line 192
    :catch_0
    move-exception v0

    #@9
    .line 193
    .local v0, "cannotHappen":Ljava/util/concurrent/TimeoutException;
    sget-boolean v1, Ljava/util/concurrent/AbstractExecutorService;->-assertionsDisabled:Z

    #@b
    if-nez v1, :cond_0

    #@d
    new-instance v1, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v1

    #@13
    .line 194
    :cond_0
    const/4 v1, 0x0

    #@14
    return-object v1
.end method

.method public invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 4
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/concurrent/Callable",
            "<TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    #@0
    .prologue
    .line 201
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@3
    move-result-wide v0

    #@4
    const/4 v2, 0x1

    #@5
    invoke-direct {p0, p1, v2, v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->doInvokeAny(Ljava/util/Collection;ZJ)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method protected newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 64
    .local p2, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/concurrent/FutureTask;

    #@2
    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    #@5
    return-object v0
.end method

.method protected newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/RunnableFuture",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 79
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Ljava/util/concurrent/FutureTask;

    #@2
    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    #@5
    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 87
    if-nez p1, :cond_0

    #@3
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v1

    #@9
    .line 88
    :cond_0
    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;

    #@c
    move-result-object v0

    #@d
    .line 89
    .local v0, "ftask":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<Ljava/lang/Void;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    #@10
    .line 90
    return-object v0
.end method

.method public submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 98
    .local p2, "result":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 99
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;

    #@b
    move-result-object v0

    #@c
    .line 100
    .local v0, "ftask":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    #@f
    .line 101
    return-object v0
.end method

.method public submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 109
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 110
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;

    #@b
    move-result-object v0

    #@c
    .line 111
    .local v0, "ftask":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    #@f
    .line 112
    return-object v0
.end method
