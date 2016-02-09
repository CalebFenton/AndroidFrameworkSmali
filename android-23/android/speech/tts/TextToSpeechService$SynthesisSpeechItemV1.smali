.class Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;
.super Landroid/speech/tts/TextToSpeechService$SpeechItemV1;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SynthesisSpeechItemV1"
.end annotation


# instance fields
.field private final mCallerUid:I

.field private final mDefaultLocale:[Ljava/lang/String;

.field private final mEventLogger:Landroid/speech/tts/EventLoggerV1;

.field private mSynthesisCallback:Landroid/speech/tts/AbstractSynthesisCallback;

.field private final mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

.field private final mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "this$0"    # Landroid/speech/tts/TextToSpeechService;
    .param p2, "callerIdentity"    # Ljava/lang/Object;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I
    .param p5, "params"    # Landroid/os/Bundle;
    .param p6, "utteranceId"    # Ljava/lang/String;
    .param p7, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 920
    iput-object p1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@2
    .line 922
    invoke-direct/range {p0 .. p6}, Landroid/speech/tts/TextToSpeechService$SpeechItemV1;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;)V

    #@5
    .line 923
    iput-object p7, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mText:Ljava/lang/CharSequence;

    #@7
    .line 924
    iput p3, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mCallerUid:I

    #@9
    .line 925
    new-instance v0, Landroid/speech/tts/SynthesisRequest;

    #@b
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mText:Ljava/lang/CharSequence;

    #@d
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mParams:Landroid/os/Bundle;

    #@f
    invoke-direct {v0, v1, v2}, Landroid/speech/tts/SynthesisRequest;-><init>(Ljava/lang/CharSequence;Landroid/os/Bundle;)V

    #@12
    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

    #@14
    .line 926
    invoke-static {p1}, Landroid/speech/tts/TextToSpeechService;->-wrap1(Landroid/speech/tts/TextToSpeechService;)[Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mDefaultLocale:[Ljava/lang/String;

    #@1a
    .line 927
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

    #@1c
    invoke-direct {p0, v0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->setRequestParams(Landroid/speech/tts/SynthesisRequest;)V

    #@1f
    .line 928
    new-instance v0, Landroid/speech/tts/EventLoggerV1;

    #@21
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

    #@23
    .line 929
    invoke-static {p1}, Landroid/speech/tts/TextToSpeechService;->-get2(Landroid/speech/tts/TextToSpeechService;)Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    .line 928
    invoke-direct {v0, v1, p3, p4, v2}, Landroid/speech/tts/EventLoggerV1;-><init>(Landroid/speech/tts/SynthesisRequest;IILjava/lang/String;)V

    #@2a
    iput-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mEventLogger:Landroid/speech/tts/EventLoggerV1;

    #@2c
    .line 921
    return-void
.end method

.method private getCountry()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1005
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->hasLanguage()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mDefaultLocale:[Ljava/lang/String;

    #@8
    const/4 v1, 0x1

    #@9
    aget-object v0, v0, v1

    #@b
    return-object v0

    #@c
    .line 1006
    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mParams:Landroid/os/Bundle;

    #@e
    const-string/jumbo v1, "country"

    #@11
    const-string/jumbo v2, ""

    #@14
    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method private getVariant()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1010
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->hasLanguage()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mDefaultLocale:[Ljava/lang/String;

    #@8
    const/4 v1, 0x2

    #@9
    aget-object v0, v0, v1

    #@b
    return-object v0

    #@c
    .line 1011
    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mParams:Landroid/os/Bundle;

    #@e
    const-string/jumbo v1, "variant"

    #@11
    const-string/jumbo v2, ""

    #@14
    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    return-object v0
.end method

.method private setRequestParams(Landroid/speech/tts/SynthesisRequest;)V
    .locals 4
    .param p1, "request"    # Landroid/speech/tts/SynthesisRequest;

    #@0
    .prologue
    .line 977
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->getVoiceName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 978
    .local v0, "voiceName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->getLanguage()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->getCountry()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-direct {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->getVariant()Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {p1, v1, v2, v3}, Landroid/speech/tts/SynthesisRequest;->setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@13
    .line 979
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_0

    #@19
    .line 980
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->getVoiceName()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {p1, v1}, Landroid/speech/tts/SynthesisRequest;->setVoiceName(Ljava/lang/String;)V

    #@20
    .line 982
    :cond_0
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->getSpeechRate()I

    #@23
    move-result v1

    #@24
    invoke-virtual {p1, v1}, Landroid/speech/tts/SynthesisRequest;->setSpeechRate(I)V

    #@27
    .line 983
    iget v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mCallerUid:I

    #@29
    invoke-virtual {p1, v1}, Landroid/speech/tts/SynthesisRequest;->setCallerUid(I)V

    #@2c
    .line 984
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->getPitch()I

    #@2f
    move-result v1

    #@30
    invoke-virtual {p1, v1}, Landroid/speech/tts/SynthesisRequest;->setPitch(I)V

    #@33
    .line 976
    return-void
.end method


# virtual methods
.method protected createSynthesisCallback()Landroid/speech/tts/AbstractSynthesisCallback;
    .locals 7

    #@0
    .prologue
    .line 972
    new-instance v0, Landroid/speech/tts/PlaybackSynthesisCallback;

    #@2
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->getAudioParams()Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    #@5
    move-result-object v1

    #@6
    .line 973
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@8
    invoke-static {v2}, Landroid/speech/tts/TextToSpeechService;->-get0(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->getCallerIdentity()Ljava/lang/Object;

    #@f
    move-result-object v4

    #@10
    iget-object v5, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mEventLogger:Landroid/speech/tts/EventLoggerV1;

    #@12
    const/4 v6, 0x0

    #@13
    move-object v3, p0

    #@14
    .line 972
    invoke-direct/range {v0 .. v6}, Landroid/speech/tts/PlaybackSynthesisCallback;-><init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/speech/tts/AbstractEventLogger;Z)V

    #@17
    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1015
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mParams:Landroid/os/Bundle;

    #@2
    const-string/jumbo v1, "language"

    #@5
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mDefaultLocale:[Ljava/lang/String;

    #@7
    const/4 v3, 0x0

    #@8
    aget-object v2, v2, v3

    #@a
    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 933
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getVoiceName()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 1019
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mParams:Landroid/os/Bundle;

    #@2
    const-string/jumbo v1, "voiceName"

    #@5
    const-string/jumbo v2, ""

    #@8
    invoke-virtual {p0, v0, v1, v2}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public isValid()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 938
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mText:Ljava/lang/CharSequence;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 939
    const-string/jumbo v0, "TextToSpeechService"

    #@8
    const-string/jumbo v1, "null synthesis text"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 940
    return v3

    #@f
    .line 942
    :cond_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mText:Ljava/lang/CharSequence;

    #@11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    #@14
    move-result v0

    #@15
    invoke-static {}, Landroid/speech/tts/TextToSpeech;->getMaxSpeechInputLength()I

    #@18
    move-result v1

    #@19
    if-lt v0, v1, :cond_1

    #@1b
    .line 943
    const-string/jumbo v0, "TextToSpeechService"

    #@1e
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "Text too long: "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mText:Ljava/lang/CharSequence;

    #@2c
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    #@2f
    move-result v2

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    const-string/jumbo v2, " chars"

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v1

    #@3f
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@42
    .line 944
    return v3

    #@43
    .line 946
    :cond_1
    const/4 v0, 0x1

    #@44
    return v0
.end method

.method protected playImpl()V
    .locals 3

    #@0
    .prologue
    .line 952
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mEventLogger:Landroid/speech/tts/EventLoggerV1;

    #@2
    invoke-virtual {v1}, Landroid/speech/tts/EventLoggerV1;->onRequestProcessingStart()V

    #@5
    .line 953
    monitor-enter p0

    #@6
    .line 956
    :try_start_0
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->isStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    monitor-exit p0

    #@d
    .line 957
    return-void

    #@e
    .line 959
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->createSynthesisCallback()Landroid/speech/tts/AbstractSynthesisCallback;

    #@11
    move-result-object v1

    #@12
    iput-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mSynthesisCallback:Landroid/speech/tts/AbstractSynthesisCallback;

    #@14
    .line 960
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mSynthesisCallback:Landroid/speech/tts/AbstractSynthesisCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    .local v0, "synthesisCallback":Landroid/speech/tts/AbstractSynthesisCallback;
    monitor-exit p0

    #@17
    .line 963
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@19
    iget-object v2, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mSynthesisRequest:Landroid/speech/tts/SynthesisRequest;

    #@1b
    invoke-virtual {v1, v2, v0}, Landroid/speech/tts/TextToSpeechService;->onSynthesizeText(Landroid/speech/tts/SynthesisRequest;Landroid/speech/tts/SynthesisCallback;)V

    #@1e
    .line 966
    invoke-virtual {v0}, Landroid/speech/tts/AbstractSynthesisCallback;->hasStarted()Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_1

    #@24
    invoke-virtual {v0}, Landroid/speech/tts/AbstractSynthesisCallback;->hasFinished()Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_2

    #@2a
    .line 950
    :cond_1
    :goto_0
    return-void

    #@2b
    .line 953
    .end local v0    # "synthesisCallback":Landroid/speech/tts/AbstractSynthesisCallback;
    :catchall_0
    move-exception v1

    #@2c
    monitor-exit p0

    #@2d
    throw v1

    #@2e
    .line 967
    .restart local v0    # "synthesisCallback":Landroid/speech/tts/AbstractSynthesisCallback;
    :cond_2
    invoke-virtual {v0}, Landroid/speech/tts/AbstractSynthesisCallback;->done()I

    #@31
    goto :goto_0
.end method

.method protected stopImpl()V
    .locals 2

    #@0
    .prologue
    .line 990
    monitor-enter p0

    #@1
    .line 991
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->mSynthesisCallback:Landroid/speech/tts/AbstractSynthesisCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .local v0, "synthesisCallback":Landroid/speech/tts/AbstractSynthesisCallback;
    monitor-exit p0

    #@4
    .line 993
    if-eqz v0, :cond_0

    #@6
    .line 997
    invoke-virtual {v0}, Landroid/speech/tts/AbstractSynthesisCallback;->stop()V

    #@9
    .line 998
    iget-object v1, p0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->this$0:Landroid/speech/tts/TextToSpeechService;

    #@b
    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeechService;->onStop()V

    #@e
    .line 988
    :goto_0
    return-void

    #@f
    .line 990
    .end local v0    # "synthesisCallback":Landroid/speech/tts/AbstractSynthesisCallback;
    :catchall_0
    move-exception v1

    #@10
    monitor-exit p0

    #@11
    throw v1

    #@12
    .line 1000
    .restart local v0    # "synthesisCallback":Landroid/speech/tts/AbstractSynthesisCallback;
    :cond_0
    invoke-virtual {p0}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;->dispatchOnStop()V

    #@15
    goto :goto_0
.end method
