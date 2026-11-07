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
.field final synthetic blacklist val$callback:Landroid/media/AudioDeviceCallback;

.field final synthetic blacklist val$this$0:Landroid/media/AudioManager;


# direct methods
.method constructor blacklist <init>(Landroid/media/AudioManager$NativeEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioManager;Landroid/media/AudioDeviceCallback;)V
    .registers 5
    .param p1, "this$1"    # Landroid/media/AudioManager$NativeEventHandlerDelegate;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 10473
    iput-object p3, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;->val$this$0:Landroid/media/AudioManager;

    iput-object p4, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;->val$callback:Landroid/media/AudioDeviceCallback;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 10476
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3c

    .line 10491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown native event type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 10485
    :pswitch_20
    iget-object v0, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;->val$callback:Landroid/media/AudioDeviceCallback;

    if-eqz v0, :cond_3b

    .line 10486
    iget-object v0, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;->val$callback:Landroid/media/AudioDeviceCallback;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/media/AudioDeviceInfo;

    invoke-virtual {v0, v1}, Landroid/media/AudioDeviceCallback;->onAudioDevicesRemoved([Landroid/media/AudioDeviceInfo;)V

    goto :goto_3b

    .line 10479
    :pswitch_2e
    iget-object v0, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;->val$callback:Landroid/media/AudioDeviceCallback;

    if-eqz v0, :cond_3b

    .line 10480
    iget-object v0, p0, Landroid/media/AudioManager$NativeEventHandlerDelegate$1;->val$callback:Landroid/media/AudioDeviceCallback;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/media/AudioDeviceInfo;

    invoke-virtual {v0, v1}, Landroid/media/AudioDeviceCallback;->onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V

    .line 10494
    :cond_3b
    :goto_3b
    return-void

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2e
        :pswitch_20
    .end packed-switch
.end method
