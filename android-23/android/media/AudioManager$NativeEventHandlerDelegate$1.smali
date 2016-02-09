.class Landroid/media/AudioManager$NativeEventHandlerDelegate$1;
.super Landroid/os/Handler;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioManager$NativeEventHandlerDelegate;-><init>(Landroid/media/AudioManager;Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/AudioManager$NativeEventHandlerDelegate;

.field final synthetic val$callback:Landroid/media/AudioDeviceCallback;


# direct methods
.method constructor <init>(Landroid/media/AudioManager$NativeEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioDeviceCallback;)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/AudioManager$NativeEventHandlerDelegate;
    .param p2, "$anonymous0"    # Landroid/os/Looper;
    .param p3, "val$callback"    # Landroid/media/AudioDeviceCallback;

    #@0
    .prologue
    .line 4004
    iput-object p1, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;->this$1:Landroid/media/AudioManager$NativeEventHandlerDelegate;

    #@2
    iput-object p3, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;->val$callback:Landroid/media/AudioDeviceCallback;

    #@4
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@7
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 4007
    iget v0, p1, Landroid/os/Message;->what:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 4022
    invoke-static {}, Landroid/media/AudioManager;->-get0()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Unknown native event type: "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    iget v2, p1, Landroid/os/Message;->what:I

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@22
    .line 4006
    :cond_0
    :goto_0
    return-void

    #@23
    .line 4010
    :pswitch_0
    iget-object v0, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;->val$callback:Landroid/media/AudioDeviceCallback;

    #@25
    if-eqz v0, :cond_0

    #@27
    .line 4011
    iget-object v1, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;->val$callback:Landroid/media/AudioDeviceCallback;

    #@29
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2b
    check-cast v0, [Landroid/media/AudioDeviceInfo;

    #@2d
    invoke-virtual {v1, v0}, Landroid/media/AudioDeviceCallback;->onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V

    #@30
    goto :goto_0

    #@31
    .line 4016
    :pswitch_1
    iget-object v0, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;->val$callback:Landroid/media/AudioDeviceCallback;

    #@33
    if-eqz v0, :cond_0

    #@35
    .line 4017
    iget-object v1, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;->val$callback:Landroid/media/AudioDeviceCallback;

    #@37
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@39
    check-cast v0, [Landroid/media/AudioDeviceInfo;

    #@3b
    invoke-virtual {v1, v0}, Landroid/media/AudioDeviceCallback;->onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V

    #@3e
    goto :goto_0

    #@3f
    .line 4007
    nop

    #@40
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
