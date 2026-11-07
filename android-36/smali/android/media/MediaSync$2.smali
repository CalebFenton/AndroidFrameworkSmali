.class Landroid/media/MediaSync$2;
.super Ljava/lang/Object;
.source "MediaSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaSync;->postReturnByteBuffer(Landroid/media/MediaSync$AudioBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaSync;

.field final synthetic blacklist val$audioBuffer:Landroid/media/MediaSync$AudioBuffer;

.field final synthetic blacklist val$sync:Landroid/media/MediaSync;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaSync;Landroid/media/MediaSync;Landroid/media/MediaSync$AudioBuffer;)V
    .registers 4
    .param p1, "this$0"    # Landroid/media/MediaSync;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 583
    iput-object p1, p0, Landroid/media/MediaSync$2;->this$0:Landroid/media/MediaSync;

    iput-object p2, p0, Landroid/media/MediaSync$2;->val$sync:Landroid/media/MediaSync;

    iput-object p3, p0, Landroid/media/MediaSync$2;->val$audioBuffer:Landroid/media/MediaSync$AudioBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 586
    iget-object v0, p0, Landroid/media/MediaSync$2;->this$0:Landroid/media/MediaSync;

    invoke-static {v0}, Landroid/media/MediaSync;->-$$Nest$fgetmCallbackLock(Landroid/media/MediaSync;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 587
    :try_start_7
    iget-object v1, p0, Landroid/media/MediaSync$2;->this$0:Landroid/media/MediaSync;

    invoke-static {v1}, Landroid/media/MediaSync;->-$$Nest$fgetmCallback(Landroid/media/MediaSync;)Landroid/media/MediaSync$Callback;

    move-result-object v1

    .line 588
    .local v1, "callback":Landroid/media/MediaSync$Callback;
    iget-object v2, p0, Landroid/media/MediaSync$2;->this$0:Landroid/media/MediaSync;

    invoke-static {v2}, Landroid/media/MediaSync;->-$$Nest$fgetmCallbackHandler(Landroid/media/MediaSync;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Landroid/media/MediaSync$2;->this$0:Landroid/media/MediaSync;

    invoke-static {v2}, Landroid/media/MediaSync;->-$$Nest$fgetmCallbackHandler(Landroid/media/MediaSync;)Landroid/os/Handler;

    move-result-object v2

    .line 589
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    .line 590
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_2a

    goto :goto_3b

    .line 594
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_3d

    .line 595
    if-eqz v1, :cond_3a

    .line 596
    iget-object v0, p0, Landroid/media/MediaSync$2;->val$sync:Landroid/media/MediaSync;

    iget-object v2, p0, Landroid/media/MediaSync$2;->val$audioBuffer:Landroid/media/MediaSync$AudioBuffer;

    iget-object v2, v2, Landroid/media/MediaSync$AudioBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Landroid/media/MediaSync$2;->val$audioBuffer:Landroid/media/MediaSync$AudioBuffer;

    iget v3, v3, Landroid/media/MediaSync$AudioBuffer;->mBufferIndex:I

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/MediaSync$Callback;->onAudioBufferConsumed(Landroid/media/MediaSync;Ljava/nio/ByteBuffer;I)V

    .line 599
    :cond_3a
    return-void

    .line 592
    :cond_3b
    :goto_3b
    :try_start_3b
    monitor-exit v0

    return-void

    .line 594
    .end local v1    # "callback":Landroid/media/MediaSync$Callback;
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_3d

    throw v1
.end method
