.class Landroid/speech/tts/BlockingAudioTrack;
.super Ljava/lang/Object;
.source "BlockingAudioTrack.java"


# static fields
.field private static final DBG:Z = false

.field private static final MAX_PROGRESS_WAIT_MS:J = 0x9c4L

.field private static final MAX_SLEEP_TIME_MS:J = 0x9c4L

.field private static final MIN_AUDIO_BUFFER_SIZE:I = 0x2000

.field private static final MIN_SLEEP_TIME_MS:J = 0x14L

.field private static final TAG:Ljava/lang/String; = "TTS.BlockingAudioTrack"


# instance fields
.field private mAudioBufferSize:I

.field private final mAudioFormat:I

.field private final mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

.field private mAudioTrack:Landroid/media/AudioTrack;

.field private mAudioTrackLock:Ljava/lang/Object;

.field private final mBytesPerFrame:I

.field private mBytesWritten:I

.field private final mChannelCount:I

.field private mIsShortUtterance:Z

.field private final mSampleRateInHz:I

.field private mSessionId:I

.field private volatile mStopped:Z


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeechService$AudioOutputParams;III)V
    .locals 3
    .param p1, "audioParams"    # Landroid/speech/tts/TextToSpeechService$AudioOutputParams;
    .param p2, "sampleRate"    # I
    .param p3, "audioFormat"    # I
    .param p4, "channelCount"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 68
    iput v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    #@6
    .line 72
    new-instance v0, Ljava/lang/Object;

    #@8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@b
    iput-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    #@d
    .line 80
    iput-object p1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    #@f
    .line 81
    iput p2, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    #@11
    .line 82
    iput p3, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioFormat:I

    #@13
    .line 83
    iput p4, p0, Landroid/speech/tts/BlockingAudioTrack;->mChannelCount:I

    #@15
    .line 85
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioFormat:I

    #@17
    invoke-static {v0}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    #@1a
    move-result v0

    #@1b
    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mChannelCount:I

    #@1d
    mul-int/2addr v0, v1

    #@1e
    iput v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesPerFrame:I

    #@20
    .line 86
    iput-boolean v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mIsShortUtterance:Z

    #@22
    .line 87
    iput v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioBufferSize:I

    #@24
    .line 88
    iput v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    #@26
    .line 90
    const/4 v0, 0x0

    #@27
    iput-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    #@29
    .line 91
    iput-boolean v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    #@2b
    .line 79
    return-void
.end method

.method private blockUntilCompletion(Landroid/media/AudioTrack;)V
    .locals 14
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;

    #@0
    .prologue
    const-wide/16 v4, 0x9c4

    #@2
    .line 274
    iget v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    #@4
    iget v3, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesPerFrame:I

    #@6
    div-int v10, v2, v3

    #@8
    .line 276
    .local v10, "lengthInFrames":I
    const/4 v11, -0x1

    #@9
    .line 277
    .local v11, "previousPosition":I
    const/4 v8, 0x0

    #@a
    .line 278
    .local v8, "currentPosition":I
    const-wide/16 v6, 0x0

    #@c
    .line 280
    .local v6, "blockedTimeMs":J
    :goto_0
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    #@f
    move-result v8

    #@10
    if-ge v8, v10, :cond_0

    #@12
    .line 281
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getPlayState()I

    #@15
    move-result v2

    #@16
    const/4 v3, 0x3

    #@17
    if-ne v2, v3, :cond_0

    #@19
    iget-boolean v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 273
    :cond_0
    :goto_1
    return-void

    #@1e
    .line 283
    :cond_1
    sub-int v2, v10, v8

    #@20
    mul-int/lit16 v2, v2, 0x3e8

    #@22
    .line 284
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    #@25
    move-result v3

    #@26
    .line 283
    div-int/2addr v2, v3

    #@27
    int-to-long v0, v2

    #@28
    .line 285
    .local v0, "estimatedTimeMs":J
    const-wide/16 v2, 0x14

    #@2a
    invoke-static/range {v0 .. v5}, Landroid/speech/tts/BlockingAudioTrack;->clip(JJJ)J

    #@2d
    move-result-wide v12

    #@2e
    .line 290
    .local v12, "sleepTimeMs":J
    if-ne v8, v11, :cond_2

    #@30
    .line 293
    add-long/2addr v6, v12

    #@31
    .line 295
    cmp-long v2, v6, v4

    #@33
    if-lez v2, :cond_3

    #@35
    .line 296
    const-string/jumbo v2, "TTS.BlockingAudioTrack"

    #@38
    const-string/jumbo v3, "Waited unsuccessfully for 2500ms for AudioTrack to make progress, Aborting"

    #@3b
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    goto :goto_1

    #@3f
    .line 301
    :cond_2
    const-wide/16 v6, 0x0

    #@41
    .line 303
    :cond_3
    move v11, v8

    #@42
    .line 311
    :try_start_0
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    goto :goto_0

    #@46
    .line 312
    :catch_0
    move-exception v9

    #@47
    .local v9, "ie":Ljava/lang/InterruptedException;
    goto :goto_1
.end method

.method private blockUntilDone(Landroid/media/AudioTrack;)V
    .locals 1
    .param p1, "audioTrack"    # Landroid/media/AudioTrack;

    #@0
    .prologue
    .line 238
    iget v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    #@2
    if-gtz v0, :cond_0

    #@4
    .line 239
    return-void

    #@5
    .line 242
    :cond_0
    iget-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mIsShortUtterance:Z

    #@7
    if-eqz v0, :cond_1

    #@9
    .line 254
    invoke-direct {p0}, Landroid/speech/tts/BlockingAudioTrack;->blockUntilEstimatedCompletion()V

    #@c
    .line 237
    :goto_0
    return-void

    #@d
    .line 256
    :cond_1
    invoke-direct {p0, p1}, Landroid/speech/tts/BlockingAudioTrack;->blockUntilCompletion(Landroid/media/AudioTrack;)V

    #@10
    goto :goto_0
.end method

.method private blockUntilEstimatedCompletion()V
    .locals 6

    #@0
    .prologue
    .line 261
    iget v4, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    #@2
    iget v5, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesPerFrame:I

    #@4
    div-int v3, v4, v5

    #@6
    .line 262
    .local v3, "lengthInFrames":I
    mul-int/lit16 v4, v3, 0x3e8

    #@8
    iget v5, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    #@a
    div-int/2addr v4, v5

    #@b
    int-to-long v0, v4

    #@c
    .line 267
    .local v0, "estimatedTimeMs":J
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 260
    :goto_0
    return-void

    #@10
    .line 268
    :catch_0
    move-exception v2

    #@11
    .local v2, "ie":Ljava/lang/InterruptedException;
    goto :goto_0
.end method

.method private static final clip(FFF)F
    .locals 1
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    #@0
    .prologue
    .line 340
    cmpg-float v0, p0, p1

    #@2
    if-gez v0, :cond_0

    #@4
    .end local p1    # "min":F
    :goto_0
    return p1

    #@5
    .restart local p1    # "min":F
    :cond_0
    cmpg-float v0, p0, p2

    #@7
    if-gez v0, :cond_1

    #@9
    move p1, p0

    #@a
    goto :goto_0

    #@b
    :cond_1
    move p1, p2

    #@c
    goto :goto_0
.end method

.method private static final clip(JJJ)J
    .locals 2
    .param p0, "value"    # J
    .param p2, "min"    # J
    .param p4, "max"    # J

    #@0
    .prologue
    .line 336
    cmp-long v0, p0, p2

    #@2
    if-gez v0, :cond_0

    #@4
    .end local p2    # "min":J
    :goto_0
    return-wide p2

    #@5
    .restart local p2    # "min":J
    :cond_0
    cmp-long v0, p0, p4

    #@7
    if-gez v0, :cond_1

    #@9
    move-wide p2, p0

    #@a
    goto :goto_0

    #@b
    :cond_1
    move-wide p2, p4

    #@c
    goto :goto_0
.end method

.method private createStreamingAudioTrack()Landroid/media/AudioTrack;
    .locals 8

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 211
    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mChannelCount:I

    #@3
    invoke-static {v1}, Landroid/speech/tts/BlockingAudioTrack;->getChannelConfig(I)I

    #@6
    move-result v6

    #@7
    .line 214
    .local v6, "channelConfig":I
    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    #@9
    iget v5, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioFormat:I

    #@b
    invoke-static {v1, v6, v5}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    #@e
    move-result v7

    #@f
    .line 215
    .local v7, "minBufferSizeInBytes":I
    const/16 v1, 0x2000

    #@11
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    #@14
    move-result v3

    #@15
    .line 217
    .local v3, "bufferSizeInBytes":I
    new-instance v1, Landroid/media/AudioFormat$Builder;

    #@17
    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    #@1a
    invoke-virtual {v1, v6}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    #@1d
    move-result-object v1

    #@1e
    .line 219
    iget v5, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioFormat:I

    #@20
    .line 217
    invoke-virtual {v1, v5}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    #@23
    move-result-object v1

    #@24
    .line 220
    iget v5, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    #@26
    .line 217
    invoke-virtual {v1, v5}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    #@2d
    move-result-object v2

    #@2e
    .line 221
    .local v2, "audioFormat":Landroid/media/AudioFormat;
    new-instance v0, Landroid/media/AudioTrack;

    #@30
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    #@32
    iget-object v1, v1, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mAudioAttributes:Landroid/media/AudioAttributes;

    #@34
    .line 223
    iget-object v5, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    #@36
    iget v5, v5, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mSessionId:I

    #@38
    .line 221
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    #@3b
    .line 225
    .local v0, "audioTrack":Landroid/media/AudioTrack;
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    #@3e
    move-result v1

    #@3f
    if-eq v1, v4, :cond_0

    #@41
    .line 226
    const-string/jumbo v1, "TTS.BlockingAudioTrack"

    #@44
    const-string/jumbo v4, "Unable to create audio track."

    #@47
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4a
    .line 227
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    #@4d
    .line 228
    const/4 v1, 0x0

    #@4e
    return-object v1

    #@4f
    .line 231
    :cond_0
    iput v3, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioBufferSize:I

    #@51
    .line 233
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    #@53
    iget v1, v1, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mVolume:F

    #@55
    iget-object v4, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    #@57
    iget v4, v4, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mPan:F

    #@59
    invoke-static {v0, v1, v4}, Landroid/speech/tts/BlockingAudioTrack;->setupVolume(Landroid/media/AudioTrack;FF)V

    #@5c
    .line 234
    return-object v0
.end method

.method static getChannelConfig(I)I
    .locals 1
    .param p0, "channelCount"    # I

    #@0
    .prologue
    .line 175
    const/4 v0, 0x1

    #@1
    if-ne p0, v0, :cond_0

    #@3
    .line 176
    const/4 v0, 0x4

    #@4
    return v0

    #@5
    .line 177
    :cond_0
    const/4 v0, 0x2

    #@6
    if-ne p0, v0, :cond_1

    #@8
    .line 178
    const/16 v0, 0xc

    #@a
    return v0

    #@b
    .line 181
    :cond_1
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method private static setupVolume(Landroid/media/AudioTrack;FF)V
    .locals 7
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "volume"    # F
    .param p2, "pan"    # F

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/high16 v5, 0x3f800000    # 1.0f

    #@3
    .line 319
    invoke-static {p1, v6, v5}, Landroid/speech/tts/BlockingAudioTrack;->clip(FFF)F

    #@6
    move-result v1

    #@7
    .line 320
    .local v1, "vol":F
    const/high16 v4, -0x40800000    # -1.0f

    #@9
    invoke-static {p2, v4, v5}, Landroid/speech/tts/BlockingAudioTrack;->clip(FFF)F

    #@c
    move-result v0

    #@d
    .line 322
    .local v0, "panning":F
    move v2, v1

    #@e
    .line 323
    .local v2, "volLeft":F
    move v3, v1

    #@f
    .line 324
    .local v3, "volRight":F
    cmpl-float v4, v0, v6

    #@11
    if-lez v4, :cond_2

    #@13
    .line 325
    sub-float v4, v5, v0

    #@15
    mul-float/2addr v2, v4

    #@16
    .line 330
    :cond_0
    :goto_0
    invoke-virtual {p0, v2, v3}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_1

    #@1c
    .line 331
    const-string/jumbo v4, "TTS.BlockingAudioTrack"

    #@1f
    const-string/jumbo v5, "Failed to set volume"

    #@22
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@25
    .line 318
    :cond_1
    return-void

    #@26
    .line 326
    :cond_2
    cmpg-float v4, v0, v6

    #@28
    if-gez v4, :cond_0

    #@2a
    .line 327
    add-float v4, v5, v0

    #@2c
    mul-float/2addr v3, v4

    #@2d
    goto :goto_0
.end method

.method private static writeToAudioTrack(Landroid/media/AudioTrack;[B)I
    .locals 4
    .param p0, "audioTrack"    # Landroid/media/AudioTrack;
    .param p1, "bytes"    # [B

    #@0
    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    #@3
    move-result v2

    #@4
    const/4 v3, 0x3

    #@5
    if-eq v2, v3, :cond_0

    #@7
    .line 194
    invoke-virtual {p0}, Landroid/media/AudioTrack;->play()V

    #@a
    .line 197
    :cond_0
    const/4 v0, 0x0

    #@b
    .line 198
    .local v0, "count":I
    :goto_0
    array-length v2, p1

    #@c
    if-ge v0, v2, :cond_1

    #@e
    .line 201
    array-length v2, p1

    #@f
    invoke-virtual {p0, p1, v0, v2}, Landroid/media/AudioTrack;->write([BII)I

    #@12
    move-result v1

    #@13
    .line 202
    .local v1, "written":I
    if-gtz v1, :cond_2

    #@15
    .line 207
    .end local v1    # "written":I
    :cond_1
    return v0

    #@16
    .line 205
    .restart local v1    # "written":I
    :cond_2
    add-int/2addr v0, v1

    #@17
    goto :goto_0
.end method


# virtual methods
.method getAudioLengthMs(I)J
    .locals 5
    .param p1, "numBytes"    # I

    #@0
    .prologue
    .line 185
    iget v3, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesPerFrame:I

    #@2
    div-int v2, p1, v3

    #@4
    .line 186
    .local v2, "unconsumedFrames":I
    mul-int/lit16 v3, v2, 0x3e8

    #@6
    iget v4, p0, Landroid/speech/tts/BlockingAudioTrack;->mSampleRateInHz:I

    #@8
    div-int/2addr v3, v4

    #@9
    int-to-long v0, v3

    #@a
    .line 188
    .local v0, "estimatedTimeMs":J
    return-wide v0
.end method

.method public init()Z
    .locals 3

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Landroid/speech/tts/BlockingAudioTrack;->createStreamingAudioTrack()Landroid/media/AudioTrack;

    #@3
    move-result-object v0

    #@4
    .line 96
    .local v0, "track":Landroid/media/AudioTrack;
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    .line 97
    :try_start_0
    iput-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    .line 100
    if-nez v0, :cond_0

    #@c
    .line 101
    const/4 v1, 0x0

    #@d
    return v1

    #@e
    .line 96
    :catchall_0
    move-exception v2

    #@f
    monitor-exit v1

    #@10
    throw v2

    #@11
    .line 103
    :cond_0
    const/4 v1, 0x1

    #@12
    return v1
.end method

.method public stop()V
    .locals 2

    #@0
    .prologue
    .line 108
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 109
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 110
    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    #@9
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    #@c
    .line 112
    :cond_0
    const/4 v0, 0x1

    #@d
    iput-boolean v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v1

    #@10
    .line 107
    return-void

    #@11
    .line 108
    :catchall_0
    move-exception v0

    #@12
    monitor-exit v1

    #@13
    throw v0
.end method

.method public waitAndRelease()V
    .locals 3

    #@0
    .prologue
    .line 132
    const/4 v0, 0x0

    #@1
    .line 133
    .local v0, "track":Landroid/media/AudioTrack;
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 134
    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    .local v0, "track":Landroid/media/AudioTrack;
    monitor-exit v1

    #@7
    .line 136
    if-nez v0, :cond_0

    #@9
    .line 138
    return-void

    #@a
    .line 133
    .local v0, "track":Landroid/media/AudioTrack;
    :catchall_0
    move-exception v2

    #@b
    monitor-exit v1

    #@c
    throw v2

    #@d
    .line 147
    .local v0, "track":Landroid/media/AudioTrack;
    :cond_0
    iget v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    #@f
    iget v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioBufferSize:I

    #@11
    if-ge v1, v2, :cond_1

    #@13
    iget-boolean v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    #@15
    if-eqz v1, :cond_3

    #@17
    .line 158
    :cond_1
    :goto_0
    iget-boolean v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    #@19
    if-nez v1, :cond_2

    #@1b
    .line 160
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;

    #@1d
    invoke-direct {p0, v1}, Landroid/speech/tts/BlockingAudioTrack;->blockUntilDone(Landroid/media/AudioTrack;)V

    #@20
    .line 167
    :cond_2
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    #@22
    monitor-enter v1

    #@23
    .line 168
    const/4 v2, 0x0

    #@24
    :try_start_1
    iput-object v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@26
    monitor-exit v1

    #@27
    .line 170
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    #@2a
    .line 131
    return-void

    #@2b
    .line 153
    :cond_3
    const/4 v1, 0x1

    #@2c
    iput-boolean v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mIsShortUtterance:Z

    #@2e
    .line 154
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    #@31
    goto :goto_0

    #@32
    .line 167
    :catchall_1
    move-exception v2

    #@33
    monitor-exit v1

    #@34
    throw v2
.end method

.method public write([B)I
    .locals 4
    .param p1, "data"    # [B

    #@0
    .prologue
    .line 117
    const/4 v1, 0x0

    #@1
    .line 118
    .local v1, "track":Landroid/media/AudioTrack;
    iget-object v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrackLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 119
    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/BlockingAudioTrack;->mAudioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    .local v1, "track":Landroid/media/AudioTrack;
    monitor-exit v2

    #@7
    .line 122
    if-eqz v1, :cond_0

    #@9
    iget-boolean v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mStopped:Z

    #@b
    if-eqz v2, :cond_1

    #@d
    .line 123
    :cond_0
    const/4 v2, -0x1

    #@e
    return v2

    #@f
    .line 118
    .local v1, "track":Landroid/media/AudioTrack;
    :catchall_0
    move-exception v3

    #@10
    monitor-exit v2

    #@11
    throw v3

    #@12
    .line 125
    .local v1, "track":Landroid/media/AudioTrack;
    :cond_1
    invoke-static {v1, p1}, Landroid/speech/tts/BlockingAudioTrack;->writeToAudioTrack(Landroid/media/AudioTrack;[B)I

    #@15
    move-result v0

    #@16
    .line 127
    .local v0, "bytesWritten":I
    iget v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    #@18
    add-int/2addr v2, v0

    #@19
    iput v2, p0, Landroid/speech/tts/BlockingAudioTrack;->mBytesWritten:I

    #@1b
    .line 128
    return v0
.end method
