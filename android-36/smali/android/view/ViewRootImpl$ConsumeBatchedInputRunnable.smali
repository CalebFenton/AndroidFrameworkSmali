.class final Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ConsumeBatchedInputRunnable"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 10741
    iput-object p1, p0, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 10744
    iget-object v0, p0, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 10746
    :try_start_b
    iget-object v0, p0, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;->this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 10747
    iget-object v0, p0, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, p0, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v3}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewRootImpl;->doConsumeBatchedInput(J)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 10752
    iget-object v0, p0, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_2a

    .line 10755
    :cond_25
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 10756
    nop

    .line 10757
    return-void

    .line 10755
    :catchall_2a
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 10756
    throw v0
.end method
