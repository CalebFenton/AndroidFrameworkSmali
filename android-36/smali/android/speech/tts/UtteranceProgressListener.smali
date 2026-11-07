.class public abstract Landroid/speech/tts/UtteranceProgressListener;
.super Ljava/lang/Object;
.source "UtteranceProgressListener.java"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static greylist-max-o from(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)Landroid/speech/tts/UtteranceProgressListener;
    .registers 2
    .param p0, "listener"    # Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;

    .line 159
    new-instance v0, Landroid/speech/tts/UtteranceProgressListener$1;

    invoke-direct {v0, p0}, Landroid/speech/tts/UtteranceProgressListener$1;-><init>(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)V

    return-object v0
.end method


# virtual methods
.method public whitelist onAudioAvailable(Ljava/lang/String;[B)V
    .registers 3
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "audio"    # [B

    .line 122
    return-void
.end method

.method public whitelist onBeginSynthesis(Ljava/lang/String;III)V
    .registers 5
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "sampleRateInHz"    # I
    .param p3, "audioFormat"    # I
    .param p4, "channelCount"    # I

    .line 100
    return-void
.end method

.method public abstract whitelist onDone(Ljava/lang/String;)V
.end method

.method public abstract whitelist onError(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public whitelist onError(Ljava/lang/String;I)V
    .registers 3
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .line 61
    invoke-virtual {p0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onError(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public whitelist onRangeStart(Ljava/lang/String;III)V
    .registers 5
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "frame"    # I

    .line 144
    invoke-virtual {p0, p1, p2, p3}, Landroid/speech/tts/UtteranceProgressListener;->onUtteranceRangeStart(Ljava/lang/String;II)V

    .line 145
    return-void
.end method

.method public abstract whitelist onStart(Ljava/lang/String;)V
.end method

.method public whitelist onStop(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "interrupted"    # Z

    .line 76
    return-void
.end method

.method public greylist onUtteranceRangeStart(Ljava/lang/String;II)V
    .registers 4
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    return-void
.end method
