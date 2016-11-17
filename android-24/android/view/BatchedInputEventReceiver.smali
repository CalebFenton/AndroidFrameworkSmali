.class public Landroid/view/BatchedInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "BatchedInputEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;
    }
.end annotation


# instance fields
.field private final mBatchedInputRunnable:Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

.field private mBatchedInputScheduled:Z

.field mChoreographer:Landroid/view/Choreographer;


# direct methods
.method public constructor <init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .locals 2
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "choreographer"    # Landroid/view/Choreographer;

    #@0
    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    #@3
    .line 81
    new-instance v0, Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, p0, v1}, Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;-><init>(Landroid/view/BatchedInputEventReceiver;Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;)V

    #@9
    iput-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputRunnable:Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

    #@b
    .line 32
    iput-object p3, p0, Landroid/view/BatchedInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    #@d
    .line 30
    return-void
.end method

.method private scheduleBatchedInput()V
    .locals 4

    #@0
    .prologue
    .line 61
    iget-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 62
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    #@7
    .line 63
    iget-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    #@9
    iget-object v1, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputRunnable:Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

    #@b
    const/4 v2, 0x0

    #@c
    const/4 v3, 0x0

    #@d
    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    #@10
    .line 60
    :cond_0
    return-void
.end method

.method private unscheduleBatchedInput()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 68
    iget-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 69
    iput-boolean v3, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    #@7
    .line 70
    iget-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    #@9
    .line 71
    iget-object v1, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputRunnable:Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

    #@b
    const/4 v2, 0x0

    #@c
    .line 70
    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    #@f
    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Landroid/view/BatchedInputEventReceiver;->unscheduleBatchedInput()V

    #@3
    .line 43
    invoke-super {p0}, Landroid/view/InputEventReceiver;->dispose()V

    #@6
    .line 41
    return-void
.end method

.method doConsumeBatchedInput(J)V
    .locals 3
    .param p1, "frameTimeNanos"    # J

    #@0
    .prologue
    .line 47
    iget-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 48
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    #@7
    .line 49
    invoke-virtual {p0, p1, p2}, Landroid/view/InputEventReceiver;->consumeBatchedInputEvents(J)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    const-wide/16 v0, -0x1

    #@f
    cmp-long v0, p1, v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 55
    invoke-direct {p0}, Landroid/view/BatchedInputEventReceiver;->scheduleBatchedInput()V

    #@16
    .line 46
    :cond_0
    return-void
.end method

.method public onBatchedInputEventPending()V
    .locals 0

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Landroid/view/BatchedInputEventReceiver;->scheduleBatchedInput()V

    #@3
    .line 36
    return-void
.end method
