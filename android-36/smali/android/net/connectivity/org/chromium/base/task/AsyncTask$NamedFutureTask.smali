.class Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/task/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NamedFutureTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/connectivity/org/chromium/base/task/AsyncTask;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/task/AsyncTask;Ljava/util/concurrent/Callable;)V
    .registers 3
    .param p1, "this$0"    # Landroid/net/connectivity/org/chromium/base/task/AsyncTask;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TResult;>;)V"
        }
    .end annotation

    .line 472
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;, "Landroid/net/connectivity/org/chromium/base/task/AsyncTask<TResult;>.NamedFutureTask;"
    .local p2, "c":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TResult;>;"
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;->this$0:Landroid/net/connectivity/org/chromium/base/task/AsyncTask;

    .line 473
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 474
    return-void
.end method


# virtual methods
.method protected whitelist test-api done()V
    .registers 5

    .line 503
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;, "Landroid/net/connectivity/org/chromium/base/task/AsyncTask<TResult;>.NamedFutureTask;"
    :try_start_0
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;->this$0:Landroid/net/connectivity/org/chromium/base/task/AsyncTask;

    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->-$$Nest$mpostResultIfNotInvoked(Landroid/net/connectivity/org/chromium/base/task/AsyncTask;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_1f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_9} :catch_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_29

    .line 509
    :catch_a
    move-exception v0

    .line 510
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;->this$0:Landroid/net/connectivity/org/chromium/base/task/AsyncTask;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->-$$Nest$mpostResultIfNotInvoked(Landroid/net/connectivity/org/chromium/base/task/AsyncTask;Ljava/lang/Object;)V

    goto :goto_2a

    .line 506
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :catch_12
    move-exception v0

    .line 507
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Ljava/lang/RuntimeException;

    .line 508
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    const-string v3, "An error occurred while executing doInBackground()"

    invoke-direct {v1, v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 504
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1f
    move-exception v0

    .line 505
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "AsyncTask"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/connectivity/org/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_29
    nop

    .line 512
    :goto_2a
    return-void
.end method

.method blacklist getBlamedClass()Ljava/lang/Class;
    .registers 2

    .line 477
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;, "Landroid/net/connectivity/org/chromium/base/task/AsyncTask<TResult;>.NamedFutureTask;"
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;->this$0:Landroid/net/connectivity/org/chromium/base/task/AsyncTask;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api run()V
    .registers 4

    .line 483
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;, "Landroid/net/connectivity/org/chromium/base/task/AsyncTask<TResult;>.NamedFutureTask;"
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTask.run: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;->this$0:Landroid/net/connectivity/org/chromium/base/task/AsyncTask;

    invoke-static {v1}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask;->-$$Nest$fgetmFuture(Landroid/net/connectivity/org/chromium/base/task/AsyncTask;)Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;

    move-result-object v1

    .line 484
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;->getBlamedClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/TraceEvent;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_3e

    .line 485
    .local v0, "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :try_start_25
    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->run()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_32

    .line 486
    if-eqz v0, :cond_2d

    :try_start_2a
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_3e

    .line 496
    .end local v0    # "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :cond_2d
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 497
    nop

    .line 498
    return-void

    .line 483
    .restart local v0    # "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    :catchall_32
    move-exception v1

    if-eqz v0, :cond_3d

    :try_start_35
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/base/TraceEvent;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_3d

    :catchall_39
    move-exception v2

    :try_start_3a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;, "Landroid/net/connectivity/org/chromium/base/task/AsyncTask<TResult;>.NamedFutureTask;"
    :cond_3d
    :goto_3d
    throw v1
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_3e

    .line 496
    .end local v0    # "e":Landroid/net/connectivity/org/chromium/base/TraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/base/task/AsyncTask$NamedFutureTask;, "Landroid/net/connectivity/org/chromium/base/task/AsyncTask<TResult;>.NamedFutureTask;"
    :catchall_3e
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 497
    throw v0
.end method
