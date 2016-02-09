.class Landroid/speech/tts/TextToSpeechService$SynthThread;
.super Landroid/os/HandlerThread;
.source "TextToSpeechService.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SynthThread"
.end annotation


# instance fields
.field private mFirstIdle:Z

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;)V
    .locals 2
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeechService;

    #@0
    .prologue
    .line 430
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthThread;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@2
    .line 431
    const-string/jumbo v0, "SynthThread"

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    #@9
    .line 428
    const/4 v0, 0x1

    #@a
    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SynthThread;->mFirstIdle:Z

    #@c
    .line 430
    return-void
.end method

.method private broadcastTtsQueueProcessingCompleted()V
    .locals 2

    #@0
    .prologue
    .line 450
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.speech.tts.TTS_QUEUE_PROCESSING_COMPLETED"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 452
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthThread;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@a
    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeechService;->sendBroadcast(Landroid/content/Intent;)V

    #@d
    .line 449
    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 1

    #@0
    .prologue
    .line 436
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthThread;->getLooper()Landroid/os/Looper;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    #@7
    move-result-object v0

    #@8
    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    #@b
    .line 435
    return-void
.end method

.method public queueIdle()Z
    .locals 1

    #@0
    .prologue
    .line 441
    iget-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SynthThread;->mFirstIdle:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 442
    const/4 v0, 0x0

    #@5
    iput-boolean v0, p0, Landroid/speech/tts/TextToSpeechService$SynthThread;->mFirstIdle:Z

    #@7
    .line 446
    :goto_0
    const/4 v0, 0x1

    #@8
    return v0

    #@9
    .line 444
    :cond_0
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthThread;->broadcastTtsQueueProcessingCompleted()V

    #@c
    goto :goto_0
.end method
