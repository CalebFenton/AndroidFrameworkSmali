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
    .line 289
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
    .locals 3
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
    .line 291
    iget-object v1, p0, Landroid/os/AsyncTask$2;->this$0:Landroid/os/AsyncTask;

    #@2
    invoke-static {v1}, Landroid/os/AsyncTask;->-get0(Landroid/os/AsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    #@5
    move-result-object v1

    #@6
    const/4 v2, 0x1

    #@7
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@a
    .line 293
    const/16 v1, 0xa

    #@c
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    #@f
    .line 295
    iget-object v1, p0, Landroid/os/AsyncTask$2;->this$0:Landroid/os/AsyncTask;

    #@11
    iget-object v2, p0, Landroid/os/AsyncTask$2;->mParams:[Ljava/lang/Object;

    #@13
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    .line 296
    .local v0, "result":Ljava/lang/Object;, "TResult;"
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    #@1a
    .line 297
    iget-object v1, p0, Landroid/os/AsyncTask$2;->this$0:Landroid/os/AsyncTask;

    #@1c
    invoke-static {v1, v0}, Landroid/os/AsyncTask;->-wrap0(Landroid/os/AsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    return-object v1
.end method
