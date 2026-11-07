.class Landroid/media/AudioManager$2;
.super Landroid/media/IAudioFocusDispatcher$Stub;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/AudioManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/media/AudioManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 4467
    iput-object p1, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/IAudioFocusDispatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist dispatchAudioFocusChange(ILjava/lang/String;)V
    .registers 7
    .param p1, "focusChange"    # I
    .param p2, "id"    # Ljava/lang/String;

    .line 4470
    iget-object v0, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    invoke-static {v0, p2}, Landroid/media/AudioManager;->-$$Nest$mfindFocusRequestInfo(Landroid/media/AudioManager;Ljava/lang/String;)Landroid/media/AudioManager$FocusRequestInfo;

    move-result-object v0

    .line 4471
    .local v0, "fri":Landroid/media/AudioManager$FocusRequestInfo;
    if-eqz v0, :cond_29

    .line 4472
    iget-object v1, v0, Landroid/media/AudioManager$FocusRequestInfo;->mRequest:Landroid/media/AudioFocusRequest;

    .line 4473
    invoke-virtual {v1}, Landroid/media/AudioFocusRequest;->getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    .line 4474
    .local v1, "listener":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    if-eqz v1, :cond_29

    .line 4475
    iget-object v2, v0, Landroid/media/AudioManager$FocusRequestInfo;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_1f

    .line 4476
    iget-object v2, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    invoke-static {v2}, Landroid/media/AudioManager;->-$$Nest$fgetmServiceEventHandlerDelegate(Landroid/media/AudioManager;)Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v2

    goto :goto_21

    :cond_1f
    iget-object v2, v0, Landroid/media/AudioManager$FocusRequestInfo;->mHandler:Landroid/os/Handler;

    .line 4477
    .local v2, "h":Landroid/os/Handler;
    :goto_21
    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 4480
    .local v3, "m":Landroid/os/Message;
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4483
    .end local v1    # "listener":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .end local v2    # "h":Landroid/os/Handler;
    .end local v3    # "m":Landroid/os/Message;
    :cond_29
    return-void
.end method

.method public blacklist dispatchFocusResultFromExtPolicy(ILjava/lang/String;)V
    .registers 7
    .param p1, "requestResult"    # I
    .param p2, "clientId"    # Ljava/lang/String;

    .line 4487
    iget-object v0, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->-$$Nest$fgetmFocusRequestsLock(Landroid/media/AudioManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4489
    :try_start_7
    iget-object v1, p0, Landroid/media/AudioManager$2;->this$0:Landroid/media/AudioManager;

    invoke-static {v1}, Landroid/media/AudioManager;->-$$Nest$fgetmFocusRequestsAwaitingResult(Landroid/media/AudioManager;)Ljava/util/HashMap;

    move-result-object v1

    .line 4490
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager$BlockingFocusResultReceiver;

    .line 4491
    .local v1, "focusReceiver":Landroid/media/AudioManager$BlockingFocusResultReceiver;
    if-eqz v1, :cond_19

    .line 4492
    invoke-virtual {v1, p1}, Landroid/media/AudioManager$BlockingFocusResultReceiver;->notifyResult(I)V

    goto :goto_20

    .line 4494
    :cond_19
    const-string v2, "AudioManager"

    const-string v3, "dispatchFocusResultFromExtPolicy found no result receiver"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4496
    .end local v1    # "focusReceiver":Landroid/media/AudioManager$BlockingFocusResultReceiver;
    :goto_20
    monitor-exit v0

    .line 4497
    return-void

    .line 4496
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_7 .. :try_end_24} :catchall_22

    throw v1
.end method
