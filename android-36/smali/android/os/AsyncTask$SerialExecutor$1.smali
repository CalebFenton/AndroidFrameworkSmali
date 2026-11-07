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
.field final synthetic blacklist this$0:Landroid/os/AsyncTask$SerialExecutor;

.field final synthetic blacklist val$r:Ljava/lang/Runnable;


# direct methods
.method constructor blacklist <init>(Landroid/os/AsyncTask$SerialExecutor;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "this$0"    # Landroid/os/AsyncTask$SerialExecutor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 302
    iput-object p1, p0, Landroid/os/AsyncTask$SerialExecutor$1;->this$0:Landroid/os/AsyncTask$SerialExecutor;

    iput-object p2, p0, Landroid/os/AsyncTask$SerialExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 305
    :try_start_0
    iget-object v0, p0, Landroid/os/AsyncTask$SerialExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_c

    .line 307
    iget-object v0, p0, Landroid/os/AsyncTask$SerialExecutor$1;->this$0:Landroid/os/AsyncTask$SerialExecutor;

    invoke-virtual {v0}, Landroid/os/AsyncTask$SerialExecutor;->scheduleNext()V

    .line 308
    nop

    .line 309
    return-void

    .line 307
    :catchall_c
    move-exception v0

    iget-object v1, p0, Landroid/os/AsyncTask$SerialExecutor$1;->this$0:Landroid/os/AsyncTask$SerialExecutor;

    invoke-virtual {v1}, Landroid/os/AsyncTask$SerialExecutor;->scheduleNext()V

    .line 308
    throw v0
.end method
