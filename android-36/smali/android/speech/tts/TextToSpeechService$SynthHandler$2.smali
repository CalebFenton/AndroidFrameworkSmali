.class Landroid/speech/tts/TextToSpeechService$SynthHandler$2;
.super Ljava/lang/Object;
.source "TextToSpeechService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeechService$SynthHandler;->stopForApp(Ljava/lang/Object;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/speech/tts/TextToSpeechService$SynthHandler;

.field final synthetic blacklist val$callerIdentity:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;Ljava/lang/Object;)V
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

    .line 641
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$2;->this$1:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    iput-object p2, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$2;->val$callerIdentity:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 3

    .line 644
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$2;->this$1:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$2;->val$callerIdentity:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->-$$Nest$mendFlushingSpeechItems(Landroid/speech/tts/TextToSpeechService$SynthHandler;Ljava/lang/Object;)V

    .line 645
    return-void
.end method
