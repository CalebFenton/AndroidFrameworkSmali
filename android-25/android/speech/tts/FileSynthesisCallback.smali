.class Landroid/speech/tts/FileSynthesisCallback;
.super Landroid/speech/tts/AbstractSynthesisCallback;
.source "FileSynthesisCallback.java"


# static fields
.field private static final DBG:Z = false

.field private static final MAX_AUDIO_BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "FileSynthesisRequest"

.field private static final WAV_FORMAT_PCM:S = 0x1s

.field private static final WAV_HEADER_LENGTH:I = 0x2c


# instance fields
.field private mAudioFormat:I

.field private mChannelCount:I

.field private final mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

.field private mDone:Z

.field private mFileChannel:Ljava/nio/channels/FileChannel;

.field private mSampleRateInHz:I

.field private mStarted:Z

.field private final mStateLock:Ljava/lang/Object;

.field protected mStatusCode:I


# direct methods
.method constructor <init>(Ljava/nio/channels/FileChannel;Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Z)V
    .locals 2
    .param p1, "fileChannel"    # Ljava/nio/channels/FileChannel;
    .param p2, "dispatcher"    # Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    .param p3, "clientIsUsingV2"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 59
    invoke-direct {p0, p3}, Landroid/speech/tts/AbstractSynthesisCallback;-><init>(Z)V

    #@4
    .line 41
    new-instance v0, Ljava/lang/Object;

    #@6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@9
    iput-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@b
    .line 51
    iput-boolean v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z

    #@d
    .line 52
    iput-boolean v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    #@f
    .line 60
    iput-object p1, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    #@11
    .line 61
    iput-object p2, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@13
    .line 62
    iput v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    #@15
    .line 58
    return-void
.end method

.method private cleanUp()V
    .locals 0

    #@0
    .prologue
    .line 85
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->closeFile()V

    #@3
    .line 84
    return-void
.end method

.method private closeFile()V
    .locals 1

    #@0
    .prologue
    .line 93
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    #@3
    .line 91
    return-void
.end method

.method private makeWavHeader(IIII)Ljava/nio/ByteBuffer;
    .locals 8
    .param p1, "sampleRateInHz"    # I
    .param p2, "audioFormat"    # I
    .param p3, "channelCount"    # I
    .param p4, "dataLength"    # I

    #@0
    .prologue
    const/4 v7, 0x4

    #@1
    .line 286
    invoke-static {p2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    #@4
    move-result v5

    #@5
    .line 287
    .local v5, "sampleSizeInBytes":I
    mul-int v6, p1, v5

    #@7
    mul-int v2, v6, p3

    #@9
    .line 288
    .local v2, "byteRate":I
    mul-int v6, v5, p3

    #@b
    int-to-short v1, v6

    #@c
    .line 289
    .local v1, "blockAlign":S
    mul-int/lit8 v6, v5, 0x8

    #@e
    int-to-short v0, v6

    #@f
    .line 291
    .local v0, "bitsPerSample":S
    const/16 v6, 0x2c

    #@11
    new-array v4, v6, [B

    #@13
    .line 292
    .local v4, "headerBuf":[B
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@16
    move-result-object v3

    #@17
    .line 293
    .local v3, "header":Ljava/nio/ByteBuffer;
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@19
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@1c
    .line 295
    new-array v6, v7, [B

    #@1e
    fill-array-data v6, :array_0

    #@21
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@24
    .line 296
    add-int/lit8 v6, p4, 0x2c

    #@26
    add-int/lit8 v6, v6, -0x8

    #@28
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@2b
    .line 297
    new-array v6, v7, [B

    #@2d
    fill-array-data v6, :array_1

    #@30
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@33
    .line 298
    new-array v6, v7, [B

    #@35
    fill-array-data v6, :array_2

    #@38
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@3b
    .line 299
    const/16 v6, 0x10

    #@3d
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@40
    .line 300
    const/4 v6, 0x1

    #@41
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@44
    .line 301
    int-to-short v6, p3

    #@45
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@48
    .line 302
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@4b
    .line 303
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@4e
    .line 304
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@51
    .line 305
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@54
    .line 306
    new-array v6, v7, [B

    #@56
    fill-array-data v6, :array_3

    #@59
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@5c
    .line 307
    invoke-virtual {v3, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@5f
    .line 308
    invoke-virtual {v3}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    #@62
    .line 310
    return-object v3

    #@63
    .line 295
    nop

    #@64
    :array_0
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    #@6a
    .line 297
    :array_1
    .array-data 1
        0x57t
        0x41t
        0x56t
        0x45t
    .end array-data

    #@70
    .line 298
    :array_2
    .array-data 1
        0x66t
        0x6dt
        0x74t
        0x20t
    .end array-data

    #@76
    .line 306
    :array_3
    .array-data 1
        0x64t
        0x61t
        0x74t
        0x61t
    .end array-data
.end method


# virtual methods
.method public audioAvailable([BII)I
    .locals 8
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, -0x1

    #@2
    .line 158
    const/4 v2, 0x0

    #@3
    .line 159
    .local v2, "fileChannel":Ljava/nio/channels/FileChannel;
    iget-object v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@5
    monitor-enter v4

    #@6
    .line 160
    :try_start_0
    iget v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    #@8
    const/4 v5, -0x2

    #@9
    if-ne v3, v5, :cond_0

    #@b
    .line 162
    invoke-virtual {p0}, Landroid/speech/tts/AbstractSynthesisCallback;->errorCodeOnStop()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v3

    #@f
    monitor-exit v4

    #@10
    return v3

    #@11
    .line 164
    :cond_0
    :try_start_1
    iget v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    if-eqz v3, :cond_1

    #@15
    monitor-exit v4

    #@16
    .line 166
    return v6

    #@17
    .line 168
    :cond_1
    :try_start_2
    iget-object v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    #@19
    if-nez v3, :cond_2

    #@1b
    .line 169
    const-string/jumbo v3, "FileSynthesisRequest"

    #@1e
    const-string/jumbo v5, "File not open"

    #@21
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 170
    const/4 v3, -0x5

    #@25
    iput v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@27
    monitor-exit v4

    #@28
    .line 171
    return v6

    #@29
    .line 173
    :cond_2
    :try_start_3
    iget-boolean v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z

    #@2b
    if-nez v3, :cond_3

    #@2d
    .line 174
    const-string/jumbo v3, "FileSynthesisRequest"

    #@30
    const-string/jumbo v5, "Start method was not called"

    #@33
    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@36
    monitor-exit v4

    #@37
    .line 175
    return v6

    #@38
    .line 177
    :cond_3
    :try_start_4
    iget-object v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@3a
    .local v2, "fileChannel":Ljava/nio/channels/FileChannel;
    monitor-exit v4

    #@3b
    .line 180
    new-array v0, p3, [B

    #@3d
    .line 181
    .local v0, "bufferCopy":[B
    invoke-static {p1, p2, v0, v7, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@40
    .line 182
    iget-object v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@42
    invoke-interface {v3, v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnAudioAvailable([B)V

    #@45
    .line 185
    :try_start_5
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {v2, v3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    #@4c
    .line 186
    return v7

    #@4d
    .line 159
    .end local v0    # "bufferCopy":[B
    .local v2, "fileChannel":Ljava/nio/channels/FileChannel;
    :catchall_0
    move-exception v3

    #@4e
    monitor-exit v4

    #@4f
    throw v3

    #@50
    .line 187
    .restart local v0    # "bufferCopy":[B
    .local v2, "fileChannel":Ljava/nio/channels/FileChannel;
    :catch_0
    move-exception v1

    #@51
    .line 188
    .local v1, "ex":Ljava/io/IOException;
    const-string/jumbo v3, "FileSynthesisRequest"

    #@54
    const-string/jumbo v4, "Failed to write to output file descriptor"

    #@57
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5a
    .line 189
    iget-object v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@5c
    monitor-enter v4

    #@5d
    .line 190
    :try_start_6
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    #@60
    .line 191
    const/4 v3, -0x5

    #@61
    iput v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@63
    monitor-exit v4

    #@64
    .line 193
    return v6

    #@65
    .line 189
    :catchall_1
    move-exception v3

    #@66
    monitor-exit v4

    #@67
    throw v3
.end method

.method public done()I
    .locals 12

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    const/4 v8, -0x2

    #@2
    const/4 v10, -0x1

    #@3
    .line 200
    const/4 v4, 0x0

    #@4
    .line 202
    .local v4, "fileChannel":Ljava/nio/channels/FileChannel;
    const/4 v5, 0x0

    #@5
    .line 203
    .local v5, "sampleRateInHz":I
    const/4 v0, 0x0

    #@6
    .line 204
    .local v0, "audioFormat":I
    const/4 v1, 0x0

    #@7
    .line 206
    .local v1, "channelCount":I
    iget-object v7, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@9
    monitor-enter v7

    #@a
    .line 207
    :try_start_0
    iget-boolean v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    #@c
    if-eqz v6, :cond_0

    #@e
    .line 208
    const-string/jumbo v6, "FileSynthesisRequest"

    #@11
    const-string/jumbo v8, "Duplicate call to done()"

    #@14
    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit v7

    #@18
    .line 211
    return v10

    #@19
    .line 213
    :cond_0
    :try_start_1
    iget v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    #@1b
    if-ne v6, v8, :cond_1

    #@1d
    .line 215
    invoke-virtual {p0}, Landroid/speech/tts/AbstractSynthesisCallback;->errorCodeOnStop()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    move-result v6

    #@21
    monitor-exit v7

    #@22
    return v6

    #@23
    .line 217
    :cond_1
    :try_start_2
    iget v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    #@25
    if-eqz v6, :cond_2

    #@27
    iget v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    #@29
    if-eq v6, v8, :cond_2

    #@2b
    .line 218
    iget-object v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@2d
    iget v8, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    #@2f
    invoke-interface {v6, v8}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@32
    monitor-exit v7

    #@33
    .line 219
    return v10

    #@34
    .line 221
    :cond_2
    :try_start_3
    iget-object v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    #@36
    if-nez v6, :cond_3

    #@38
    .line 222
    const-string/jumbo v6, "FileSynthesisRequest"

    #@3b
    const-string/jumbo v8, "File not open"

    #@3e
    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@41
    monitor-exit v7

    #@42
    .line 223
    return v10

    #@43
    .line 225
    :cond_3
    const/4 v6, 0x1

    #@44
    :try_start_4
    iput-boolean v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    #@46
    .line 226
    iget-object v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    #@48
    .line 227
    .local v4, "fileChannel":Ljava/nio/channels/FileChannel;
    iget v5, p0, Landroid/speech/tts/FileSynthesisCallback;->mSampleRateInHz:I

    #@4a
    .line 228
    iget v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mAudioFormat:I

    #@4c
    .line 229
    iget v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mChannelCount:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@4e
    monitor-exit v7

    #@4f
    .line 234
    const-wide/16 v6, 0x0

    #@51
    :try_start_5
    invoke-virtual {v4, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    #@54
    .line 235
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    #@57
    move-result-wide v6

    #@58
    const-wide/16 v8, 0x2c

    #@5a
    sub-long/2addr v6, v8

    #@5b
    long-to-int v2, v6

    #@5c
    .line 237
    .local v2, "dataLength":I
    invoke-direct {p0, v5, v0, v1, v2}, Landroid/speech/tts/FileSynthesisCallback;->makeWavHeader(IIII)Ljava/nio/ByteBuffer;

    #@5f
    move-result-object v6

    #@60
    .line 236
    invoke-virtual {v4, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    #@63
    .line 239
    iget-object v7, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@65
    monitor-enter v7
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    #@66
    .line 240
    :try_start_6
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->closeFile()V

    #@69
    .line 241
    iget-object v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@6b
    invoke-interface {v6}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnSuccess()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@6e
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    #@6f
    .line 242
    return v11

    #@70
    .line 206
    .end local v2    # "dataLength":I
    .end local v4    # "fileChannel":Ljava/nio/channels/FileChannel;
    :catchall_0
    move-exception v6

    #@71
    monitor-exit v7

    #@72
    throw v6

    #@73
    .line 239
    .restart local v2    # "dataLength":I
    .restart local v4    # "fileChannel":Ljava/nio/channels/FileChannel;
    :catchall_1
    move-exception v6

    #@74
    :try_start_8
    monitor-exit v7

    #@75
    throw v6
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    #@76
    .line 244
    .end local v2    # "dataLength":I
    :catch_0
    move-exception v3

    #@77
    .line 245
    .local v3, "ex":Ljava/io/IOException;
    const-string/jumbo v6, "FileSynthesisRequest"

    #@7a
    const-string/jumbo v7, "Failed to write to output file descriptor"

    #@7d
    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@80
    .line 246
    iget-object v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@82
    monitor-enter v6

    #@83
    .line 247
    :try_start_9
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@86
    monitor-exit v6

    #@87
    .line 249
    return v10

    #@88
    .line 246
    :catchall_2
    move-exception v7

    #@89
    monitor-exit v6

    #@8a
    throw v7
.end method

.method public error()V
    .locals 1

    #@0
    .prologue
    .line 255
    const/4 v0, -0x3

    #@1
    invoke-virtual {p0, v0}, Landroid/speech/tts/FileSynthesisCallback;->error(I)V

    #@4
    .line 254
    return-void
.end method

.method public error(I)V
    .locals 2
    .param p1, "errorCode"    # I

    #@0
    .prologue
    .line 261
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 262
    :try_start_0
    iget-boolean v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v0, :cond_0

    #@7
    monitor-exit v1

    #@8
    .line 263
    return-void

    #@9
    .line 265
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    #@c
    .line 266
    iput p1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 259
    return-void

    #@10
    .line 261
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0
.end method

.method public getMaxBufferSize()I
    .locals 1

    #@0
    .prologue
    .line 98
    const/16 v0, 0x2000

    #@2
    return v0
.end method

.method public hasFinished()Z
    .locals 2

    #@0
    .prologue
    .line 279
    iget-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 280
    :try_start_0
    iget-boolean v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 279
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
    .line 272
    iget-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 273
    :try_start_0
    iget-boolean v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 272
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public start(III)I
    .locals 7
    .param p1, "sampleRateInHz"    # I
    .param p2, "audioFormat"    # I
    .param p3, "channelCount"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, -0x1

    #@2
    .line 107
    const/4 v2, 0x3

    #@3
    if-eq p2, v2, :cond_0

    #@5
    .line 108
    const/4 v2, 0x2

    #@6
    if-eq p2, v2, :cond_0

    #@8
    .line 109
    const/4 v2, 0x4

    #@9
    if-eq p2, v2, :cond_0

    #@b
    .line 110
    const-string/jumbo v2, "FileSynthesisRequest"

    #@e
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v4, "Audio format encoding "

    #@16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v3

    #@1e
    const-string/jumbo v4, " not supported. Please use one "

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    .line 111
    const-string/jumbo v4, "of AudioFormat.ENCODING_PCM_8BIT, AudioFormat.ENCODING_PCM_16BIT or "

    #@28
    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    .line 112
    const-string/jumbo v4, "AudioFormat.ENCODING_PCM_FLOAT"

    #@2f
    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@3a
    .line 114
    :cond_0
    iget-object v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@3c
    invoke-interface {v2, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnBeginSynthesis(III)V

    #@3f
    .line 116
    const/4 v1, 0x0

    #@40
    .line 117
    .local v1, "fileChannel":Ljava/nio/channels/FileChannel;
    iget-object v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@42
    monitor-enter v3

    #@43
    .line 118
    :try_start_0
    iget v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    #@45
    const/4 v4, -0x2

    #@46
    if-ne v2, v4, :cond_1

    #@48
    .line 120
    invoke-virtual {p0}, Landroid/speech/tts/AbstractSynthesisCallback;->errorCodeOnStop()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4b
    move-result v2

    #@4c
    monitor-exit v3

    #@4d
    return v2

    #@4e
    .line 122
    :cond_1
    :try_start_1
    iget v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@50
    if-eqz v2, :cond_2

    #@52
    monitor-exit v3

    #@53
    .line 124
    return v5

    #@54
    .line 126
    :cond_2
    :try_start_2
    iget-boolean v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z

    #@56
    if-eqz v2, :cond_3

    #@58
    .line 127
    const-string/jumbo v2, "FileSynthesisRequest"

    #@5b
    const-string/jumbo v4, "Start called twice"

    #@5e
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@61
    monitor-exit v3

    #@62
    .line 128
    return v5

    #@63
    .line 130
    :cond_3
    const/4 v2, 0x1

    #@64
    :try_start_3
    iput-boolean v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z

    #@66
    .line 131
    iput p1, p0, Landroid/speech/tts/FileSynthesisCallback;->mSampleRateInHz:I

    #@68
    .line 132
    iput p2, p0, Landroid/speech/tts/FileSynthesisCallback;->mAudioFormat:I

    #@6a
    .line 133
    iput p3, p0, Landroid/speech/tts/FileSynthesisCallback;->mChannelCount:I

    #@6c
    .line 135
    iget-object v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@6e
    invoke-interface {v2}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStart()V

    #@71
    .line 136
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@73
    .local v1, "fileChannel":Ljava/nio/channels/FileChannel;
    monitor-exit v3

    #@74
    .line 140
    const/16 v2, 0x2c

    #@76
    :try_start_4
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@79
    move-result-object v2

    #@7a
    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    #@7d
    .line 141
    return v6

    #@7e
    .line 117
    .local v1, "fileChannel":Ljava/nio/channels/FileChannel;
    :catchall_0
    move-exception v2

    #@7f
    monitor-exit v3

    #@80
    throw v2

    #@81
    .line 142
    .local v1, "fileChannel":Ljava/nio/channels/FileChannel;
    :catch_0
    move-exception v0

    #@82
    .line 143
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v2, "FileSynthesisRequest"

    #@85
    const-string/jumbo v3, "Failed to write wav header to output file descriptor"

    #@88
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@8b
    .line 144
    iget-object v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@8d
    monitor-enter v3

    #@8e
    .line 145
    :try_start_5
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    #@91
    .line 146
    const/4 v2, -0x5

    #@92
    iput v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@94
    monitor-exit v3

    #@95
    .line 148
    return v5

    #@96
    .line 144
    :catchall_1
    move-exception v2

    #@97
    monitor-exit v3

    #@98
    throw v2
.end method

.method stop()V
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x2

    #@1
    .line 67
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 68
    :try_start_0
    iget-boolean v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-eqz v0, :cond_0

    #@8
    monitor-exit v1

    #@9
    .line 69
    return-void

    #@a
    .line 71
    :cond_0
    :try_start_1
    iget v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c
    if-ne v0, v2, :cond_1

    #@e
    monitor-exit v1

    #@f
    .line 72
    return-void

    #@10
    .line 75
    :cond_1
    const/4 v0, -0x2

    #@11
    :try_start_2
    iput v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    #@13
    .line 76
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    #@16
    .line 77
    iget-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@18
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1b
    monitor-exit v1

    #@1c
    .line 66
    return-void

    #@1d
    .line 67
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method
