.class public Ljava/io/PipedReader;
.super Ljava/io/Reader;
.source "PipedReader.java"


# static fields
.field private static final PIPE_SIZE:I = 0x400


# instance fields
.field private buffer:[C

.field private in:I

.field isClosed:Z

.field isConnected:Z

.field private lastReader:Ljava/lang/Thread;

.field private lastWriter:Ljava/lang/Thread;

.field private out:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 83
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    #@3
    .line 61
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/io/PipedReader;->in:I

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
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    #@3
    .line 61
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/io/PipedReader;->in:I

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
    new-array v0, p1, [C

    #@2b
    iput-object v0, p0, Ljava/io/PipedReader;->buffer:[C

    #@2d
    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedWriter;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PipedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 95
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    #@3
    .line 61
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/io/PipedReader;->in:I

    #@6
    .line 96
    invoke-virtual {p0, p1}, Ljava/io/PipedReader;->connect(Ljava/io/PipedWriter;)V

    #@9
    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedWriter;I)V
    .locals 0
    .param p1, "out"    # Ljava/io/PipedWriter;
    .param p2, "pipeSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 127
    invoke-direct {p0, p2}, Ljava/io/PipedReader;-><init>(I)V

    #@3
    .line 128
    invoke-virtual {p0, p1}, Ljava/io/PipedReader;->connect(Ljava/io/PipedWriter;)V

    #@6
    .line 126
    return-void
.end method


# virtual methods
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
    .line 140
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput-object v0, p0, Ljava/io/PipedReader;->buffer:[C

    #@4
    .line 141
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Ljava/io/PipedReader;->isClosed:Z

    #@7
    .line 142
    invoke-virtual {p0}, Ljava/io/PipedReader;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 139
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method public connect(Ljava/io/PipedWriter;)V
    .locals 0
    .param p1, "src"    # Ljava/io/PipedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 156
    invoke-virtual {p1, p0}, Ljava/io/PipedWriter;->connect(Ljava/io/PipedReader;)V

    #@3
    .line 155
    return-void
.end method

.method declared-synchronized done()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 442
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Ljava/io/PipedReader;->isClosed:Z

    #@4
    .line 443
    invoke-virtual {p0}, Ljava/io/PipedReader;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 441
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
    .line 166
    :try_start_0
    iget-boolean v0, p0, Ljava/io/PipedReader;->isConnected:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 167
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
    .line 169
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Ljava/io/PipedReader;->isClosed:Z

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 170
    new-instance v0, Ljava/io/IOException;

    #@17
    const-string/jumbo v1, "Pipe is closed"

    #@1a
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 172
    :cond_1
    iget-object v0, p0, Ljava/io/PipedReader;->buffer:[C

    #@20
    if-nez v0, :cond_2

    #@22
    .line 173
    const/16 v0, 0x400

    #@24
    new-array v0, v0, [C

    #@26
    iput-object v0, p0, Ljava/io/PipedReader;->buffer:[C

    #@28
    .line 175
    :cond_2
    const/4 v0, 0x1

    #@29
    iput-boolean v0, p0, Ljava/io/PipedReader;->isConnected:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    monitor-exit p0

    #@2c
    .line 165
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 196
    new-array v0, v2, [C

    #@4
    .line 197
    .local v0, "chars":[C
    invoke-virtual {p0, v0, v3, v2}, Ljava/io/PipedReader;->read([CII)I

    #@7
    move-result v1

    #@8
    .line 198
    .local v1, "result":I
    const/4 v2, -0x1

    #@9
    if-eq v1, v2, :cond_0

    #@b
    aget-char v1, v0, v3

    #@d
    .end local v1    # "result":I
    :cond_0
    return v1
.end method

.method public declared-synchronized read([CII)I
    .locals 7
    .param p1, "buffer"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v6, -0x1

    #@2
    monitor-enter p0

    #@3
    .line 225
    :try_start_0
    iget-boolean v4, p0, Ljava/io/PipedReader;->isConnected:Z

    #@5
    if-nez v4, :cond_0

    #@7
    .line 226
    new-instance v4, Ljava/io/IOException;

    #@9
    const-string/jumbo v5, "Pipe not connected"

    #@c
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@f
    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :catchall_0
    move-exception v4

    #@11
    monitor-exit p0

    #@12
    throw v4

    #@13
    .line 228
    :cond_0
    :try_start_1
    iget-object v4, p0, Ljava/io/PipedReader;->buffer:[C

    #@15
    if-nez v4, :cond_1

    #@17
    .line 229
    new-instance v4, Ljava/io/IOException;

    #@19
    const-string/jumbo v5, "Pipe is closed"

    #@1c
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v4

    #@20
    .line 231
    :cond_1
    array-length v4, p1

    #@21
    invoke-static {v4, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    .line 232
    if-nez p3, :cond_2

    #@26
    monitor-exit p0

    #@27
    .line 233
    return v5

    #@28
    .line 240
    :cond_2
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@2b
    move-result-object v4

    #@2c
    iput-object v4, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2e
    .line 242
    const/4 v3, 0x1

    #@2f
    .line 243
    .local v3, "first":Z
    :goto_0
    :try_start_3
    iget v4, p0, Ljava/io/PipedReader;->in:I

    #@31
    if-ne v4, v6, :cond_5

    #@33
    .line 245
    iget-boolean v4, p0, Ljava/io/PipedReader;->isClosed:Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@35
    if-eqz v4, :cond_3

    #@37
    monitor-exit p0

    #@38
    .line 246
    return v6

    #@39
    .line 248
    :cond_3
    if-nez v3, :cond_4

    #@3b
    :try_start_4
    iget-object v4, p0, Ljava/io/PipedReader;->lastWriter:Ljava/lang/Thread;

    #@3d
    if-eqz v4, :cond_4

    #@3f
    iget-object v4, p0, Ljava/io/PipedReader;->lastWriter:Ljava/lang/Thread;

    #@41
    invoke-virtual {v4}, Ljava/lang/Thread;->isAlive()Z

    #@44
    move-result v4

    #@45
    if-eqz v4, :cond_9

    #@47
    .line 251
    :cond_4
    const/4 v3, 0x0

    #@48
    .line 253
    invoke-virtual {p0}, Ljava/io/PipedReader;->notifyAll()V

    #@4b
    .line 254
    const-wide/16 v4, 0x3e8

    #@4d
    invoke-virtual {p0, v4, v5}, Ljava/io/PipedReader;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@50
    goto :goto_0

    #@51
    .line 256
    :catch_0
    move-exception v2

    #@52
    .line 257
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    #@55
    .line 260
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_5
    const/4 v1, 0x0

    #@56
    .line 262
    .local v1, "copyLength":I
    iget v4, p0, Ljava/io/PipedReader;->out:I

    #@58
    iget v5, p0, Ljava/io/PipedReader;->in:I

    #@5a
    if-lt v4, v5, :cond_7

    #@5c
    .line 263
    iget-object v4, p0, Ljava/io/PipedReader;->buffer:[C

    #@5e
    array-length v4, v4

    #@5f
    iget v5, p0, Ljava/io/PipedReader;->out:I

    #@61
    sub-int/2addr v4, v5

    #@62
    if-le p3, v4, :cond_a

    #@64
    iget-object v4, p0, Ljava/io/PipedReader;->buffer:[C

    #@66
    array-length v4, v4

    #@67
    iget v5, p0, Ljava/io/PipedReader;->out:I

    #@69
    sub-int v1, v4, v5

    #@6b
    .line 264
    :goto_1
    iget-object v4, p0, Ljava/io/PipedReader;->buffer:[C

    #@6d
    iget v5, p0, Ljava/io/PipedReader;->out:I

    #@6f
    invoke-static {v4, v5, p1, p2, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@72
    .line 265
    iget v4, p0, Ljava/io/PipedReader;->out:I

    #@74
    add-int/2addr v4, v1

    #@75
    iput v4, p0, Ljava/io/PipedReader;->out:I

    #@77
    .line 266
    iget v4, p0, Ljava/io/PipedReader;->out:I

    #@79
    iget-object v5, p0, Ljava/io/PipedReader;->buffer:[C

    #@7b
    array-length v5, v5

    #@7c
    if-ne v4, v5, :cond_6

    #@7e
    .line 267
    const/4 v4, 0x0

    #@7f
    iput v4, p0, Ljava/io/PipedReader;->out:I

    #@81
    .line 269
    :cond_6
    iget v4, p0, Ljava/io/PipedReader;->out:I

    #@83
    iget v5, p0, Ljava/io/PipedReader;->in:I

    #@85
    if-ne v4, v5, :cond_7

    #@87
    .line 271
    const/4 v4, -0x1

    #@88
    iput v4, p0, Ljava/io/PipedReader;->in:I

    #@8a
    .line 272
    const/4 v4, 0x0

    #@8b
    iput v4, p0, Ljava/io/PipedReader;->out:I

    #@8d
    .line 280
    :cond_7
    if-eq v1, p3, :cond_8

    #@8f
    iget v4, p0, Ljava/io/PipedReader;->in:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@91
    if-ne v4, v6, :cond_b

    #@93
    :cond_8
    monitor-exit p0

    #@94
    .line 281
    return v1

    #@95
    .line 249
    .end local v1    # "copyLength":I
    :cond_9
    :try_start_6
    new-instance v4, Ljava/io/IOException;

    #@97
    const-string/jumbo v5, "Pipe broken"

    #@9a
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@9d
    throw v4
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@9e
    .line 263
    .restart local v1    # "copyLength":I
    :cond_a
    move v1, p3

    #@9f
    goto :goto_1

    #@a0
    .line 284
    :cond_b
    move v0, v1

    #@a1
    .line 286
    .local v0, "charsCopied":I
    :try_start_7
    iget v4, p0, Ljava/io/PipedReader;->in:I

    #@a3
    iget v5, p0, Ljava/io/PipedReader;->out:I

    #@a5
    sub-int/2addr v4, v5

    #@a6
    sub-int v5, p3, v1

    #@a8
    if-le v4, v5, :cond_d

    #@aa
    sub-int v1, p3, v1

    #@ac
    .line 287
    :goto_2
    iget-object v4, p0, Ljava/io/PipedReader;->buffer:[C

    #@ae
    iget v5, p0, Ljava/io/PipedReader;->out:I

    #@b0
    add-int v6, p2, v0

    #@b2
    invoke-static {v4, v5, p1, v6, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@b5
    .line 288
    iget v4, p0, Ljava/io/PipedReader;->out:I

    #@b7
    add-int/2addr v4, v1

    #@b8
    iput v4, p0, Ljava/io/PipedReader;->out:I

    #@ba
    .line 289
    iget v4, p0, Ljava/io/PipedReader;->out:I

    #@bc
    iget v5, p0, Ljava/io/PipedReader;->in:I

    #@be
    if-ne v4, v5, :cond_c

    #@c0
    .line 291
    const/4 v4, -0x1

    #@c1
    iput v4, p0, Ljava/io/PipedReader;->in:I

    #@c3
    .line 292
    const/4 v4, 0x0

    #@c4
    iput v4, p0, Ljava/io/PipedReader;->out:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@c6
    .line 294
    :cond_c
    add-int v4, v0, v1

    #@c8
    monitor-exit p0

    #@c9
    return v4

    #@ca
    .line 286
    :cond_d
    :try_start_8
    iget v4, p0, Ljava/io/PipedReader;->in:I

    #@cc
    iget v5, p0, Ljava/io/PipedReader;->out:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@ce
    sub-int v1, v4, v5

    #@d0
    goto :goto_2
.end method

.method public declared-synchronized ready()Z
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
    .line 313
    :try_start_0
    iget-boolean v0, p0, Ljava/io/PipedReader;->isConnected:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 314
    new-instance v0, Ljava/io/IOException;

    #@7
    const-string/jumbo v1, "Pipe not connected"

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
    .line 316
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/io/PipedReader;->buffer:[C

    #@13
    if-nez v0, :cond_1

    #@15
    .line 317
    new-instance v0, Ljava/io/IOException;

    #@17
    const-string/jumbo v1, "Pipe is closed"

    #@1a
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 319
    :cond_1
    iget v0, p0, Ljava/io/PipedReader;->in:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    const/4 v1, -0x1

    #@21
    if-eq v0, v1, :cond_2

    #@23
    const/4 v0, 0x1

    #@24
    :goto_0
    monitor-exit p0

    #@25
    return v0

    #@26
    :cond_2
    const/4 v0, 0x0

    #@27
    goto :goto_0
.end method

.method declared-synchronized receive(C)V
    .locals 4
    .param p1, "oneChar"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 337
    :try_start_0
    iget-object v1, p0, Ljava/io/PipedReader;->buffer:[C

    #@3
    if-nez v1, :cond_0

    #@5
    .line 338
    new-instance v1, Ljava/io/IOException;

    #@7
    const-string/jumbo v2, "Pipe is closed"

    #@a
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@d
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :catchall_0
    move-exception v1

    #@f
    monitor-exit p0

    #@10
    throw v1

    #@11
    .line 340
    :cond_0
    :try_start_1
    iget-object v1, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    #@13
    if-eqz v1, :cond_1

    #@15
    iget-object v1, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    #@17
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_4

    #@1d
    .line 348
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@20
    move-result-object v1

    #@21
    iput-object v1, p0, Ljava/io/PipedReader;->lastWriter:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    .line 350
    :cond_2
    :try_start_2
    iget-object v1, p0, Ljava/io/PipedReader;->buffer:[C

    #@25
    if-eqz v1, :cond_3

    #@27
    iget v1, p0, Ljava/io/PipedReader;->out:I

    #@29
    iget v2, p0, Ljava/io/PipedReader;->in:I

    #@2b
    if-ne v1, v2, :cond_3

    #@2d
    .line 351
    invoke-virtual {p0}, Ljava/io/PipedReader;->notifyAll()V

    #@30
    .line 352
    const-wide/16 v2, 0x3e8

    #@32
    invoke-virtual {p0, v2, v3}, Ljava/io/PipedReader;->wait(J)V

    #@35
    .line 353
    iget-object v1, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    #@37
    if-eqz v1, :cond_2

    #@39
    iget-object v1, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    #@3b
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    #@3e
    move-result v1

    #@3f
    if-nez v1, :cond_2

    #@41
    .line 354
    new-instance v1, Ljava/io/IOException;

    #@43
    const-string/jumbo v2, "Pipe broken"

    #@46
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@49
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4a
    .line 357
    :catch_0
    move-exception v0

    #@4b
    .line 358
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    #@4e
    .line 360
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_3
    iget-object v1, p0, Ljava/io/PipedReader;->buffer:[C

    #@50
    if-nez v1, :cond_5

    #@52
    .line 361
    new-instance v1, Ljava/io/IOException;

    #@54
    const-string/jumbo v2, "Pipe is closed"

    #@57
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v1

    #@5b
    .line 341
    :cond_4
    new-instance v1, Ljava/io/IOException;

    #@5d
    const-string/jumbo v2, "Pipe broken"

    #@60
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@63
    throw v1

    #@64
    .line 363
    :cond_5
    iget v1, p0, Ljava/io/PipedReader;->in:I

    #@66
    const/4 v2, -0x1

    #@67
    if-ne v1, v2, :cond_6

    #@69
    .line 364
    const/4 v1, 0x0

    #@6a
    iput v1, p0, Ljava/io/PipedReader;->in:I

    #@6c
    .line 366
    :cond_6
    iget-object v1, p0, Ljava/io/PipedReader;->buffer:[C

    #@6e
    iget v2, p0, Ljava/io/PipedReader;->in:I

    #@70
    add-int/lit8 v3, v2, 0x1

    #@72
    iput v3, p0, Ljava/io/PipedReader;->in:I

    #@74
    aput-char p1, v1, v2

    #@76
    .line 367
    iget v1, p0, Ljava/io/PipedReader;->in:I

    #@78
    iget-object v2, p0, Ljava/io/PipedReader;->buffer:[C

    #@7a
    array-length v2, v2

    #@7b
    if-ne v1, v2, :cond_7

    #@7d
    .line 368
    const/4 v1, 0x0

    #@7e
    iput v1, p0, Ljava/io/PipedReader;->in:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@80
    :cond_7
    monitor-exit p0

    #@81
    .line 336
    return-void
.end method

.method declared-synchronized receive([CII)V
    .locals 4
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 384
    :try_start_0
    array-length v2, p1

    #@2
    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@5
    .line 385
    iget-object v2, p0, Ljava/io/PipedReader;->buffer:[C

    #@7
    if-nez v2, :cond_0

    #@9
    .line 386
    new-instance v2, Ljava/io/IOException;

    #@b
    const-string/jumbo v3, "Pipe is closed"

    #@e
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@11
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :catchall_0
    move-exception v2

    #@13
    monitor-exit p0

    #@14
    throw v2

    #@15
    .line 388
    :cond_0
    :try_start_1
    iget-object v2, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    #@17
    if-eqz v2, :cond_1

    #@19
    iget-object v2, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    #@1b
    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_5

    #@21
    .line 396
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@24
    move-result-object v2

    #@25
    iput-object v2, p0, Ljava/io/PipedReader;->lastWriter:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@27
    .line 397
    :cond_2
    :goto_0
    if-lez p3, :cond_b

    #@29
    .line 399
    :cond_3
    :try_start_2
    iget-object v2, p0, Ljava/io/PipedReader;->buffer:[C

    #@2b
    if-eqz v2, :cond_4

    #@2d
    iget v2, p0, Ljava/io/PipedReader;->out:I

    #@2f
    iget v3, p0, Ljava/io/PipedReader;->in:I

    #@31
    if-ne v2, v3, :cond_4

    #@33
    .line 400
    invoke-virtual {p0}, Ljava/io/PipedReader;->notifyAll()V

    #@36
    .line 401
    const-wide/16 v2, 0x3e8

    #@38
    invoke-virtual {p0, v2, v3}, Ljava/io/PipedReader;->wait(J)V

    #@3b
    .line 402
    iget-object v2, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    #@3d
    if-eqz v2, :cond_3

    #@3f
    iget-object v2, p0, Ljava/io/PipedReader;->lastReader:Ljava/lang/Thread;

    #@41
    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    #@44
    move-result v2

    #@45
    if-nez v2, :cond_3

    #@47
    .line 403
    new-instance v2, Ljava/io/IOException;

    #@49
    const-string/jumbo v3, "Pipe broken"

    #@4c
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@50
    .line 406
    :catch_0
    move-exception v0

    #@51
    .line 407
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    #@54
    .line 409
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    iget-object v2, p0, Ljava/io/PipedReader;->buffer:[C

    #@56
    if-nez v2, :cond_6

    #@58
    .line 410
    new-instance v2, Ljava/io/IOException;

    #@5a
    const-string/jumbo v3, "Pipe is closed"

    #@5d
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@60
    throw v2

    #@61
    .line 389
    :cond_5
    new-instance v2, Ljava/io/IOException;

    #@63
    const-string/jumbo v3, "Pipe broken"

    #@66
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@69
    throw v2

    #@6a
    .line 412
    :cond_6
    iget v2, p0, Ljava/io/PipedReader;->in:I

    #@6c
    const/4 v3, -0x1

    #@6d
    if-ne v2, v3, :cond_7

    #@6f
    .line 413
    const/4 v2, 0x0

    #@70
    iput v2, p0, Ljava/io/PipedReader;->in:I

    #@72
    .line 415
    :cond_7
    iget v2, p0, Ljava/io/PipedReader;->in:I

    #@74
    iget v3, p0, Ljava/io/PipedReader;->out:I

    #@76
    if-lt v2, v3, :cond_9

    #@78
    .line 416
    iget-object v2, p0, Ljava/io/PipedReader;->buffer:[C

    #@7a
    array-length v2, v2

    #@7b
    iget v3, p0, Ljava/io/PipedReader;->in:I

    #@7d
    sub-int v1, v2, v3

    #@7f
    .line 417
    .local v1, "length":I
    if-ge p3, v1, :cond_8

    #@81
    .line 418
    move v1, p3

    #@82
    .line 420
    :cond_8
    iget-object v2, p0, Ljava/io/PipedReader;->buffer:[C

    #@84
    iget v3, p0, Ljava/io/PipedReader;->in:I

    #@86
    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@89
    .line 421
    add-int/2addr p2, v1

    #@8a
    .line 422
    sub-int/2addr p3, v1

    #@8b
    .line 423
    iget v2, p0, Ljava/io/PipedReader;->in:I

    #@8d
    add-int/2addr v2, v1

    #@8e
    iput v2, p0, Ljava/io/PipedReader;->in:I

    #@90
    .line 424
    iget v2, p0, Ljava/io/PipedReader;->in:I

    #@92
    iget-object v3, p0, Ljava/io/PipedReader;->buffer:[C

    #@94
    array-length v3, v3

    #@95
    if-ne v2, v3, :cond_9

    #@97
    .line 425
    const/4 v2, 0x0

    #@98
    iput v2, p0, Ljava/io/PipedReader;->in:I

    #@9a
    .line 428
    .end local v1    # "length":I
    :cond_9
    if-lez p3, :cond_2

    #@9c
    iget v2, p0, Ljava/io/PipedReader;->in:I

    #@9e
    iget v3, p0, Ljava/io/PipedReader;->out:I

    #@a0
    if-eq v2, v3, :cond_2

    #@a2
    .line 429
    iget v2, p0, Ljava/io/PipedReader;->out:I

    #@a4
    iget v3, p0, Ljava/io/PipedReader;->in:I

    #@a6
    sub-int v1, v2, v3

    #@a8
    .line 430
    .restart local v1    # "length":I
    if-ge p3, v1, :cond_a

    #@aa
    .line 431
    move v1, p3

    #@ab
    .line 433
    :cond_a
    iget-object v2, p0, Ljava/io/PipedReader;->buffer:[C

    #@ad
    iget v3, p0, Ljava/io/PipedReader;->in:I

    #@af
    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@b2
    .line 434
    add-int/2addr p2, v1

    #@b3
    .line 435
    sub-int/2addr p3, v1

    #@b4
    .line 436
    iget v2, p0, Ljava/io/PipedReader;->in:I

    #@b6
    add-int/2addr v2, v1

    #@b7
    iput v2, p0, Ljava/io/PipedReader;->in:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@b9
    goto/16 :goto_0

    #@bb
    .end local v1    # "length":I
    :cond_b
    monitor-exit p0

    #@bc
    .line 383
    return-void
.end method
