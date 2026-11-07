.class public abstract Ljava/util/concurrent/AbstractExecutorService;
.super Ljava/lang/Object;
.source "AbstractExecutorService.java"

# interfaces
.implements Ljava/util/concurrent/ExecutorService;


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 77
    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o cancelAll(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 307
    .local p0, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->cancelAll(Ljava/util/ArrayList;I)V

    .line 308
    return-void
.end method

.method private static greylist-max-o cancelAll(Ljava/util/ArrayList;I)V
    .registers 5
    .param p1, "j"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 312
    .local p0, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "size":I
    :goto_4
    if-ge p1, v0, :cond_13

    .line 313
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 312
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 314
    .end local v0    # "size":I
    :cond_13
    return-void
.end method

.method private greylist-max-o doInvokeAny(Ljava/util/Collection;ZJ)Ljava/lang/Object;
    .registers 16
    .param p2, "timed"    # Z
    .param p3, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;ZJ)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 155
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    if-eqz p1, :cond_9a

    .line 157
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 158
    .local v0, "ntasks":I
    if-eqz v0, :cond_94

    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 161
    .local v1, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    new-instance v2, Ljava/util/concurrent/ExecutorCompletionService;

    invoke-direct {v2, p0}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 173
    .local v2, "ecs":Ljava/util/concurrent/ExecutorCompletionService;, "Ljava/util/concurrent/ExecutorCompletionService<TT;>;"
    const/4 v3, 0x0

    .line 174
    .local v3, "ee":Ljava/util/concurrent/ExecutionException;
    if-eqz p2, :cond_1e

    :try_start_15
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    add-long/2addr v4, p3

    goto :goto_20

    .line 218
    .end local v3    # "ee":Ljava/util/concurrent/ExecutionException;
    :catchall_1b
    move-exception v3

    goto/16 :goto_90

    .line 174
    .restart local v3    # "ee":Ljava/util/concurrent/ExecutionException;
    :cond_1e
    const-wide/16 v4, 0x0

    .line 175
    .local v4, "deadline":J
    :goto_20
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 178
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/concurrent/Callable;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v0, v0, -0x1

    .line 180
    const/4 v7, 0x1

    .line 183
    .local v7, "active":I
    :goto_34
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutorCompletionService;->poll()Ljava/util/concurrent/Future;

    move-result-object v8

    .line 184
    .local v8, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    if-nez v8, :cond_78

    .line 185
    if-lez v0, :cond_4e

    .line 186
    add-int/lit8 v0, v0, -0x1

    .line 187
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/concurrent/Callable;

    invoke-virtual {v2, v9}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    add-int/lit8 v7, v7, 0x1

    goto :goto_78

    .line 190
    :cond_4e
    if-nez v7, :cond_5b

    .line 191
    nop

    .line 213
    .end local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    if-nez v3, :cond_59

    .line 214
    new-instance v8, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v8}, Ljava/util/concurrent/ExecutionException;-><init>()V

    move-object v3, v8

    .line 215
    :cond_59
    nop

    .end local v0    # "ntasks":I
    .end local v1    # "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    .end local v2    # "ecs":Ljava/util/concurrent/ExecutorCompletionService;, "Ljava/util/concurrent/ExecutorCompletionService<TT;>;"
    .end local p0    # "this":Ljava/util/concurrent/AbstractExecutorService;
    .end local p1    # "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    .end local p2    # "timed":Z
    .end local p3    # "nanos":J
    throw v3

    .line 192
    .restart local v0    # "ntasks":I
    .restart local v1    # "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    .restart local v2    # "ecs":Ljava/util/concurrent/ExecutorCompletionService;, "Ljava/util/concurrent/ExecutorCompletionService<TT;>;"
    .restart local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .restart local p0    # "this":Ljava/util/concurrent/AbstractExecutorService;
    .restart local p1    # "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    .restart local p2    # "timed":Z
    .restart local p3    # "nanos":J
    :cond_5b
    if-eqz p2, :cond_73

    .line 193
    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p3, p4, v9}, Ljava/util/concurrent/ExecutorCompletionService;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v9

    move-object v8, v9

    .line 194
    if-eqz v8, :cond_6d

    .line 196
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    sub-long p3, v4, v9

    goto :goto_78

    .line 195
    :cond_6d
    new-instance v9, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v9}, Ljava/util/concurrent/TimeoutException;-><init>()V

    .end local v0    # "ntasks":I
    .end local v1    # "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    .end local v2    # "ecs":Ljava/util/concurrent/ExecutorCompletionService;, "Ljava/util/concurrent/ExecutorCompletionService<TT;>;"
    .end local p0    # "this":Ljava/util/concurrent/AbstractExecutorService;
    .end local p1    # "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    .end local p2    # "timed":Z
    .end local p3    # "nanos":J
    throw v9

    .line 199
    .restart local v0    # "ntasks":I
    .restart local v1    # "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    .restart local v2    # "ecs":Ljava/util/concurrent/ExecutorCompletionService;, "Ljava/util/concurrent/ExecutorCompletionService<TT;>;"
    .restart local p0    # "this":Ljava/util/concurrent/AbstractExecutorService;
    .restart local p1    # "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    .restart local p2    # "timed":Z
    .restart local p3    # "nanos":J
    :cond_73
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutorCompletionService;->take()Ljava/util/concurrent/Future;

    move-result-object v9
    :try_end_77
    .catchall {:try_start_15 .. :try_end_77} :catchall_1b

    move-object v8, v9

    .line 201
    :cond_78
    :goto_78
    if-eqz v8, :cond_8f

    .line 202
    add-int/lit8 v7, v7, -0x1

    .line 204
    :try_start_7c
    invoke-interface {v8}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v9
    :try_end_80
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7c .. :try_end_80} :catch_8c
    .catch Ljava/lang/RuntimeException; {:try_start_7c .. :try_end_80} :catch_84
    .catchall {:try_start_7c .. :try_end_80} :catchall_1b

    .line 218
    invoke-static {v1}, Ljava/util/concurrent/AbstractExecutorService;->cancelAll(Ljava/util/ArrayList;)V

    .line 204
    return-object v9

    .line 207
    :catch_84
    move-exception v9

    .line 208
    .local v9, "rex":Ljava/lang/RuntimeException;
    :try_start_85
    new-instance v10, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v10, v9}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V
    :try_end_8a
    .catchall {:try_start_85 .. :try_end_8a} :catchall_1b

    move-object v3, v10

    .end local v3    # "ee":Ljava/util/concurrent/ExecutionException;
    .local v10, "ee":Ljava/util/concurrent/ExecutionException;
    goto :goto_8f

    .line 205
    .end local v9    # "rex":Ljava/lang/RuntimeException;
    .end local v10    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v3    # "ee":Ljava/util/concurrent/ExecutionException;
    :catch_8c
    move-exception v9

    .line 206
    .local v9, "eex":Ljava/util/concurrent/ExecutionException;
    nop

    .line 209
    .end local v3    # "ee":Ljava/util/concurrent/ExecutionException;
    .local v9, "ee":Ljava/util/concurrent/ExecutionException;
    move-object v3, v9

    .line 211
    .end local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v9    # "ee":Ljava/util/concurrent/ExecutionException;
    .restart local v3    # "ee":Ljava/util/concurrent/ExecutionException;
    :cond_8f
    :goto_8f
    goto :goto_34

    .line 218
    .end local v3    # "ee":Ljava/util/concurrent/ExecutionException;
    .end local v4    # "deadline":J
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/concurrent/Callable<TT;>;>;"
    .end local v7    # "active":I
    :goto_90
    invoke-static {v1}, Ljava/util/concurrent/AbstractExecutorService;->cancelAll(Ljava/util/ArrayList;)V

    .line 219
    throw v3

    .line 159
    .end local v1    # "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    .end local v2    # "ecs":Ljava/util/concurrent/ExecutorCompletionService;, "Ljava/util/concurrent/ExecutorCompletionService<TT;>;"
    :cond_94
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 156
    .end local v0    # "ntasks":I
    :cond_9a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 240
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    if-eqz p1, :cond_48

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 244
    .local v0, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    :try_start_b
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Callable;

    .line 245
    .local v2, "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-virtual {p0, v2}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v3

    .line 246
    .local v3, "f":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<TT;>;"
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-virtual {p0, v3}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 248
    .end local v2    # "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    .end local v3    # "f":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<TT;>;"
    goto :goto_f

    .line 249
    :cond_26
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "size":I
    :goto_2b
    if-ge v1, v2, :cond_42

    .line 250
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Future;

    .line 251
    .local v3, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v3}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v4
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_43

    if-nez v4, :cond_3f

    .line 252
    :try_start_39
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_39 .. :try_end_3c} :catch_3d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_39 .. :try_end_3c} :catch_3d
    .catchall {:try_start_39 .. :try_end_3c} :catchall_43

    .line 253
    :goto_3c
    goto :goto_3f

    :catch_3d
    move-exception v4

    goto :goto_3c

    .line 249
    .end local v3    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :cond_3f
    :goto_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 256
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_42
    return-object v0

    .line 257
    :catchall_43
    move-exception v1

    .line 258
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v0}, Ljava/util/concurrent/AbstractExecutorService;->cancelAll(Ljava/util/ArrayList;)V

    .line 259
    throw v1

    .line 241
    .end local v0    # "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_48
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .registers 21
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 266
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    move-object/from16 v1, p0

    if-eqz p1, :cond_85

    .line 268
    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    .line 269
    .local v5, "nanos":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    add-long/2addr v7, v5

    .line 270
    .local v7, "deadline":J
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v9

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-object v9, v0

    .line 271
    .local v9, "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    const/4 v10, 0x0

    .line 273
    .local v10, "j":I
    :try_start_1c
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/concurrent/Callable;

    .line 274
    .local v11, "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-virtual {v1, v11}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 276
    .end local v11    # "t":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    :cond_34
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v11, v0

    .line 280
    .local v11, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3a
    if-ge v0, v11, :cond_59

    .line 281
    if-nez v0, :cond_40

    move-wide v12, v5

    goto :goto_46

    :cond_40
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    sub-long v12, v7, v12

    :goto_46
    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-gtz v12, :cond_4d

    .line 282
    goto :goto_76

    .line 283
    :cond_4d
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Runnable;

    invoke-virtual {v1, v12}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 286
    .end local v0    # "i":I
    :cond_59
    :goto_59
    if-ge v10, v11, :cond_7f

    .line 287
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    move-object v12, v0

    .line 288
    .local v12, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    invoke-interface {v12}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0
    :try_end_66
    .catchall {:try_start_1c .. :try_end_66} :catchall_80

    if-nez v0, :cond_7c

    .line 289
    :try_start_68
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    sub-long v13, v7, v13

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v12, v13, v14, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_73
    .catch Ljava/util/concurrent/CancellationException; {:try_start_68 .. :try_end_73} :catch_7a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_68 .. :try_end_73} :catch_7a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_68 .. :try_end_73} :catch_74
    .catchall {:try_start_68 .. :try_end_73} :catchall_80

    goto :goto_7b

    .line 291
    :catch_74
    move-exception v0

    .line 292
    .local v0, "timedOut":Ljava/util/concurrent/TimeoutException;
    nop

    .line 302
    .end local v0    # "timedOut":Ljava/util/concurrent/TimeoutException;
    .end local v11    # "size":I
    .end local v12    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :goto_76
    invoke-static {v9, v10}, Ljava/util/concurrent/AbstractExecutorService;->cancelAll(Ljava/util/ArrayList;I)V

    .line 303
    return-object v9

    .line 290
    .restart local v11    # "size":I
    .restart local v12    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :catch_7a
    move-exception v0

    .line 293
    :goto_7b
    nop

    .line 286
    .end local v12    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :cond_7c
    add-int/lit8 v10, v10, 0x1

    goto :goto_59

    .line 296
    :cond_7f
    return-object v9

    .line 297
    .end local v11    # "size":I
    :catchall_80
    move-exception v0

    .line 298
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v9}, Ljava/util/concurrent/AbstractExecutorService;->cancelAll(Ljava/util/ArrayList;)V

    .line 299
    throw v0

    .line 267
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v5    # "nanos":J
    .end local v7    # "deadline":J
    .end local v9    # "futures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/concurrent/Future<TT;>;>;"
    .end local v10    # "j":I
    :cond_85
    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 225
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    :try_start_3
    invoke-direct {p0, p1, v0, v1, v2}, Ljava/util/concurrent/AbstractExecutorService;->doInvokeAny(Ljava/util/Collection;ZJ)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_7} :catch_8

    return-object v0

    .line 226
    :catch_8
    move-exception v0

    .line 227
    .local v0, "cannotHappen":Ljava/util/concurrent/TimeoutException;
    nop

    .line 228
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 8
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/concurrent/Callable<",
            "TT;>;>;J",
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

    .line 235
    .local p1, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/util/concurrent/Callable<TT;>;>;"
    const/4 v0, 0x1

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Ljava/util/concurrent/AbstractExecutorService;->doInvokeAny(Ljava/util/Collection;ZJ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;
    .registers 4
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/RunnableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 98
    .local p2, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected whitelist test-api newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/RunnableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 113
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public whitelist test-api submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .registers 3
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 121
    if-eqz p1, :cond_b

    .line 122
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    .line 123
    .local v0, "ftask":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<Ljava/lang/Void;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 124
    return-object v0

    .line 121
    .end local v0    # "ftask":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<Ljava/lang/Void;>;"
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .registers 4
    .param p1, "task"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 132
    .local p2, "result":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_a

    .line 133
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    .line 134
    .local v0, "ftask":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 135
    return-object v0

    .line 132
    .end local v0    # "ftask":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<TT;>;"
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Future<",
            "TT;>;"
        }
    .end annotation

    .line 143
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    if-eqz p1, :cond_a

    .line 144
    invoke-virtual {p0, p1}, Ljava/util/concurrent/AbstractExecutorService;->newTaskFor(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/RunnableFuture;

    move-result-object v0

    .line 145
    .local v0, "ftask":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<TT;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 146
    return-object v0

    .line 143
    .end local v0    # "ftask":Ljava/util/concurrent/RunnableFuture;, "Ljava/util/concurrent/RunnableFuture<TT;>;"
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
