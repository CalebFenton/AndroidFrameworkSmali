.class public abstract Landroid/speech/tts/UtteranceProgressListener;
.super Ljava/lang/Object;
.source "UtteranceProgressListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static from(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)Landroid/speech/tts/UtteranceProgressListener;
    .locals 1
    .param p0, "listener"    # Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;

    #@0
    .prologue
    .line 84
    new-instance v0, Landroid/speech/tts/UtteranceProgressListener$1;

    #@2
    invoke-direct {v0, p0}, Landroid/speech/tts/UtteranceProgressListener$1;-><init>(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public abstract onDone(Ljava/lang/String;)V
.end method

.method public abstract onError(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 0
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    #@0
    .prologue
    .line 59
    invoke-virtual {p0, p1}, Landroid/speech/tts/UtteranceProgressListener;->onError(Ljava/lang/String;)V

    #@3
    .line 58
    return-void
.end method

.method public abstract onStart(Ljava/lang/String;)V
.end method

.method public onStop(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "interrupted"    # Z

    #@0
    .prologue
    .line 73
    return-void
.end method
