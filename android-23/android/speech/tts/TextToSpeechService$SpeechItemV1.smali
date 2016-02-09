.class abstract Landroid/speech/tts/TextToSpeechService$SpeechItemV1;
.super Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "SpeechItemV1"
.end annotation


# instance fields
.field protected final mParams:Landroid/os/Bundle;

.field protected final mUtteranceId:Ljava/lang/String;

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeechService;
    .param p2, "callerIdentity"    # Ljava/lang/Object;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I
    .param p5, "params"    # Landroid/os/Bundle;
    .param p6, "utteranceId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 880
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@2
    .line 882
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;II)V

    #@5
    .line 883
    iput-object p5, p0, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->mParams:Landroid/os/Bundle;

    #@7
    .line 884
    iput-object p6, p0, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->mUtteranceId:Ljava/lang/String;

    #@9
    .line 881
    return-void
.end method


# virtual methods
.method getAudioParams()Landroid/speech/tts/TextToSpeechService$AudioOutputParams;
    .locals 2

    #@0
    .prologue
    .line 905
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->mParams:Landroid/os/Bundle;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->createFromV1ParamsBundle(Landroid/os/Bundle;Z)Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method getPitch()I
    .locals 3

    #@0
    .prologue
    .line 896
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->mParams:Landroid/os/Bundle;

    #@2
    const-string/jumbo v1, "pitch"

    #@5
    const/16 v2, 0x64

    #@7
    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->getIntParam(Landroid/os/Bundle;Ljava/lang/String;I)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method getSpeechRate()I
    .locals 3

    #@0
    .prologue
    .line 892
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->mParams:Landroid/os/Bundle;

    #@2
    const-string/jumbo v1, "rate"

    #@5
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@7
    invoke-static {v2}, Landroid/speech/tts/TextToSpeechService;->-wrap0(Landroid/speech/tts/TextToSpeechService;)I

    #@a
    move-result v2

    #@b
    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->getIntParam(Landroid/os/Bundle;Ljava/lang/String;I)I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public getUtteranceId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 901
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->mUtteranceId:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method hasLanguage()Z
    .locals 3

    #@0
    .prologue
    .line 888
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->mParams:Landroid/os/Bundle;

    #@2
    const-string/jumbo v1, "language"

    #@5
    const/4 v2, 0x0

    #@6
    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;->getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    const/4 v0, 0x0

    #@11
    :goto_0
    return v0

    #@12
    :cond_0
    const/4 v0, 0x1

    #@13
    goto :goto_0
.end method
