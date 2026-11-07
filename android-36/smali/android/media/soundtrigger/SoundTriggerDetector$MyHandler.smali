.class Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;
.super Landroid/os/Handler;
.source "SoundTriggerDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger/SoundTriggerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/soundtrigger/SoundTriggerDetector;


# direct methods
.method constructor blacklist <init>(Landroid/media/soundtrigger/SoundTriggerDetector;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 452
    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    .line 453
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 454
    return-void
.end method

.method constructor blacklist <init>(Landroid/media/soundtrigger/SoundTriggerDetector;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 456
    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    .line 457
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 458
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 462
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerDetector;->-$$Nest$fgetmCallback(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

    move-result-object v0

    if-nez v0, :cond_29

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for NULL callback."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundTriggerDetector"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    return-void

    .line 466
    :cond_29
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_60

    .line 480
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_5e

    .line 477
    :pswitch_32
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerDetector;->-$$Nest$fgetmCallback(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/soundtrigger/SoundTriggerDetector$Callback;->onRecognitionResumed()V

    .line 478
    goto :goto_5e

    .line 474
    :pswitch_3c
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerDetector;->-$$Nest$fgetmCallback(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/soundtrigger/SoundTriggerDetector$Callback;->onRecognitionPaused()V

    .line 475
    goto :goto_5e

    .line 471
    :pswitch_46
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerDetector;->-$$Nest$fgetmCallback(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/soundtrigger/SoundTriggerDetector$Callback;->onError()V

    .line 472
    goto :goto_5e

    .line 468
    :pswitch_50
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerDetector;->-$$Nest$fgetmCallback(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;

    invoke-virtual {v0, v1}, Landroid/media/soundtrigger/SoundTriggerDetector$Callback;->onDetected(Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;)V

    .line 469
    nop

    .line 483
    :goto_5e
    return-void

    nop

    :pswitch_data_60
    .packed-switch 0x2
        :pswitch_50
        :pswitch_46
        :pswitch_3c
        :pswitch_32
    .end packed-switch
.end method
