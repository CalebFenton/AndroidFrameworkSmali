.class Landroid/media/AudioManager$ServiceEventHandlerDelegate$1;
.super Landroid/os/Handler;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioManager$ServiceEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/media/AudioManager$ServiceEventHandlerDelegate;

.field final synthetic blacklist val$this$0:Landroid/media/AudioManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioManager$ServiceEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioManager;)V
    .registers 4
    .param p1, "this$1"    # Landroid/media/AudioManager$ServiceEventHandlerDelegate;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 4419
    iput-object p1, p0, Landroid/media/AudioManager$ServiceEventHandlerDelegate$1;->this$1:Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    iput-object p3, p0, Landroid/media/AudioManager$ServiceEventHandlerDelegate$1;->val$this$0:Landroid/media/AudioManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 4422
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "AudioManager"

    packed-switch v0, :pswitch_data_82

    .line 4453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown event "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 4443
    :pswitch_20
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;

    .line 4445
    .local v0, "cbData":Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;
    iget-object v1, v0, Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;->mCb:Landroid/media/AudioManager$AudioPlaybackCallback;

    if-eqz v1, :cond_2f

    .line 4449
    iget-object v1, v0, Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;->mCb:Landroid/media/AudioManager$AudioPlaybackCallback;

    iget-object v2, v0, Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;->mConfigs:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager$AudioPlaybackCallback;->onPlaybackConfigChanged(Ljava/util/List;)V

    .line 4451
    .end local v0    # "cbData":Landroid/media/AudioManager$PlaybackConfigChangeCallbackData;
    :cond_2f
    goto :goto_80

    .line 4436
    :pswitch_30
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/AudioManager$RecordConfigChangeCallbackData;

    .line 4438
    .local v0, "cbData":Landroid/media/AudioManager$RecordConfigChangeCallbackData;
    iget-object v1, v0, Landroid/media/AudioManager$RecordConfigChangeCallbackData;->mCb:Landroid/media/AudioManager$AudioRecordingCallback;

    if-eqz v1, :cond_3f

    .line 4439
    iget-object v1, v0, Landroid/media/AudioManager$RecordConfigChangeCallbackData;->mCb:Landroid/media/AudioManager$AudioRecordingCallback;

    iget-object v2, v0, Landroid/media/AudioManager$RecordConfigChangeCallbackData;->mConfigs:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager$AudioRecordingCallback;->onRecordingConfigChanged(Ljava/util/List;)V

    .line 4441
    .end local v0    # "cbData":Landroid/media/AudioManager$RecordConfigChangeCallbackData;
    :cond_3f
    goto :goto_80

    .line 4424
    :pswitch_40
    iget-object v0, p0, Landroid/media/AudioManager$ServiceEventHandlerDelegate$1;->this$1:Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    iget-object v0, v0, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->this$0:Landroid/media/AudioManager;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/media/AudioManager;->-$$Nest$mfindFocusRequestInfo(Landroid/media/AudioManager;Ljava/lang/String;)Landroid/media/AudioManager$FocusRequestInfo;

    move-result-object v0

    .line 4425
    .local v0, "fri":Landroid/media/AudioManager$FocusRequestInfo;
    if-eqz v0, :cond_7f

    .line 4426
    iget-object v2, v0, Landroid/media/AudioManager$FocusRequestInfo;->mRequest:Landroid/media/AudioFocusRequest;

    .line 4427
    invoke-virtual {v2}, Landroid/media/AudioFocusRequest;->getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v2

    .line 4428
    .local v2, "listener":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    if-eqz v2, :cond_7f

    .line 4429
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatching onAudioFocusChange("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4431
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v1}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    .line 4434
    .end local v0    # "fri":Landroid/media/AudioManager$FocusRequestInfo;
    .end local v2    # "listener":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    :cond_7f
    nop

    .line 4455
    :goto_80
    return-void

    nop

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_40
        :pswitch_30
        :pswitch_20
    .end packed-switch
.end method
