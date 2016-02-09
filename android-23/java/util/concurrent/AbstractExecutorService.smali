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
    .line 43
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
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private doInvokeAny(Ljava/util/Collection;ZJ)Ljava/lang/Object;
    .locals 21
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
    .line 114
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    if-nez p1, :cond_0

    #@2
    .line 115
    new-instance v18, Ljava/lang/NullPointerException;

    #@4
    invoke-direct/range {v18 .. v18}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v18

    #@8
    .line 116
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    #@b
    move-result v15

    #@c
    .line 117
    .local v15, "ntasks":I
    if-nez v15, :cond_1

    #@e
    .line 118
    new-instance v18, Ljava/lang/IllegalArgumentException;

    #@10
    invoke-direct/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@13
    throw v18

    #@14
    .line 119
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    #@16
    invoke-direct {v12, v15}, Ljava/util/ArrayList;-><init>(I)V

    #@19
    .line 121
    .local v12, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    new-instance v5, Ljava/util/concurrent/ExecutorCompletionService;

    #@1b
    move-object/from16 v0, p0

    #@1d
    invoke-direct {v5, v0}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    #@20
    .line 132
    .local v5, "ecs":Ljava/util/concurrent/ExecutorCompletionService;, "Ljava/util/concurrent/ExecutorCompletionService<TT;>;"
    const/4 v8, 0x0

    #@21
    .line 133
    .local v8, "ee":Ljava/util/concurrent/ExecutionException;
    if-eqz p2, :cond_3

    #@23
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@26
    move-result-wide v18

    #@27
    add-long v6, v18, p3

    #@29
    .line 134
    .local v6, "deadline":J
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@2c
    move-result-object v14

    #@2d
    .line 137
    .local v14, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@30
    move-result-object v18

    #@31
    check-cast v18, Ljava/util/concurrent/Callable;

    #@33
    move-object/from16 v0, v18

    #@35
    invoke-virtual {v5, v0}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    #@38
    move-result-object v18

    #@39
    move-object/from16 v0, v18

    #@3b
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    .line 138
    add-int/lit8 v15, v15, -0x1

    #@40
    .line 139
    const/4 v4, 0x1

    #@41
    .local v4, "active":I
    move-object v9, v8

    #@42
    .line 142
    .end local v8    # "ee":Ljava/util/concurrent/ExecutionException;
    .local v9, "ee":Ljava/util/concurrent/ExecutionException;
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/util/concurrent/ExecutorCompletionService;->poll()Ljava/util/concurrent/Future;

    #@45
    move-result-object v11

    #@46
    .line 143
    .local v11, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    if-nez v11, :cond_2

    #@48
    .line 144
    if-lez v15, :cond_4

    #@4a
    .line 145
    add-int/lit8 v15, v15, -0x1

    #@4c
    .line 146
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4f
    move-result-object v18

    #@50
    check-cast v18, Ljava/util/concurrent/Callable;

    #@52
    move-object/from16 v0, v18

    #@54
    invoke-virtual {v5, v0}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    #@57
    move-result-object v18

    #@58
    move-object/from16 v0, v18

    #@5a
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@5d
    .line 147
    add-int/lit8 v4, v4, 0x1

    #@5f
    .line 160
    :cond_2
    :goto_2
    if-eqz v11, :cond_b

    #@61
    .line 161
    add-int/lit8 v4, v4, -0x1

    #@63
    .line 163
    :try_start_2
    invoke-interface {v11}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@66
    move-result-object v19

    #@67
    .line 177
    const/4 v13, 0x0

    #@68
    .local v13, "i":I
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@6b
    move-result v17

    #@6c
    .local v17, "size":I
    :goto_3
    move/from16 v0, v17

    #@6e
    if-ge v13, v0, :cond_8

    #@70
    .line 178
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@73
    move-result-object v18

    #@74
    check-cast v18, Ljava/util/concurrent/Future;

    #@76
    const/16 v20, 0x1

    #@78
    move-object/from16 v0, v18

    #@7a
    move/from16 v1, v20

    #@7c
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    #@7f
    .line 177
    add-int/lit8 v13, v13, 0x1

    #@81
    goto :goto_3

    #@82
    .line 133
    .end local v4    # "active":I
    .end local v6    # "deadline":J
    .end local v9    # "ee":Ljava/util/concurrent/ExecutionException;
    .end local v11    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v13    # "i":I
    .end local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .end local v17    # "size":I
    .restart local v8    # "ee":Ljava/util/concurrent/ExecutionException;
    :cond_3
    const-wide/16 v6, 0x0

    #@84
    .restart local v6    # "deadline":J
    goto :goto_0

    #@85
    .line 149
    .end local v8    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v4    # "active":I
    .restart local v9    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v11    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .restart local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    :cond_4
    if-nez v4, :cond_5

    #@87
    .line 172
    if-nez v9, :cond_a

    #@89
    .line 173
    :try_start_3
    new-instance v8, Ljava/util/concurrent/ExecutionException;

    #@8b
    invoke-direct {v8}, Ljava/util/concurrent/ExecutionException;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@8e
    .line 174
    .end local v9    # "ee":Ljava/util/concurrent/ExecutionException;
    .local v8, "ee":Ljava/util/concurrent/ExecutionException;
    :goto_4
    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@8f
    .line 176
    .end local v4    # "active":I
    .end local v6    # "deadline":J
    .end local v8    # "ee":Ljava/util/concurrent/ExecutionException;
    .end local v11    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    :catchall_0
    move-exception v18

    #@90
    move-object/from16 v19, v18

    #@92
    .line 177
    :goto_5
    const/4 v13, 0x0

    #@93
    .restart local v13    # "i":I
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    #@96
    move-result v17

    #@97
    .restart local v17    # "size":I
    :goto_6
    move/from16 v0, v17

    #@99
    if-ge v13, v0, :cond_9

    #@9b
    .line 178
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9e
    move-result-object v18

    #@9f
    check-cast v18, Ljava/util/concurrent/Future;

    #@a1
    const/16 v20, 0x1

    #@a3
    move-object/from16 v0, v18

    #@a5
    move/from16 v1, v20

    #@a7
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    #@aa
    .line 177
    add-int/lit8 v13, v13, 0x1

    #@ac
    goto :goto_6

    #@ad
    .line 151
    .end local v13    # "i":I
    .end local v17    # "size":I
    .restart local v4    # "active":I
    .restart local v6    # "deadline":J
    .restart local v9    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v11    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .restart local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    :cond_5
    if-eqz p2, :cond_7

    #@af
    .line 152
    :try_start_5
    sget-object v18, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@b1
    move-wide/from16 v0, p3

    #@b3
    move-object/from16 v2, v18

    #@b5
    invoke-virtual {v5, v0, v1, v2}, Ljava/util/concurrent/ExecutorCompletionService;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    #@b8
    move-result-object v11

    #@b9
    .line 153
    if-nez v11, :cond_6

    #@bb
    .line 154
    new-instance v18, Ljava/util/concurrent/TimeoutException;

    #@bd
    invoke-direct/range {v18 .. v18}, Ljava/util/concurrent/TimeoutException;-><init>()V

    #@c0
    throw v18

    #@c1
    .line 176
    .end local v11    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :catchall_1
    move-exception v18

    #@c2
    move-object/from16 v19, v18

    #@c4
    move-object v8, v9

    #@c5
    .end local v9    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v8    # "ee":Ljava/util/concurrent/ExecutionException;
    goto :goto_5

    #@c6
    .line 155
    .end local v8    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v9    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v11    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@c9
    move-result-wide v18

    #@ca
    sub-long p3, v6, v18

    #@cc
    goto :goto_2

    #@cd
    .line 158
    :cond_7
    invoke-virtual {v5}, Ljava/util/concurrent/ExecutorCompletionService;->take()Ljava/util/concurrent/Future;

    #@d0
    move-result-object v11

    #@d1
    goto :goto_2

    #@d2
    .line 163
    .restart local v13    # "i":I
    .restart local v17    # "size":I
    :cond_8
    return-object v19

    #@d3
    .line 166
    .end local v13    # "i":I
    .end local v17    # "size":I
    :catch_0
    move-exception v16

    #@d4
    .line 167
    .local v16, "rex":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/util/concurrent/ExecutionException;

    #@d6
    move-object/from16 v0, v16

    #@d8
    invoke-direct {v8, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@db
    .end local v9    # "ee":Ljava/util/concurrent/ExecutionException;
    .end local v16    # "rex":Ljava/lang/RuntimeException;
    .restart local v8    # "ee":Ljava/util/concurrent/ExecutionException;
    :goto_7
    move-object v9, v8

    #@dc
    .end local v8    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v9    # "ee":Ljava/util/concurrent/ExecutionException;
    goto/16 :goto_1

    #@de
    .line 164
    :catch_1
    move-exception v10

    #@df
    .line 165
    .local v10, "eex":Ljava/util/concurrent/ExecutionException;
    move-object v8, v10

    #@e0
    .end local v9    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v8    # "ee":Ljava/util/concurrent/ExecutionException;
    goto :goto_7

    #@e1
    .line 176
    .end local v4    # "active":I
    .end local v6    # "deadline":J
    .end local v8    # "ee":Ljava/util/concurrent/ExecutionException;
    .end local v10    # "eex":Ljava/util/concurrent/ExecutionException;
    .end local v11    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .restart local v13    # "i":I
    .restart local v17    # "size":I
    :cond_9
    throw v19

    #@e2
    .end local v13    # "i":I
    .end local v17    # "size":I
    .restart local v4    # "active":I
    .restart local v6    # "deadline":J
    .restart local v9    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v11    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .restart local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    :cond_a
    move-object v8, v9

    #@e3
    .end local v9    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v8    # "ee":Ljava/util/concurrent/ExecutionException;
    goto :goto_4

    #@e4
    .end local v8    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v9    # "ee":Ljava/util/concurrent/ExecutionException;
    :cond_b
    move-object v8, v9

    #@e5
    .end local v9    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v8    # "ee":Ljava/util/concurrent/ExecutionException;
    goto :goto_7
.end method


# virtual methods
.method public invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 13
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
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const/4 v12, 0x1

    #@1
    .line 200
    if-nez p1, :cond_0

    #@3
    .line 201
    new-instance v10, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v10}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v10

    #@9
    .line 202
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    #@b
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    #@e
    move-result v10

    #@f
    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(I)V

    #@12
    .line 203
    .local v3, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    const/4 v0, 0x0

    #@13
    .line 205
    .local v0, "done":Z
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v9

    #@17
    .local v9, "t$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v10

    #@1b
    if-eqz v10, :cond_1

    #@1d
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v8

    #@21
    check-cast v8, Ljava/util/concurrent/Callable;

    #@23
    .line 206
    .local v8, "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-virtual {p0, v8}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;

    #@26
    move-result-object v2

    #@27
    .line 207
    .local v2, "f":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<TT;>;"
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2a
    .line 208
    invoke-virtual {p0, v2}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    goto :goto_0

    #@2e
    .line 222
    .end local v2    # "f":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<TT;>;"
    .end local v8    # "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .end local v9    # "t$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v10

    #@2f
    move-object v11, v10

    #@30
    .line 223
    if-nez v0, :cond_5

    #@32
    .line 224
    const/4 v4, 0x0

    #@33
    .local v4, "i":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@36
    move-result v7

    #@37
    .local v7, "size":I
    :goto_1
    if-ge v4, v7, :cond_5

    #@39
    .line 225
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3c
    move-result-object v10

    #@3d
    check-cast v10, Ljava/util/concurrent/Future;

    #@3f
    invoke-interface {v10, v12}, Ljava/util/concurrent/Future;->cancel(Z)Z

    #@42
    .line 224
    add-int/lit8 v4, v4, 0x1

    #@44
    goto :goto_1

    #@45
    .line 210
    .end local v4    # "i":I
    .end local v7    # "size":I
    .restart local v9    # "t$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v4, 0x0

    #@46
    .restart local v4    # "i":I
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@49
    move-result v7

    #@4a
    .restart local v7    # "size":I
    :goto_2
    if-ge v4, v7, :cond_3

    #@4c
    .line 211
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@4f
    move-result-object v1

    #@50
    check-cast v1, Ljava/util/concurrent/Future;

    #@52
    .line 212
    .local v1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    move-result v10

    #@56
    if-nez v10, :cond_2

    #@58
    .line 214
    :try_start_2
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5b
    .line 210
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    #@5d
    goto :goto_2

    #@5e
    .line 216
    :catch_0
    move-exception v6

    #@5f
    .local v6, "ignore":Ljava/util/concurrent/ExecutionException;
    goto :goto_3

    #@60
    .line 215
    .end local v6    # "ignore":Ljava/util/concurrent/ExecutionException;
    :catch_1
    move-exception v5

    #@61
    .local v5, "ignore":Ljava/util/concurrent/CancellationException;
    goto :goto_3

    #@62
    .line 220
    .end local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v5    # "ignore":Ljava/util/concurrent/CancellationException;
    :cond_3
    const/4 v0, 0x1

    #@63
    .line 223
    if-nez v0, :cond_4

    #@65
    .line 224
    const/4 v4, 0x0

    #@66
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@69
    move-result v7

    #@6a
    :goto_4
    if-ge v4, v7, :cond_4

    #@6c
    .line 225
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@6f
    move-result-object v10

    #@70
    check-cast v10, Ljava/util/concurrent/Future;

    #@72
    invoke-interface {v10, v12}, Ljava/util/concurrent/Future;->cancel(Z)Z

    #@75
    .line 224
    add-int/lit8 v4, v4, 0x1

    #@77
    goto :goto_4

    #@78
    .line 221
    :cond_4
    return-object v3

    #@79
    .line 222
    .end local v4    # "i":I
    .end local v7    # "size":I
    .end local v9    # "t$iterator":Ljava/util/Iterator;
    :cond_5
    throw v11
.end method

.method public invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 22
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
    .line 232
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    if-nez p1, :cond_0

    #@2
    .line 233
    new-instance v18, Ljava/lang/NullPointerException;

    #@4
    invoke-direct/range {v18 .. v18}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v18

    #@8
    .line 234
    :cond_0
    move-object/from16 v0, p4

    #@a
    move-wide/from16 v1, p2

    #@c
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    #@f
    move-result-wide v12

    #@10
    .line 235
    .local v12, "nanos":J
    new-instance v8, Ljava/util/ArrayList;

    #@12
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    #@15
    move-result v18

    #@16
    move/from16 v0, v18

    #@18
    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@1b
    .line 236
    .local v8, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    const/4 v6, 0x0

    #@1c
    .line 238
    .local v6, "done":Z
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v16

    #@20
    .local v16, "t$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v18

    #@24
    if-eqz v18, :cond_1

    #@26
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v15

    #@2a
    check-cast v15, Ljava/util/concurrent/Callable;

    #@2c
    .line 239
    .local v15, "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    move-object/from16 v0, p0

    #@2e
    invoke-virtual {v0, v15}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;

    #@31
    move-result-object v18

    #@32
    move-object/from16 v0, v18

    #@34
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    goto :goto_0

    #@38
    .line 270
    .end local v15    # "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .end local v16    # "t$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v18

    #@39
    move-object/from16 v19, v18

    #@3b
    .line 271
    if-nez v6, :cond_b

    #@3d
    .line 272
    const/4 v9, 0x0

    #@3e
    .local v9, "i":I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@41
    move-result v14

    #@42
    .local v14, "size":I
    :goto_1
    if-ge v9, v14, :cond_b

    #@44
    .line 273
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@47
    move-result-object v18

    #@48
    check-cast v18, Ljava/util/concurrent/Future;

    #@4a
    const/16 v20, 0x1

    #@4c
    move-object/from16 v0, v18

    #@4e
    move/from16 v1, v20

    #@50
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    #@53
    .line 272
    add-int/lit8 v9, v9, 0x1

    #@55
    goto :goto_1

    #@56
    .line 241
    .end local v9    # "i":I
    .end local v14    # "size":I
    .restart local v16    # "t$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@59
    move-result-wide v18

    #@5a
    add-long v4, v18, v12

    #@5c
    .line 242
    .local v4, "deadline":J
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@5f
    move-result v14

    #@60
    .line 246
    .restart local v14    # "size":I
    const/4 v9, 0x0

    #@61
    .restart local v9    # "i":I
    :goto_2
    if-ge v9, v14, :cond_4

    #@63
    .line 247
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@66
    move-result-object v18

    #@67
    check-cast v18, Ljava/lang/Runnable;

    #@69
    move-object/from16 v0, p0

    #@6b
    move-object/from16 v1, v18

    #@6d
    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    #@70
    .line 248
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@73
    move-result-wide v18

    #@74
    sub-long v12, v4, v18

    #@76
    .line 249
    const-wide/16 v18, 0x0

    #@78
    cmp-long v18, v12, v18

    #@7a
    if-gtz v18, :cond_3

    #@7c
    .line 271
    if-nez v6, :cond_2

    #@7e
    .line 272
    const/4 v9, 0x0

    #@7f
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@82
    move-result v14

    #@83
    :goto_3
    if-ge v9, v14, :cond_2

    #@85
    .line 273
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@88
    move-result-object v18

    #@89
    check-cast v18, Ljava/util/concurrent/Future;

    #@8b
    const/16 v19, 0x1

    #@8d
    invoke-interface/range {v18 .. v19}, Ljava/util/concurrent/Future;->cancel(Z)Z

    #@90
    .line 272
    add-int/lit8 v9, v9, 0x1

    #@92
    goto :goto_3

    #@93
    .line 250
    :cond_2
    return-object v8

    #@94
    .line 246
    :cond_3
    add-int/lit8 v9, v9, 0x1

    #@96
    goto :goto_2

    #@97
    .line 253
    :cond_4
    const/4 v9, 0x0

    #@98
    :goto_4
    if-ge v9, v14, :cond_9

    #@9a
    .line 254
    :try_start_2
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9d
    move-result-object v7

    #@9e
    check-cast v7, Ljava/util/concurrent/Future;

    #@a0
    .line 255
    .local v7, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v7}, Ljava/util/concurrent/Future;->isDone()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a3
    move-result v18

    #@a4
    if-nez v18, :cond_7

    #@a6
    .line 256
    const-wide/16 v18, 0x0

    #@a8
    cmp-long v18, v12, v18

    #@aa
    if-gtz v18, :cond_6

    #@ac
    .line 271
    if-nez v6, :cond_5

    #@ae
    .line 272
    const/4 v9, 0x0

    #@af
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@b2
    move-result v14

    #@b3
    :goto_5
    if-ge v9, v14, :cond_5

    #@b5
    .line 273
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@b8
    move-result-object v18

    #@b9
    check-cast v18, Ljava/util/concurrent/Future;

    #@bb
    const/16 v19, 0x1

    #@bd
    invoke-interface/range {v18 .. v19}, Ljava/util/concurrent/Future;->cancel(Z)Z

    #@c0
    .line 272
    add-int/lit8 v9, v9, 0x1

    #@c2
    goto :goto_5

    #@c3
    .line 257
    :cond_5
    return-object v8

    #@c4
    .line 259
    :cond_6
    :try_start_3
    sget-object v18, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    #@c6
    move-object/from16 v0, v18

    #@c8
    invoke-interface {v7, v12, v13, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@cb
    .line 265
    :goto_6
    :try_start_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@ce
    move-result-wide v18

    #@cf
    sub-long v12, v4, v18

    #@d1
    .line 253
    :cond_7
    add-int/lit8 v9, v9, 0x1

    #@d3
    goto :goto_4

    #@d4
    .line 262
    :catch_0
    move-exception v17

    #@d5
    .line 271
    .local v17, "toe":Ljava/util/concurrent/TimeoutException;
    if-nez v6, :cond_8

    #@d7
    .line 272
    const/4 v9, 0x0

    #@d8
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@db
    move-result v14

    #@dc
    :goto_7
    if-ge v9, v14, :cond_8

    #@de
    .line 273
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e1
    move-result-object v18

    #@e2
    check-cast v18, Ljava/util/concurrent/Future;

    #@e4
    const/16 v19, 0x1

    #@e6
    invoke-interface/range {v18 .. v19}, Ljava/util/concurrent/Future;->cancel(Z)Z

    #@e9
    .line 272
    add-int/lit8 v9, v9, 0x1

    #@eb
    goto :goto_7

    #@ec
    .line 263
    :cond_8
    return-object v8

    #@ed
    .line 268
    .end local v7    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v17    # "toe":Ljava/util/concurrent/TimeoutException;
    :cond_9
    const/4 v6, 0x1

    #@ee
    .line 271
    if-nez v6, :cond_a

    #@f0
    .line 272
    const/4 v9, 0x0

    #@f1
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    #@f4
    move-result v14

    #@f5
    :goto_8
    if-ge v9, v14, :cond_a

    #@f7
    .line 273
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@fa
    move-result-object v18

    #@fb
    check-cast v18, Ljava/util/concurrent/Future;

    #@fd
    const/16 v19, 0x1

    #@ff
    invoke-interface/range {v18 .. v19}, Ljava/util/concurrent/Future;->cancel(Z)Z

    #@102
    .line 272
    add-int/lit8 v9, v9, 0x1

    #@104
    goto :goto_8

    #@105
    .line 269
    :cond_a
    return-object v8

    #@106
    .line 270
    .end local v4    # "deadline":J
    .end local v9    # "i":I
    .end local v14    # "size":I
    .end local v16    # "t$iterator":Ljava/util/Iterator;
    :cond_b
    throw v19

    #@107
    .line 260
    .restart local v4    # "deadline":J
    .restart local v7    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .restart local v9    # "i":I
    .restart local v14    # "size":I
    .restart local v16    # "t$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v10

    #@108
    .local v10, "ignore":Ljava/util/concurrent/CancellationException;
    goto :goto_6

    #@109
    .line 261
    .end local v10    # "ignore":Ljava/util/concurrent/CancellationException;
    :catch_2
    move-exception v11

    #@10a
    .local v11, "ignore":Ljava/util/concurrent/ExecutionException;
    goto :goto_6
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
    .line 185
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
    .line 186
    :catch_0
    move-exception v0

    #@9
    .line 187
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
    .line 188
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
    .line 195
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
    .line 58
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
    .line 72
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
    .line 80
    if-nez p1, :cond_0

    #@3
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v1

    #@9
    .line 81
    :cond_0
    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;

    #@c
    move-result-object v0

    #@d
    .line 82
    .local v0, "ftask":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<Ljava/lang/Void;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    #@10
    .line 83
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
    .line 91
    .local p2, "result":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 92
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;

    #@b
    move-result-object v0

    #@c
    .line 93
    .local v0, "ftask":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    #@f
    .line 94
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
    .line 102
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    if-nez p1, :cond_0

    #@2
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 103
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;

    #@b
    move-result-object v0

    #@c
    .line 104
    .local v0, "ftask":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    #@f
    .line 105
    return-object v0
.end method
