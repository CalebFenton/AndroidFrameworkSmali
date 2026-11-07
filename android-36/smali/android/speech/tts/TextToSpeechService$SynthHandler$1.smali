.class Landroid/speech/tts/TextToSpeechService$SynthHandler$1;
.super Ljava/lang/Object;
.source "TextToSpeechService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/speech/tts/TextToSpeechService$SynthHandler;

.field final synthetic blacklist val$speechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;


# direct methods
.method constructor blacklist <init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)V
    .registers 3
    .param p1, "this$1"    # Landroid/speech/tts/TextToSpeechService$SynthHandler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 579
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;->this$1:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    iput-object p2, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;->val$speechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 582
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;->this$1:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;->val$speechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->-$$Nest$msetCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 583
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;->val$speechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->play()V

    .line 584
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;->this$1:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->-$$Nest$mremoveCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SynthHandler;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    goto :goto_1a

    .line 587
    :cond_15
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$1;->val$speechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    .line 589
    :goto_1a
    return-void
.end method
