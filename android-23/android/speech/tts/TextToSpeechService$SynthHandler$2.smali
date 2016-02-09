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
.field final synthetic this$1:Landroid/speech/tts/TextToSpeechService$SynthHandler;

.field final synthetic val$callerIdentity:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$1"    # Landroid/speech/tts/TextToSpeechService$SynthHandler;
    .param p2, "val$callerIdentity"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 611
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$2;->this$1:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    #@2
    iput-object p2, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$2;->val$callerIdentity:Ljava/lang/Object;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 614
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$2;->this$1:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    #@2
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$2;->val$callerIdentity:Ljava/lang/Object;

    #@4
    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->-wrap2(Landroid/speech/tts/TextToSpeechService$SynthHandler;Ljava/lang/Object;)V

    #@7
    .line 613
    return-void
.end method
