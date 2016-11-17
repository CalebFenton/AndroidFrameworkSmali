.class public Ljava/io/PipedReader;
.super Ljava/io/Reader;
.source "PipedReader.java"


# static fields
.field private static final DEFAULT_PIPE_SIZE:I = 0x400


# instance fields
.field buffer:[C

.field closedByReader:Z

.field closedByWriter:Z

.field connected:Z

.field in:I

.field out:I

.field readSide:Ljava/lang/Thread;

.field writeSide:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 115
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    #@4
    .line 42
    iput-boolean v1, p0, Ljava/io/PipedReader;->closedByWriter:Z

    #@6
    .line 43
    iput-boolean v1, p0, Ljava/io/PipedReader;->closedByReader:Z

    #@8
    .line 44
    iput-boolean v1, p0, Ljava/io/PipedReader;->connected:Z

    #@a
    .line 69
    const/4 v0, -0x1

    #@b
    iput v0, p0, Ljava/io/PipedReader;->in:I

    #@d
    .line 75
    iput v1, p0, Ljava/io/PipedReader;->out:I

    #@f
    .line 116
    const/16 v0, 0x400

    #@11
    invoke-direct {p0, v0}, Ljava/io/PipedReader;->initPipe(I)V

    #@14
    .line 115
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "pipeSize"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 131
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    #@4
    .line 42
    iput-boolean v1, p0, Ljava/io/PipedReader;->closedByWriter:Z

    #@6
    .line 43
    iput-boolean v1, p0, Ljava/io/PipedReader;->closedByReader:Z

    #@8
    .line 44
    iput-boolean v1, p0, Ljava/io/PipedReader;->connected:Z

    #@a
    .line 69
    const/4 v0, -0x1

    #@b
    iput v0, p0, Ljava/io/PipedReader;->in:I

    #@d
    .line 75
    iput v1, p0, Ljava/io/PipedReader;->out:I

    #@f
    .line 132
    invoke-direct {p0, p1}, Ljava/io/PipedReader;->initPipe(I)V

    #@12
    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedWriter;)V
    .locals 1
    .param p1, "src"    # Ljava/io/PipedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 87
    const/16 v0, 0x400

    #@2
    invoke-direct {p0, p1, v0}, Ljava/io/PipedReader;-><init>(Ljava/io/PipedWriter;I)V

    #@5
    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedWriter;I)V
    .locals 2
    .param p1, "src"    # Ljava/io/PipedWriter;
    .param p2, "pipeSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 102
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    #@4
    .line 42
    iput-boolean v1, p0, Ljava/io/PipedReader;->closedByWriter:Z

    #@6
    .line 43
    iput-boolean v1, p0, Ljava/io/PipedReader;->closedByReader:Z

    #@8
    .line 44
    iput-boolean v1, p0, Ljava/io/PipedReader;->connected:Z

    #@a
    .line 69
    const/4 v0, -0x1

    #@b
    iput v0, p0, Ljava/io/PipedReader;->in:I

    #@d
    .line 75
    iput v1, p0, Ljava/io/PipedReader;->out:I

    #@f
    .line 103
    invoke-direct {p0, p2}, Ljava/io/PipedReader;->initPipe(I)V

    #@12
    .line 104
    invoke-virtual {p0, p1}, Ljava/io/PipedReader;->connect(Ljava/io/PipedWriter;)V

    #@15
    .line 102
    return-void
.end method

.method private initPipe(I)V
    .locals 2
    .param p1, "pipeSize"    # I

    #@0
    .prologue
    .line 136
    if-gtz p1, :cond_0

    #@2
    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Pipe size <= 0"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 139
    :cond_0
    new-array v0, p1, [C

    #@d
    iput-object v0, p0, Ljava/io/PipedReader;->buffer:[C

    #@f
    .line 135
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 375
    const/4 v0, -0x1

    #@1
    iput v0, p0, Ljava/io/PipedReader;->in:I

    #@3
    .line 376
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Ljava/io/PipedReader;->closedByReader:Z

    #@6
    .line 374
    return-void
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
    .line 167
    invoke-virtual {p1, p0}, Ljava/io/PipedWriter;->connect(Ljava/io/PipedReader;)V

    #@3
    .line 166
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
    .line 245
    :try_start_0
    iget-boolean v3, p0, Ljava/io/PipedReader;->connected:Z

    #@4
    if-nez v3, :cond_0

    #@6
    .line 246
    new-instance v3, Ljava/io/IOException;

    #@8
    const-string/jumbo v4, "Pipe not connected"

    #@b
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :catchall_0
    move-exception v3

    #@10
    monitor-exit p0

    #@11
    throw v3

    #@12
    .line 247
    :cond_0
    :try_start_1
    iget-boolean v3, p0, Ljava/io/PipedReader;->closedByReader:Z

    #@14
    if-eqz v3, :cond_1

    #@16
    .line 248
    new-instance v3, Ljava/io/IOException;

    #@18
    const-string/jumbo v4, "Pipe closed"

    #@1b
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v3

    #@1f
    .line 249
    :cond_1
    iget-object v3, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    #@21
    if-eqz v3, :cond_2

    #@23
    iget-object v3, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    #@25
    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_3

    #@2b
    .line 254
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@2e
    move-result-object v3

    #@2f
    iput-object v3, p0, Ljava/io/PipedReader;->readSide:Ljava/lang/Thread;

    #@31
    .line 255
    const/4 v2, 0x2

    #@32
    .line 256
    .local v2, "trials":I
    :goto_0
    iget v3, p0, Ljava/io/PipedReader;->in:I

    #@34
    if-gez v3, :cond_7

    #@36
    .line 257
    iget-boolean v3, p0, Ljava/io/PipedReader;->closedByWriter:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    if-eqz v3, :cond_4

    #@3a
    monitor-exit p0

    #@3b
    .line 259
    return v6

    #@3c
    .line 250
    .end local v2    # "trials":I
    :cond_3
    :try_start_2
    iget-boolean v3, p0, Ljava/io/PipedReader;->closedByWriter:Z

    #@3e
    if-nez v3, :cond_2

    #@40
    iget v3, p0, Ljava/io/PipedReader;->in:I

    #@42
    if-gez v3, :cond_2

    #@44
    .line 251
    new-instance v3, Ljava/io/IOException;

    #@46
    const-string/jumbo v4, "Write end dead"

    #@49
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v3

    #@4d
    .line 261
    .restart local v2    # "trials":I
    :cond_4
    iget-object v3, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    #@4f
    if-eqz v3, :cond_5

    #@51
    iget-object v3, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    #@53
    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    #@56
    move-result v3

    #@57
    if-eqz v3, :cond_6

    #@59
    .line 265
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5c
    .line 267
    const-wide/16 v4, 0x3e8

    #@5e
    :try_start_3
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@61
    goto :goto_0

    #@62
    .line 268
    :catch_0
    move-exception v0

    #@63
    .line 274
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    #@66
    goto :goto_0

    #@67
    .line 261
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_6
    add-int/lit8 v2, v2, -0x1

    #@69
    if-gez v2, :cond_5

    #@6b
    .line 262
    new-instance v3, Ljava/io/IOException;

    #@6d
    const-string/jumbo v4, "Pipe broken"

    #@70
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@73
    throw v3

    #@74
    .line 277
    :cond_7
    iget-object v3, p0, Ljava/io/PipedReader;->buffer:[C

    #@76
    iget v4, p0, Ljava/io/PipedReader;->out:I

    #@78
    add-int/lit8 v5, v4, 0x1

    #@7a
    iput v5, p0, Ljava/io/PipedReader;->out:I

    #@7c
    aget-char v1, v3, v4

    #@7e
    .line 278
    .local v1, "ret":I
    iget v3, p0, Ljava/io/PipedReader;->out:I

    #@80
    iget-object v4, p0, Ljava/io/PipedReader;->buffer:[C

    #@82
    array-length v4, v4

    #@83
    if-lt v3, v4, :cond_8

    #@85
    .line 279
    const/4 v3, 0x0

    #@86
    iput v3, p0, Ljava/io/PipedReader;->out:I

    #@88
    .line 281
    :cond_8
    iget v3, p0, Ljava/io/PipedReader;->in:I

    #@8a
    iget v4, p0, Ljava/io/PipedReader;->out:I

    #@8c
    if-ne v3, v4, :cond_9

    #@8e
    .line 283
    const/4 v3, -0x1

    #@8f
    iput v3, p0, Ljava/io/PipedReader;->in:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@91
    :cond_9
    monitor-exit p0

    #@92
    .line 285
    return v1
.end method

.method public declared-synchronized read([CII)I
    .locals 6
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    const/4 v4, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 307
    :try_start_0
    iget-boolean v2, p0, Ljava/io/PipedReader;->connected:Z

    #@5
    if-nez v2, :cond_0

    #@7
    .line 308
    new-instance v2, Ljava/io/IOException;

    #@9
    const-string/jumbo v3, "Pipe not connected"

    #@c
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :catchall_0
    move-exception v2

    #@11
    monitor-exit p0

    #@12
    throw v2

    #@13
    .line 309
    :cond_0
    :try_start_1
    iget-boolean v2, p0, Ljava/io/PipedReader;->closedByReader:Z

    #@15
    if-eqz v2, :cond_1

    #@17
    .line 310
    new-instance v2, Ljava/io/IOException;

    #@19
    const-string/jumbo v3, "Pipe closed"

    #@1c
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v2

    #@20
    .line 311
    :cond_1
    iget-object v2, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    #@22
    if-eqz v2, :cond_2

    #@24
    iget-object v2, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    #@26
    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_4

    #@2c
    .line 316
    :cond_2
    if-ltz p2, :cond_3

    #@2e
    array-length v2, p1

    #@2f
    if-le p2, v2, :cond_5

    #@31
    .line 318
    :cond_3
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    #@33
    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@36
    throw v2

    #@37
    .line 312
    :cond_4
    iget-boolean v2, p0, Ljava/io/PipedReader;->closedByWriter:Z

    #@39
    if-nez v2, :cond_2

    #@3b
    iget v2, p0, Ljava/io/PipedReader;->in:I

    #@3d
    if-gez v2, :cond_2

    #@3f
    .line 313
    new-instance v2, Ljava/io/IOException;

    #@41
    const-string/jumbo v3, "Write end dead"

    #@44
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@47
    throw v2

    #@48
    .line 316
    :cond_5
    if-ltz p3, :cond_3

    #@4a
    .line 317
    add-int v2, p2, p3

    #@4c
    array-length v3, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    if-gt v2, v3, :cond_3

    #@4f
    add-int v2, p2, p3

    #@51
    if-ltz v2, :cond_3

    #@53
    .line 319
    if-nez p3, :cond_6

    #@55
    monitor-exit p0

    #@56
    .line 320
    return v4

    #@57
    .line 324
    :cond_6
    :try_start_2
    invoke-virtual {p0}, Ljava/io/PipedReader;->read()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5a
    move-result v0

    #@5b
    .line 325
    .local v0, "c":I
    if-gez v0, :cond_7

    #@5d
    monitor-exit p0

    #@5e
    .line 326
    return v5

    #@5f
    .line 328
    :cond_7
    int-to-char v2, v0

    #@60
    :try_start_3
    aput-char v2, p1, p2

    #@62
    .line 329
    const/4 v1, 0x1

    #@63
    .line 330
    .local v1, "rlen":I
    :cond_8
    :goto_0
    iget v2, p0, Ljava/io/PipedReader;->in:I

    #@65
    if-ltz v2, :cond_a

    #@67
    add-int/lit8 p3, p3, -0x1

    #@69
    if-lez p3, :cond_a

    #@6b
    .line 331
    add-int v2, p2, v1

    #@6d
    iget-object v3, p0, Ljava/io/PipedReader;->buffer:[C

    #@6f
    iget v4, p0, Ljava/io/PipedReader;->out:I

    #@71
    add-int/lit8 v5, v4, 0x1

    #@73
    iput v5, p0, Ljava/io/PipedReader;->out:I

    #@75
    aget-char v3, v3, v4

    #@77
    aput-char v3, p1, v2

    #@79
    .line 332
    add-int/lit8 v1, v1, 0x1

    #@7b
    .line 333
    iget v2, p0, Ljava/io/PipedReader;->out:I

    #@7d
    iget-object v3, p0, Ljava/io/PipedReader;->buffer:[C

    #@7f
    array-length v3, v3

    #@80
    if-lt v2, v3, :cond_9

    #@82
    .line 334
    const/4 v2, 0x0

    #@83
    iput v2, p0, Ljava/io/PipedReader;->out:I

    #@85
    .line 336
    :cond_9
    iget v2, p0, Ljava/io/PipedReader;->in:I

    #@87
    iget v3, p0, Ljava/io/PipedReader;->out:I

    #@89
    if-ne v2, v3, :cond_8

    #@8b
    .line 338
    const/4 v2, -0x1

    #@8c
    iput v2, p0, Ljava/io/PipedReader;->in:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@8e
    goto :goto_0

    #@8f
    :cond_a
    monitor-exit p0

    #@90
    .line 341
    return v1
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
    const/4 v1, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 353
    :try_start_0
    iget-boolean v0, p0, Ljava/io/PipedReader;->connected:Z

    #@4
    if-nez v0, :cond_0

    #@6
    .line 354
    new-instance v0, Ljava/io/IOException;

    #@8
    const-string/jumbo v1, "Pipe not connected"

    #@b
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0

    #@12
    .line 355
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Ljava/io/PipedReader;->closedByReader:Z

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 356
    new-instance v0, Ljava/io/IOException;

    #@18
    const-string/jumbo v1, "Pipe closed"

    #@1b
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 357
    :cond_1
    iget-object v0, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    #@21
    if-eqz v0, :cond_2

    #@23
    iget-object v0, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    #@25
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_3

    #@2b
    .line 361
    :cond_2
    iget v0, p0, Ljava/io/PipedReader;->in:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    if-gez v0, :cond_4

    #@2f
    monitor-exit p0

    #@30
    .line 362
    return v1

    #@31
    .line 358
    :cond_3
    :try_start_2
    iget-boolean v0, p0, Ljava/io/PipedReader;->closedByWriter:Z

    #@33
    if-nez v0, :cond_2

    #@35
    iget v0, p0, Ljava/io/PipedReader;->in:I

    #@37
    if-gez v0, :cond_2

    #@39
    .line 359
    new-instance v0, Ljava/io/IOException;

    #@3b
    const-string/jumbo v1, "Write end dead"

    #@3e
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@41
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@42
    .line 364
    :cond_4
    const/4 v0, 0x1

    #@43
    monitor-exit p0

    #@44
    return v0
.end method

.method declared-synchronized receive(I)V
    .locals 4
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 175
    :try_start_0
    iget-boolean v1, p0, Ljava/io/PipedReader;->connected:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 176
    new-instance v1, Ljava/io/IOException;

    #@7
    const-string/jumbo v2, "Pipe not connected"

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
    .line 177
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Ljava/io/PipedReader;->closedByWriter:Z

    #@13
    if-nez v1, :cond_1

    #@15
    iget-boolean v1, p0, Ljava/io/PipedReader;->closedByReader:Z

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 178
    :cond_1
    new-instance v1, Ljava/io/IOException;

    #@1b
    const-string/jumbo v2, "Pipe closed"

    #@1e
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@21
    throw v1

    #@22
    .line 179
    :cond_2
    iget-object v1, p0, Ljava/io/PipedReader;->readSide:Ljava/lang/Thread;

    #@24
    if-eqz v1, :cond_3

    #@26
    iget-object v1, p0, Ljava/io/PipedReader;->readSide:Ljava/lang/Thread;

    #@28
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    #@2b
    move-result v1

    #@2c
    if-eqz v1, :cond_5

    #@2e
    .line 183
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@31
    move-result-object v1

    #@32
    iput-object v1, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    #@34
    .line 184
    :goto_0
    iget v1, p0, Ljava/io/PipedReader;->in:I

    #@36
    iget v2, p0, Ljava/io/PipedReader;->out:I

    #@38
    if-ne v1, v2, :cond_7

    #@3a
    .line 185
    iget-object v1, p0, Ljava/io/PipedReader;->readSide:Ljava/lang/Thread;

    #@3c
    if-eqz v1, :cond_4

    #@3e
    iget-object v1, p0, Ljava/io/PipedReader;->readSide:Ljava/lang/Thread;

    #@40
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    #@43
    move-result v1

    #@44
    if-eqz v1, :cond_6

    #@46
    .line 189
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    .line 191
    const-wide/16 v2, 0x3e8

    #@4b
    :try_start_2
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4e
    goto :goto_0

    #@4f
    .line 192
    :catch_0
    move-exception v0

    #@50
    .line 198
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    #@53
    goto :goto_0

    #@54
    .line 180
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_5
    new-instance v1, Ljava/io/IOException;

    #@56
    const-string/jumbo v2, "Read end dead"

    #@59
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v1

    #@5d
    .line 186
    :cond_6
    new-instance v1, Ljava/io/IOException;

    #@5f
    const-string/jumbo v2, "Pipe broken"

    #@62
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@65
    throw v1

    #@66
    .line 201
    :cond_7
    iget v1, p0, Ljava/io/PipedReader;->in:I

    #@68
    if-gez v1, :cond_8

    #@6a
    .line 202
    const/4 v1, 0x0

    #@6b
    iput v1, p0, Ljava/io/PipedReader;->in:I

    #@6d
    .line 203
    const/4 v1, 0x0

    #@6e
    iput v1, p0, Ljava/io/PipedReader;->out:I

    #@70
    .line 205
    :cond_8
    iget-object v1, p0, Ljava/io/PipedReader;->buffer:[C

    #@72
    iget v2, p0, Ljava/io/PipedReader;->in:I

    #@74
    add-int/lit8 v3, v2, 0x1

    #@76
    iput v3, p0, Ljava/io/PipedReader;->in:I

    #@78
    int-to-char v3, p1

    #@79
    aput-char v3, v1, v2

    #@7b
    .line 206
    iget v1, p0, Ljava/io/PipedReader;->in:I

    #@7d
    iget-object v2, p0, Ljava/io/PipedReader;->buffer:[C

    #@7f
    array-length v2, v2

    #@80
    if-lt v1, v2, :cond_9

    #@82
    .line 207
    const/4 v1, 0x0

    #@83
    iput v1, p0, Ljava/io/PipedReader;->in:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@85
    :cond_9
    monitor-exit p0

    #@86
    .line 174
    return-void
.end method

.method declared-synchronized receive([CII)V
    .locals 2
    .param p1, "c"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 216
    :goto_0
    add-int/lit8 p3, p3, -0x1

    #@3
    if-ltz p3, :cond_0

    #@5
    .line 217
    add-int/lit8 v0, p2, 0x1

    #@7
    .end local p2    # "off":I
    .local v0, "off":I
    :try_start_0
    aget-char v1, p1, p2

    #@9
    invoke-virtual {p0, v1}, Ljava/io/PipedReader;->receive(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move p2, v0

    #@d
    .end local v0    # "off":I
    .restart local p2    # "off":I
    goto :goto_0

    #@e
    :cond_0
    monitor-exit p0

    #@f
    .line 215
    return-void

    #@10
    .end local p2    # "off":I
    .restart local v0    # "off":I
    :catchall_0
    move-exception v1

    #@11
    monitor-exit p0

    #@12
    throw v1
.end method

.method declared-synchronized receivedLast()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 226
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Ljava/io/PipedReader;->closedByWriter:Z

    #@4
    .line 227
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 225
    return-void

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method
