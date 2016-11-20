.class Landroid/os/AsyncTask$2;
.super Landroid/os/AsyncTask$WorkerRunnable;
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
        "Landroid/os/AsyncTask$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/AsyncTask;


# direct methods
.method constructor <init>(Landroid/os/AsyncTask;)V
    .locals 1

    #@0
    .prologue
    .line 298
    .local p1, "this$0":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    iput-object p1, p0, Landroid/os/AsyncTask$2;->this$0:Landroid/os/AsyncTask;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {p0, v0}, Landroid/os/AsyncTask$WorkerRunnable;-><init>(Landroid/os/AsyncTask$WorkerRunnable;)V

    #@6
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 300
    iget-object v2, p0, Landroid/os/AsyncTask$2;->this$0:Landroid/os/AsyncTask;

    #@3
    invoke-static {v2}, Landroid/os/AsyncTask;->-get1(Landroid/os/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@a
    .line 301
    const/4 v0, 0x0

    #@b
    .line 303
    .local v0, "result":Ljava/lang/Object;, "TResult;"
    const/16 v2, 0xa

    #@d
    :try_start_0
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    #@10
    .line 305
    iget-object v2, p0, Landroid/os/AsyncTask$2;->this$0:Landroid/os/AsyncTask;

    #@12
    iget-object v3, p0, Landroid/os/AsyncTask$2;->mParams:[Ljava/lang/Object;

    #@14
    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    .line 306
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    .line 311
    iget-object v2, p0, Landroid/os/AsyncTask$2;->this$0:Landroid/os/AsyncTask;

    #@1d
    invoke-static {v2, v0}, Landroid/os/AsyncTask;->-wrap0(Landroid/os/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 313
    return-object v0

    #@21
    .line 307
    .end local v0    # "result":Ljava/lang/Object;, "TResult;"
    :catch_0
    move-exception v1

    #@22
    .line 308
    .local v1, "tr":Ljava/lang/Throwable;
    :try_start_1
    iget-object v2, p0, Landroid/os/AsyncTask$2;->this$0:Landroid/os/AsyncTask;

    #@24
    invoke-static {v2}, Landroid/os/AsyncTask;->-get0(Landroid/os/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@27
    move-result-object v2

    #@28
    const/4 v3, 0x1

    #@29
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@2c
    .line 309
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    .line 310
    .end local v1    # "tr":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    #@2e
    .line 311
    iget-object v3, p0, Landroid/os/AsyncTask$2;->this$0:Landroid/os/AsyncTask;

    #@30
    invoke-static {v3, v0}, Landroid/os/AsyncTask;->-wrap0(Landroid/os/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    .line 310
    throw v2
.end method
