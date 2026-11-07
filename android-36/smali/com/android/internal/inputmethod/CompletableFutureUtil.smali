.class public final Lcom/android/internal/inputmethod/CompletableFutureUtil;
.super Ljava/lang/Object;
.source "CompletableFutureUtil.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static blacklist getBooleanResult(Ljava/util/concurrent/CompletableFuture;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 159
    .local p0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    invoke-static {p0}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getValueOrRethrowErrorInternal(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static blacklist getIntegerResult(Ljava/util/concurrent/CompletableFuture;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 172
    .local p0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Integer;>;"
    invoke-static {p0}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getValueOrRethrowErrorInternal(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static blacklist getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 146
    .local p0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    invoke-static {p0}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getValueOrRethrowErrorInternal(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getResultOrFalse(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Z
    .registers 10
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "cancellationGroup"    # Lcom/android/internal/inputmethod/CancellationGroup;
    .param p4, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/inputmethod/CancellationGroup;",
            "J)Z"
        }
    .end annotation

    .line 197
    .local p0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;"
    move-wide v2, p4

    move-object p5, p3

    move-wide p3, v2

    .end local p4    # "timeoutMillis":J
    .local p3, "timeoutMillis":J
    .local p5, "cancellationGroup":Lcom/android/internal/inputmethod/CancellationGroup;
    invoke-static/range {p0 .. p5}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getValueOrNullInternal(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;JLcom/android/internal/inputmethod/CancellationGroup;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 199
    .local v0, "obj":Ljava/lang/Boolean;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public static blacklist getResultOrNull(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)Ljava/lang/Object;
    .registers 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "cancellationGroup"    # Lcom/android/internal/inputmethod/CancellationGroup;
    .param p4, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/inputmethod/CancellationGroup;",
            "J)TT;"
        }
    .end annotation

    .line 251
    .local p0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    move-wide v1, p4

    move-object p5, p3

    move-wide p3, v1

    .end local p4    # "timeoutMillis":J
    .local p3, "timeoutMillis":J
    .local p5, "cancellationGroup":Lcom/android/internal/inputmethod/CancellationGroup;
    invoke-static/range {p0 .. p5}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getValueOrNullInternal(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;JLcom/android/internal/inputmethod/CancellationGroup;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getResultOrZero(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/inputmethod/CancellationGroup;J)I
    .registers 10
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "cancellationGroup"    # Lcom/android/internal/inputmethod/CancellationGroup;
    .param p4, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/inputmethod/CancellationGroup;",
            "J)I"
        }
    .end annotation

    .line 223
    .local p0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Integer;>;"
    move-wide v2, p4

    move-object p5, p3

    move-wide p3, v2

    .end local p4    # "timeoutMillis":J
    .local p3, "timeoutMillis":J
    .local p5, "cancellationGroup":Lcom/android/internal/inputmethod/CancellationGroup;
    invoke-static/range {p0 .. p5}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getValueOrNullInternal(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;JLcom/android/internal/inputmethod/CancellationGroup;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 225
    .local v0, "obj":Ljava/lang/Integer;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method private static blacklist getValueOrNullInternal(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;Ljava/lang/String;JLcom/android/internal/inputmethod/CancellationGroup;)Ljava/lang/Object;
    .registers 11
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "timeoutMillis"    # J
    .param p5, "cancellationGroup"    # Lcom/android/internal/inputmethod/CancellationGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lcom/android/internal/inputmethod/CancellationGroup;",
            ")TT;"
        }
    .end annotation

    .line 71
    .local p0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    if-eqz p5, :cond_a

    .line 72
    invoke-virtual {p5, p0}, Lcom/android/internal/inputmethod/CancellationGroup;->tryRegisterFutureOrCancelImmediately(Ljava/util/concurrent/CompletableFuture;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 73
    .local v0, "needsToUnregister":Z
    :goto_b
    const/4 v1, 0x0

    .line 77
    .local v1, "interrupted":Z
    :goto_c
    const/4 v2, 0x0

    :try_start_d
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p3, p4, v3}, Ljava/util/concurrent/CompletableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2
    :try_end_13
    .catch Ljava/util/concurrent/CompletionException; {:try_start_d .. :try_end_13} :catch_65
    .catch Ljava/util/concurrent/CancellationException; {:try_start_d .. :try_end_13} :catch_51
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_13} :catch_4e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_13} :catch_3a
    .catchall {:try_start_d .. :try_end_13} :catchall_22

    .line 99
    if-eqz v0, :cond_18

    .line 100
    invoke-virtual {p5, p0}, Lcom/android/internal/inputmethod/CancellationGroup;->unregisterFuture(Ljava/util/concurrent/CompletableFuture;)V

    .line 102
    :cond_18
    if-eqz v1, :cond_21

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 77
    :cond_21
    return-object v2

    .line 93
    :catchall_22
    move-exception v3

    .line 94
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_23
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p2, v4}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->logErrorInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_98

    .line 95
    nop

    .line 99
    if-eqz v0, :cond_30

    .line 100
    invoke-virtual {p5, p0}, Lcom/android/internal/inputmethod/CancellationGroup;->unregisterFuture(Ljava/util/concurrent/CompletableFuture;)V

    .line 102
    :cond_30
    if-eqz v1, :cond_39

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 95
    :cond_39
    return-object v2

    .line 90
    .end local v3    # "e":Ljava/lang/Throwable;
    :catch_3a
    move-exception v3

    .line 91
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_3b
    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->logTimeoutInternal(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_98

    .line 92
    nop

    .line 99
    if-eqz v0, :cond_44

    .line 100
    invoke-virtual {p5, p0}, Lcom/android/internal/inputmethod/CancellationGroup;->unregisterFuture(Ljava/util/concurrent/CompletableFuture;)V

    .line 102
    :cond_44
    if-eqz v1, :cond_4d

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 92
    :cond_4d
    return-object v2

    .line 88
    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_4e
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 96
    .end local v2    # "e":Ljava/lang/InterruptedException;
    goto :goto_c

    .line 85
    :catch_51
    move-exception v3

    .line 86
    .local v3, "e":Ljava/util/concurrent/CancellationException;
    :try_start_52
    invoke-static {p1, p2}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->logCancellationInternal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_98

    .line 87
    nop

    .line 99
    if-eqz v0, :cond_5b

    .line 100
    invoke-virtual {p5, p0}, Lcom/android/internal/inputmethod/CancellationGroup;->unregisterFuture(Ljava/util/concurrent/CompletableFuture;)V

    .line 102
    :cond_5b
    if-eqz v1, :cond_64

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 87
    :cond_64
    return-object v2

    .line 78
    .end local v3    # "e":Ljava/util/concurrent/CancellationException;
    :catch_65
    move-exception v3

    .line 79
    .local v3, "e":Ljava/util/concurrent/CompletionException;
    :try_start_66
    invoke-virtual {v3}, Ljava/util/concurrent/CompletionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    instance-of v4, v4, Ljava/util/concurrent/CancellationException;

    if-eqz v4, :cond_81

    .line 80
    invoke-static {p1, p2}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->logCancellationInternal(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_66 .. :try_end_71} :catchall_98

    .line 81
    nop

    .line 99
    if-eqz v0, :cond_77

    .line 100
    invoke-virtual {p5, p0}, Lcom/android/internal/inputmethod/CancellationGroup;->unregisterFuture(Ljava/util/concurrent/CompletableFuture;)V

    .line 102
    :cond_77
    if-eqz v1, :cond_80

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 81
    :cond_80
    return-object v2

    .line 83
    :cond_81
    :try_start_81
    invoke-virtual {v3}, Ljava/util/concurrent/CompletionException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p2, v4}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->logErrorInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_88
    .catchall {:try_start_81 .. :try_end_88} :catchall_98

    .line 84
    nop

    .line 99
    if-eqz v0, :cond_8e

    .line 100
    invoke-virtual {p5, p0}, Lcom/android/internal/inputmethod/CancellationGroup;->unregisterFuture(Ljava/util/concurrent/CompletableFuture;)V

    .line 102
    :cond_8e
    if-eqz v1, :cond_97

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 84
    :cond_97
    return-object v2

    .line 99
    .end local v3    # "e":Ljava/util/concurrent/CompletionException;
    :catchall_98
    move-exception v2

    if-eqz v0, :cond_9e

    .line 100
    invoke-virtual {p5, p0}, Lcom/android/internal/inputmethod/CancellationGroup;->unregisterFuture(Ljava/util/concurrent/CompletableFuture;)V

    .line 102
    :cond_9e
    if-eqz v1, :cond_a7

    .line 103
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 105
    :cond_a7
    throw v2
.end method

.method private static blacklist getValueOrRethrowErrorInternal(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/CompletableFuture<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 45
    .local p0, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    const/4 v0, 0x0

    .line 49
    .local v0, "interrupted":Z
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_5} :catch_14
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_5} :catch_11
    .catchall {:try_start_1 .. :try_end_5} :catchall_f

    .line 58
    if-eqz v0, :cond_e

    .line 59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 49
    :cond_e
    return-object v1

    .line 58
    :catchall_f
    move-exception v1

    goto :goto_27

    .line 53
    :catch_11
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 55
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 50
    :catch_14
    move-exception v1

    .line 51
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_15
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 52
    .local v2, "cause":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "interrupted":Z
    .end local p0    # "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    throw v3
    :try_end_27
    .catchall {:try_start_15 .. :try_end_27} :catchall_f

    .line 58
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v2    # "cause":Ljava/lang/Throwable;
    .restart local v0    # "interrupted":Z
    .restart local p0    # "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<TT;>;"
    :goto_27
    if-eqz v0, :cond_30

    .line 59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 61
    :cond_30
    throw v1
.end method

.method private static blacklist logCancellationInternal(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;

    .line 128
    if-eqz p0, :cond_1c

    if-nez p1, :cond_5

    goto :goto_1c

    .line 131
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was cancelled."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 129
    :cond_1c
    :goto_1c
    return-void
.end method

.method private static blacklist logErrorInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "errorString"    # Ljava/lang/String;

    .line 120
    if-eqz p0, :cond_20

    if-nez p1, :cond_5

    goto :goto_20

    .line 123
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was failed with an exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 121
    :cond_20
    :goto_20
    return-void
.end method

.method private static blacklist logTimeoutInternal(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "timeout"    # J

    .line 111
    if-eqz p0, :cond_26

    if-nez p1, :cond_5

    goto :goto_26

    .line 114
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " didn\'t respond in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msec."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 112
    :cond_26
    :goto_26
    return-void
.end method
