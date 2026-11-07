.class Landroid/speech/tts/UtteranceProgressListener$1;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "UtteranceProgressListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/UtteranceProgressListener;->from(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)Landroid/speech/tts/UtteranceProgressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$listener:Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# direct methods
.method constructor blacklist <init>(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)V
    .registers 2

    .line 159
    iput-object p1, p0, Landroid/speech/tts/UtteranceProgressListener$1;->val$listener:Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized whitelist onDone(Ljava/lang/String;)V
    .registers 3
    .param p1, "utteranceId"    # Ljava/lang/String;

    monitor-enter p0

    .line 162
    :try_start_1
    iget-object v0, p0, Landroid/speech/tts/UtteranceProgressListener$1;->val$listener:Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;

    invoke-interface {v0, p1}, Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;->onUtteranceCompleted(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 163
    monitor-exit p0

    return-void

    .line 161
    .end local p0    # "this":Landroid/speech/tts/UtteranceProgressListener$1;
    .end local p1    # "utteranceId":Ljava/lang/String;
    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public whitelist onError(Ljava/lang/String;)V
    .registers 3
    .param p1, "utteranceId"    # Ljava/lang/String;

    .line 167
    iget-object v0, p0, Landroid/speech/tts/UtteranceProgressListener$1;->val$listener:Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;

    invoke-interface {v0, p1}, Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;->onUtteranceCompleted(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public whitelist onStart(Ljava/lang/String;)V
    .registers 2
    .param p1, "utteranceId"    # Ljava/lang/String;

    .line 174
    return-void
.end method

.method public whitelist onStop(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "interrupted"    # Z

    .line 178
    iget-object v0, p0, Landroid/speech/tts/UtteranceProgressListener$1;->val$listener:Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;

    invoke-interface {v0, p1}, Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;->onUtteranceCompleted(Ljava/lang/String;)V

    .line 179
    return-void
.end method
