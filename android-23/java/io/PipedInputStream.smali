.class public Ljava/io/PipedInputStream;
.super Ljava/io/InputStream;
.source "PipedInputStream.java"


# static fields
.field protected static final PIPE_SIZE:I = 0x400


# instance fields
.field protected buffer:[B

.field protected in:I

.field private isClosed:Z

.field isConnected:Z

.field private lastReader:Ljava/lang/Thread;

.field private lastWriter:Ljava/lang/Thread;

.field protected out:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 61
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    #@6
    .line 83
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "pipeSize"    # I

    #@0
    .prologue
    .line 108
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 61
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    #@6
    .line 109
    if-gtz p1, :cond_0

    #@8
    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "pipe size "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    const-string/jumbo v2, " too small"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 112
    :cond_0
    new-array v0, p1, [B

    #@2b
    iput-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@2d
    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PipedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@3
    .line 61
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    #@6
    .line 96
    invoke-virtual {p0, p1}, Ljava/io/PipedInputStream;->connect(Ljava/io/PipedOutputStream;)V

    #@9
    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedOutputStream;I)V
    .locals 0
    .param p1, "out"    # Ljava/io/PipedOutputStream;
    .param p2, "pipeSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 127
    invoke-direct {p0, p2}, Ljava/io/PipedInputStream;-><init>(I)V

    #@3
    .line 128
    invoke-virtual {p0, p1}, Ljava/io/PipedInputStream;->connect(Ljava/io/PipedOutputStream;)V

    #@6
    .line 126
    return-void
.end method


# virtual methods
.method public declared-synchronized available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 142
    :try_start_0
    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@3
    if-eqz v0, :cond_0

    #@5
    iget v0, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    const/4 v1, -0x1

    #@8
    if-ne v0, v1, :cond_1

    #@a
    .line 143
    :cond_0
    const/4 v0, 0x0

    #@b
    monitor-exit p0

    #@c
    return v0

    #@d
    .line 145
    :cond_1
    :try_start_1
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    #@f
    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    #@11
    if-gt v0, v1, :cond_2

    #@13
    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@15
    array-length v0, v0

    #@16
    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    #@18
    sub-int/2addr v0, v1

    #@19
    iget v1, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    add-int/2addr v0, v1

    #@1c
    :goto_0
    monitor-exit p0

    #@1d
    return v0

    #@1e
    :cond_2
    :try_start_2
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    #@20
    iget v1, p0, Ljava/io/PipedInputStream;->out:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@22
    sub-int/2addr v0, v1

    #@23
    goto :goto_0

    #@24
    :catchall_0
    move-exception v0

    #@25
    monitor-exit p0

    #@26
    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 157
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@4
    .line 158
    invoke-virtual {p0}, Ljava/io/PipedInputStream;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 156
    return-void

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public connect(Ljava/io/PipedOutputStream;)V
    .locals 0
    .param p1, "src"    # Ljava/io/PipedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 172
    invoke-virtual {p1, p0}, Ljava/io/PipedOutputStream;->connect(Ljava/io/PipedInputStream;)V

    #@3
    .line 171
    return-void
.end method

.method declared-synchronized done()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 420
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Ljava/io/PipedInputStream;->isClosed:Z

    #@4
    .line 421
    invoke-virtual {p0}, Ljava/io/PipedInputStream;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 419
    return-void

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method declared-synchronized establishConnection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 182
    :try_start_0
    iget-boolean v0, p0, Ljava/io/PipedInputStream;->isConnected:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 183
    new-instance v0, Ljava/io/IOException;

    #@7
    const-string/jumbo v1, "Pipe already connected"

    #@a
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0

    #@11
    .line 185
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@13
    if-nez v0, :cond_1

    #@15
    .line 186
    const/16 v0, 0x400

    #@17
    new-array v0, v0, [B

    #@19
    iput-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@1b
    .line 188
    :cond_1
    const/4 v0, 0x1

    #@1c
    iput-boolean v0, p0, Ljava/io/PipedInputStream;->isConnected:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    monitor-exit p0

    #@1f
    .line 181
    return-void
.end method

.method public declared-synchronized read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    monitor-enter p0

    #@2
    .line 211
    :try_start_0
    iget-boolean v4, p0, Ljava/io/PipedInputStream;->isConnected:Z

    #@4
    if-nez v4, :cond_0

    #@6
    .line 212
    new-instance v4, Ljava/io/IOException;

    #@8
    const-string/jumbo v5, "Not connected"

    #@b
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :catchall_0
    move-exception v4

    #@10
    monitor-exit p0

    #@11
    throw v4

    #@12
    .line 214
    :cond_0
    :try_start_1
    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@14
    if-nez v4, :cond_1

    #@16
    .line 215
    new-instance v4, Ljava/io/IOException;

    #@18
    const-string/jumbo v5, "InputStream is closed"

    #@1b
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v4

    #@1f
    .line 223
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@22
    move-result-object v4

    #@23
    iput-object v4, p0, Ljava/io/PipedInputStream;->lastReader:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    .line 225
    const/4 v0, 0x3

    #@26
    .local v0, "attempts":I
    move v1, v0

    #@27
    .line 226
    .end local v0    # "attempts":I
    .local v1, "attempts":I
    :goto_0
    :try_start_2
    iget v4, p0, Ljava/io/PipedInputStream;->in:I

    #@29
    if-ne v4, v6, :cond_7

    #@2b
    .line 228
    iget-boolean v4, p0, Ljava/io/PipedInputStream;->isClosed:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2d
    if-eqz v4, :cond_2

    #@2f
    monitor-exit p0

    #@30
    .line 229
    return v6

    #@31
    .line 231
    :cond_2
    add-int/lit8 v0, v1, -0x1

    #@33
    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    if-gtz v1, :cond_3

    #@35
    :try_start_3
    iget-object v4, p0, Ljava/io/PipedInputStream;->lastWriter:Ljava/lang/Thread;

    #@37
    if-eqz v4, :cond_3

    #@39
    iget-object v4, p0, Ljava/io/PipedInputStream;->lastWriter:Ljava/lang/Thread;

    #@3b
    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    #@3e
    move-result v4

    #@3f
    if-eqz v4, :cond_4

    #@41
    .line 235
    :cond_3
    invoke-virtual {p0}, Ljava/io/PipedInputStream;->notifyAll()V

    #@44
    .line 236
    const-wide/16 v4, 0x3e8

    #@46
    invoke-virtual {p0, v4, v5}, Ljava/io/PipedInputStream;->wait(J)V

    #@49
    move v1, v0

    #@4a
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto :goto_0

    #@4b
    .line 232
    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    :cond_4
    new-instance v4, Ljava/io/IOException;

    #@4d
    const-string/jumbo v5, "Pipe broken"

    #@50
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@53
    throw v4
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@54
    .line 238
    :catch_0
    move-exception v2

    #@55
    .line 239
    .local v2, "e":Ljava/lang/InterruptedException;
    :goto_1
    :try_start_4
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    #@58
    .line 242
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_2
    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@5a
    iget v5, p0, Ljava/io/PipedInputStream;->out:I

    #@5c
    add-int/lit8 v6, v5, 0x1

    #@5e
    iput v6, p0, Ljava/io/PipedInputStream;->out:I

    #@60
    aget-byte v4, v4, v5

    #@62
    and-int/lit16 v3, v4, 0xff

    #@64
    .line 243
    .local v3, "result":I
    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    #@66
    iget-object v5, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@68
    array-length v5, v5

    #@69
    if-ne v4, v5, :cond_5

    #@6b
    .line 244
    const/4 v4, 0x0

    #@6c
    iput v4, p0, Ljava/io/PipedInputStream;->out:I

    #@6e
    .line 246
    :cond_5
    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    #@70
    iget v5, p0, Ljava/io/PipedInputStream;->in:I

    #@72
    if-ne v4, v5, :cond_6

    #@74
    .line 248
    const/4 v4, -0x1

    #@75
    iput v4, p0, Ljava/io/PipedInputStream;->in:I

    #@77
    .line 249
    const/4 v4, 0x0

    #@78
    iput v4, p0, Ljava/io/PipedInputStream;->out:I

    #@7a
    .line 253
    :cond_6
    invoke-virtual {p0}, Ljava/io/PipedInputStream;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@7d
    monitor-exit p0

    #@7e
    .line 255
    return v3

    #@7f
    .end local v0    # "attempts":I
    .end local v3    # "result":I
    .restart local v1    # "attempts":I
    :cond_7
    move v0, v1

    #@80
    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    goto :goto_2

    #@81
    .line 238
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    :catch_1
    move-exception v2

    #@82
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    move v0, v1

    #@83
    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    goto :goto_1
.end method

.method public declared-synchronized read([BII)I
    .locals 11
    .param p1, "bytes"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, -0x1

    #@1
    const/4 v8, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 283
    :try_start_0
    array-length v7, p1

    #@4
    invoke-static {v7, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    .line 284
    if-nez p3, :cond_0

    #@9
    monitor-exit p0

    #@a
    .line 285
    return v8

    #@b
    .line 288
    :cond_0
    :try_start_1
    iget-boolean v7, p0, Ljava/io/PipedInputStream;->isConnected:Z

    #@d
    if-nez v7, :cond_1

    #@f
    .line 289
    new-instance v7, Ljava/io/IOException;

    #@11
    const-string/jumbo v8, "Not connected"

    #@14
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@17
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    :catchall_0
    move-exception v7

    #@19
    monitor-exit p0

    #@1a
    throw v7

    #@1b
    .line 292
    :cond_1
    :try_start_2
    iget-object v7, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@1d
    if-nez v7, :cond_2

    #@1f
    .line 293
    new-instance v7, Ljava/io/IOException;

    #@21
    const-string/jumbo v8, "InputStream is closed"

    #@24
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@27
    throw v7

    #@28
    .line 301
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@2b
    move-result-object v7

    #@2c
    iput-object v7, p0, Ljava/io/PipedInputStream;->lastReader:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2e
    .line 303
    const/4 v0, 0x3

    #@2f
    .local v0, "attempts":I
    move v1, v0

    #@30
    .line 304
    .end local v0    # "attempts":I
    .local v1, "attempts":I
    :goto_0
    :try_start_3
    iget v7, p0, Ljava/io/PipedInputStream;->in:I

    #@32
    if-ne v7, v10, :cond_b

    #@34
    .line 306
    iget-boolean v7, p0, Ljava/io/PipedInputStream;->isClosed:Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@36
    if-eqz v7, :cond_3

    #@38
    monitor-exit p0

    #@39
    .line 307
    return v10

    #@3a
    .line 309
    :cond_3
    add-int/lit8 v0, v1, -0x1

    #@3c
    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    if-gtz v1, :cond_4

    #@3e
    :try_start_4
    iget-object v7, p0, Ljava/io/PipedInputStream;->lastWriter:Ljava/lang/Thread;

    #@40
    if-eqz v7, :cond_4

    #@42
    iget-object v7, p0, Ljava/io/PipedInputStream;->lastWriter:Ljava/lang/Thread;

    #@44
    invoke-virtual {v7}, Ljava/lang/Thread;->isAlive()Z

    #@47
    move-result v7

    #@48
    if-eqz v7, :cond_5

    #@4a
    .line 313
    :cond_4
    invoke-virtual {p0}, Ljava/io/PipedInputStream;->notifyAll()V

    #@4d
    .line 314
    const-wide/16 v8, 0x3e8

    #@4f
    invoke-virtual {p0, v8, v9}, Ljava/io/PipedInputStream;->wait(J)V

    #@52
    move v1, v0

    #@53
    .end local v0    # "attempts":I
    .restart local v1    # "attempts":I
    goto :goto_0

    #@54
    .line 310
    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    :cond_5
    new-instance v7, Ljava/io/IOException;

    #@56
    const-string/jumbo v8, "Pipe broken"

    #@59
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v7
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@5d
    .line 316
    :catch_0
    move-exception v2

    #@5e
    .line 317
    .local v2, "e":Ljava/lang/InterruptedException;
    :goto_1
    :try_start_5
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    #@61
    .line 320
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_2
    const/4 v6, 0x0

    #@62
    .line 323
    .local v6, "totalCopied":I
    iget v7, p0, Ljava/io/PipedInputStream;->out:I

    #@64
    iget v8, p0, Ljava/io/PipedInputStream;->in:I

    #@66
    if-lt v7, v8, :cond_8

    #@68
    .line 324
    iget-object v7, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@6a
    array-length v7, v7

    #@6b
    iget v8, p0, Ljava/io/PipedInputStream;->out:I

    #@6d
    sub-int v3, v7, v8

    #@6f
    .line 325
    .local v3, "leftInBuffer":I
    if-ge v3, p3, :cond_c

    #@71
    move v5, v3

    #@72
    .line 326
    .local v5, "length":I
    :goto_3
    iget-object v7, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@74
    iget v8, p0, Ljava/io/PipedInputStream;->out:I

    #@76
    invoke-static {v7, v8, p1, p2, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@79
    .line 327
    iget v7, p0, Ljava/io/PipedInputStream;->out:I

    #@7b
    add-int/2addr v7, v5

    #@7c
    iput v7, p0, Ljava/io/PipedInputStream;->out:I

    #@7e
    .line 328
    iget v7, p0, Ljava/io/PipedInputStream;->out:I

    #@80
    iget-object v8, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@82
    array-length v8, v8

    #@83
    if-ne v7, v8, :cond_6

    #@85
    .line 329
    const/4 v7, 0x0

    #@86
    iput v7, p0, Ljava/io/PipedInputStream;->out:I

    #@88
    .line 331
    :cond_6
    iget v7, p0, Ljava/io/PipedInputStream;->out:I

    #@8a
    iget v8, p0, Ljava/io/PipedInputStream;->in:I

    #@8c
    if-ne v7, v8, :cond_7

    #@8e
    .line 333
    const/4 v7, -0x1

    #@8f
    iput v7, p0, Ljava/io/PipedInputStream;->in:I

    #@91
    .line 334
    const/4 v7, 0x0

    #@92
    iput v7, p0, Ljava/io/PipedInputStream;->out:I

    #@94
    .line 336
    :cond_7
    add-int/lit8 v6, v5, 0x0

    #@96
    .line 340
    .end local v3    # "leftInBuffer":I
    .end local v5    # "length":I
    :cond_8
    if-ge v6, p3, :cond_a

    #@98
    iget v7, p0, Ljava/io/PipedInputStream;->in:I

    #@9a
    if-eq v7, v10, :cond_a

    #@9c
    .line 341
    iget v7, p0, Ljava/io/PipedInputStream;->in:I

    #@9e
    iget v8, p0, Ljava/io/PipedInputStream;->out:I

    #@a0
    sub-int v3, v7, v8

    #@a2
    .line 342
    .restart local v3    # "leftInBuffer":I
    sub-int v4, p3, v6

    #@a4
    .line 343
    .local v4, "leftToCopy":I
    if-ge v4, v3, :cond_d

    #@a6
    move v5, v4

    #@a7
    .line 344
    .restart local v5    # "length":I
    :goto_4
    iget-object v7, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@a9
    iget v8, p0, Ljava/io/PipedInputStream;->out:I

    #@ab
    add-int v9, p2, v6

    #@ad
    invoke-static {v7, v8, p1, v9, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@b0
    .line 345
    iget v7, p0, Ljava/io/PipedInputStream;->out:I

    #@b2
    add-int/2addr v7, v5

    #@b3
    iput v7, p0, Ljava/io/PipedInputStream;->out:I

    #@b5
    .line 346
    iget v7, p0, Ljava/io/PipedInputStream;->out:I

    #@b7
    iget v8, p0, Ljava/io/PipedInputStream;->in:I

    #@b9
    if-ne v7, v8, :cond_9

    #@bb
    .line 348
    const/4 v7, -0x1

    #@bc
    iput v7, p0, Ljava/io/PipedInputStream;->in:I

    #@be
    .line 349
    const/4 v7, 0x0

    #@bf
    iput v7, p0, Ljava/io/PipedInputStream;->out:I

    #@c1
    .line 351
    :cond_9
    add-int/2addr v6, v5

    #@c2
    .line 355
    .end local v3    # "leftInBuffer":I
    .end local v4    # "leftToCopy":I
    .end local v5    # "length":I
    :cond_a
    invoke-virtual {p0}, Ljava/io/PipedInputStream;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@c5
    monitor-exit p0

    #@c6
    .line 357
    return v6

    #@c7
    .end local v0    # "attempts":I
    .end local v6    # "totalCopied":I
    .restart local v1    # "attempts":I
    :cond_b
    move v0, v1

    #@c8
    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    goto :goto_2

    #@c9
    .line 325
    .restart local v3    # "leftInBuffer":I
    .restart local v6    # "totalCopied":I
    :cond_c
    move v5, p3

    #@ca
    .restart local v5    # "length":I
    goto :goto_3

    #@cb
    .line 343
    .end local v5    # "length":I
    .restart local v4    # "leftToCopy":I
    :cond_d
    move v5, v3

    #@cc
    .restart local v5    # "length":I
    goto :goto_4

    #@cd
    .line 316
    .end local v0    # "attempts":I
    .end local v3    # "leftInBuffer":I
    .end local v4    # "leftToCopy":I
    .end local v5    # "length":I
    .end local v6    # "totalCopied":I
    .restart local v1    # "attempts":I
    :catch_1
    move-exception v2

    #@ce
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    move v0, v1

    #@cf
    .end local v1    # "attempts":I
    .restart local v0    # "attempts":I
    goto :goto_1
.end method

.method protected declared-synchronized receive(I)V
    .locals 4
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 378
    :try_start_0
    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-boolean v1, p0, Ljava/io/PipedInputStream;->isClosed:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 379
    :cond_0
    new-instance v1, Ljava/io/IOException;

    #@b
    const-string/jumbo v2, "Pipe is closed"

    #@e
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :catchall_0
    move-exception v1

    #@13
    monitor-exit p0

    #@14
    throw v1

    #@15
    .line 387
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@18
    move-result-object v1

    #@19
    iput-object v1, p0, Ljava/io/PipedInputStream;->lastWriter:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    .line 389
    :goto_0
    :try_start_2
    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@1d
    if-eqz v1, :cond_3

    #@1f
    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    #@21
    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    #@23
    if-ne v1, v2, :cond_3

    #@25
    .line 390
    iget-object v1, p0, Ljava/io/PipedInputStream;->lastReader:Ljava/lang/Thread;

    #@27
    if-eqz v1, :cond_2

    #@29
    iget-object v1, p0, Ljava/io/PipedInputStream;->lastReader:Ljava/lang/Thread;

    #@2b
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_4

    #@31
    .line 394
    :cond_2
    invoke-virtual {p0}, Ljava/io/PipedInputStream;->notifyAll()V

    #@34
    .line 395
    const-wide/16 v2, 0x3e8

    #@36
    invoke-virtual {p0, v2, v3}, Ljava/io/PipedInputStream;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@39
    goto :goto_0

    #@3a
    .line 397
    :catch_0
    move-exception v0

    #@3b
    .line 398
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    #@3e
    .line 400
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@40
    if-nez v1, :cond_5

    #@42
    .line 401
    new-instance v1, Ljava/io/IOException;

    #@44
    const-string/jumbo v2, "Pipe is closed"

    #@47
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@4b
    .line 391
    :cond_4
    :try_start_4
    new-instance v1, Ljava/io/IOException;

    #@4d
    const-string/jumbo v2, "Pipe broken"

    #@50
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@53
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@54
    .line 403
    :cond_5
    :try_start_5
    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    #@56
    const/4 v2, -0x1

    #@57
    if-ne v1, v2, :cond_6

    #@59
    .line 404
    const/4 v1, 0x0

    #@5a
    iput v1, p0, Ljava/io/PipedInputStream;->in:I

    #@5c
    .line 406
    :cond_6
    iget-object v1, p0, Ljava/io/PipedInputStream;->lastReader:Ljava/lang/Thread;

    #@5e
    if-eqz v1, :cond_7

    #@60
    iget-object v1, p0, Ljava/io/PipedInputStream;->lastReader:Ljava/lang/Thread;

    #@62
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    #@65
    move-result v1

    #@66
    if-eqz v1, :cond_9

    #@68
    .line 410
    :cond_7
    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@6a
    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    #@6c
    add-int/lit8 v3, v2, 0x1

    #@6e
    iput v3, p0, Ljava/io/PipedInputStream;->in:I

    #@70
    int-to-byte v3, p1

    #@71
    aput-byte v3, v1, v2

    #@73
    .line 411
    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    #@75
    iget-object v2, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@77
    array-length v2, v2

    #@78
    if-ne v1, v2, :cond_8

    #@7a
    .line 412
    const/4 v1, 0x0

    #@7b
    iput v1, p0, Ljava/io/PipedInputStream;->in:I

    #@7d
    .line 416
    :cond_8
    invoke-virtual {p0}, Ljava/io/PipedInputStream;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@80
    monitor-exit p0

    #@81
    .line 377
    return-void

    #@82
    .line 407
    :cond_9
    :try_start_6
    new-instance v1, Ljava/io/IOException;

    #@84
    const-string/jumbo v2, "Pipe broken"

    #@87
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@8a
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method
