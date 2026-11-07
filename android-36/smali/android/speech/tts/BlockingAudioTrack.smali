.class Landroid/speech/tts/BlockingAudioTrack;
.super Ljava/lang/Object;
.source "BlockingAudioTrack.java"


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist MAX_PROGRESS_WAIT_MS:J = 0x9c4L

.field private static final blacklist MAX_SLEEP_TIME_MS:J = 0x9c4L

.field private static final blacklist MIN_AUDIO_BUFFER_SIZE:I = 0x2000

.field private static final blacklist MIN_SLEEP_TIME_MS:J = 0x14L

.field private static final blacklist TAG:Ljava/lang/String; = "TTS.BlockingAudioTrack"


# instance fields
.field private blacklist mAudioBufferSize:I

.field private final blacklist mAudioFormat:I

.field private final blacklist mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

.field private blacklist mAudioTrack:Landroid/media/AudioTrack;

.field private blacklist mAudioTrackLock:Ljava/lang/Object;

.field private final blacklist mBytesPerFrame:I

.field private blacklist mBytesWritten:I

.field private final blacklist mChannelCount:I

.field private blacklist mIsShortUtterance:Z

.field private final blacklist mSampleRateInHz:I

.field private blacklist mSessionId:I

.field private volatile blacklist mStopped:Z


# direct methods
.method constructor blacklist <init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;III)V
    .registers 8
    .param p1, "audioParams"    # Landroid/speech/tts/TextToSpeechService$AudioOutputParams;
    .param p2, "sampleRate"    # I
    .param p3, "audioFormat"    # I
    .param p4, "channelCount"    # I

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    .line 72
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    .line 80
    iput-object p1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    .line 81
    iput p2, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    .line 82
    iput p3, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioFormat:I

    .line 83
    iput p4, p0, Landroid/speech/tts/BlockingAudioTrack;->mChannelCount:I

    .line 85
    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioFormat:I

    invoke-static {v1}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v1

    iget v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mChannelCount:I

    mul-int/2addr v1, v2

    iput v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesPerFrame:I

    .line 86
    iput-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mIsShortUtterance:Z

    .line 87
    iput v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioBufferSize:I

    .line 88
    iput v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    .line 90
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    .line 91
    iput-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    .line 92
    return-void
.end method

.method private blacklist blockUntilCompletion(Landroid/media/AudioTrack;)V
    .registers 14
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;

    .line 279
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesPerFrame:I

    div-int v1, v0, v1

    .line 281
    .local v1, "lengthInFrames":I
    const/4 v0, -0x1

    .line 282
    .local v0, "previousPosition":I
    const/4 v2, 0x0

    .line 283
    .local v2, "currentPosition":I
    const-wide/16 v3, 0x0

    .line 285
    .local v3, "blockedTimeMs":J
    :goto_a
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v5

    move v2, v5

    if-ge v5, v1, :cond_4a

    .line 286
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4a

    iget-boolean v5, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    if-nez v5, :cond_4a

    .line 288
    sub-int v5, v1, v2

    mul-int/lit16 v5, v5, 0x3e8

    .line 289
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v6

    div-int/2addr v5, v6

    int-to-long v6, v5

    .line 290
    .local v6, "estimatedTimeMs":J
    const-wide/16 v8, 0x14

    const-wide/16 v10, 0x9c4

    invoke-static/range {v6 .. v11}, Landroid/speech/tts/BlockingAudioTrack;->clip(JJJ)J

    move-result-wide v8

    .line 295
    .local v8, "sleepTimeMs":J
    if-ne v2, v0, :cond_3f

    .line 298
    add-long/2addr v3, v8

    .line 300
    const-wide/16 v10, 0x9c4

    cmp-long v5, v3, v10

    if-lez v5, :cond_41

    .line 301
    const-string v5, "TTS.BlockingAudioTrack"

    const-string v10, "Waited unsuccessfully for 2500ms for AudioTrack to make progress, Aborting"

    invoke-static {v5, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    goto :goto_4a

    .line 306
    :cond_3f
    const-wide/16 v3, 0x0

    .line 308
    :cond_41
    move v5, v2

    .line 316
    .end local v0    # "previousPosition":I
    .local v5, "previousPosition":I
    :try_start_42
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_45
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_45} :catch_48

    .line 319
    nop

    .line 320
    .end local v6    # "estimatedTimeMs":J
    .end local v8    # "sleepTimeMs":J
    move v0, v5

    goto :goto_a

    .line 317
    .restart local v6    # "estimatedTimeMs":J
    .restart local v8    # "sleepTimeMs":J
    :catch_48
    move-exception v0

    .line 318
    .local v0, "ie":Ljava/lang/InterruptedException;
    move v0, v5

    .line 321
    .end local v5    # "previousPosition":I
    .end local v6    # "estimatedTimeMs":J
    .end local v8    # "sleepTimeMs":J
    .local v0, "previousPosition":I
    :cond_4a
    :goto_4a
    return-void
.end method

.method private blacklist blockUntilDone(Landroid/media/AudioTrack;)V
    .registers 3
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;

    .line 243
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    if-gtz v0, :cond_5

    .line 244
    return-void

    .line 247
    :cond_5
    iget-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mIsShortUtterance:Z

    if-eqz v0, :cond_d

    .line 259
    invoke-direct {p0}, Landroid/speech/tts/BlockingAudioTrack;->blockUntilEstimatedCompletion()V

    goto :goto_10

    .line 261
    :cond_d
    invoke-direct {p0, p1}, Landroid/speech/tts/BlockingAudioTrack;->blockUntilCompletion(Landroid/media/AudioTrack;)V

    .line 263
    :goto_10
    return-void
.end method

.method private blacklist blockUntilEstimatedCompletion()V
    .registers 5

    .line 266
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesPerFrame:I

    div-int/2addr v0, v1

    .line 267
    .local v0, "lengthInFrames":I
    mul-int/lit16 v1, v0, 0x3e8

    iget v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    div-int/2addr v1, v2

    int-to-long v1, v1

    .line 272
    .local v1, "estimatedTimeMs":J
    :try_start_b
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_f

    .line 275
    goto :goto_10

    .line 273
    :catch_f
    move-exception v3

    .line 276
    :goto_10
    return-void
.end method

.method private static final blacklist clip(FFF)F
    .registers 4
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 345
    cmpg-float v0, p0, p1

    if-gez v0, :cond_6

    move v0, p1

    goto :goto_d

    :cond_6
    cmpg-float v0, p0, p2

    if-gez v0, :cond_c

    move v0, p0

    goto :goto_d

    :cond_c
    move v0, p2

    :goto_d
    return v0
.end method

.method private static final blacklist clip(JJJ)J
    .registers 8
    .param p0, "value"    # J
    .param p2, "min"    # J
    .param p4, "max"    # J

    .line 341
    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    move-wide v0, p2

    goto :goto_d

    :cond_6
    cmp-long v0, p0, p4

    if-gez v0, :cond_c

    move-wide v0, p0

    goto :goto_d

    :cond_c
    move-wide v0, p4

    :goto_d
    return-wide v0
.end method

.method private blacklist createStreamingAudioTrack()Landroid/media/AudioTrack;
    .registers 10

    .line 216
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mChannelCount:I

    invoke-static {v0}, Landroid/speech/tts/BlockingAudioTrack;->getChannelConfig(I)I

    move-result v0

    .line 218
    .local v0, "channelConfig":I
    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    iget v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioFormat:I

    .line 219
    invoke-static {v1, v0, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v1

    .line 220
    .local v1, "minBufferSizeInBytes":I
    const/16 v2, 0x2000

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 222
    .local v6, "bufferSizeInBytes":I
    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 223
    invoke-virtual {v2, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    iget v3, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioFormat:I

    .line 224
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    iget v3, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    .line 225
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v5

    .line 226
    .local v5, "audioFormat":Landroid/media/AudioFormat;
    new-instance v3, Landroid/media/AudioTrack;

    iget-object v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget-object v4, v2, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mAudioAttributes:Landroid/media/AudioAttributes;

    iget-object v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget v8, v2, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mSessionId:I

    const/4 v7, 0x1

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 230
    .local v3, "audioTrack":Landroid/media/AudioTrack;
    invoke-virtual {v3}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4e

    .line 231
    const-string v2, "TTS.BlockingAudioTrack"

    const-string v4, "Unable to create audio track."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {v3}, Landroid/media/AudioTrack;->release()V

    .line 233
    const/4 v2, 0x0

    return-object v2

    .line 236
    :cond_4e
    iput v6, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioBufferSize:I

    .line 238
    iget-object v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget v2, v2, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mVolume:F

    iget-object v4, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget v4, v4, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mPan:F

    invoke-static {v3, v2, v4}, Landroid/speech/tts/BlockingAudioTrack;->setupVolume(Landroid/media/AudioTrack;FF)V

    .line 239
    return-object v3
.end method

.method static blacklist getChannelConfig(I)I
    .registers 2
    .param p0, "channelCount"    # I

    .line 175
    const/4 v0, 0x1

    if-ne p0, v0, :cond_5

    .line 176
    const/4 v0, 0x4

    return v0

    .line 177
    :cond_5
    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    .line 178
    const/16 v0, 0xc

    return v0

    .line 181
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist setupVolume(Landroid/media/AudioTrack;FF)V
    .registers 10
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "volume"    # F
    .param p2, "pan"    # F

    .line 324
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Landroid/speech/tts/BlockingAudioTrack;->clip(FFF)F

    move-result v2

    .line 325
    .local v2, "vol":F
    const/high16 v3, -0x40800000    # -1.0f

    invoke-static {p2, v3, v1}, Landroid/speech/tts/BlockingAudioTrack;->clip(FFF)F

    move-result v3

    .line 327
    .local v3, "panning":F
    move v4, v2

    .line 328
    .local v4, "volLeft":F
    move v5, v2

    .line 329
    .local v5, "volRight":F
    cmpl-float v6, v3, v0

    if-lez v6, :cond_16

    .line 330
    sub-float/2addr v1, v3

    mul-float/2addr v4, v1

    goto :goto_1c

    .line 331
    :cond_16
    cmpg-float v0, v3, v0

    if-gez v0, :cond_1c

    .line 332
    add-float/2addr v1, v3

    mul-float/2addr v5, v1

    .line 335
    :cond_1c
    :goto_1c
    invoke-virtual {p0, v4, v5}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result v0

    if-eqz v0, :cond_29

    .line 336
    const-string v0, "TTS.BlockingAudioTrack"

    const-string v1, "Failed to set volume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_29
    return-void
.end method

.method private static blacklist writeToAudioTrack(Landroid/media/AudioTrack;[B)I
    .registers 7
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "bytes"    # [B

    .line 192
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_a

    .line 194
    invoke-virtual {p0}, Landroid/media/AudioTrack;->play()V

    .line 197
    :cond_a
    const/4 v0, 0x0

    .line 198
    .local v0, "offset":I
    :goto_b
    array-length v1, p1

    if-ge v0, v1, :cond_33

    .line 202
    array-length v1, p1

    sub-int/2addr v1, v0

    .line 203
    .local v1, "sizeToWrite":I
    invoke-virtual {p0, p1, v0, v1}, Landroid/media/AudioTrack;->write([BII)I

    move-result v2

    .line 204
    .local v2, "written":I
    if-gtz v2, :cond_31

    .line 205
    if-gez v2, :cond_33

    .line 206
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An error occurred while writing to audio track: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TTS.BlockingAudioTrack"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 210
    :cond_31
    add-int/2addr v0, v2

    .line 211
    .end local v1    # "sizeToWrite":I
    .end local v2    # "written":I
    goto :goto_b

    .line 212
    :cond_33
    :goto_33
    return v0
.end method


# virtual methods
.method blacklist getAudioLengthMs(I)J
    .registers 5
    .param p1, "numBytes"    # I

    .line 185
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesPerFrame:I

    div-int v0, p1, v0

    .line 186
    .local v0, "unconsumedFrames":I
    mul-int/lit16 v1, v0, 0x3e8

    iget v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    div-int/2addr v1, v2

    int-to-long v1, v1

    .line 188
    .local v1, "estimatedTimeMs":J
    return-wide v1
.end method

.method public blacklist init()Z
    .registers 4

    .line 95
    invoke-direct {p0}, Landroid/speech/tts/BlockingAudioTrack;->createStreamingAudioTrack()Landroid/media/AudioTrack;

    move-result-object v0

    .line 96
    .local v0, "track":Landroid/media/AudioTrack;
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 97
    :try_start_7
    iput-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    .line 98
    monitor-exit v1

    .line 100
    if-nez v0, :cond_e

    .line 101
    const/4 v1, 0x0

    return v1

    .line 103
    :cond_e
    const/4 v1, 0x1

    return v1

    .line 98
    :catchall_10
    move-exception v2

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v2
.end method

.method public blacklist setNotificationMarkerPosition(I)V
    .registers 4
    .param p1, "frames"    # I

    .line 363
    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 364
    :try_start_3
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_c

    .line 365
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, p1}, Landroid/media/AudioTrack;->setNotificationMarkerPosition(I)I

    .line 367
    :cond_c
    monitor-exit v0

    .line 368
    return-void

    .line 367
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    .line 354
    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 355
    :try_start_3
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_c

    .line 356
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1, p1}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    .line 358
    :cond_c
    monitor-exit v0

    .line 359
    return-void

    .line 358
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist stop()V
    .registers 3

    .line 108
    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 109
    :try_start_3
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_c

    .line 110
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    .line 112
    :cond_c
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    .line 113
    monitor-exit v0

    .line 114
    return-void

    .line 113
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist waitAndRelease()V
    .registers 4

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "track":Landroid/media/AudioTrack;
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 134
    :try_start_4
    iget-object v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    move-object v0, v2

    .line 135
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_32

    .line 136
    if-nez v0, :cond_b

    .line 138
    return-void

    .line 147
    :cond_b
    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    iget v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioBufferSize:I

    if-ge v1, v2, :cond_1b

    iget-boolean v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    if-nez v1, :cond_1b

    .line 153
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mIsShortUtterance:Z

    .line 154
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 158
    :cond_1b
    iget-boolean v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    if-nez v1, :cond_24

    .line 160
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    invoke-direct {p0, v1}, Landroid/speech/tts/BlockingAudioTrack;->blockUntilDone(Landroid/media/AudioTrack;)V

    .line 167
    :cond_24
    iget-object v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v2

    .line 168
    const/4 v1, 0x0

    :try_start_28
    iput-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    .line 169
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2f

    .line 170
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 171
    return-void

    .line 169
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1

    .line 135
    :catchall_32
    move-exception v2

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v2
.end method

.method public blacklist write([B)I
    .registers 5
    .param p1, "data"    # [B

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "track":Landroid/media/AudioTrack;
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_4
    iget-object v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    move-object v0, v2

    .line 120
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_1b

    .line 122
    if-eqz v0, :cond_19

    iget-boolean v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    if-eqz v1, :cond_f

    goto :goto_19

    .line 125
    :cond_f
    invoke-static {v0, p1}, Landroid/speech/tts/BlockingAudioTrack;->writeToAudioTrack(Landroid/media/AudioTrack;[B)I

    move-result v1

    .line 127
    .local v1, "bytesWritten":I
    iget v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    add-int/2addr v2, v1

    iput v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    .line 128
    return v1

    .line 123
    .end local v1    # "bytesWritten":I
    :cond_19
    :goto_19
    const/4 v1, -0x1

    return v1

    .line 120
    :catchall_1b
    move-exception v2

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v2
.end method
