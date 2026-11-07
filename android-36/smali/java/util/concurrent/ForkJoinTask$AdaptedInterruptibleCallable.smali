.class final Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable;
.super Ljava/util/concurrent/ForkJoinTask;
.source "ForkJoinTask.java"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ForkJoinTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AdaptedInterruptibleCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ForkJoinTask<",
        "TT;>;",
        "Ljava/util/concurrent/RunnableFuture<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x2763fe86dcb18e30L


# instance fields
.field final blacklist callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+TT;>;"
        }
    .end annotation
.end field

.field blacklist result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field volatile transient blacklist runner:Ljava/lang/Thread;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Callable;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1483
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable;, "Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable<TT;>;"
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ForkJoinTask;-><init>()V

    .line 1484
    if-eqz p1, :cond_8

    .line 1485
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable;->callable:Ljava/util/concurrent/Callable;

    .line 1486
    return-void

    .line 1484
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final whitelist test-api cancel(Z)Z
    .registers 5
    .param p1, "mayInterruptIfRunning"    # Z

    .line 1508
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable;, "Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable<TT;>;"
    const/4 v0, 0x0

    invoke-super {p0, v0}, Ljava/util/concurrent/ForkJoinTask;->cancel(Z)Z

    move-result v0

    .line 1509
    .local v0, "stat":Z
    if-eqz p1, :cond_11

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable;->runner:Ljava/lang/Thread;

    move-object v2, v1

    .local v2, "t":Ljava/lang/Thread;
    if-eqz v1, :cond_11

    .line 1511
    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_10

    .line 1513
    goto :goto_11

    .line 1512
    :catchall_10
    move-exception v1

    .line 1515
    .end local v2    # "t":Ljava/lang/Thread;
    :cond_11
    :goto_11
    return v0
.end method

.method public final whitelist test-api exec()Z
    .registers 4

    .line 1490
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable;, "Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable<TT;>;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1491
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable;->runner:Ljava/lang/Thread;

    .line 1493
    const/4 v0, 0x0

    :try_start_a
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable;->isDone()Z

    move-result v1

    if-nez v1, :cond_18

    .line 1494
    iget-object v1, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable;->callable:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable;->result:Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_18} :catch_29
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_18} :catch_22
    .catchall {:try_start_a .. :try_end_18} :catchall_20

    .line 1495
    :cond_18
    nop

    .line 1501
    iput-object v0, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable;->runner:Ljava/lang/Thread;

    .line 1502
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1495
    const/4 v0, 0x1

    return v0

    .line 1501
    :catchall_20
    move-exception v1

    goto :goto_2c

    .line 1498
    :catch_22
    move-exception v1

    .line 1499
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_23
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable;, "Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable<TT;>;"
    throw v2

    .line 1496
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local p0    # "this":Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable;, "Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable<TT;>;"
    :catch_29
    move-exception v1

    .line 1497
    .local v1, "rex":Ljava/lang/RuntimeException;
    nop

    .end local p0    # "this":Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable;, "Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable<TT;>;"
    throw v1
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_20

    .line 1501
    .end local v1    # "rex":Ljava/lang/RuntimeException;
    .restart local p0    # "this":Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable;, "Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable<TT;>;"
    :goto_2c
    iput-object v0, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable;->runner:Ljava/lang/Thread;

    .line 1502
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 1503
    throw v1
.end method

.method public final whitelist test-api getRawResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1487
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable;, "Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable<TT;>;"
    iget-object v0, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public final whitelist test-api run()V
    .registers 1

    .line 1505
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable;, "Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable<TT;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final whitelist test-api setRawResult(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1488
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable;, "Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable;->result:Ljava/lang/Object;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1518
    .local p0, "this":Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable;, "Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[Wrapped task = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/concurrent/ForkJoinTask$AdaptedInterruptibleCallable;->callable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
