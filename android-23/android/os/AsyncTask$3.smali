.class Landroid/os/AsyncTask$3;
.super Ljava/util/concurrent/FutureTask;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/AsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/AsyncTask;


# direct methods
.method constructor <init>(Landroid/os/AsyncTask;Ljava/util/concurrent/Callable;)V
    .locals 0

    #@0
    .prologue
    .line 301
    .local p1, "this$0":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    .local p2, "$anonymous0":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TResult;>;"
    iput-object p1, p0, Landroid/os/AsyncTask$3;->this$0:Landroid/os/AsyncTask;

    #@2
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    #@5
    return-void
.end method


# virtual methods
.method protected done()V
    .locals 6

    #@0
    .prologue
    .line 305
    :try_start_0
    iget-object v3, p0, Landroid/os/AsyncTask$3;->this$0:Landroid/os/AsyncTask;

    #@2
    invoke-virtual {p0}, Landroid/os/AsyncTask$3;->get()Ljava/lang/Object;

    #@5
    move-result-object v4

    #@6
    invoke-static {v3, v4}, Landroid/os/AsyncTask;->-wrap2(Landroid/os/AsyncTask;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 303
    :goto_0
    return-void

    #@a
    .line 311
    :catch_0
    move-exception v1

    #@b
    .line 312
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    iget-object v3, p0, Landroid/os/AsyncTask$3;->this$0:Landroid/os/AsyncTask;

    #@d
    const/4 v4, 0x0

    #@e
    invoke-static {v3, v4}, Landroid/os/AsyncTask;->-wrap2(Landroid/os/AsyncTask;Ljava/lang/Object;)V

    #@11
    goto :goto_0

    #@12
    .line 308
    .end local v1    # "e":Ljava/util/concurrent/CancellationException;
    :catch_1
    move-exception v2

    #@13
    .line 309
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v3, Ljava/lang/RuntimeException;

    #@15
    const-string/jumbo v4, "An error occurred while executing doInBackground()"

    #@18
    .line 310
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    #@1b
    move-result-object v5

    #@1c
    .line 309
    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1f
    throw v3

    #@20
    .line 306
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v0

    #@21
    .line 307
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "AsyncTask"

    #@24
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    goto :goto_0
.end method
