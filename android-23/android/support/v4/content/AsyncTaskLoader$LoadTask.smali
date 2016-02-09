.class final Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
.super Landroid/support/v4/content/ModernAsyncTask;
.source "AsyncTaskLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/AsyncTaskLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/ModernAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TD;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private final mDone:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Landroid/support/v4/content/AsyncTaskLoader;

.field waiting:Z


# direct methods
.method constructor <init>(Landroid/support/v4/content/AsyncTaskLoader;)V
    .locals 2

    #@0
    .prologue
    .line 42
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader$LoadTask;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>.LoadTask;"
    .local p1, "this$0":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    iput-object p1, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->this$0:Landroid/support/v4/content/AsyncTaskLoader;

    #@2
    invoke-direct {p0}, Landroid/support/v4/content/ModernAsyncTask;-><init>()V

    #@5
    .line 43
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    #@7
    const/4 v1, 0x1

    #@8
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    #@b
    iput-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    #@d
    .line 42
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 51
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader$LoadTask;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>.LoadTask;"
    check-cast p1, [Ljava/lang/Void;

    #@2
    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TD;"
        }
    .end annotation

    #@0
    .prologue
    .line 54
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader$LoadTask;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>.LoadTask;"
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->this$0:Landroid/support/v4/content/AsyncTaskLoader;

    #@2
    invoke-virtual {v2}, Landroid/support/v4/content/AsyncTaskLoader;->onLoadInBackground()Ljava/lang/Object;
    :try_end_0
    .catch Landroid/support/v4/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v0

    #@6
    .line 56
    .local v0, "data":Ljava/lang/Object;, "TD;"
    return-object v0

    #@7
    .line 57
    .end local v0    # "data":Ljava/lang/Object;, "TD;"
    :catch_0
    move-exception v1

    #@8
    .line 58
    .local v1, "ex":Landroid/support/v4/os/OperationCanceledException;
    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->isCancelled()Z

    #@b
    move-result v2

    #@c
    if-nez v2, :cond_0

    #@e
    .line 65
    throw v1

    #@f
    .line 68
    :cond_0
    const/4 v2, 0x0

    #@10
    return-object v2
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 88
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader$LoadTask;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>.LoadTask;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->this$0:Landroid/support/v4/content/AsyncTaskLoader;

    #@2
    invoke-virtual {v0, p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->dispatchOnCancelled(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 90
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    #@7
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@a
    .line 85
    return-void

    #@b
    .line 89
    :catchall_0
    move-exception v0

    #@c
    .line 90
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    #@e
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@11
    .line 89
    throw v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 77
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader$LoadTask;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>.LoadTask;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->this$0:Landroid/support/v4/content/AsyncTaskLoader;

    #@2
    invoke-virtual {v0, p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->dispatchOnLoadComplete(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 79
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    #@7
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@a
    .line 74
    return-void

    #@b
    .line 78
    :catchall_0
    move-exception v0

    #@c
    .line 79
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    #@e
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    #@11
    .line 78
    throw v0
.end method

.method public run()V
    .locals 1

    #@0
    .prologue
    .line 98
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader$LoadTask;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>.LoadTask;"
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    #@3
    .line 99
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->this$0:Landroid/support/v4/content/AsyncTaskLoader;

    #@5
    invoke-virtual {v0}, Landroid/support/v4/content/AsyncTaskLoader;->executePendingTask()V

    #@8
    .line 97
    return-void
.end method

.method public waitForLoader()V
    .locals 2

    #@0
    .prologue
    .line 105
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader$LoadTask;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>.LoadTask;"
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->mDone:Ljava/util/concurrent/CountDownLatch;

    #@2
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 103
    :goto_0
    return-void

    #@6
    .line 106
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
