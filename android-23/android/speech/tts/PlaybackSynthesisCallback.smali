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
    .line 56
    invoke-direct {p0, p6}, Landroid/speech/tts/AbstractSynthesisCallback;-><init>(Z)V

    #@4
    .line 37
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@b
    .line 42
    const/4 v0, 0x0

    #@c
    iput-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    #@e
    .line 44
    iput-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    #@10
    .line 57
    iput-object p1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    #@12
    .line 58
    iput-object p2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    #@14
    .line 59
    iput-object p3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@16
    .line 60
    iput-object p4, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mCallerIdentity:Ljava/lang/Object;

    #@18
    .line 61
    iput-object p5, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    #@1a
    .line 62
    iput v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    #@1c
    .line 55
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
    .line 161
    invoke-virtual {p0}, Landroid/speech/tts/PlaybackSynthesisCallback;->getMaxBufferSize()I

    #@5
    move-result v3

    #@6
    if-gt p3, v3, :cond_0

    #@8
    if-gtz p3, :cond_1

    #@a
    .line 162
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
    .line 163
    const-string/jumbo v5, " bytes)"

    #@1f
    .line 162
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
    .line 166
    :cond_1
    const/4 v2, 0x0

    #@2c
    .line 167
    .local v2, "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    iget-object v4, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@2e
    monitor-enter v4

    #@2f
    .line 168
    :try_start_0
    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    #@31
    if-nez v3, :cond_2

    #@33
    .line 169
    const/4 v3, -0x5

    #@34
    iput v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    monitor-exit v4

    #@37
    .line 170
    return v7

    #@38
    .line 172
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
    .line 174
    return v7

    #@3e
    .line 176
    :cond_3
    :try_start_2
    iget v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    #@40
    const/4 v5, -0x2

    #@41
    if-ne v3, v5, :cond_4

    #@43
    .line 177
    invoke-virtual {p0}, Landroid/speech/tts/PlaybackSynthesisCallback;->errorCodeOnStop()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@46
    move-result v3

    #@47
    monitor-exit v4

    #@48
    return v3

    #@49
    .line 179
    :cond_4
    :try_start_3
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4b
    .local v2, "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    monitor-exit v4

    #@4c
    .line 183
    new-array v0, p3, [B

    #@4e
    .line 184
    .local v0, "bufferCopy":[B
    invoke-static {p1, p2, v0, v6, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@51
    .line 189
    :try_start_4
    invoke-virtual {v2, v0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->put([B)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    #@54
    .line 197
    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    #@56
    invoke-virtual {v3}, Landroid/speech/tts/AbstractEventLogger;->onEngineDataReceived()V

    #@59
    .line 198
    return v6

    #@5a
    .line 167
    .end local v0    # "bufferCopy":[B
    .local v2, "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :catchall_0
    move-exception v3

    #@5b
    monitor-exit v4

    #@5c
    throw v3

    #@5d
    .line 190
    .restart local v0    # "bufferCopy":[B
    .local v2, "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :catch_0
    move-exception v1

    #@5e
    .line 191
    .local v1, "ie":Ljava/lang/InterruptedException;
    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@60
    monitor-enter v3

    #@61
    .line 192
    const/4 v4, -0x5

    #@62
    :try_start_5
    iput v4, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@64
    monitor-exit v3

    #@65
    .line 193
    return v7

    #@66
    .line 191
    :catchall_1
    move-exception v4

    #@67
    monitor-exit v3

    #@68
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
    .line 205
    const/4 v1, 0x0

    #@3
    .line 206
    .local v1, "statusCode":I
    const/4 v0, 0x0

    #@4
    .line 207
    .local v0, "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@6
    monitor-enter v3

    #@7
    .line 208
    :try_start_0
    iget-boolean v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 209
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
    .line 212
    return v6

    #@16
    .line 214
    :cond_0
    :try_start_1
    iget v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    #@18
    const/4 v4, -0x2

    #@19
    if-ne v2, v4, :cond_1

    #@1b
    .line 216
    invoke-virtual {p0}, Landroid/speech/tts/PlaybackSynthesisCallback;->errorCodeOnStop()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    move-result v2

    #@1f
    monitor-exit v3

    #@20
    return v2

    #@21
    .line 218
    :cond_1
    const/4 v2, 0x1

    #@22
    :try_start_2
    iput-boolean v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    #@24
    .line 220
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    #@26
    if-nez v2, :cond_3

    #@28
    .line 223
    const-string/jumbo v2, "PlaybackSynthesisRequest"

    #@2b
    const-string/jumbo v4, "done() was called before start() call"

    #@2e
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 224
    iget v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    #@33
    if-nez v2, :cond_2

    #@35
    .line 225
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@37
    invoke-interface {v2}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnSuccess()V

    #@3a
    .line 229
    :goto_0
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    #@3c
    invoke-virtual {v2}, Landroid/speech/tts/AbstractEventLogger;->onEngineComplete()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3f
    monitor-exit v3

    #@40
    .line 230
    return v6

    #@41
    .line 227
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
    .line 207
    .end local v0    # "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :catchall_0
    move-exception v2

    #@4a
    monitor-exit v3

    #@4b
    throw v2

    #@4c
    .line 233
    .restart local v0    # "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :cond_3
    :try_start_4
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    #@4e
    .line 234
    .local v0, "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    iget v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@50
    monitor-exit v3

    #@51
    .line 238
    if-nez v1, :cond_4

    #@53
    .line 239
    invoke-virtual {v0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->done()V

    #@56
    .line 243
    :goto_1
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    #@58
    invoke-virtual {v2}, Landroid/speech/tts/AbstractEventLogger;->onEngineComplete()V

    #@5b
    .line 244
    return v5

    #@5c
    .line 241
    :cond_4
    invoke-virtual {v0, v1}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->stop(I)V

    #@5f
    goto :goto_1
.end method

.method public error()V
    .locals 1

    #@0
    .prologue
    .line 249
    const/4 v0, -0x3

    #@1
    invoke-virtual {p0, v0}, Landroid/speech/tts/PlaybackSynthesisCallback;->error(I)V

    #@4
    .line 248
    return-void
.end method

.method public error(I)V
    .locals 2
    .param p1, "errorCode"    # I

    #@0
    .prologue
    .line 255
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 256
    :try_start_0
    iget-boolean v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v0, :cond_0

    #@7
    monitor-exit v1

    #@8
    .line 257
    return-void

    #@9
    .line 259
    :cond_0
    :try_start_1
    iput p1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b
    monitor-exit v1

    #@c
    .line 253
    return-void

    #@d
    .line 255
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
    .line 104
    const/16 v0, 0x2000

    #@2
    return v0
.end method

.method public hasFinished()Z
    .locals 2

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 117
    :try_start_0
    iget-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 116
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
    .line 109
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 110
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
    .line 109
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
    .line 126
    invoke-static {p3}, Landroid/speech/tts/BlockingAudioTrack;->getChannelConfig(I)I

    #@5
    move-result v8

    #@6
    .line 128
    .local v8, "channelConfig":I
    iget-object v9, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@8
    monitor-enter v9

    #@9
    .line 129
    if-nez v8, :cond_0

    #@b
    .line 130
    :try_start_0
    const-string/jumbo v1, "PlaybackSynthesisRequest"

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "Unsupported number of channels :"

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 131
    const/4 v1, -0x5

    #@26
    iput v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    monitor-exit v9

    #@29
    .line 132
    return v4

    #@2a
    .line 134
    :cond_0
    :try_start_1
    iget v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    #@2c
    const/4 v2, -0x2

    #@2d
    if-ne v1, v2, :cond_1

    #@2f
    .line 136
    invoke-virtual {p0}, Landroid/speech/tts/PlaybackSynthesisCallback;->errorCodeOnStop()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    move-result v1

    #@33
    monitor-exit v9

    #@34
    return v1

    #@35
    .line 138
    :cond_1
    :try_start_2
    iget v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@37
    if-eqz v1, :cond_2

    #@39
    monitor-exit v9

    #@3a
    .line 140
    return v4

    #@3b
    .line 142
    :cond_2
    :try_start_3
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    #@3d
    if-eqz v1, :cond_3

    #@3f
    .line 143
    const-string/jumbo v1, "PlaybackSynthesisRequest"

    #@42
    const-string/jumbo v2, "Start called twice"

    #@45
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@48
    monitor-exit v9

    #@49
    .line 144
    return v4

    #@4a
    .line 146
    :cond_3
    :try_start_4
    new-instance v0, Landroid/speech/tts/SynthesisPlaybackQueueItem;

    #@4c
    .line 147
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    #@4e
    .line 148
    iget-object v5, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@50
    iget-object v6, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mCallerIdentity:Ljava/lang/Object;

    #@52
    iget-object v7, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    #@54
    move v2, p1

    #@55
    move v3, p2

    #@56
    move v4, p3

    #@57
    .line 146
    invoke-direct/range {v0 .. v7}, Landroid/speech/tts/SynthesisPlaybackQueueItem;-><init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;IIILandroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/speech/tts/AbstractEventLogger;)V

    #@5a
    .line 149
    .local v0, "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    #@5c
    invoke-virtual {v1, v0}, Landroid/speech/tts/AudioPlaybackHandler;->enqueue(Landroid/speech/tts/PlaybackQueueItem;)V

    #@5f
    .line 150
    iput-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@61
    monitor-exit v9

    #@62
    .line 153
    return v10

    #@63
    .line 128
    .end local v0    # "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :catchall_0
    move-exception v1

    #@64
    monitor-exit v9

    #@65
    throw v1
.end method

.method stop()V
    .locals 4

    #@0
    .prologue
    const/4 v3, -0x2

    #@1
    .line 70
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 71
    :try_start_0
    iget-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-eqz v1, :cond_0

    #@8
    monitor-exit v2

    #@9
    .line 72
    return-void

    #@a
    .line 74
    :cond_0
    :try_start_1
    iget v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    #@c
    if-ne v1, v3, :cond_1

    #@e
    .line 75
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
    .line 76
    return-void

    #@19
    .line 79
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    #@1b
    .line 80
    .local v0, "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    const/4 v1, -0x2

    #@1c
    iput v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1e
    monitor-exit v2

    #@1f
    .line 83
    if-eqz v0, :cond_2

    #@21
    .line 88
    invoke-virtual {v0, v3}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->stop(I)V

    #@24
    .line 66
    :goto_0
    return-void

    #@25
    .line 70
    .end local v0    # "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :catchall_0
    move-exception v1

    #@26
    monitor-exit v2

    #@27
    throw v1

    #@28
    .line 95
    .restart local v0    # "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :cond_2
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    #@2a
    invoke-virtual {v1, v3}, Landroid/speech/tts/AbstractEventLogger;->onCompleted(I)V

    #@2d
    .line 96
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@2f
    invoke-interface {v1}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStop()V

    #@32
    goto :goto_0
.end method
