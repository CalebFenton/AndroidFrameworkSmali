.class Landroid/speech/tts/PlaybackSynthesisCallback;
.super Landroid/speech/tts/AbstractSynthesisCallback;
.source "PlaybackSynthesisCallback.java"


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist MIN_AUDIO_BUFFER_SIZE:I = 0x2000

.field private static final blacklist TAG:Ljava/lang/String; = "PlaybackSynthesisRequest"


# instance fields
.field private final blacklist mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

.field private final blacklist mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

.field private final blacklist mCallerIdentity:Ljava/lang/Object;

.field private final blacklist mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

.field private volatile blacklist mDone:Z

.field private blacklist mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

.field private final blacklist mLogger:Landroid/speech/tts/AbstractEventLogger;

.field private final blacklist mStateLock:Ljava/lang/Object;

.field protected blacklist mStatusCode:I


# direct methods
.method constructor blacklist <init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;Landroid/speech/tts/AudioPlaybackHandler;Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/speech/tts/AbstractEventLogger;Z)V
    .registers 8
    .param p1, "audioParams"    # Landroid/speech/tts/TextToSpeechService$AudioOutputParams;
    .param p2, "audioTrackHandler"    # Landroid/speech/tts/AudioPlaybackHandler;
    .param p3, "dispatcher"    # Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    .param p4, "callerIdentity"    # Ljava/lang/Object;
    .param p5, "logger"    # Landroid/speech/tts/AbstractEventLogger;
    .param p6, "clientIsUsingV2"    # Z

    .line 59
    invoke-direct {p0, p6}, Landroid/speech/tts/AbstractSynthesisCallback;-><init>(Z)V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    .line 60
    iput-object p1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    .line 61
    iput-object p2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    .line 62
    iput-object p3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    .line 63
    iput-object p4, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mCallerIdentity:Ljava/lang/Object;

    .line 64
    iput-object p5, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    .line 65
    iput v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    .line 66
    return-void
.end method


# virtual methods
.method public whitelist audioAvailable([BII)I
    .registers 11
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 172
    invoke-virtual {p0}, Landroid/speech/tts/PlaybackSynthesisCallback;->getMaxBufferSize()I

    move-result v0

    if-gt p3, v0, :cond_4f

    if-lez p3, :cond_4f

    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_c
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    const/4 v3, -0x5

    const/4 v4, -0x1

    if-nez v2, :cond_16

    .line 180
    iput v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    .line 181
    monitor-exit v1

    return v4

    .line 183
    :cond_16
    iget v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    if-eqz v2, :cond_1c

    .line 185
    monitor-exit v1

    return v4

    .line 187
    :cond_1c
    iget v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    const/4 v5, -0x2

    if-ne v2, v5, :cond_27

    .line 188
    invoke-virtual {p0}, Landroid/speech/tts/PlaybackSynthesisCallback;->errorCodeOnStop()I

    move-result v2

    monitor-exit v1

    return v2

    .line 190
    :cond_27
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    move-object v0, v2

    .line 191
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_4c

    .line 194
    new-array v2, p3, [B

    .line 195
    .local v2, "bufferCopy":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 196
    iget-object v5, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v5, v2}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnAudioAvailable([B)V

    .line 201
    :try_start_36
    invoke-virtual {v0, v2}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->put([B)V
    :try_end_39
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_39} :catch_40

    .line 207
    nop

    .line 209
    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    invoke-virtual {v3}, Landroid/speech/tts/AbstractEventLogger;->onEngineDataReceived()V

    .line 210
    return v1

    .line 202
    :catch_40
    move-exception v1

    move-object v5, v1

    .line 203
    .local v5, "ie":Ljava/lang/InterruptedException;
    iget-object v6, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v6

    .line 204
    :try_start_45
    iput v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    .line 205
    monitor-exit v6

    return v4

    .line 206
    :catchall_49
    move-exception v1

    monitor-exit v6
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_49

    throw v1

    .line 191
    .end local v2    # "bufferCopy":[B
    .end local v5    # "ie":Ljava/lang/InterruptedException;
    :catchall_4c
    move-exception v2

    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v2

    .line 173
    .end local v0    # "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :cond_4f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buffer is too large or of zero length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist done()I
    .registers 7

    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "statusCode":I
    const/4 v1, 0x0

    .line 219
    .local v1, "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 220
    :try_start_5
    iget-boolean v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    const/4 v4, -0x1

    if-eqz v3, :cond_13

    .line 221
    const-string v3, "PlaybackSynthesisRequest"

    const-string v5, "Duplicate call to done()"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    monitor-exit v2

    return v4

    .line 226
    :cond_13
    iget v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    const/4 v5, -0x2

    if-ne v3, v5, :cond_1e

    .line 228
    invoke-virtual {p0}, Landroid/speech/tts/PlaybackSynthesisCallback;->errorCodeOnStop()I

    move-result v3

    monitor-exit v2

    return v3

    .line 230
    :cond_1e
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    .line 232
    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    if-nez v3, :cond_44

    .line 235
    const-string v3, "PlaybackSynthesisRequest"

    const-string v5, "done() was called before start() call"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    if-nez v3, :cond_36

    .line 237
    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v3}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnSuccess()V

    goto :goto_3d

    .line 239
    :cond_36
    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    iget v5, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    invoke-interface {v3, v5}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    .line 241
    :goto_3d
    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    invoke-virtual {v3}, Landroid/speech/tts/AbstractEventLogger;->onEngineComplete()V

    .line 242
    monitor-exit v2

    return v4

    .line 245
    :cond_44
    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    move-object v1, v3

    .line 246
    iget v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    move v0, v3

    .line 247
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_5 .. :try_end_4b} :catchall_5b

    .line 250
    if-nez v0, :cond_51

    .line 251
    invoke-virtual {v1}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->done()V

    goto :goto_54

    .line 253
    :cond_51
    invoke-virtual {v1, v0}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->stop(I)V

    .line 255
    :goto_54
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    invoke-virtual {v2}, Landroid/speech/tts/AbstractEventLogger;->onEngineComplete()V

    .line 256
    const/4 v2, 0x0

    return v2

    .line 247
    :catchall_5b
    move-exception v3

    :try_start_5c
    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    throw v3
.end method

.method public whitelist error()V
    .registers 2

    .line 261
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/speech/tts/PlaybackSynthesisCallback;->error(I)V

    .line 262
    return-void
.end method

.method public whitelist error(I)V
    .registers 4
    .param p1, "errorCode"    # I

    .line 267
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_3
    iget-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    if-eqz v1, :cond_9

    .line 269
    monitor-exit v0

    return-void

    .line 271
    :cond_9
    iput p1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    .line 272
    monitor-exit v0

    .line 273
    return-void

    .line 272
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public whitelist getMaxBufferSize()I
    .registers 2

    .line 107
    const/16 v0, 0x2000

    return v0
.end method

.method public whitelist hasFinished()Z
    .registers 3

    .line 119
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_3
    iget-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    monitor-exit v0

    return v1

    .line 121
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public whitelist hasStarted()Z
    .registers 3

    .line 112
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_3
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 114
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public whitelist rangeStart(III)V
    .registers 6
    .param p1, "markerInFrames"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 277
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    if-nez v0, :cond_d

    .line 278
    const-string v0, "PlaybackSynthesisRequest"

    const-string/jumbo v1, "mItem is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-void

    .line 281
    :cond_d
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    invoke-virtual {v0, p1, p2, p3}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->rangeStart(III)V

    .line 282
    return-void
.end method

.method public whitelist start(III)I
    .registers 15
    .param p1, "sampleRateInHz"    # I
    .param p2, "audioFormat"    # I
    .param p3, "channelCount"    # I

    .line 128
    const/4 v0, 0x3

    if-eq p2, v0, :cond_27

    const/4 v0, 0x2

    if-eq p2, v0, :cond_27

    const/4 v0, 0x4

    if-eq p2, v0, :cond_27

    .line 131
    const-string v0, "PlaybackSynthesisRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio format encoding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported. Please use one of AudioFormat.ENCODING_PCM_8BIT, AudioFormat.ENCODING_PCM_16BIT or AudioFormat.ENCODING_PCM_FLOAT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_27
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v0, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnBeginSynthesis(III)V

    .line 137
    invoke-static {p3}, Landroid/speech/tts/BlockingAudioTrack;->getChannelConfig(I)I

    move-result v1

    .line 139
    .local v1, "channelConfig":I
    iget-object v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 140
    const/4 v0, -0x1

    if-nez v1, :cond_58

    .line 141
    :try_start_36
    const-string v3, "PlaybackSynthesisRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported number of channels :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v3, -0x5

    iput v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    .line 143
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_36 .. :try_end_52} :catchall_53

    return v0

    .line 162
    :catchall_53
    move-exception v0

    move v5, p1

    move v6, p2

    move v7, p3

    goto :goto_94

    .line 145
    :cond_58
    :try_start_58
    iget v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_5a
    .catchall {:try_start_58 .. :try_end_5a} :catchall_90

    const/4 v4, -0x2

    if-ne v3, v4, :cond_63

    .line 147
    :try_start_5d
    invoke-virtual {p0}, Landroid/speech/tts/PlaybackSynthesisCallback;->errorCodeOnStop()I

    move-result v0

    monitor-exit v2
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_53

    return v0

    .line 149
    :cond_63
    :try_start_63
    iget v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I
    :try_end_65
    .catchall {:try_start_63 .. :try_end_65} :catchall_90

    if-eqz v3, :cond_69

    .line 151
    :try_start_67
    monitor-exit v2
    :try_end_68
    .catchall {:try_start_67 .. :try_end_68} :catchall_53

    return v0

    .line 153
    :cond_69
    :try_start_69
    iget-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :try_end_6b
    .catchall {:try_start_69 .. :try_end_6b} :catchall_90

    if-eqz v3, :cond_76

    .line 154
    :try_start_6d
    const-string v3, "PlaybackSynthesisRequest"

    const-string v4, "Start called twice"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    monitor-exit v2
    :try_end_75
    .catchall {:try_start_6d .. :try_end_75} :catchall_53

    return v0

    .line 157
    :cond_76
    :try_start_76
    new-instance v3, Landroid/speech/tts/SynthesisPlaybackQueueItem;

    iget-object v4, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget-object v8, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    iget-object v9, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mCallerIdentity:Ljava/lang/Object;

    iget-object v10, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_90

    move v5, p1

    move v6, p2

    move v7, p3

    .end local p1    # "sampleRateInHz":I
    .end local p2    # "audioFormat":I
    .end local p3    # "channelCount":I
    .local v5, "sampleRateInHz":I
    .local v6, "audioFormat":I
    .local v7, "channelCount":I
    :try_start_83
    invoke-direct/range {v3 .. v10}, Landroid/speech/tts/SynthesisPlaybackQueueItem;-><init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;IIILandroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/speech/tts/AbstractEventLogger;)V

    .line 160
    .local v3, "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    iget-object p1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mAudioTrackHandler:Landroid/speech/tts/AudioPlaybackHandler;

    invoke-virtual {p1, v3}, Landroid/speech/tts/AudioPlaybackHandler;->enqueue(Landroid/speech/tts/PlaybackQueueItem;)V

    .line 161
    iput-object v3, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    .line 162
    .end local v3    # "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    monitor-exit v2

    .line 164
    const/4 p1, 0x0

    return p1

    .line 162
    .end local v5    # "sampleRateInHz":I
    .end local v6    # "audioFormat":I
    .end local v7    # "channelCount":I
    .restart local p1    # "sampleRateInHz":I
    .restart local p2    # "audioFormat":I
    .restart local p3    # "channelCount":I
    :catchall_90
    move-exception v0

    move v5, p1

    move v6, p2

    move v7, p3

    .end local p1    # "sampleRateInHz":I
    .end local p2    # "audioFormat":I
    .end local p3    # "channelCount":I
    .restart local v5    # "sampleRateInHz":I
    .restart local v6    # "audioFormat":I
    .restart local v7    # "channelCount":I
    :goto_94
    monitor-exit v2
    :try_end_95
    .catchall {:try_start_83 .. :try_end_95} :catchall_96

    throw v0

    :catchall_96
    move-exception v0

    goto :goto_94
.end method

.method blacklist stop()V
    .registers 4

    .line 73
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_3
    iget-boolean v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDone:Z

    if-eqz v1, :cond_9

    .line 75
    monitor-exit v0

    return-void

    .line 77
    :cond_9
    iget v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_18

    .line 78
    const-string v1, "PlaybackSynthesisRequest"

    const-string/jumbo v2, "stop() called twice"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    monitor-exit v0

    return-void

    .line 82
    :cond_18
    iget-object v1, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mItem:Landroid/speech/tts/SynthesisPlaybackQueueItem;

    .line 83
    .local v1, "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    iput v2, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mStatusCode:I

    .line 84
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_2e

    .line 86
    if-eqz v1, :cond_23

    .line 91
    invoke-virtual {v1, v2}, Landroid/speech/tts/SynthesisPlaybackQueueItem;->stop(I)V

    goto :goto_2d

    .line 98
    :cond_23
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mLogger:Landroid/speech/tts/AbstractEventLogger;

    invoke-virtual {v0, v2}, Landroid/speech/tts/AbstractEventLogger;->onCompleted(I)V

    .line 99
    iget-object v0, p0, Landroid/speech/tts/PlaybackSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStop()V

    .line 101
    :goto_2d
    return-void

    .line 84
    .end local v1    # "item":Landroid/speech/tts/SynthesisPlaybackQueueItem;
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method
