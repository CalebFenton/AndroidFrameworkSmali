.class Landroid/speech/tts/TextToSpeech$14;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->getVoice()Landroid/speech/tts/Voice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/speech/tts/TextToSpeech$Action",
        "<",
        "Landroid/speech/tts/Voice;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/TextToSpeech;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech;)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeech;

    #@0
    .prologue
    .line 1671
    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$14;->this$0:Landroid/speech/tts/TextToSpeech;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run(Landroid/speech/tts/ITextToSpeechService;)Landroid/speech/tts/Voice;
    .locals 4
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1674
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$14;->this$0:Landroid/speech/tts/TextToSpeech;

    #@2
    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->-get2(Landroid/speech/tts/TextToSpeech;)Landroid/os/Bundle;

    #@5
    move-result-object v1

    #@6
    const-string/jumbo v2, "voiceName"

    #@9
    const-string/jumbo v3, ""

    #@c
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 1675
    .local v0, "voiceName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 1676
    const/4 v1, 0x0

    #@17
    return-object v1

    #@18
    .line 1678
    :cond_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$14;->this$0:Landroid/speech/tts/TextToSpeech;

    #@1a
    invoke-static {v1, p1, v0}, Landroid/speech/tts/TextToSpeech;->-wrap2(Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/ITextToSpeechService;Ljava/lang/String;)Landroid/speech/tts/Voice;

    #@1d
    move-result-object v1

    #@1e
    return-object v1
.end method

.method public bridge synthetic run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .locals 1
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 1673
    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$14;->run(Landroid/speech/tts/ITextToSpeechService;)Landroid/speech/tts/Voice;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
