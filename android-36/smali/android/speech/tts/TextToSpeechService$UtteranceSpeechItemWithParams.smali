.class abstract Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;
.super Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "UtteranceSpeechItemWithParams"
.end annotation


# instance fields
.field protected final greylist-max-o mParams:Landroid/os/Bundle;

.field protected final greylist-max-o mUtteranceId:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method constructor blacklist <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;)V
    .registers 7
    .param p2, "callerIdentity"    # Ljava/lang/Object;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I
    .param p5, "params"    # Landroid/os/Bundle;
    .param p6, "utteranceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 947
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 948
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;II)V

    .line 949
    iput-object p5, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->mParams:Landroid/os/Bundle;

    .line 950
    iput-object p6, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->mUtteranceId:Ljava/lang/String;

    .line 951
    return-void
.end method


# virtual methods
.method greylist-max-o getAudioParams()Landroid/speech/tts/TextToSpeechService$AudioOutputParams;
    .registers 3

    .line 971
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->mParams:Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->createFromParamsBundle(Landroid/os/Bundle;Z)Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getPitch()I
    .registers 4

    .line 962
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->mParams:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$mgetDefaultPitch(Landroid/speech/tts/TextToSpeechService;)I

    move-result v1

    const-string/jumbo v2, "pitch"

    invoke-virtual {p0, v0, v2, v1}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->getIntParam(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method greylist-max-o getSpeechRate()I
    .registers 4

    .line 958
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->mParams:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$mgetDefaultSpeechRate(Landroid/speech/tts/TextToSpeechService;)I

    move-result v1

    const-string/jumbo v2, "rate"

    invoke-virtual {p0, v0, v2, v1}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->getIntParam(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getUtteranceId()Ljava/lang/String;
    .registers 2

    .line 967
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->mUtteranceId:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o hasLanguage()Z
    .registers 4

    .line 954
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->mParams:Landroid/os/Bundle;

    const-string/jumbo v1, "language"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;->getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
