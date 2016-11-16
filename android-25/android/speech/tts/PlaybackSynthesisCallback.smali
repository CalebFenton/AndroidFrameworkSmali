.class Landroid/speech/tts/PlaybackSynthesisCallback;
.super Landroid/speech/tts/AbstractSynthesisCallback;
.source "PlaybackSynthesisCallback.java"


# static fields
.field private static final DBG:Z = false

.field private static final MIN_AUDIO_BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "PlaybackSynthesisRequest"


# instance fields
.field private final mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

.field private final mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

.field private final mCallerIdentity:Ljava/lang/Object;

.field private final mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

.field private volatile mDone:Z

.field private mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

.field private final mLogger:Landroid/speech/tts/AbstractEventLogger;

.field private final mStateLock:Ljava/lang/Object;

.field protected mStatusCode:I


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/speech/tts/AbstractEventLogger;Z)V
    .locals 2
    .param p1, "audioParams"    # Landroid/speech/tts/TextToSpeechService$AudioOutputParams;
    .param p2, "audioTrackHandler"    # Landroid/speech/tts/AudioPlaybackHandler;
    .param p3, "dispatcher"    # Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    .param p4, "callerIdentity"    # Ljava/lang/Object;
    .param p5, "logger"    # Landroid/speech/tts/AbstractEventLogger;
    .param p6, "clientIsUsingV2"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 59
    invoke-direct {p0, p6}, Landroid/speech/tts/AbstractSynthesisCallback;-><init>(Z)V

    #@4
    .line 39
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@b
    .line 44
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    #@e
    .line 46
    iput-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    #@10
    .line 60
    iput-object p1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    #@12
    .line 61
    iput-object p2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    #@14
    .line 62
    iput-object p3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@16
    .line 63
    iput-object p4, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mCallerIdentity:Ljava/lang/Object;

    #@18
    .line 64
    iput-object p5, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    #@1a
    .line 65
    iput v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    #@1c
    .line 58
    return-void
.end method


# virtual methods
.method public audioAvailable([BII)I
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 172
    invoke-virtual {p0}, Landroid/speech/tts/PlaybackSynthesisCallback;->getMaxBufferSize()I

    #@5
    move-result v3

    #@6
    if-gt p3, v3, :cond_0

    #@8
    if-gtz p3, :cond_1

    #@a
    .line 173
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v4, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v5, "buffer is too large or of zero length ("

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    .line 174
    const-string/jumbo v5, " bytes)"

    #@1f
    .line 173
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v3

    #@2b
    .line 177
    :cond_1
    const/4 v2, 0x0

    #@2c
    .line 178
    .local v2, "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    iget-object v4, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@2e
    monitor-enter v4

    #@2f
    .line 179
    :try_start_0
    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    #@31
    if-nez v3, :cond_2

    #@33
    .line 180
    const/4 v3, -0x5

    #@34
    iput v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    monitor-exit v4

    #@37
    .line 181
    return v7

    #@38
    .line 183
    :cond_2
    :try_start_1
    iget v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3a
    if-eqz v3, :cond_3

    #@3c
    monitor-exit v4

    #@3d
    .line 185
    return v7

    #@3e
    .line 187
    :cond_3
    :try_start_2
    iget v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    #@40
    const/4 v5, -0x2

    #@41
    if-ne v3, v5, :cond_4

    #@43
    .line 188
    invoke-virtual {p0}, Landroid/speech/tts/AbstractSynthesisCallback;->errorCodeOnStop()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@46
    move-result v3

    #@47
    monitor-exit v4

    #@48
    return v3

    #@49
    .line 190
    :cond_4
    :try_start_3
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4b
    .local v2, "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    monitor-exit v4

    #@4c
    .line 194
    new-array v0, p3, [B

    #@4e
    .line 195
    .local v0, "bufferCopy":[B
    invoke-static {p1, p2, v0, v6, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@51
    .line 196
    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@53
    invoke-interface {v3, v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnAudioAvailable([B)V

    #@56
    .line 201
    :try_start_4
    invoke-virtual {v2, v0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->put([B)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    #@59
    .line 209
    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    #@5b
    invoke-virtual {v3}, Landroid/speech/tts/AbstractEventLogger;->onEngineDataReceived()V

    #@5e
    .line 210
    return v6

    #@5f
    .line 178
    .end local v0    # "bufferCopy":[B
    .local v2, "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :catchall_0
    move-exception v3

    #@60
    monitor-exit v4

    #@61
    throw v3

    #@62
    .line 202
    .restart local v0    # "bufferCopy":[B
    .local v2, "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :catch_0
    move-exception v1

    #@63
    .line 203
    .local v1, "ie":Ljava/lang/InterruptedException;
    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@65
    monitor-enter v3

    #@66
    .line 204
    const/4 v4, -0x5

    #@67
    :try_start_5
    iput v4, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@69
    monitor-exit v3

    #@6a
    .line 205
    return v7

    #@6b
    .line 203
    :catchall_1
    move-exception v4

    #@6c
    monitor-exit v3

    #@6d
    throw v4
.end method

.method public done()I
    .locals 7

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 217
    const/4 v1, 0x0

    #@3
    .line 218
    .local v1, "statusCode":I
    const/4 v0, 0x0

    #@4
    .line 219
    .local v0, "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@6
    monitor-enter v3

    #@7
    .line 220
    :try_start_0
    iget-boolean v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 221
    const-string/jumbo v2, "PlaybackSynthesisRequest"

    #@e
    const-string/jumbo v4, "Duplicate call to done()"

    #@11
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit v3

    #@15
    .line 224
    return v6

    #@16
    .line 226
    :cond_0
    :try_start_1
    iget v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    #@18
    const/4 v4, -0x2

    #@19
    if-ne v2, v4, :cond_1

    #@1b
    .line 228
    invoke-virtual {p0}, Landroid/speech/tts/AbstractSynthesisCallback;->errorCodeOnStop()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    move-result v2

    #@1f
    monitor-exit v3

    #@20
    return v2

    #@21
    .line 230
    :cond_1
    const/4 v2, 0x1

    #@22
    :try_start_2
    iput-boolean v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    #@24
    .line 232
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    #@26
    if-nez v2, :cond_3

    #@28
    .line 235
    const-string/jumbo v2, "PlaybackSynthesisRequest"

    #@2b
    const-string/jumbo v4, "done() was called before start() call"

    #@2e
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 236
    iget v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    #@33
    if-nez v2, :cond_2

    #@35
    .line 237
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@37
    invoke-interface {v2}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnSuccess()V

    #@3a
    .line 241
    :goto_0
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    #@3c
    invoke-virtual {v2}, Landroid/speech/tts/AbstractEventLogger;->onEngineComplete()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3f
    monitor-exit v3

    #@40
    .line 242
    return v6

    #@41
    .line 239
    :cond_2
    :try_start_3
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@43
    iget v4, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    #@45
    invoke-interface {v2, v4}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@48
    goto :goto_0

    #@49
    .line 219
    .end local v0    # "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :catchall_0
    move-exception v2

    #@4a
    monitor-exit v3

    #@4b
    throw v2

    #@4c
    .line 245
    .restart local v0    # "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :cond_3
    :try_start_4
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    #@4e
    .line 246
    .local v0, "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    iget v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@50
    monitor-exit v3

    #@51
    .line 250
    if-nez v1, :cond_4

    #@53
    .line 251
    invoke-virtual {v0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->done()V

    #@56
    .line 255
    :goto_1
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    #@58
    invoke-virtual {v2}, Landroid/speech/tts/AbstractEventLogger;->onEngineComplete()V

    #@5b
    .line 256
    return v5

    #@5c
    .line 253
    :cond_4
    invoke-virtual {v0, v1}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->stop(I)V

    #@5f
    goto :goto_1
.end method

.method public error()V
    .locals 1

    #@0
    .prologue
    .line 261
    const/4 v0, -0x3

    #@1
    invoke-virtual {p0, v0}, Landroid/speech/tts/PlaybackSynthesisCallback;->error(I)V

    #@4
    .line 260
    return-void
.end method

.method public error(I)V
    .locals 2
    .param p1, "errorCode"    # I

    #@0
    .prologue
    .line 267
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 268
    :try_start_0
    iget-boolean v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v0, :cond_0

    #@7
    monitor-exit v1

    #@8
    .line 269
    return-void

    #@9
    .line 271
    :cond_0
    :try_start_1
    iput p1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 265
    return-void

    #@d
    .line 267
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method

.method public getMaxBufferSize()I
    .locals 1

    #@0
    .prologue
    .line 107
    const/16 v0, 0x2000

    #@2
    return v0
.end method

.method public hasFinished()Z
    .locals 2

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 120
    :try_start_0
    iget-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 119
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public hasStarted()Z
    .locals 2

    #@0
    .prologue
    .line 112
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 113
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v0, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    monitor-exit v1

    #@9
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0

    #@c
    .line 112
    :catchall_0
    move-exception v0

    #@d
    monitor-exit v1

    #@e
    throw v0
.end method

.method public start(III)I
    .locals 11
    .param p1, "sampleRateInHz"    # I
    .param p2, "audioFormat"    # I
    .param p3, "channelCount"    # I

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v4, -0x1

    #@2
    .line 128
    const/4 v1, 0x3

    #@3
    if-eq p2, v1, :cond_0

    #@5
    .line 129
    const/4 v1, 0x2

    #@6
    if-eq p2, v1, :cond_0

    #@8
    .line 130
    const/4 v1, 0x4

    #@9
    if-eq p2, v1, :cond_0

    #@b
    .line 131
    const-string/jumbo v1, "PlaybackSynthesisRequest"

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "Audio format encoding "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    const-string/jumbo v3, " not supported. Please use one "

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    .line 132
    const-string/jumbo v3, "of AudioFormat.ENCODING_PCM_8BIT, AudioFormat.ENCODING_PCM_16BIT or "

    #@28
    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    .line 133
    const-string/jumbo v3, "AudioFormat.ENCODING_PCM_FLOAT"

    #@2f
    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 135
    :cond_0
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@3c
    invoke-interface {v1, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnBeginSynthesis(III)V

    #@3f
    .line 137
    invoke-static {p3}, Landroid/speech/tts/BlockingAudioTrack;->getChannelConfig(I)I

    #@42
    move-result v8

    #@43
    .line 139
    .local v8, "channelConfig":I
    iget-object v9, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@45
    monitor-enter v9

    #@46
    .line 140
    if-nez v8, :cond_1

    #@48
    .line 141
    :try_start_0
    const-string/jumbo v1, "PlaybackSynthesisRequest"

    #@4b
    new-instance v2, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v3, "Unsupported number of channels :"

    #@53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v2

    #@57
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v2

    #@5b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@62
    .line 142
    const/4 v1, -0x5

    #@63
    iput v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@65
    monitor-exit v9

    #@66
    .line 143
    return v4

    #@67
    .line 145
    :cond_1
    :try_start_1
    iget v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    #@69
    const/4 v2, -0x2

    #@6a
    if-ne v1, v2, :cond_2

    #@6c
    .line 147
    invoke-virtual {p0}, Landroid/speech/tts/AbstractSynthesisCallback;->errorCodeOnStop()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6f
    move-result v1

    #@70
    monitor-exit v9

    #@71
    return v1

    #@72
    .line 149
    :cond_2
    :try_start_2
    iget v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@74
    if-eqz v1, :cond_3

    #@76
    monitor-exit v9

    #@77
    .line 151
    return v4

    #@78
    .line 153
    :cond_3
    :try_start_3
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    #@7a
    if-eqz v1, :cond_4

    #@7c
    .line 154
    const-string/jumbo v1, "PlaybackSynthesisRequest"

    #@7f
    const-string/jumbo v2, "Start called twice"

    #@82
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@85
    monitor-exit v9

    #@86
    .line 155
    return v4

    #@87
    .line 157
    :cond_4
    :try_start_4
    new-instance v0, Landroid/speech/tts/SynthesisPlaybackQueueItem;

    #@89
    .line 158
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    #@8b
    .line 159
    iget-object v5, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@8d
    iget-object v6, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mCallerIdentity:Ljava/lang/Object;

    #@8f
    iget-object v7, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    #@91
    move v2, p1

    #@92
    move v3, p2

    #@93
    move v4, p3

    #@94
    .line 157
    invoke-direct/range {v0 .. v7}, Landroid/speech/tts/SynthesisPlaybackQueueItem;-><init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;IIILandroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/speech/tts/AbstractEventLogger;)V

    #@97
    .line 160
    .local v0, "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    #@99
    invoke-virtual {v1, v0}, Landroid/speech/tts/AudioPlaybackHandler;->enqueue(Landroid/speech/tts/PlaybackQueueItem;)V

    #@9c
    .line 161
    iput-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@9e
    monitor-exit v9

    #@9f
    .line 164
    return v10

    #@a0
    .line 139
    .end local v0    # "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :catchall_0
    move-exception v1

    #@a1
    monitor-exit v9

    #@a2
    throw v1
.end method

.method stop()V
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x2

    #@1
    .line 73
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 74
    :try_start_0
    iget-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-eqz v1, :cond_0

    #@8
    monitor-exit v2

    #@9
    .line 75
    return-void

    #@a
    .line 77
    :cond_0
    :try_start_1
    iget v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    #@c
    if-ne v1, v3, :cond_1

    #@e
    .line 78
    const-string/jumbo v1, "PlaybackSynthesisRequest"

    #@11
    const-string/jumbo v3, "stop() called twice"

    #@14
    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    monitor-exit v2

    #@18
    .line 79
    return-void

    #@19
    .line 82
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    #@1b
    .line 83
    .local v0, "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    const/4 v1, -0x2

    #@1c
    iput v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1e
    monitor-exit v2

    #@1f
    .line 86
    if-eqz v0, :cond_2

    #@21
    .line 91
    invoke-virtual {v0, v3}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->stop(I)V

    #@24
    .line 69
    :goto_0
    return-void

    #@25
    .line 73
    .end local v0    # "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :catchall_0
    move-exception v1

    #@26
    monitor-exit v2

    #@27
    throw v1

    #@28
    .line 98
    .restart local v0    # "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :cond_2
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    #@2a
    invoke-virtual {v1, v3}, Landroid/speech/tts/AbstractEventLogger;->onCompleted(I)V

    #@2d
    .line 99
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@2f
    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStop()V

    #@32
    goto :goto_0
.end method
