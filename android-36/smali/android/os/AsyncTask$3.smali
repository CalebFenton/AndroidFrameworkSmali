.class Landroid/os/AsyncTask$3;
.super Landroid/os/AsyncTask$WorkerRunnable;
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
        "Landroid/os/AsyncTask$WorkerRunnable<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/AsyncTask;


# direct methods
.method constructor blacklist <init>(Landroid/os/AsyncTask;)V
    .registers 3
    .param p1, "this$0"    # Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 387
    .local p0, "this":Landroid/os/AsyncTask$3;, "Landroid/os/AsyncTask$3;"
    iput-object p1, p0, Landroid/os/AsyncTask$3;->this$0:Landroid/os/AsyncTask;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/os/AsyncTask$WorkerRunnable;-><init>(Landroid/os/AsyncTask-IA;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api call()Ljava/lang/Object;
    .registers 5
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

    .line 389
    .local p0, "this":Landroid/os/AsyncTask$3;, "Landroid/os/AsyncTask$3;"
    iget-object v0, p0, Landroid/os/AsyncTask$3;->this$0:Landroid/os/AsyncTask;

    invoke-static {v0}, Landroid/os/AsyncTask;->-$$Nest$fgetmTaskInvoked(Landroid/os/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 390
    const/4 v0, 0x0

    .line 392
    .local v0, "result":Ljava/lang/Object;, "TResult;"
    const/16 v2, 0xa

    :try_start_d
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 394
    iget-object v2, p0, Landroid/os/AsyncTask$3;->this$0:Landroid/os/AsyncTask;

    iget-object v3, p0, Landroid/os/AsyncTask$3;->mParams:[Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 395
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_1c
    .catchall {:try_start_d .. :try_end_1c} :catchall_23

    .line 400
    iget-object v1, p0, Landroid/os/AsyncTask$3;->this$0:Landroid/os/AsyncTask;

    invoke-static {v1, v0}, Landroid/os/AsyncTask;->-$$Nest$mpostResult(Landroid/os/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    nop

    .line 402
    return-object v0

    .line 396
    :catchall_23
    move-exception v2

    .line 397
    .local v2, "tr":Ljava/lang/Throwable;
    :try_start_24
    iget-object v3, p0, Landroid/os/AsyncTask$3;->this$0:Landroid/os/AsyncTask;

    invoke-static {v3}, Landroid/os/AsyncTask;->-$$Nest$fgetmCancelled(Landroid/os/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 398
    nop

    .end local v0    # "result":Ljava/lang/Object;, "TResult;"
    .end local p0    # "this":Landroid/os/AsyncTask$3;, "Landroid/os/AsyncTask$3;"
    throw v2
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_2f

    .line 400
    .end local v2    # "tr":Ljava/lang/Throwable;
    .restart local v0    # "result":Ljava/lang/Object;, "TResult;"
    .restart local p0    # "this":Landroid/os/AsyncTask$3;, "Landroid/os/AsyncTask$3;"
    :catchall_2f
    move-exception v1

    iget-object v2, p0, Landroid/os/AsyncTask$3;->this$0:Landroid/os/AsyncTask;

    invoke-static {v2, v0}, Landroid/os/AsyncTask;->-$$Nest$mpostResult(Landroid/os/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    throw v1
.end method
