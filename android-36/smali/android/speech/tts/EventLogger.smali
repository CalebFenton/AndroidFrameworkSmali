.class Landroid/speech/tts/EventLogger;
.super Landroid/speech/tts/AbstractEventLogger;
.source "EventLogger.java"


# instance fields
.field private final greylist-max-o mRequest:Landroid/speech/tts/SynthesisRequest;


# direct methods
.method constructor greylist-max-o <init>(Landroid/speech/tts/SynthesisRequest;IILjava/lang/String;)V
    .registers 5
    .param p1, "request"    # Landroid/speech/tts/SynthesisRequest;
    .param p2, "callerUid"    # I
    .param p3, "callerPid"    # I
    .param p4, "serviceApp"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0, p2, p3, p4}, Landroid/speech/tts/AbstractEventLogger;-><init>(IILjava/lang/String;)V

    .line 30
    iput-object p1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    .line 31
    return-void
.end method

.method private greylist-max-o getLocaleString()Ljava/lang/String;
    .registers 4

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 69
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    iget-object v2, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v2}, Landroid/speech/tts/SynthesisRequest;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v2, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v2}, Landroid/speech/tts/SynthesisRequest;->getVariant()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    iget-object v1, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v1}, Landroid/speech/tts/SynthesisRequest;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o getUtteranceLength()I
    .registers 3

    .line 58
    iget-object v0, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v0}, Landroid/speech/tts/SynthesisRequest;->getText()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "utterance":Ljava/lang/String;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_e
    return v1
.end method


# virtual methods
.method protected greylist-max-o logFailure(I)V
    .registers 10
    .param p1, "statusCode"    # I

    .line 38
    const/4 v0, -0x2

    if-eq p1, v0, :cond_20

    .line 39
    iget-object v1, p0, Landroid/speech/tts/EventLogger;->mServiceApp:Ljava/lang/String;

    iget v2, p0, Landroid/speech/tts/EventLogger;->mCallerUid:I

    iget v3, p0, Landroid/speech/tts/EventLogger;->mCallerPid:I

    .line 40
    invoke-direct {p0}, Landroid/speech/tts/EventLogger;->getUtteranceLength()I

    move-result v4

    invoke-direct {p0}, Landroid/speech/tts/EventLogger;->getLocaleString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    .line 41
    invoke-virtual {v0}, Landroid/speech/tts/SynthesisRequest;->getSpeechRate()I

    move-result v6

    iget-object v0, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v0}, Landroid/speech/tts/SynthesisRequest;->getPitch()I

    move-result v7

    .line 39
    invoke-static/range {v1 .. v7}, Landroid/speech/tts/EventLogTags;->writeTtsSpeakFailure(Ljava/lang/String;IIILjava/lang/String;II)V

    .line 43
    :cond_20
    return-void
.end method

.method protected greylist-max-o logSuccess(JJJ)V
    .registers 20
    .param p1, "audioLatency"    # J
    .param p3, "engineLatency"    # J
    .param p5, "engineTotal"    # J

    .line 47
    iget-object v0, p0, Landroid/speech/tts/EventLogger;->mServiceApp:Ljava/lang/String;

    iget v1, p0, Landroid/speech/tts/EventLogger;->mCallerUid:I

    iget v2, p0, Landroid/speech/tts/EventLogger;->mCallerPid:I

    .line 48
    invoke-direct {p0}, Landroid/speech/tts/EventLogger;->getUtteranceLength()I

    move-result v3

    invoke-direct {p0}, Landroid/speech/tts/EventLogger;->getLocaleString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    .line 49
    invoke-virtual {v5}, Landroid/speech/tts/SynthesisRequest;->getSpeechRate()I

    move-result v5

    iget-object v6, p0, Landroid/speech/tts/EventLogger;->mRequest:Landroid/speech/tts/SynthesisRequest;

    invoke-virtual {v6}, Landroid/speech/tts/SynthesisRequest;->getPitch()I

    move-result v6

    .line 47
    move-wide v11, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    invoke-static/range {v0 .. v12}, Landroid/speech/tts/EventLogTags;->writeTtsSpeakSuccess(Ljava/lang/String;IIILjava/lang/String;IIJJJ)V

    .line 51
    return-void
.end method
