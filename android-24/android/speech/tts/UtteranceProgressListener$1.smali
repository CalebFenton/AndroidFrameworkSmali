.class final Landroid/speech/tts/UtteranceProgressListener$1;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "UtteranceProgressListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/UtteranceProgressListener;->from(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)Landroid/speech/tts/UtteranceProgressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)V
    .locals 0
    .param p1, "val$listener"    # Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;

    #@0
    .prologue
    .line 132
    iput-object p1, p0, Landroid/speech/tts/UtteranceProgressListener$1;->val$listener:Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;

    #@2
    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public declared-synchronized onDone(Ljava/lang/String;)V
    .locals 1
    .param p1, "utteranceId"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 135
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/UtteranceProgressListener$1;->val$listener:Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;

    #@3
    invoke-interface {v0, p1}, Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;->onUtteranceCompleted(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 134
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method public onError(Ljava/lang/String;)V
    .locals 1
    .param p1, "utteranceId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Landroid/speech/tts/UtteranceProgressListener$1;->val$listener:Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;

    #@2
    invoke-interface {v0, p1}, Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;->onUtteranceCompleted(Ljava/lang/String;)V

    #@5
    .line 139
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "utteranceId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 144
    return-void
.end method

.method public onStop(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "interrupted"    # Z

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Landroid/speech/tts/UtteranceProgressListener$1;->val$listener:Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;

    #@2
    invoke-interface {v0, p1}, Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;->onUtteranceCompleted(Ljava/lang/String;)V

    #@5
    .line 150
    return-void
.end method
