.class Landroid/speech/tts/SilencePlaybackQueueItem;
.super Landroid/speech/tts/PlaybackQueueItem;
.source "SilencePlaybackQueueItem.java"


# instance fields
.field private final mCondVar:Landroid/os/ConditionVariable;

.field private final mSilenceDurationMs:J


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;J)V
    .locals 1
    .param p1, "dispatcher"    # Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    .param p2, "callerIdentity"    # Ljava/lang/Object;
    .param p3, "silenceDurationMs"    # J

    #@0
    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/speech/tts/PlaybackQueueItem;-><init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;)V

    #@3
    .line 22
    new-instance v0, Landroid/os/ConditionVariable;

    #@5
    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    #@8
    iput-object v0, p0, Landroid/speech/tts/SilencePlaybackQueueItem;->mCondVar:Landroid/os/ConditionVariable;

    #@a
    .line 28
    iput-wide p3, p0, Landroid/speech/tts/SilencePlaybackQueueItem;->mSilenceDurationMs:J

    #@c
    .line 26
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/speech/tts/SilencePlaybackQueueItem;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStart()V

    #@7
    .line 34
    const/4 v0, 0x0

    #@8
    .line 35
    .local v0, "wasStopped":Z
    iget-wide v2, p0, Landroid/speech/tts/SilencePlaybackQueueItem;->mSilenceDurationMs:J

    #@a
    const-wide/16 v4, 0x0

    #@c
    cmp-long v1, v2, v4

    #@e
    if-lez v1, :cond_0

    #@10
    .line 36
    iget-object v1, p0, Landroid/speech/tts/SilencePlaybackQueueItem;->mCondVar:Landroid/os/ConditionVariable;

    #@12
    iget-wide v2, p0, Landroid/speech/tts/SilencePlaybackQueueItem;->mSilenceDurationMs:J

    #@14
    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    #@17
    move-result v0

    #@18
    .line 38
    .end local v0    # "wasStopped":Z
    :cond_0
    if-eqz v0, :cond_1

    #@1a
    .line 39
    invoke-virtual {p0}, Landroid/speech/tts/SilencePlaybackQueueItem;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@1d
    move-result-object v1

    #@1e
    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStop()V

    #@21
    .line 32
    :goto_0
    return-void

    #@22
    .line 41
    :cond_1
    invoke-virtual {p0}, Landroid/speech/tts/SilencePlaybackQueueItem;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@25
    move-result-object v1

    #@26
    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnSuccess()V

    #@29
    goto :goto_0
.end method

.method stop(I)V
    .locals 1
    .param p1, "errorCode"    # I

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Landroid/speech/tts/SilencePlaybackQueueItem;->mCondVar:Landroid/os/ConditionVariable;

    #@2
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    #@5
    .line 47
    return-void
.end method
