.class public interface abstract Ljava/util/concurrent/Future;
.super Ljava/lang/Object;
.source "Future.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/Future$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract whitelist test-api cancel(Z)Z
.end method

.method public whitelist test-api exceptionNow()Ljava/lang/Throwable;
    .registers 5

    .line 226
    .local p0, "this":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 228
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 229
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Task was cancelled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_14
    const/4 v0, 0x0

    .line 234
    .local v0, "interrupted":Z
    :goto_15
    :try_start_15
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 235
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Task completed with a result"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "interrupted":Z
    .end local p0    # "this":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    throw v1
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_20} :catch_3b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_15 .. :try_end_20} :catch_22
    .catchall {:try_start_15 .. :try_end_20} :catchall_20

    .line 243
    .restart local v0    # "interrupted":Z
    .restart local p0    # "this":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    :catchall_20
    move-exception v1

    goto :goto_31

    .line 238
    :catch_22
    move-exception v1

    .line 239
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_23
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_20

    .line 243
    if-eqz v0, :cond_30

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 239
    :cond_30
    return-object v2

    .line 243
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :goto_31
    if-eqz v0, :cond_3a

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 244
    :cond_3a
    throw v1

    .line 236
    :catch_3b
    move-exception v1

    .line 237
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 240
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_15

    .line 227
    .end local v0    # "interrupted":Z
    :cond_3e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Task has not completed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract whitelist test-api get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api isCancelled()Z
.end method

.method public abstract whitelist test-api isDone()Z
.end method

.method public whitelist test-api resultNow()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 189
    .local p0, "this":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 191
    const/4 v0, 0x0

    .line 195
    .local v0, "interrupted":Z
    :goto_7
    :try_start_7
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_b} :catch_33
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_7 .. :try_end_b} :catch_20
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_b} :catch_17
    .catchall {:try_start_7 .. :try_end_b} :catchall_15

    .line 205
    if-eqz v0, :cond_14

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 195
    :cond_14
    return-object v1

    .line 205
    :catchall_15
    move-exception v1

    goto :goto_29

    .line 200
    :catch_17
    move-exception v1

    .line 201
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    :try_start_18
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Task was cancelled"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "interrupted":Z
    .end local p0    # "this":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    throw v2

    .line 198
    .end local v1    # "e":Ljava/util/concurrent/CancellationException;
    .restart local v0    # "interrupted":Z
    .restart local p0    # "this":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    :catch_20
    move-exception v1

    .line 199
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Task completed with exception"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "interrupted":Z
    .end local p0    # "this":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    throw v2
    :try_end_29
    .catchall {:try_start_18 .. :try_end_29} :catchall_15

    .line 205
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    .restart local v0    # "interrupted":Z
    .restart local p0    # "this":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    :goto_29
    if-eqz v0, :cond_32

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 206
    :cond_32
    throw v1

    .line 196
    :catch_33
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 202
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_7

    .line 190
    .end local v0    # "interrupted":Z
    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Task has not completed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api state()Ljava/util/concurrent/Future$State;
    .registers 5

    .line 283
    .local p0, "this":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_9

    .line 284
    sget-object v0, Ljava/util/concurrent/Future$State;->RUNNING:Ljava/util/concurrent/Future$State;

    return-object v0

    .line 285
    :cond_9
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 286
    sget-object v0, Ljava/util/concurrent/Future$State;->CANCELLED:Ljava/util/concurrent/Future$State;

    return-object v0

    .line 287
    :cond_12
    const/4 v0, 0x0

    .line 291
    .local v0, "interrupted":Z
    :goto_13
    :try_start_13
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 292
    sget-object v1, Ljava/util/concurrent/Future$State;->SUCCESS:Ljava/util/concurrent/Future$State;
    :try_end_18
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_18} :catch_3b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_13 .. :try_end_18} :catch_24
    .catchall {:try_start_13 .. :try_end_18} :catchall_22

    .line 300
    if-eqz v0, :cond_21

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 292
    :cond_21
    return-object v1

    .line 300
    :catchall_22
    move-exception v1

    goto :goto_31

    .line 295
    :catch_24
    move-exception v1

    .line 296
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_25
    sget-object v2, Ljava/util/concurrent/Future$State;->FAILED:Ljava/util/concurrent/Future$State;
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_22

    .line 300
    if-eqz v0, :cond_30

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 296
    :cond_30
    return-object v2

    .line 300
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    :goto_31
    if-eqz v0, :cond_3a

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 301
    :cond_3a
    throw v1

    .line 293
    :catch_3b
    move-exception v1

    .line 294
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 297
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_13
.end method
