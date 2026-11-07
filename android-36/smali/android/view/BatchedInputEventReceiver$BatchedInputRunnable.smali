.class final Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;
.super Ljava/lang/Object;
.source "BatchedInputEventReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/BatchedInputEventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BatchedInputRunnable"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/BatchedInputEventReceiver;


# direct methods
.method private constructor blacklist <init>(Landroid/view/BatchedInputEventReceiver;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 125
    iput-object p1, p0, Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;->this$0:Landroid/view/BatchedInputEventReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/BatchedInputEventReceiver;Landroid/view/BatchedInputEventReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;-><init>(Landroid/view/BatchedInputEventReceiver;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 6

    .line 129
    const-wide/16 v0, 0x4

    :try_start_2
    iget-object v2, p0, Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;->this$0:Landroid/view/BatchedInputEventReceiver;

    invoke-static {v2}, Landroid/view/BatchedInputEventReceiver;->-$$Nest$fgetmTag(Landroid/view/BatchedInputEventReceiver;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 130
    iget-object v2, p0, Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;->this$0:Landroid/view/BatchedInputEventReceiver;

    iget-object v3, p0, Landroid/view/BatchedInputEventReceiver$BatchedInputRunnable;->this$0:Landroid/view/BatchedInputEventReceiver;

    invoke-static {v3}, Landroid/view/BatchedInputEventReceiver;->-$$Nest$fgetmChoreographer(Landroid/view/BatchedInputEventReceiver;)Landroid/view/Choreographer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/view/BatchedInputEventReceiver;->doConsumeBatchedInput(J)V
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_1f

    .line 132
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 133
    nop

    .line 134
    return-void

    .line 132
    :catchall_1f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 133
    throw v2
.end method
