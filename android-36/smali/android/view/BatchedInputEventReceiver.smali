.class public Landroid/view/BatchedInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "BatchedInputEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;,
        Landroid/view/BatchedInputEventReceiver$SimpleBatchedInputEventReceiver;
    }
.end annotation


# instance fields
.field private final greylist-max-o mBatchedInputRunnable:Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

.field private greylist-max-o mBatchedInputScheduled:Z

.field private blacklist mBatchingEnabled:Z

.field private greylist-max-o mChoreographer:Landroid/view/Choreographer;

.field private final blacklist mConsumeBatchedInputEvents:Ljava/lang/Runnable;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mTag:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChoreographer(Landroid/view/BatchedInputEventReceiver;)Landroid/view/Choreographer;
    .registers 1

    iget-object p0, p0, Landroid/view/BatchedInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTag(Landroid/view/BatchedInputEventReceiver;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/view/BatchedInputEventReceiver;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public constructor greylist <init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V
    .registers 6
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "choreographer"    # Landroid/view/Choreographer;

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 34
    new-instance v0, Landroid/view/BatchedInputEventReceiver$1;

    invoke-direct {v0, p0}, Landroid/view/BatchedInputEventReceiver$1;-><init>(Landroid/view/BatchedInputEventReceiver;)V

    iput-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mConsumeBatchedInputEvents:Ljava/lang/Runnable;

    .line 136
    new-instance v0, Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;-><init>(Landroid/view/BatchedInputEventReceiver;Landroid/view/BatchedInputEventReceiver-IA;)V

    iput-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputRunnable:Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

    .line 45
    iput-object p3, p0, Landroid/view/BatchedInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchingEnabled:Z

    .line 47
    invoke-virtual {p1}, Landroid/view/InputChannel;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mTag:Ljava/lang/String;

    .line 48
    const-string v0, "mBatchingEnabled"

    iget-boolean v1, p0, Landroid/view/BatchedInputEventReceiver;->mBatchingEnabled:Z

    invoke-direct {p0, v0, v1}, Landroid/view/BatchedInputEventReceiver;->traceBoolVariable(Ljava/lang/String;Z)V

    .line 49
    const-string v0, "mBatchedInputScheduled"

    iget-boolean v1, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    invoke-direct {p0, v0, v1}, Landroid/view/BatchedInputEventReceiver;->traceBoolVariable(Ljava/lang/String;Z)V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mHandler:Landroid/os/Handler;

    .line 51
    return-void
.end method

.method private greylist-max-o scheduleBatchedInput()V
    .registers 5

    .line 103
    iget-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    if-nez v0, :cond_17

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    .line 105
    const-string v0, "mBatchedInputScheduled"

    iget-boolean v1, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    invoke-direct {p0, v0, v1}, Landroid/view/BatchedInputEventReceiver;->traceBoolVariable(Ljava/lang/String;Z)V

    .line 106
    iget-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputRunnable:Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 108
    :cond_17
    return-void
.end method

.method private blacklist traceBoolVariable(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 122
    const-wide/16 v0, 0x4

    invoke-static {v0, v1, p1, p2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 123
    return-void
.end method

.method private greylist-max-o unscheduleBatchedInput()V
    .registers 5

    .line 111
    iget-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    if-eqz v0, :cond_16

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    .line 113
    const-string v1, "mBatchedInputScheduled"

    iget-boolean v2, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    invoke-direct {p0, v1, v2}, Landroid/view/BatchedInputEventReceiver;->traceBoolVariable(Ljava/lang/String;Z)V

    .line 114
    iget-object v1, p0, Landroid/view/BatchedInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    iget-object v2, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputRunnable:Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 117
    :cond_16
    return-void
.end method


# virtual methods
.method public greylist-max-o dispose()V
    .registers 3

    .line 64
    invoke-direct {p0}, Landroid/view/BatchedInputEventReceiver;->unscheduleBatchedInput()V

    .line 65
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/BatchedInputEventReceiver;->consumeBatchedInputEvents(J)Z

    .line 66
    invoke-super {p0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 67
    return-void
.end method

.method protected greylist-max-o doConsumeBatchedInput(J)V
    .registers 5
    .param p1, "frameTimeNanos"    # J

    .line 88
    iget-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    if-eqz v0, :cond_1d

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    .line 90
    const-string v0, "mBatchedInputScheduled"

    iget-boolean v1, p0, Landroid/view/BatchedInputEventReceiver;->mBatchedInputScheduled:Z

    invoke-direct {p0, v0, v1}, Landroid/view/BatchedInputEventReceiver;->traceBoolVariable(Ljava/lang/String;Z)V

    .line 91
    invoke-virtual {p0, p1, p2}, Landroid/view/BatchedInputEventReceiver;->consumeBatchedInputEvents(J)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1d

    .line 97
    invoke-direct {p0}, Landroid/view/BatchedInputEventReceiver;->scheduleBatchedInput()V

    .line 100
    :cond_1d
    return-void
.end method

.method public blacklist onBatchedInputEventPending(I)V
    .registers 4
    .param p1, "source"    # I

    .line 55
    iget-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchingEnabled:Z

    if-eqz v0, :cond_8

    .line 56
    invoke-direct {p0}, Landroid/view/BatchedInputEventReceiver;->scheduleBatchedInput()V

    goto :goto_d

    .line 58
    :cond_8
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/BatchedInputEventReceiver;->consumeBatchedInputEvents(J)Z

    .line 60
    :goto_d
    return-void
.end method

.method public blacklist setBatchingEnabled(Z)V
    .registers 4
    .param p1, "batchingEnabled"    # Z

    .line 74
    iget-boolean v0, p0, Landroid/view/BatchedInputEventReceiver;->mBatchingEnabled:Z

    if-ne v0, p1, :cond_5

    .line 75
    return-void

    .line 78
    :cond_5
    iput-boolean p1, p0, Landroid/view/BatchedInputEventReceiver;->mBatchingEnabled:Z

    .line 79
    const-string v0, "mBatchingEnabled"

    iget-boolean v1, p0, Landroid/view/BatchedInputEventReceiver;->mBatchingEnabled:Z

    invoke-direct {p0, v0, v1}, Landroid/view/BatchedInputEventReceiver;->traceBoolVariable(Ljava/lang/String;Z)V

    .line 80
    iget-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/BatchedInputEventReceiver;->mConsumeBatchedInputEvents:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 81
    if-nez p1, :cond_21

    .line 82
    invoke-direct {p0}, Landroid/view/BatchedInputEventReceiver;->unscheduleBatchedInput()V

    .line 83
    iget-object v0, p0, Landroid/view/BatchedInputEventReceiver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/view/BatchedInputEventReceiver;->mConsumeBatchedInputEvents:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    :cond_21
    return-void
.end method
