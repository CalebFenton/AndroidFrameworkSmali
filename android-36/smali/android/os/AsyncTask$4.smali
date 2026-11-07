.class Landroid/os/AsyncTask$4;
.super Ljava/util/concurrent/FutureTask;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/AsyncTask;-><init>(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/AsyncTask;


# direct methods
.method constructor blacklist <init>(Landroid/os/AsyncTask;Ljava/util/concurrent/Callable;)V
    .registers 3
    .param p1, "this$0"    # Landroid/os/AsyncTask;
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

    .line 406
    .local p0, "this":Landroid/os/AsyncTask$4;, "Landroid/os/AsyncTask$4;"
    .local p2, "arg1":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TResult;>;"
    iput-object p1, p0, Landroid/os/AsyncTask$4;->this$0:Landroid/os/AsyncTask;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected whitelist test-api done()V
    .registers 5

    .line 410
    .local p0, "this":Landroid/os/AsyncTask$4;, "Landroid/os/AsyncTask$4;"
    :try_start_0
    iget-object v0, p0, Landroid/os/AsyncTask$4;->this$0:Landroid/os/AsyncTask;

    invoke-virtual {p0}, Landroid/os/AsyncTask$4;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/AsyncTask;->-$$Nest$mpostResultIfNotInvoked(Landroid/os/AsyncTask;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_1f
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_9} :catch_12
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_25

    .line 416
    :catch_a
    move-exception v0

    .line 417
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    iget-object v1, p0, Landroid/os/AsyncTask$4;->this$0:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/AsyncTask;->-$$Nest$mpostResultIfNotInvoked(Landroid/os/AsyncTask;Ljava/lang/Object;)V

    goto :goto_26

    .line 413
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :catch_12
    move-exception v0

    .line 414
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v1, Ljava/lang/RuntimeException;

    .line 415
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    const-string v3, "An error occurred while executing doInBackground()"

    invoke-direct {v1, v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 411
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_1f
    move-exception v0

    .line 412
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "AsyncTask"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_25
    nop

    .line 419
    :goto_26
    return-void
.end method
