.class Landroid/speech/tts/EventLoggerV1;
.super Landroid/speech/tts/AbstractEventLogger;
.source "EventLoggerV1.java"


# instance fields
.field private final mRequest:Landroid/speech/tts/SynthesisRequest;


# direct methods
.method constructor <init>(Landroid/speech/tts/SynthesisRequest;IILjava/lang/String;)V
    .locals 0
    .param p1, "request"    # Landroid/speech/tts/SynthesisRequest;
    .param p2, "callerUid"    # I
    .param p3, "callerPid"    # I
    .param p4, "serviceApp"    # Ljava/lang/String;

    #@0
    .prologue
    .line 29
    invoke-direct {p0, p2, p3, p4}, Landroid/speech/tts/AbstractEventLogger;-><init>(IILjava/lang/String;)V

    #@3
    .line 30
    iput-object p1, p0, Landroid/speech/tts/EventLoggerV1;->mRequest:Landroid/speech/tts/SynthesisRequest;

    #@5
    .line 28
    return-void
.end method

.method private getLocaleString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    const/16 v2, 0x2d

    #@2
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    iget-object v1, p0, Landroid/speech/tts/EventLoggerV1;->mRequest:Landroid/speech/tts/SynthesisRequest;

    #@6
    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getLanguage()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@d
    .line 68
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/speech/tts/EventLoggerV1;->mRequest:Landroid/speech/tts/SynthesisRequest;

    #@f
    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getCountry()Ljava/lang/String;

    #@12
    move-result-object v1

    #@13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_0

    #@19
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1c
    .line 70
    iget-object v1, p0, Landroid/speech/tts/EventLoggerV1;->mRequest:Landroid/speech/tts/SynthesisRequest;

    #@1e
    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getCountry()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 72
    iget-object v1, p0, Landroid/speech/tts/EventLoggerV1;->mRequest:Landroid/speech/tts/SynthesisRequest;

    #@27
    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getVariant()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@2e
    move-result v1

    #@2f
    if-nez v1, :cond_0

    #@31
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@34
    .line 74
    iget-object v1, p0, Landroid/speech/tts/EventLoggerV1;->mRequest:Landroid/speech/tts/SynthesisRequest;

    #@36
    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getVariant()Ljava/lang/String;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    .line 78
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    return-object v1
.end method

.method private getUtteranceLength()I
    .locals 2

    #@0
    .prologue
    .line 58
    iget-object v1, p0, Landroid/speech/tts/EventLoggerV1;->mRequest:Landroid/speech/tts/SynthesisRequest;

    #@2
    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getText()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 59
    .local v0, "utterance":Ljava/lang/String;
    if-nez v0, :cond_0

    #@8
    const/4 v1, 0x0

    #@9
    :goto_0
    return v1

    #@a
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@d
    move-result v1

    #@e
    goto :goto_0
.end method


# virtual methods
.method protected logFailure(I)V
    .locals 7
    .param p1, "statusCode"    # I

    #@0
    .prologue
    .line 38
    const/4 v0, -0x2

    #@1
    if-eq p1, v0, :cond_0

    #@3
    .line 39
    iget-object v0, p0, Landroid/speech/tts/EventLoggerV1;->mServiceApp:Ljava/lang/String;

    #@5
    iget v1, p0, Landroid/speech/tts/EventLoggerV1;->mCallerUid:I

    #@7
    iget v2, p0, Landroid/speech/tts/EventLoggerV1;->mCallerPid:I

    #@9
    .line 40
    invoke-direct {p0}, Landroid/speech/tts/EventLoggerV1;->getUtteranceLength()I

    #@c
    move-result v3

    #@d
    invoke-direct {p0}, Landroid/speech/tts/EventLoggerV1;->getLocaleString()Ljava/lang/String;

    #@10
    move-result-object v4

    #@11
    .line 41
    iget-object v5, p0, Landroid/speech/tts/EventLoggerV1;->mRequest:Landroid/speech/tts/SynthesisRequest;

    #@13
    invoke-virtual {v5}, Landroid/speech/tts/SynthesisRequest;->getSpeechRate()I

    #@16
    move-result v5

    #@17
    iget-object v6, p0, Landroid/speech/tts/EventLoggerV1;->mRequest:Landroid/speech/tts/SynthesisRequest;

    #@19
    invoke-virtual {v6}, Landroid/speech/tts/SynthesisRequest;->getPitch()I

    #@1c
    move-result v6

    #@1d
    .line 39
    invoke-static/range {v0 .. v6}, Landroid/speech/tts/EventLogTags;->writeTtsSpeakFailure(Ljava/lang/String;IIILjava/lang/String;II)V

    #@20
    .line 34
    :cond_0
    return-void
.end method

.method protected logSuccess(JJJ)V
    .locals 15
    .param p1, "audioLatency"    # J
    .param p3, "engineLatency"    # J
    .param p5, "engineTotal"    # J

    #@0
    .prologue
    .line 47
    iget-object v1, p0, Landroid/speech/tts/EventLoggerV1;->mServiceApp:Ljava/lang/String;

    #@2
    iget v2, p0, Landroid/speech/tts/EventLoggerV1;->mCallerUid:I

    #@4
    iget v3, p0, Landroid/speech/tts/EventLoggerV1;->mCallerPid:I

    #@6
    .line 48
    invoke-direct {p0}, Landroid/speech/tts/EventLoggerV1;->getUtteranceLength()I

    #@9
    move-result v4

    #@a
    invoke-direct {p0}, Landroid/speech/tts/EventLoggerV1;->getLocaleString()Ljava/lang/String;

    #@d
    move-result-object v5

    #@e
    .line 49
    iget-object v0, p0, Landroid/speech/tts/EventLoggerV1;->mRequest:Landroid/speech/tts/SynthesisRequest;

    #@10
    invoke-virtual {v0}, Landroid/speech/tts/SynthesisRequest;->getSpeechRate()I

    #@13
    move-result v6

    #@14
    iget-object v0, p0, Landroid/speech/tts/EventLoggerV1;->mRequest:Landroid/speech/tts/SynthesisRequest;

    #@16
    invoke-virtual {v0}, Landroid/speech/tts/SynthesisRequest;->getPitch()I

    #@19
    move-result v7

    #@1a
    move-wide/from16 v8, p3

    #@1c
    move-wide/from16 v10, p5

    #@1e
    move-wide/from16 v12, p1

    #@20
    .line 47
    invoke-static/range {v1 .. v13}, Landroid/speech/tts/EventLogTags;->writeTtsSpeakSuccess(Ljava/lang/String;IIILjava/lang/String;IIJJJ)V

    #@23
    .line 46
    return-void
.end method
