.class Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;
.super Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SynthesisSpeechItem"
.end annotation


# instance fields
.field private final greylist-max-o mCallerUid:I

.field private final greylist-max-o mDefaultLocale:[Ljava/lang/String;

.field private final greylist-max-o mEventLogger:Landroid/speech/tts/EventLogger;

.field private greylist-max-o mSynthesisCallback:Landroid/speech/tts/AbstractSynthesisCallback;

.field private final greylist-max-o mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

.field private final greylist-max-o mText:Ljava/lang/CharSequence;

.field final synthetic blacklist this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor blacklist <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 12
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeechService;
    .param p2, "callerIdentity"    # Ljava/lang/Object;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I
    .param p5, "params"    # Landroid/os/Bundle;
    .param p6, "utteranceId"    # Ljava/lang/String;
    .param p7, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
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
            null,
            null
        }
    .end annotation

    .line 992
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    .line 993
    invoke-direct/range {p0 .. p6}, Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItemWithParams;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;)V

    .line 994
    move-object v0, p6

    move-object p6, p5

    move p5, p4

    move p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "this$0":Landroid/speech/tts/TextToSpeechService;
    .local v0, "utteranceId":Ljava/lang/String;
    .local p2, "this$0":Landroid/speech/tts/TextToSpeechService;
    .local p3, "callerIdentity":Ljava/lang/Object;
    .local p4, "callerUid":I
    .local p5, "callerPid":I
    .local p6, "params":Landroid/os/Bundle;
    iput-object p7, p1, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mText:Ljava/lang/CharSequence;

    .line 995
    iput p4, p1, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mCallerUid:I

    .line 996
    new-instance v1, Landroid/speech/tts/SynthesisRequest;

    iget-object v2, p1, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mText:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mParams:Landroid/os/Bundle;

    invoke-direct {v1, v2, v3}, Landroid/speech/tts/SynthesisRequest;-><init>(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    iput-object v1, p1, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

    .line 997
    invoke-static {p2}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$mgetSettingsLocale(Landroid/speech/tts/TextToSpeechService;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mDefaultLocale:[Ljava/lang/String;

    .line 998
    iget-object v1, p1, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-direct {p0, v1}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->setRequestParams(Landroid/speech/tts/SynthesisRequest;)V

    .line 999
    new-instance v1, Landroid/speech/tts/EventLogger;

    iget-object v2, p1, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-static {p2}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmPackageName(Landroid/speech/tts/TextToSpeechService;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, p4, p5, v3}, Landroid/speech/tts/EventLogger;-><init>(Landroid/speech/tts/SynthesisRequest;IILjava/lang/String;)V

    iput-object v1, p1, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mEventLogger:Landroid/speech/tts/EventLogger;

    .line 1000
    return-void
.end method

.method private greylist-max-o getCountry()Ljava/lang/String;
    .registers 4

    .line 1075
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->hasLanguage()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mDefaultLocale:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    .line 1076
    :cond_c
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mParams:Landroid/os/Bundle;

    const-string v1, "country"

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getVariant()Ljava/lang/String;
    .registers 4

    .line 1080
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->hasLanguage()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mDefaultLocale:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0

    .line 1081
    :cond_c
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mParams:Landroid/os/Bundle;

    const-string/jumbo v1, "variant"

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o setRequestParams(Landroid/speech/tts/SynthesisRequest;)V
    .registers 6
    .param p1, "request"    # Landroid/speech/tts/SynthesisRequest;

    .line 1047
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getVoiceName()Ljava/lang/String;

    move-result-object v0

    .line 1048
    .local v0, "voiceName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getVariant()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/speech/tts/SynthesisRequest;->setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1050
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getVoiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/speech/tts/SynthesisRequest;->setVoiceName(Ljava/lang/String;)V

    .line 1052
    :cond_20
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getSpeechRate()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/speech/tts/SynthesisRequest;->setSpeechRate(I)V

    .line 1053
    iget v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mCallerUid:I

    invoke-virtual {p1, v1}, Landroid/speech/tts/SynthesisRequest;->setCallerUid(I)V

    .line 1054
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getPitch()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/speech/tts/SynthesisRequest;->setPitch(I)V

    .line 1055
    return-void
.end method


# virtual methods
.method protected greylist-max-o createSynthesisCallback()Landroid/speech/tts/AbstractSynthesisCallback;
    .registers 8

    .line 1042
    new-instance v0, Landroid/speech/tts/PlaybackSynthesisCallback;

    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getAudioParams()Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    move-result-object v1

    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {v2}, Landroid/speech/tts/TextToSpeechService;->-$$Nest$fgetmAudioPlaybackHandler(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v2

    .line 1043
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getCallerIdentity()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mEventLogger:Landroid/speech/tts/EventLogger;

    const/4 v6, 0x0

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Landroid/speech/tts/PlaybackSynthesisCallback;-><init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/speech/tts/AbstractEventLogger;Z)V

    .line 1042
    return-object v0
.end method

.method public greylist-max-o getLanguage()Ljava/lang/String;
    .registers 4

    .line 1085
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mParams:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mDefaultLocale:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string/jumbo v2, "language"

    invoke-virtual {p0, v0, v2, v1}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getText()Ljava/lang/CharSequence;
    .registers 2

    .line 1003
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public greylist-max-o getVoiceName()Ljava/lang/String;
    .registers 4

    .line 1089
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mParams:Landroid/os/Bundle;

    const-string/jumbo v1, "voiceName"

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o isValid()Z
    .registers 5

    .line 1008
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "TextToSpeechService"

    if-nez v0, :cond_e

    .line 1009
    const-string/jumbo v0, "null synthesis text"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    return v1

    .line 1012
    :cond_e
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {}, Landroid/speech/tts/TextToSpeech;->getMaxSpeechInputLength()I

    move-result v3

    if-le v0, v3, :cond_3d

    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text too long: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " chars"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    return v1

    .line 1016
    :cond_3d
    const/4 v0, 0x1

    return v0
.end method

.method protected greylist-max-o playImpl()V
    .registers 4

    .line 1022
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mEventLogger:Landroid/speech/tts/EventLogger;

    invoke-virtual {v0}, Landroid/speech/tts/EventLogger;->onRequestProcessingStart()V

    .line 1023
    monitor-enter p0

    .line 1026
    :try_start_6
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1027
    monitor-exit p0

    return-void

    .line 1029
    :cond_e
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->createSynthesisCallback()Landroid/speech/tts/AbstractSynthesisCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mSynthesisCallback:Landroid/speech/tts/AbstractSynthesisCallback;

    .line 1030
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mSynthesisCallback:Landroid/speech/tts/AbstractSynthesisCallback;

    .line 1031
    .local v0, "synthesisCallback":Landroid/speech/tts/AbstractSynthesisCallback;
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_2e

    .line 1033
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1, v2, v0}, Landroid/speech/tts/TextToSpeechService;->onSynthesizeText(Landroid/speech/tts/SynthesisRequest;Landroid/speech/tts/SynthesisCallback;)V

    .line 1036
    invoke-virtual {v0}, Landroid/speech/tts/AbstractSynthesisCallback;->hasStarted()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-virtual {v0}, Landroid/speech/tts/AbstractSynthesisCallback;->hasFinished()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 1037
    invoke-virtual {v0}, Landroid/speech/tts/AbstractSynthesisCallback;->done()I

    .line 1039
    :cond_2d
    return-void

    .line 1031
    .end local v0    # "synthesisCallback":Landroid/speech/tts/AbstractSynthesisCallback;
    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v0
.end method

.method protected greylist-max-o stopImpl()V
    .registers 3

    .line 1060
    monitor-enter p0

    .line 1061
    :try_start_1
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->mSynthesisCallback:Landroid/speech/tts/AbstractSynthesisCallback;

    .line 1062
    .local v0, "synthesisCallback":Landroid/speech/tts/AbstractSynthesisCallback;
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_13

    .line 1063
    if-eqz v0, :cond_f

    .line 1067
    invoke-virtual {v0}, Landroid/speech/tts/AbstractSynthesisCallback;->stop()V

    .line 1068
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeechService;->onStop()V

    goto :goto_12

    .line 1070
    :cond_f
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItem;->dispatchOnStop()V

    .line 1072
    :goto_12
    return-void

    .line 1062
    .end local v0    # "synthesisCallback":Landroid/speech/tts/AbstractSynthesisCallback;
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method
