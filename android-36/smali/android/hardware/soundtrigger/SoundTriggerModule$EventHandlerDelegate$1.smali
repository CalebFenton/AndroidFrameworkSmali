.class Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate$1;
.super Landroid/os/Handler;
.source "SoundTriggerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;-><init>(Landroid/hardware/soundtrigger/SoundTriggerModule;Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

.field final synthetic blacklist val$this$0:Landroid/hardware/soundtrigger/SoundTriggerModule;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;Landroid/os/Looper;Landroid/hardware/soundtrigger/SoundTriggerModule;Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;)V
    .registers 5
    .param p1, "this$1"    # Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate;
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

    .line 387
    iput-object p3, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate$1;->val$this$0:Landroid/hardware/soundtrigger/SoundTriggerModule;

    iput-object p4, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 390
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_48

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundTriggerModule"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 399
    :pswitch_22
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;->onModelUnloaded(I)V

    .line 400
    goto :goto_46

    .line 396
    :pswitch_30
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    invoke-interface {v0}, Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;->onResourcesAvailable()V

    .line 397
    goto :goto_46

    .line 402
    :pswitch_36
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    invoke-interface {v0}, Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;->onServiceDied()V

    .line 403
    goto :goto_46

    .line 392
    :pswitch_3c
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$EventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    invoke-interface {v0, v1}, Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;->onRecognition(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V

    .line 394
    nop

    .line 408
    :goto_46
    return-void

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_36
        :pswitch_30
        :pswitch_22
    .end packed-switch
.end method
