.class public interface abstract Landroid/speech/RecognitionListener;
.super Ljava/lang/Object;
.source "RecognitionListener.java"


# virtual methods
.method public abstract whitelist onBeginningOfSpeech()V
.end method

.method public abstract whitelist onBufferReceived([B)V
.end method

.method public whitelist onEndOfSegmentedSession()V
    .registers 1

    .line 117
    return-void
.end method

.method public abstract whitelist onEndOfSpeech()V
.end method

.method public abstract whitelist onError(I)V
.end method

.method public abstract whitelist onEvent(ILandroid/os/Bundle;)V
.end method

.method public whitelist onLanguageDetection(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "results"    # Landroid/os/Bundle;

    .line 147
    return-void
.end method

.method public abstract whitelist onPartialResults(Landroid/os/Bundle;)V
.end method

.method public abstract whitelist onReadyForSpeech(Landroid/os/Bundle;)V
.end method

.method public abstract whitelist onResults(Landroid/os/Bundle;)V
.end method

.method public abstract whitelist onRmsChanged(F)V
.end method

.method public whitelist onSegmentResults(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "segmentResults"    # Landroid/os/Bundle;

    .line 111
    return-void
.end method
