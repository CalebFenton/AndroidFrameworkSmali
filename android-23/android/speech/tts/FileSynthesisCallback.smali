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

.field private final mCallerIdentity:Ljava/lang/Object;

.field private mChannelCount:I

.field private final mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

.field private mDone:Z

.field private mFileChannel:Ljava/nio/channels/FileChannel;

.field private mSampleRateInHz:I

.field private mStarted:Z

.field private final mStateLock:Ljava/lang/Object;

.field protected mStatusCode:I


# direct methods
.method constructor <init>(Ljava/nio/channels/FileChannel;Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "fileChannel"    # Ljava/nio/channels/FileChannel;
    .param p2, "dispatcher"    # Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    .param p3, "callerIdentity"    # Ljava/lang/Object;
    .param p4, "clientIsUsingV2"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 59
    invoke-direct {p0, p4}, Landroid/speech/tts/AbstractSynthesisCallback;-><init>(Z)V

    #@4
    .line 40
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
    iput-object p3, p0, Landroid/speech/tts/FileSynthesisCallback;->mCallerIdentity:Ljava/lang/Object;

    #@15
    .line 63
    iput v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    #@17
    .line 58
    return-void
.end method

.method private cleanUp()V
    .locals 0

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->closeFile()V

    #@3
    .line 87
    return-void
.end method

.method private closeFile()V
    .locals 1

    #@0
    .prologue
    .line 96
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    #@3
    .line 94
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
    .line 281
    invoke-static {p2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    #@4
    move-result v5

    #@5
    .line 282
    .local v5, "sampleSizeInBytes":I
    mul-int v6, p1, v5

    #@7
    mul-int v2, v6, p3

    #@9
    .line 283
    .local v2, "byteRate":I
    mul-int v6, v5, p3

    #@b
    int-to-short v1, v6

    #@c
    .line 284
    .local v1, "blockAlign":S
    mul-int/lit8 v6, v5, 0x8

    #@e
    int-to-short v0, v6

    #@f
    .line 286
    .local v0, "bitsPerSample":S
    const/16 v6, 0x2c

    #@11
    new-array v4, v6, [B

    #@13
    .line 287
    .local v4, "headerBuf":[B
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@16
    move-result-object v3

    #@17
    .line 288
    .local v3, "header":Ljava/nio/ByteBuffer;
    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@19
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@1c
    .line 290
    new-array v6, v7, [B

    #@1e
    fill-array-data v6, :array_0

    #@21
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@24
    .line 291
    add-int/lit8 v6, p4, 0x2c

    #@26
    add-int/lit8 v6, v6, -0x8

    #@28
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@2b
    .line 292
    new-array v6, v7, [B

    #@2d
    fill-array-data v6, :array_1

    #@30
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@33
    .line 293
    new-array v6, v7, [B

    #@35
    fill-array-data v6, :array_2

    #@38
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@3b
    .line 294
    const/16 v6, 0x10

    #@3d
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@40
    .line 295
    const/4 v6, 0x1

    #@41
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@44
    .line 296
    int-to-short v6, p3

    #@45
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@48
    .line 297
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@4b
    .line 298
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@4e
    .line 299
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@51
    .line 300
    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@54
    .line 301
    new-array v6, v7, [B

    #@56
    fill-array-data v6, :array_3

    #@59
    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@5c
    .line 302
    invoke-virtual {v3, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@5f
    .line 303
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@62
    .line 305
    return-object v3

    #@63
    .line 290
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
    .line 292
    :array_1
    .array-data 1
        0x57t
        0x41t
        0x56t
        0x45t
    .end array-data

    #@70
    .line 293
    :array_2
    .array-data 1
        0x66t
        0x6dt
        0x74t
        0x20t
    .end array-data

    #@76
    .line 301
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
    .locals 7
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, -0x1

    #@2
    .line 154
    const/4 v1, 0x0

    #@3
    .line 155
    .local v1, "fileChannel":Ljava/nio/channels/FileChannel;
    iget-object v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@5
    monitor-enter v3

    #@6
    .line 156
    :try_start_0
    iget v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    #@8
    const/4 v4, -0x2

    #@9
    if-ne v2, v4, :cond_0

    #@b
    .line 158
    invoke-virtual {p0}, Landroid/speech/tts/FileSynthesisCallback;->errorCodeOnStop()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v2

    #@f
    monitor-exit v3

    #@10
    return v2

    #@11
    .line 160
    :cond_0
    :try_start_1
    iget v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    if-eqz v2, :cond_1

    #@15
    monitor-exit v3

    #@16
    .line 162
    return v5

    #@17
    .line 164
    :cond_1
    :try_start_2
    iget-object v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    #@19
    if-nez v2, :cond_2

    #@1b
    .line 165
    const-string/jumbo v2, "FileSynthesisRequest"

    #@1e
    const-string/jumbo v4, "File not open"

    #@21
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@24
    .line 166
    const/4 v2, -0x5

    #@25
    iput v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@27
    monitor-exit v3

    #@28
    .line 167
    return v5

    #@29
    .line 169
    :cond_2
    :try_start_3
    iget-boolean v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z

    #@2b
    if-nez v2, :cond_3

    #@2d
    .line 170
    const-string/jumbo v2, "FileSynthesisRequest"

    #@30
    const-string/jumbo v4, "Start method was not called"

    #@33
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@36
    monitor-exit v3

    #@37
    .line 171
    return v5

    #@38
    .line 173
    :cond_3
    :try_start_4
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@3a
    .local v1, "fileChannel":Ljava/nio/channels/FileChannel;
    monitor-exit v3

    #@3b
    .line 177
    :try_start_5
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    #@42
    .line 178
    return v6

    #@43
    .line 155
    .local v1, "fileChannel":Ljava/nio/channels/FileChannel;
    :catchall_0
    move-exception v2

    #@44
    monitor-exit v3

    #@45
    throw v2

    #@46
    .line 179
    .local v1, "fileChannel":Ljava/nio/channels/FileChannel;
    :catch_0
    move-exception v0

    #@47
    .line 180
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v2, "FileSynthesisRequest"

    #@4a
    const-string/jumbo v3, "Failed to write to output file descriptor"

    #@4d
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@50
    .line 181
    iget-object v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@52
    monitor-enter v3

    #@53
    .line 182
    :try_start_6
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    #@56
    .line 183
    const/4 v2, -0x5

    #@57
    iput v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@59
    monitor-exit v3

    #@5a
    .line 185
    return v5

    #@5b
    .line 181
    :catchall_1
    move-exception v2

    #@5c
    monitor-exit v3

    #@5d
    throw v2
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
    .line 192
    const/4 v4, 0x0

    #@4
    .line 194
    .local v4, "fileChannel":Ljava/nio/channels/FileChannel;
    const/4 v5, 0x0

    #@5
    .line 195
    .local v5, "sampleRateInHz":I
    const/4 v0, 0x0

    #@6
    .line 196
    .local v0, "audioFormat":I
    const/4 v1, 0x0

    #@7
    .line 198
    .local v1, "channelCount":I
    iget-object v7, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@9
    monitor-enter v7

    #@a
    .line 199
    :try_start_0
    iget-boolean v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    #@c
    if-eqz v6, :cond_0

    #@e
    .line 200
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
    .line 203
    return v10

    #@19
    .line 205
    :cond_0
    :try_start_1
    iget v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    #@1b
    if-ne v6, v8, :cond_1

    #@1d
    .line 207
    invoke-virtual {p0}, Landroid/speech/tts/FileSynthesisCallback;->errorCodeOnStop()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    move-result v6

    #@21
    monitor-exit v7

    #@22
    return v6

    #@23
    .line 209
    :cond_1
    :try_start_2
    iget-object v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@25
    if-eqz v6, :cond_2

    #@27
    iget v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    #@29
    if-eqz v6, :cond_2

    #@2b
    .line 210
    iget v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    #@2d
    if-eq v6, v8, :cond_2

    #@2f
    .line 211
    iget-object v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@31
    iget v8, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    #@33
    invoke-interface {v6, v8}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@36
    monitor-exit v7

    #@37
    .line 212
    return v10

    #@38
    .line 214
    :cond_2
    :try_start_3
    iget-object v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    #@3a
    if-nez v6, :cond_3

    #@3c
    .line 215
    const-string/jumbo v6, "FileSynthesisRequest"

    #@3f
    const-string/jumbo v8, "File not open"

    #@42
    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@45
    monitor-exit v7

    #@46
    .line 216
    return v10

    #@47
    .line 218
    :cond_3
    const/4 v6, 0x1

    #@48
    :try_start_4
    iput-boolean v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z

    #@4a
    .line 219
    iget-object v4, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;

    #@4c
    .line 220
    .local v4, "fileChannel":Ljava/nio/channels/FileChannel;
    iget v5, p0, Landroid/speech/tts/FileSynthesisCallback;->mSampleRateInHz:I

    #@4e
    .line 221
    iget v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mAudioFormat:I

    #@50
    .line 222
    iget v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mChannelCount:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@52
    monitor-exit v7

    #@53
    .line 227
    const-wide/16 v6, 0x0

    #@55
    :try_start_5
    invoke-virtual {v4, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    #@58
    .line 228
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    #@5b
    move-result-wide v6

    #@5c
    const-wide/16 v8, 0x2c

    #@5e
    sub-long/2addr v6, v8

    #@5f
    long-to-int v2, v6

    #@60
    .line 230
    .local v2, "dataLength":I
    invoke-direct {p0, v5, v0, v1, v2}, Landroid/speech/tts/FileSynthesisCallback;->makeWavHeader(IIII)Ljava/nio/ByteBuffer;

    #@63
    move-result-object v6

    #@64
    .line 229
    invoke-virtual {v4, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    #@67
    .line 232
    iget-object v7, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@69
    monitor-enter v7
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    #@6a
    .line 233
    :try_start_6
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->closeFile()V

    #@6d
    .line 234
    iget-object v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@6f
    if-eqz v6, :cond_4

    #@71
    .line 235
    iget-object v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@73
    invoke-interface {v6}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnSuccess()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@76
    :cond_4
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    #@77
    .line 237
    return v11

    #@78
    .line 198
    .end local v2    # "dataLength":I
    .end local v4    # "fileChannel":Ljava/nio/channels/FileChannel;
    :catchall_0
    move-exception v6

    #@79
    monitor-exit v7

    #@7a
    throw v6

    #@7b
    .line 232
    .restart local v2    # "dataLength":I
    .restart local v4    # "fileChannel":Ljava/nio/channels/FileChannel;
    :catchall_1
    move-exception v6

    #@7c
    :try_start_8
    monitor-exit v7

    #@7d
    throw v6
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    #@7e
    .line 239
    .end local v2    # "dataLength":I
    :catch_0
    move-exception v3

    #@7f
    .line 240
    .local v3, "ex":Ljava/io/IOException;
    const-string/jumbo v6, "FileSynthesisRequest"

    #@82
    const-string/jumbo v7, "Failed to write to output file descriptor"

    #@85
    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@88
    .line 241
    iget-object v6, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@8a
    monitor-enter v6

    #@8b
    .line 242
    :try_start_9
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    #@8e
    monitor-exit v6

    #@8f
    .line 244
    return v10

    #@90
    .line 241
    :catchall_2
    move-exception v7

    #@91
    monitor-exit v6

    #@92
    throw v7
.end method

.method public error()V
    .locals 1

    #@0
    .prologue
    .line 250
    const/4 v0, -0x3

    #@1
    invoke-virtual {p0, v0}, Landroid/speech/tts/FileSynthesisCallback;->error(I)V

    #@4
    .line 249
    return-void
.end method

.method public error(I)V
    .locals 2
    .param p1, "errorCode"    # I

    #@0
    .prologue
    .line 256
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 257
    :try_start_0
    iget-boolean v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v0, :cond_0

    #@7
    monitor-exit v1

    #@8
    .line 258
    return-void

    #@9
    .line 260
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    #@c
    .line 261
    iput p1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@e
    monitor-exit v1

    #@f
    .line 254
    return-void

    #@10
    .line 256
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
    .line 101
    const/16 v0, 0x2000

    #@2
    return v0
.end method

.method public hasFinished()Z
    .locals 2

    #@0
    .prologue
    .line 274
    iget-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 275
    :try_start_0
    iget-boolean v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 274
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
    .line 267
    iget-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 268
    :try_start_0
    iget-boolean v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    return v1

    #@7
    .line 267
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
    .line 110
    const/4 v1, 0x0

    #@3
    .line 111
    .local v1, "fileChannel":Ljava/nio/channels/FileChannel;
    iget-object v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@5
    monitor-enter v3

    #@6
    .line 112
    :try_start_0
    iget v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    #@8
    const/4 v4, -0x2

    #@9
    if-ne v2, v4, :cond_0

    #@b
    .line 114
    invoke-virtual {p0}, Landroid/speech/tts/FileSynthesisCallback;->errorCodeOnStop()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v2

    #@f
    monitor-exit v3

    #@10
    return v2

    #@11
    .line 116
    :cond_0
    :try_start_1
    iget v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    if-eqz v2, :cond_1

    #@15
    monitor-exit v3

    #@16
    .line 118
    return v5

    #@17
    .line 120
    :cond_1
    :try_start_2
    iget-boolean v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z

    #@19
    if-eqz v2, :cond_2

    #@1b
    .line 121
    const-string/jumbo v2, "FileSynthesisRequest"

    #@1e
    const-string/jumbo v4, "Start called twice"

    #@21
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@24
    monitor-exit v3

    #@25
    .line 122
    return v5

    #@26
    .line 124
    :cond_2
    const/4 v2, 0x1

    #@27
    :try_start_3
    iput-boolean v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStarted:Z

    #@29
    .line 125
    iput p1, p0, Landroid/speech/tts/FileSynthesisCallback;->mSampleRateInHz:I

    #@2b
    .line 126
    iput p2, p0, Landroid/speech/tts/FileSynthesisCallback;->mAudioFormat:I

    #@2d
    .line 127
    iput p3, p0, Landroid/speech/tts/FileSynthesisCallback;->mChannelCount:I

    #@2f
    .line 129
    iget-object v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@31
    if-eqz v2, :cond_3

    #@33
    .line 130
    iget-object v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@35
    invoke-interface {v2}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStart()V

    #@38
    .line 132
    :cond_3
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mFileChannel:Ljava/nio/channels/FileChannel;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3a
    .local v1, "fileChannel":Ljava/nio/channels/FileChannel;
    monitor-exit v3

    #@3b
    .line 136
    const/16 v2, 0x2c

    #@3d
    :try_start_4
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@40
    move-result-object v2

    #@41
    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    #@44
    .line 137
    return v6

    #@45
    .line 111
    .local v1, "fileChannel":Ljava/nio/channels/FileChannel;
    :catchall_0
    move-exception v2

    #@46
    monitor-exit v3

    #@47
    throw v2

    #@48
    .line 138
    .local v1, "fileChannel":Ljava/nio/channels/FileChannel;
    :catch_0
    move-exception v0

    #@49
    .line 139
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v2, "FileSynthesisRequest"

    #@4c
    const-string/jumbo v3, "Failed to write wav header to output file descriptor"

    #@4f
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@52
    .line 140
    iget-object v3, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@54
    monitor-enter v3

    #@55
    .line 141
    :try_start_5
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    #@58
    .line 142
    const/4 v2, -0x5

    #@59
    iput v2, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@5b
    monitor-exit v3

    #@5c
    .line 144
    return v5

    #@5d
    .line 140
    :catchall_1
    move-exception v2

    #@5e
    monitor-exit v3

    #@5f
    throw v2
.end method

.method stop()V
    .locals 3

    #@0
    .prologue
    const/4 v2, -0x2

    #@1
    .line 68
    iget-object v1, p0, Landroid/speech/tts/FileSynthesisCallback;->mStateLock:Ljava/lang/Object;

    #@3
    monitor-enter v1

    #@4
    .line 69
    :try_start_0
    iget-boolean v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    if-eqz v0, :cond_0

    #@8
    monitor-exit v1

    #@9
    .line 70
    return-void

    #@a
    .line 72
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
    .line 73
    return-void

    #@10
    .line 76
    :cond_1
    const/4 v0, -0x2

    #@11
    :try_start_2
    iput v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mStatusCode:I

    #@13
    .line 77
    invoke-direct {p0}, Landroid/speech/tts/FileSynthesisCallback;->cleanUp()V

    #@16
    .line 78
    iget-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@18
    if-eqz v0, :cond_2

    #@1a
    .line 79
    iget-object v0, p0, Landroid/speech/tts/FileSynthesisCallback;->mDispatcher:Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    #@1c
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1f
    :cond_2
    monitor-exit v1

    #@20
    .line 67
    return-void

    #@21
    .line 68
    :catchall_0
    move-exception v0

    #@22
    monitor-exit v1

    #@23
    throw v0
.end method
