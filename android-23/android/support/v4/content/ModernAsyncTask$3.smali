.class Landroid/support/v4/content/ModernAsyncTask$3;
.super Ljava/util/concurrent/FutureTask;
.source "ModernAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/content/ModernAsyncTask;-><init>()V
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
.field final synthetic this$0:Landroid/support/v4/content/ModernAsyncTask;


# direct methods
.method constructor <init>(Landroid/support/v4/content/ModernAsyncTask;Ljava/util/concurrent/Callable;)V
    .locals 0

    #@0
    .prologue
    .line 132
    .local p1, "this$0":Landroid/support/v4/content/ModernAsyncTask;, "Landroid/support/v4/content/ModernAsyncTask<TParams;TProgress;TResult;>;"
    .local p2, "$anonymous0":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TResult;>;"
    iput-object p1, p0, Landroid/support/v4/content/ModernAsyncTask$3;->this$0:Landroid/support/v4/content/ModernAsyncTask;

    #@2
    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    #@5
    return-void
.end method


# virtual methods
.method protected done()V
    .locals 8

    #@0
    .prologue
    .line 136
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/content/ModernAsyncTask$3;->get()Ljava/lang/Object;

    #@3
    move-result-object v3

    #@4
    .line 138
    .local v3, "result":Ljava/lang/Object;, "TResult;"
    iget-object v5, p0, Landroid/support/v4/content/ModernAsyncTask$3;->this$0:Landroid/support/v4/content/ModernAsyncTask;

    #@6
    invoke-static {v5, v3}, Landroid/support/v4/content/ModernAsyncTask;->-wrap2(Landroid/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 134
    .end local v3    # "result":Ljava/lang/Object;, "TResult;"
    :goto_0
    return-void

    #@a
    .line 146
    :catch_0
    move-exception v4

    #@b
    .line 147
    .local v4, "t":Ljava/lang/Throwable;
    new-instance v5, Ljava/lang/RuntimeException;

    #@d
    .line 148
    const-string/jumbo v6, "An error occurred while executing doInBackground()"

    #@10
    .line 147
    invoke-direct {v5, v6, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@13
    throw v5

    #@14
    .line 144
    .end local v4    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    #@15
    .line 145
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    iget-object v5, p0, Landroid/support/v4/content/ModernAsyncTask$3;->this$0:Landroid/support/v4/content/ModernAsyncTask;

    #@17
    const/4 v6, 0x0

    #@18
    invoke-static {v5, v6}, Landroid/support/v4/content/ModernAsyncTask;->-wrap2(Landroid/support/v4/content/ModernAsyncTask;Ljava/lang/Object;)V

    #@1b
    goto :goto_0

    #@1c
    .line 141
    .end local v1    # "e":Ljava/util/concurrent/CancellationException;
    :catch_2
    move-exception v2

    #@1d
    .line 142
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    new-instance v5, Ljava/lang/RuntimeException;

    #@1f
    .line 143
    const-string/jumbo v6, "An error occurred while executing doInBackground()"

    #@22
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    #@25
    move-result-object v7

    #@26
    .line 142
    invoke-direct {v5, v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@29
    throw v5

    #@2a
    .line 139
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_3
    move-exception v0

    #@2b
    .line 140
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v5, "AsyncTask"

    #@2e
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    #@31
    goto :goto_0
.end method
