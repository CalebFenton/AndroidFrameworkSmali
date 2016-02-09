.class Landroid/os/AsyncTask$SerialExecutor$1;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/AsyncTask$SerialExecutor;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/os/AsyncTask$SerialExecutor;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/os/AsyncTask$SerialExecutor;Ljava/lang/Runnable;)V
    .locals 0
    .param p2, "val$r"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 231
    .local p1, "this$1":Landroid/os/AsyncTask$SerialExecutor;, "Landroid/os/AsyncTask<TParams;TProgress;TResult;>.SerialExecutor;"
    iput-object p1, p0, Landroid/os/AsyncTask$SerialExecutor$1;->this$1:Landroid/os/AsyncTask$SerialExecutor;

    #@2
    iput-object p2, p0, Landroid/os/AsyncTask$SerialExecutor$1;->val$r:Ljava/lang/Runnable;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 234
    :try_start_0
    iget-object v0, p0, Landroid/os/AsyncTask$SerialExecutor$1;->val$r:Ljava/lang/Runnable;

    #@2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    .line 236
    iget-object v0, p0, Landroid/os/AsyncTask$SerialExecutor$1;->this$1:Landroid/os/AsyncTask$SerialExecutor;

    #@7
    invoke-virtual {v0}, Landroid/os/AsyncTask$SerialExecutor;->scheduleNext()V

    #@a
    .line 232
    return-void

    #@b
    .line 235
    :catchall_0
    move-exception v0

    #@c
    .line 236
    iget-object v1, p0, Landroid/os/AsyncTask$SerialExecutor$1;->this$1:Landroid/os/AsyncTask$SerialExecutor;

    #@e
    invoke-virtual {v1}, Landroid/os/AsyncTask$SerialExecutor;->scheduleNext()V

    #@11
    .line 235
    throw v0
.end method
