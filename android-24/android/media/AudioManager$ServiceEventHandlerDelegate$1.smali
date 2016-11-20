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
.field final synthetic this$1:Landroid/media/AudioManager$ServiceEventHandlerDelegate;


# direct methods
.method constructor <init>(Landroid/media/AudioManager$ServiceEventHandlerDelegate;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/AudioManager$ServiceEventHandlerDelegate;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 2146
    iput-object p1, p0, Landroid/media/AudioManager$ServiceEventHandlerDelegate$1;->this$1:Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    #@2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 2149
    iget v2, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v2, :pswitch_data_0

    #@5
    .line 2169
    invoke-static {}, Landroid/media/AudioManager;->-get0()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    new-instance v3, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v4, "Unknown event "

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    iget v4, p1, Landroid/os/Message;->what:I

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 2148
    :cond_0
    :goto_0
    return-void

    #@23
    .line 2151
    :pswitch_0
    const/4 v1, 0x0

    #@24
    .line 2152
    .local v1, "listener":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    iget-object v2, p0, Landroid/media/AudioManager$ServiceEventHandlerDelegate$1;->this$1:Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    #@26
    iget-object v2, v2, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->this$0:Landroid/media/AudioManager;

    #@28
    invoke-static {v2}, Landroid/media/AudioManager;->-get1(Landroid/media/AudioManager;)Ljava/lang/Object;

    #@2b
    move-result-object v3

    #@2c
    monitor-enter v3

    #@2d
    .line 2153
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioManager$ServiceEventHandlerDelegate$1;->this$1:Landroid/media/AudioManager$ServiceEventHandlerDelegate;

    #@2f
    iget-object v4, v2, Landroid/media/AudioManager$ServiceEventHandlerDelegate;->this$0:Landroid/media/AudioManager;

    #@31
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@33
    check-cast v2, Ljava/lang/String;

    #@35
    invoke-static {v4, v2}, Landroid/media/AudioManager;->-wrap0(Landroid/media/AudioManager;Ljava/lang/String;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    move-result-object v1

    #@39
    .local v1, "listener":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    monitor-exit v3

    #@3a
    .line 2155
    if-eqz v1, :cond_0

    #@3c
    .line 2156
    invoke-static {}, Landroid/media/AudioManager;->-get0()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    new-instance v3, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v4, "AudioManager dispatching onAudioFocusChange("

    #@48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    .line 2157
    iget v4, p1, Landroid/os/Message;->arg1:I

    #@4e
    .line 2156
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    .line 2157
    const-string/jumbo v4, ") for "

    #@55
    .line 2156
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    .line 2157
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@5b
    .line 2156
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v3

    #@63
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@66
    .line 2158
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@68
    invoke-interface {v1, v2}, Landroid/media/AudioManager$OnAudioFocusChangeListener;->onAudioFocusChange(I)V

    #@6b
    goto :goto_0

    #@6c
    .line 2152
    .local v1, "listener":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    :catchall_0
    move-exception v2

    #@6d
    monitor-exit v3

    #@6e
    throw v2

    #@6f
    .line 2163
    .end local v1    # "listener":Landroid/media/AudioManager$OnAudioFocusChangeListener;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@71
    check-cast v0, Landroid/media/AudioManager$RecordConfigChangeCallbackData;

    #@73
    .line 2164
    .local v0, "cbData":Landroid/media/AudioManager$RecordConfigChangeCallbackData;
    iget-object v2, v0, Landroid/media/AudioManager$RecordConfigChangeCallbackData;->mCb:Landroid/media/AudioManager$AudioRecordingCallback;

    #@75
    if-eqz v2, :cond_0

    #@77
    .line 2165
    iget-object v2, v0, Landroid/media/AudioManager$RecordConfigChangeCallbackData;->mCb:Landroid/media/AudioManager$AudioRecordingCallback;

    #@79
    iget-object v3, v0, Landroid/media/AudioManager$RecordConfigChangeCallbackData;->mConfigs:Ljava/util/List;

    #@7b
    invoke-virtual {v2, v3}, Landroid/media/AudioManager$AudioRecordingCallback;->onRecordingConfigChanged(Ljava/util/List;)V

    #@7e
    goto :goto_0

    #@7f
    .line 2149
    nop

    #@80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
