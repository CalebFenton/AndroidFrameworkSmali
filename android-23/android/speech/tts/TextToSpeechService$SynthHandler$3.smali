.class Landroid/speech/tts/TextToSpeechService$SynthHandler$3;
.super Ljava/lang/Object;
.source "TextToSpeechService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeechService$SynthHandler;->stopAll()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/speech/tts/TextToSpeechService$SynthHandler;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;)V
    .locals 0
    .param p1, "this$1"    # Landroid/speech/tts/TextToSpeechService$SynthHandler;

    #@0
    .prologue
    .line 634
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$3;->this$1:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 637
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthHandler$3;->this$1:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->-wrap2(Landroid/speech/tts/TextToSpeechService$SynthHandler;Ljava/lang/Object;)V

    #@6
    .line 636
    return-void
.end method
