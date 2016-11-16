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
.field final synthetic this$0:Landroid/media/soundtrigger/SoundTriggerDetector;


# direct methods
.method constructor <init>(Landroid/media/soundtrigger/SoundTriggerDetector;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/soundtrigger/SoundTriggerDetector;

    #@0
    .prologue
    .line 339
    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    #@2
    .line 340
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    .line 339
    return-void
.end method

.method constructor <init>(Landroid/media/soundtrigger/SoundTriggerDetector;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/soundtrigger/SoundTriggerDetector;
    .param p2, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 343
    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    #@2
    .line 344
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #@5
    .line 343
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 349
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    #@2
    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerDetector;->-get0(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

    #@5
    move-result-object v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 350
    const-string/jumbo v0, "SoundTriggerDetector"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Received message: "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    iget v2, p1, Landroid/os/Message;->what:I

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string/jumbo v2, " for NULL callback."

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2b
    .line 351
    return-void

    #@2c
    .line 353
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    #@2e
    packed-switch v0, :pswitch_data_0

    #@31
    .line 367
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    #@34
    .line 348
    :goto_0
    return-void

    #@35
    .line 355
    :pswitch_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    #@37
    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerDetector;->-get0(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

    #@3a
    move-result-object v1

    #@3b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@3d
    check-cast v0, Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;

    #@3f
    invoke-virtual {v1, v0}, Landroid/media/soundtrigger/SoundTriggerDetector$Callback;->onDetected(Landroid/media/soundtrigger/SoundTriggerDetector$EventPayload;)V

    #@42
    goto :goto_0

    #@43
    .line 358
    :pswitch_1
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    #@45
    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerDetector;->-get0(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {v0}, Landroid/media/soundtrigger/SoundTriggerDetector$Callback;->onError()V

    #@4c
    goto :goto_0

    #@4d
    .line 361
    :pswitch_2
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    #@4f
    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerDetector;->-get0(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

    #@52
    move-result-object v0

    #@53
    invoke-virtual {v0}, Landroid/media/soundtrigger/SoundTriggerDetector$Callback;->onRecognitionPaused()V

    #@56
    goto :goto_0

    #@57
    .line 364
    :pswitch_3
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerDetector$MyHandler;->this$0:Landroid/media/soundtrigger/SoundTriggerDetector;

    #@59
    invoke-static {v0}, Landroid/media/soundtrigger/SoundTriggerDetector;->-get0(Landroid/media/soundtrigger/SoundTriggerDetector;)Landroid/media/soundtrigger/SoundTriggerDetector$Callback;

    #@5c
    move-result-object v0

    #@5d
    invoke-virtual {v0}, Landroid/media/soundtrigger/SoundTriggerDetector$Callback;->onRecognitionResumed()V

    #@60
    goto :goto_0

    #@61
    .line 353
    nop

    #@62
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
