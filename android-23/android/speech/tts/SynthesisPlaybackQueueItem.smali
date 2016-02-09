.class final Landroid/speech/tts/SynthesisPlaybackQueueItem;
.super Landroid/speech/tts/PlaybackQueueItem;
.source "SynthesisPlaybackQueueItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MAX_UNCONSUMED_AUDIO_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "TTS.SynthQueueItem"


# instance fields
.field private final mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

.field private final mDataBufferList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mDone:Z

.field private final mListLock:Ljava/util/concurrent/locks/Lock;

.field private final mLogger:Landroid/speech/tts/AbstractEventLogger;

.field private final mNotFull:Ljava/util/concurrent/locks/Condition;

.field private final mReadReady:Ljava/util/concurrent/locks/Condition;

.field private volatile mStatusCode:I

.field private volatile mStopped:Z

.field private mUnconsumedBytes:I


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;IIILandroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/speech/tts/AbstractEventLogger;)V
    .locals 2
    .param p1, "audioParams"    # Landroid/speech/tts/TextToSpeechService$AudioOutputParams;
    .param p2, "sampleRate"    # I
    .param p3, "audioFormat"    # I
    .param p4, "channelCount"    # I
    .param p5, "dispatcher"    # Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    .param p6, "callerIdentity"    # Ljava/lang/Object;
    .param p7, "logger"    # Landroid/speech/tts/AbstractEventLogger;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 69
    invoke-direct {p0, p5, p6}, Landroid/speech/tts/PlaybackQueueItem;-><init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;)V

    #@4
    .line 45
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@6
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@9
    iput-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    #@b
    .line 46
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    #@d
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mReadReady:Ljava/util/concurrent/locks/Condition;

    #@13
    .line 47
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    #@15
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    #@18
    move-result-object v0

    #@19
    iput-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mNotFull:Ljava/util/concurrent/locks/Condition;

    #@1b
    .line 50
    new-instance v0, Ljava/util/LinkedList;

    #@1d
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@20
    iput-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDataBufferList:Ljava/util/LinkedList;

    #@22
    .line 71
    iput v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    #@24
    .line 73
    iput-boolean v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z

    #@26
    .line 74
    iput-boolean v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDone:Z

    #@28
    .line 75
    iput v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStatusCode:I

    #@2a
    .line 77
    new-instance v0, Landroid/speech/tts/BlockingAudioTrack;

    #@2c
    invoke-direct {v0, p1, p2, p3, p4}, Landroid/speech/tts/BlockingAudioTrack;-><init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;III)V

    #@2f
    iput-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    #@31
    .line 78
    iput-object p7, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    #@33
    .line 68
    return-void
.end method

.method private take()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 204
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    #@3
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@6
    .line 208
    :goto_0
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDataBufferList:Ljava/util/LinkedList;

    #@8
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    iget-boolean v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 214
    :cond_0
    iget-boolean v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    if-eqz v1, :cond_2

    #@16
    .line 235
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    #@18
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@1b
    .line 215
    return-object v2

    #@1c
    .line 208
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDone:Z

    #@1e
    if-nez v1, :cond_0

    #@20
    .line 209
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mReadReady:Ljava/util/concurrent/locks/Condition;

    #@22
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    goto :goto_0

    #@26
    .line 234
    :catchall_0
    move-exception v1

    #@27
    .line 235
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    #@29
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@2c
    .line 234
    throw v1

    #@2d
    .line 219
    :cond_2
    :try_start_2
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDataBufferList:Ljava/util/LinkedList;

    #@2f
    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@35
    .line 223
    .local v0, "entry":Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;
    if-nez v0, :cond_3

    #@37
    .line 235
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    #@39
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@3c
    .line 224
    return-object v2

    #@3d
    .line 227
    :cond_3
    :try_start_3
    iget v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    #@3f
    iget-object v2, v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;->mBytes:[B

    #@41
    array-length v2, v2

    #@42
    sub-int/2addr v1, v2

    #@43
    iput v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    #@45
    .line 231
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mNotFull:Ljava/util/concurrent/locks/Condition;

    #@47
    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@4a
    .line 233
    iget-object v1, v0, Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;->mBytes:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4c
    .line 235
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    #@4e
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@51
    .line 233
    return-object v1
.end method


# virtual methods
.method done()V
    .locals 2

    #@0
    .prologue
    .line 155
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@5
    .line 158
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDone:Z

    #@8
    .line 163
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mReadReady:Ljava/util/concurrent/locks/Condition;

    #@a
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@d
    .line 169
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mNotFull:Ljava/util/concurrent/locks/Condition;

    #@f
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 171
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    #@14
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@17
    .line 153
    return-void

    #@18
    .line 170
    :catchall_0
    move-exception v0

    #@19
    .line 171
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    #@1b
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@1e
    .line 170
    throw v0
.end method

.method put([B)V
    .locals 4
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    #@0
    .prologue
    .line 178
    :try_start_0
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    #@2
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@5
    .line 179
    const-wide/16 v0, 0x0

    #@7
    .line 181
    .local v0, "unconsumedAudioMs":J
    :goto_0
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    #@9
    iget v3, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    #@b
    invoke-virtual {v2, v3}, Landroid/speech/tts/BlockingAudioTrack;->getAudioLengthMs(I)J

    #@e
    move-result-wide v0

    #@f
    .line 182
    const-wide/16 v2, 0x1f4

    #@11
    .line 181
    cmp-long v2, v0, v2

    #@13
    if-lez v2, :cond_0

    #@15
    .line 182
    iget-boolean v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z

    #@17
    if-eqz v2, :cond_1

    #@19
    .line 190
    :cond_0
    iget-boolean v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    if-eqz v2, :cond_2

    #@1d
    .line 198
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    #@1f
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@22
    .line 191
    return-void

    #@23
    .line 183
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mNotFull:Ljava/util/concurrent/locks/Condition;

    #@25
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@28
    goto :goto_0

    #@29
    .line 197
    .end local v0    # "unconsumedAudioMs":J
    :catchall_0
    move-exception v2

    #@2a
    .line 198
    iget-object v3, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    #@2c
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@2f
    .line 197
    throw v2

    #@30
    .line 194
    .restart local v0    # "unconsumedAudioMs":J
    :cond_2
    :try_start_2
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mDataBufferList:Ljava/util/LinkedList;

    #@32
    new-instance v3, Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;

    #@34
    invoke-direct {v3, p1}, Landroid/speech/tts/SynthesisPlaybackQueueItem$ListEntry;-><init>([B)V

    #@37
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@3a
    .line 195
    iget v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    #@3c
    array-length v3, p1

    #@3d
    add-int/2addr v2, v3

    #@3e
    iput v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mUnconsumedBytes:I

    #@40
    .line 196
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mReadReady:Ljava/util/concurrent/locks/Condition;

    #@42
    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@45
    .line 198
    iget-object v2, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    #@47
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@4a
    .line 176
    return-void
.end method

.method public run()V
    .locals 5

    #@0
    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@3
    move-result-object v1

    #@4
    .line 85
    .local v1, "dispatcher":Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStart()V

    #@7
    .line 87
    iget-object v3, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    #@9
    invoke-virtual {v3}, Landroid/speech/tts/BlockingAudioTrack;->init()Z

    #@c
    move-result v3

    #@d
    if-nez v3, :cond_0

    #@f
    .line 88
    const/4 v3, -0x5

    #@10
    invoke-interface {v1, v3}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    #@13
    .line 89
    return-void

    #@14
    .line 93
    :cond_0
    const/4 v0, 0x0

    #@15
    .line 101
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->take()[B

    #@18
    move-result-object v0

    #@19
    .local v0, "buffer":[B
    if-eqz v0, :cond_1

    #@1b
    .line 102
    iget-object v3, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    #@1d
    invoke-virtual {v3, v0}, Landroid/speech/tts/BlockingAudioTrack;->write([B)I

    #@20
    .line 103
    iget-object v3, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    #@22
    invoke-virtual {v3}, Landroid/speech/tts/AbstractEventLogger;->onAudioDataWritten()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    goto :goto_0

    #@26
    .line 106
    .end local v0    # "buffer":[B
    :catch_0
    move-exception v2

    #@27
    .line 110
    :cond_1
    iget-object v3, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    #@29
    invoke-virtual {v3}, Landroid/speech/tts/BlockingAudioTrack;->waitAndRelease()V

    #@2c
    .line 112
    iget v3, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStatusCode:I

    #@2e
    if-nez v3, :cond_2

    #@30
    .line 113
    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnSuccess()V

    #@33
    .line 120
    :goto_1
    iget-object v3, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    #@35
    iget v4, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStatusCode:I

    #@37
    invoke-virtual {v3, v4}, Landroid/speech/tts/AbstractEventLogger;->onCompleted(I)V

    #@3a
    .line 83
    return-void

    #@3b
    .line 114
    :cond_2
    iget v3, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStatusCode:I

    #@3d
    const/4 v4, -0x2

    #@3e
    if-ne v3, v4, :cond_3

    #@40
    .line 115
    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStop()V

    #@43
    goto :goto_1

    #@44
    .line 117
    :cond_3
    iget v3, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStatusCode:I

    #@46
    invoke-interface {v1, v3}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    #@49
    goto :goto_1
.end method

.method stop(I)V
    .locals 2
    .param p1, "statusCode"    # I

    #@0
    .prologue
    .line 126
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    #@2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@5
    .line 129
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStopped:Z

    #@8
    .line 130
    iput p1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mStatusCode:I

    #@a
    .line 135
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mReadReady:Ljava/util/concurrent/locks/Condition;

    #@c
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    #@f
    .line 142
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mNotFull:Ljava/util/concurrent/locks/Condition;

    #@11
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 144
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    #@16
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@19
    .line 150
    iget-object v0, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mAudioTrack:Landroid/speech/tts/BlockingAudioTrack;

    #@1b
    invoke-virtual {v0}, Landroid/speech/tts/BlockingAudioTrack;->stop()V

    #@1e
    .line 124
    return-void

    #@1f
    .line 143
    :catchall_0
    move-exception v0

    #@20
    .line 144
    iget-object v1, p0, Landroid/speech/tts/SynthesisPlaybackQueueItem;->mListLock:Ljava/util/concurrent/locks/Lock;

    #@22
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@25
    .line 143
    throw v0
.end method
