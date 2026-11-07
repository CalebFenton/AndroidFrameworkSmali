.class interface abstract Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
.super Ljava/lang/Object;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "UtteranceProgressDispatcher"
.end annotation


# virtual methods
.method public abstract greylist-max-o dispatchOnAudioAvailable([B)V
.end method

.method public abstract greylist-max-o dispatchOnBeginSynthesis(III)V
.end method

.method public abstract greylist-max-o dispatchOnError(I)V
.end method

.method public abstract greylist-max-o dispatchOnRangeStart(III)V
.end method

.method public abstract greylist-max-o dispatchOnStart()V
.end method

.method public abstract greylist-max-o dispatchOnStop()V
.end method

.method public abstract greylist-max-o dispatchOnSuccess()V
.end method
