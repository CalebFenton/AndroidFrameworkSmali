.class public Ljava/io/PipedInputStream;
.super Ljava/io/InputStream;
.source "PipedInputStream.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final DEFAULT_PIPE_SIZE:I = 0x400

.field protected static final PIPE_SIZE:I = 0x400


# instance fields
.field protected buffer:[B

.field volatile closedByReader:Z

.field closedByWriter:Z

.field connected:Z

.field protected in:I

.field protected out:I

.field readSide:Ljava/lang/Thread;

.field writeSide:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/io/PipedInputStream;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Ljava/io/PipedInputStream;->-assertionsDisabled:Z

    #@b
    .line 56
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 143
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@4
    .line 57
    iput-boolean v1, p0, Ljava/io/PipedInputStream;->closedByWriter:Z

    #@6
    .line 58
    iput-boolean v1, p0, Ljava/io/PipedInputStream;->closedByReader:Z

    #@8
    .line 59
    iput-boolean v1, p0, Ljava/io/PipedInputStream;->connected:Z

    #@a
    .line 92
    const/4 v0, -0x1

    #@b
    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    #@d
    .line 99
    iput v1, p0, Ljava/io/PipedInputStream;->out:I

    #@f
    .line 144
    const/16 v0, 0x400

    #@11
    invoke-direct {p0, v0}, Ljava/io/PipedInputStream;->initPipe(I)V

    #@14
    .line 143
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "pipeSize"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 159
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@4
    .line 57
    iput-boolean v1, p0, Ljava/io/PipedInputStream;->closedByWriter:Z

    #@6
    .line 58
    iput-boolean v1, p0, Ljava/io/PipedInputStream;->closedByReader:Z

    #@8
    .line 59
    iput-boolean v1, p0, Ljava/io/PipedInputStream;->connected:Z

    #@a
    .line 92
    const/4 v0, -0x1

    #@b
    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    #@d
    .line 99
    iput v1, p0, Ljava/io/PipedInputStream;->out:I

    #@f
    .line 160
    invoke-direct {p0, p1}, Ljava/io/PipedInputStream;->initPipe(I)V

    #@12
    .line 159
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedOutputStream;)V
    .locals 1
    .param p1, "src"    # Ljava/io/PipedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 112
    const/16 v0, 0x400

    #@2
    invoke-direct {p0, p1, v0}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;I)V

    #@5
    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/io/PipedOutputStream;I)V
    .locals 2
    .param p1, "src"    # Ljava/io/PipedOutputStream;
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
    .line 129
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    #@4
    .line 57
    iput-boolean v1, p0, Ljava/io/PipedInputStream;->closedByWriter:Z

    #@6
    .line 58
    iput-boolean v1, p0, Ljava/io/PipedInputStream;->closedByReader:Z

    #@8
    .line 59
    iput-boolean v1, p0, Ljava/io/PipedInputStream;->connected:Z

    #@a
    .line 92
    const/4 v0, -0x1

    #@b
    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    #@d
    .line 99
    iput v1, p0, Ljava/io/PipedInputStream;->out:I

    #@f
    .line 131
    invoke-direct {p0, p2}, Ljava/io/PipedInputStream;->initPipe(I)V

    #@12
    .line 132
    invoke-virtual {p0, p1}, Ljava/io/PipedInputStream;->connect(Ljava/io/PipedOutputStream;)V

    #@15
    .line 130
    return-void
.end method

.method private awaitSpace()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 274
    :goto_0
    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    #@2
    iget v2, p0, Ljava/io/PipedInputStream;->out:I

    #@4
    if-ne v1, v2, :cond_0

    #@6
    .line 275
    invoke-direct {p0}, Ljava/io/PipedInputStream;->checkStateForReceive()V

    #@9
    .line 278
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    #@c
    .line 280
    const-wide/16 v2, 0x3e8

    #@e
    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    goto :goto_0

    #@12
    .line 281
    :catch_0
    move-exception v0

    #@13
    .line 287
    .local v0, "ex":Ljava/lang/InterruptedException;
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    #@16
    goto :goto_0

    #@17
    .line 273
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method private checkStateForReceive()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 264
    iget-boolean v0, p0, Ljava/io/PipedInputStream;->connected:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 265
    new-instance v0, Ljava/io/IOException;

    #@6
    const-string/jumbo v1, "Pipe not connected"

    #@9
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 266
    :cond_0
    iget-boolean v0, p0, Ljava/io/PipedInputStream;->closedByWriter:Z

    #@f
    if-nez v0, :cond_1

    #@11
    iget-boolean v0, p0, Ljava/io/PipedInputStream;->closedByReader:Z

    #@13
    if-eqz v0, :cond_2

    #@15
    .line 267
    :cond_1
    new-instance v0, Ljava/io/IOException;

    #@17
    const-string/jumbo v1, "Pipe closed"

    #@1a
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0

    #@1e
    .line 268
    :cond_2
    iget-object v0, p0, Ljava/io/PipedInputStream;->readSide:Ljava/lang/Thread;

    #@20
    if-eqz v0, :cond_3

    #@22
    iget-object v0, p0, Ljava/io/PipedInputStream;->readSide:Ljava/lang/Thread;

    #@24
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_4

    #@2a
    .line 263
    :cond_3
    return-void

    #@2b
    .line 269
    :cond_4
    new-instance v0, Ljava/io/IOException;

    #@2d
    const-string/jumbo v1, "Read end dead"

    #@30
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0
.end method

.method private initPipe(I)V
    .locals 2
    .param p1, "pipeSize"    # I

    #@0
    .prologue
    .line 164
    if-gtz p1, :cond_0

    #@2
    .line 165
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Pipe Size <= 0"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 167
    :cond_0
    new-array v0, p1, [B

    #@d
    iput-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@f
    .line 163
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
    const/4 v1, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 444
    :try_start_0
    iget v0, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    if-gez v0, :cond_0

    #@6
    monitor-exit p0

    #@7
    .line 445
    return v1

    #@8
    .line 446
    :cond_0
    :try_start_1
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    #@a
    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    #@c
    if-ne v0, v1, :cond_1

    #@e
    .line 447
    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@10
    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    monitor-exit p0

    #@12
    return v0

    #@13
    .line 448
    :cond_1
    :try_start_2
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    #@15
    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    #@17
    if-le v0, v1, :cond_2

    #@19
    .line 449
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    #@1b
    iget v1, p0, Ljava/io/PipedInputStream;->out:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1d
    sub-int/2addr v0, v1

    #@1e
    monitor-exit p0

    #@1f
    return v0

    #@20
    .line 451
    :cond_2
    :try_start_3
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    #@22
    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@24
    array-length v1, v1

    #@25
    add-int/2addr v0, v1

    #@26
    iget v1, p0, Ljava/io/PipedInputStream;->out:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@28
    sub-int/2addr v0, v1

    #@29
    monitor-exit p0

    #@2a
    return v0

    #@2b
    :catchall_0
    move-exception v0

    #@2c
    monitor-exit p0

    #@2d
    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 461
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Ljava/io/PipedInputStream;->closedByReader:Z

    #@3
    .line 462
    monitor-enter p0

    #@4
    .line 463
    const/4 v0, -0x1

    #@5
    :try_start_0
    iput v0, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 460
    return-void

    #@9
    .line 462
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
    .line 195
    invoke-virtual {p1, p0}, Ljava/io/PipedOutputStream;->connect(Ljava/io/PipedInputStream;)V

    #@3
    .line 194
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
    .line 316
    :try_start_0
    iget-boolean v3, p0, Ljava/io/PipedInputStream;->connected:Z

    #@4
    if-nez v3, :cond_0

    #@6
    .line 317
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
    .line 318
    :cond_0
    :try_start_1
    iget-boolean v3, p0, Ljava/io/PipedInputStream;->closedByReader:Z

    #@14
    if-eqz v3, :cond_1

    #@16
    .line 319
    new-instance v3, Ljava/io/IOException;

    #@18
    const-string/jumbo v4, "Pipe closed"

    #@1b
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v3

    #@1f
    .line 320
    :cond_1
    iget-object v3, p0, Ljava/io/PipedInputStream;->writeSide:Ljava/lang/Thread;

    #@21
    if-eqz v3, :cond_2

    #@23
    iget-object v3, p0, Ljava/io/PipedInputStream;->writeSide:Ljava/lang/Thread;

    #@25
    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_3

    #@2b
    .line 325
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@2e
    move-result-object v3

    #@2f
    iput-object v3, p0, Ljava/io/PipedInputStream;->readSide:Ljava/lang/Thread;

    #@31
    .line 326
    const/4 v2, 0x2

    #@32
    .line 327
    .local v2, "trials":I
    :goto_0
    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    #@34
    if-gez v3, :cond_7

    #@36
    .line 328
    iget-boolean v3, p0, Ljava/io/PipedInputStream;->closedByWriter:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    if-eqz v3, :cond_4

    #@3a
    monitor-exit p0

    #@3b
    .line 330
    return v6

    #@3c
    .line 321
    .end local v2    # "trials":I
    :cond_3
    :try_start_2
    iget-boolean v3, p0, Ljava/io/PipedInputStream;->closedByWriter:Z

    #@3e
    if-nez v3, :cond_2

    #@40
    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    #@42
    if-gez v3, :cond_2

    #@44
    .line 322
    new-instance v3, Ljava/io/IOException;

    #@46
    const-string/jumbo v4, "Write end dead"

    #@49
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v3

    #@4d
    .line 332
    .restart local v2    # "trials":I
    :cond_4
    iget-object v3, p0, Ljava/io/PipedInputStream;->writeSide:Ljava/lang/Thread;

    #@4f
    if-eqz v3, :cond_5

    #@51
    iget-object v3, p0, Ljava/io/PipedInputStream;->writeSide:Ljava/lang/Thread;

    #@53
    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    #@56
    move-result v3

    #@57
    if-eqz v3, :cond_6

    #@59
    .line 336
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5c
    .line 338
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
    .line 339
    :catch_0
    move-exception v0

    #@63
    .line 345
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    #@66
    goto :goto_0

    #@67
    .line 332
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_6
    add-int/lit8 v2, v2, -0x1

    #@69
    if-gez v2, :cond_5

    #@6b
    .line 333
    new-instance v3, Ljava/io/IOException;

    #@6d
    const-string/jumbo v4, "Pipe broken"

    #@70
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@73
    throw v3

    #@74
    .line 348
    :cond_7
    iget-object v3, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@76
    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    #@78
    add-int/lit8 v5, v4, 0x1

    #@7a
    iput v5, p0, Ljava/io/PipedInputStream;->out:I

    #@7c
    aget-byte v3, v3, v4

    #@7e
    and-int/lit16 v1, v3, 0xff

    #@80
    .line 349
    .local v1, "ret":I
    iget v3, p0, Ljava/io/PipedInputStream;->out:I

    #@82
    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@84
    array-length v4, v4

    #@85
    if-lt v3, v4, :cond_8

    #@87
    .line 350
    const/4 v3, 0x0

    #@88
    iput v3, p0, Ljava/io/PipedInputStream;->out:I

    #@8a
    .line 352
    :cond_8
    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    #@8c
    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    #@8e
    if-ne v3, v4, :cond_9

    #@90
    .line 354
    const/4 v3, -0x1

    #@91
    iput v3, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@93
    :cond_9
    monitor-exit p0

    #@94
    .line 357
    return v1
.end method

.method public declared-synchronized read([BII)I
    .locals 6
    .param p1, "b"    # [B
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
    .line 385
    if-nez p1, :cond_0

    #@5
    .line 386
    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    :catchall_0
    move-exception v3

    #@c
    monitor-exit p0

    #@d
    throw v3

    #@e
    .line 387
    :cond_0
    if-ltz p2, :cond_1

    #@10
    if-gez p3, :cond_2

    #@12
    .line 388
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    #@14
    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@17
    throw v3

    #@18
    .line 387
    :cond_2
    array-length v3, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    sub-int/2addr v3, p2

    #@1a
    if-gt p3, v3, :cond_1

    #@1c
    .line 389
    if-nez p3, :cond_3

    #@1e
    monitor-exit p0

    #@1f
    .line 390
    return v4

    #@20
    .line 394
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Ljava/io/PipedInputStream;->read()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@23
    move-result v1

    #@24
    .line 395
    .local v1, "c":I
    if-gez v1, :cond_4

    #@26
    monitor-exit p0

    #@27
    .line 396
    return v5

    #@28
    .line 398
    :cond_4
    int-to-byte v3, v1

    #@29
    :try_start_3
    aput-byte v3, p1, p2

    #@2b
    .line 399
    const/4 v2, 0x1

    #@2c
    .line 400
    .local v2, "rlen":I
    :cond_5
    :goto_0
    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    #@2e
    if-ltz v3, :cond_9

    #@30
    const/4 v3, 0x1

    #@31
    if-le p3, v3, :cond_9

    #@33
    .line 404
    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    #@35
    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    #@37
    if-le v3, v4, :cond_8

    #@39
    .line 405
    iget-object v3, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@3b
    array-length v3, v3

    #@3c
    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    #@3e
    sub-int/2addr v3, v4

    #@3f
    iget v4, p0, Ljava/io/PipedInputStream;->in:I

    #@41
    iget v5, p0, Ljava/io/PipedInputStream;->out:I

    #@43
    sub-int/2addr v4, v5

    #@44
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@47
    move-result v0

    #@48
    .line 411
    .local v0, "available":I
    :goto_1
    add-int/lit8 v3, p3, -0x1

    #@4a
    if-le v0, v3, :cond_6

    #@4c
    .line 412
    add-int/lit8 v0, p3, -0x1

    #@4e
    .line 414
    :cond_6
    iget-object v3, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@50
    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    #@52
    add-int v5, p2, v2

    #@54
    invoke-static {v3, v4, p1, v5, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@57
    .line 415
    iget v3, p0, Ljava/io/PipedInputStream;->out:I

    #@59
    add-int/2addr v3, v0

    #@5a
    iput v3, p0, Ljava/io/PipedInputStream;->out:I

    #@5c
    .line 416
    add-int/2addr v2, v0

    #@5d
    .line 417
    sub-int/2addr p3, v0

    #@5e
    .line 419
    iget v3, p0, Ljava/io/PipedInputStream;->out:I

    #@60
    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@62
    array-length v4, v4

    #@63
    if-lt v3, v4, :cond_7

    #@65
    .line 420
    const/4 v3, 0x0

    #@66
    iput v3, p0, Ljava/io/PipedInputStream;->out:I

    #@68
    .line 422
    :cond_7
    iget v3, p0, Ljava/io/PipedInputStream;->in:I

    #@6a
    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    #@6c
    if-ne v3, v4, :cond_5

    #@6e
    .line 424
    const/4 v3, -0x1

    #@6f
    iput v3, p0, Ljava/io/PipedInputStream;->in:I

    #@71
    goto :goto_0

    #@72
    .line 407
    .end local v0    # "available":I
    :cond_8
    iget-object v3, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@74
    array-length v3, v3

    #@75
    iget v4, p0, Ljava/io/PipedInputStream;->out:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@77
    sub-int v0, v3, v4

    #@79
    .restart local v0    # "available":I
    goto :goto_1

    #@7a
    .end local v0    # "available":I
    :cond_9
    monitor-exit p0

    #@7b
    .line 427
    return v2
.end method

.method protected declared-synchronized receive(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 208
    :try_start_0
    invoke-direct {p0}, Ljava/io/PipedInputStream;->checkStateForReceive()V

    #@4
    .line 209
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Ljava/io/PipedInputStream;->writeSide:Ljava/lang/Thread;

    #@a
    .line 210
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    #@c
    iget v1, p0, Ljava/io/PipedInputStream;->out:I

    #@e
    if-ne v0, v1, :cond_0

    #@10
    .line 211
    invoke-direct {p0}, Ljava/io/PipedInputStream;->awaitSpace()V

    #@13
    .line 212
    :cond_0
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    #@15
    if-gez v0, :cond_1

    #@17
    .line 213
    const/4 v0, 0x0

    #@18
    iput v0, p0, Ljava/io/PipedInputStream;->in:I

    #@1a
    .line 214
    const/4 v0, 0x0

    #@1b
    iput v0, p0, Ljava/io/PipedInputStream;->out:I

    #@1d
    .line 216
    :cond_1
    iget-object v0, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@1f
    iget v1, p0, Ljava/io/PipedInputStream;->in:I

    #@21
    add-int/lit8 v2, v1, 0x1

    #@23
    iput v2, p0, Ljava/io/PipedInputStream;->in:I

    #@25
    and-int/lit16 v2, p1, 0xff

    #@27
    int-to-byte v2, v2

    #@28
    aput-byte v2, v0, v1

    #@2a
    .line 217
    iget v0, p0, Ljava/io/PipedInputStream;->in:I

    #@2c
    iget-object v1, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@2e
    array-length v1, v1

    #@2f
    if-lt v0, v1, :cond_2

    #@31
    .line 218
    const/4 v0, 0x0

    #@32
    iput v0, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    :cond_2
    monitor-exit p0

    #@35
    .line 207
    return-void

    #@36
    :catchall_0
    move-exception v0

    #@37
    monitor-exit p0

    #@38
    throw v0
.end method

.method declared-synchronized receive([BII)V
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 233
    :try_start_0
    invoke-direct {p0}, Ljava/io/PipedInputStream;->checkStateForReceive()V

    #@5
    .line 234
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@8
    move-result-object v2

    #@9
    iput-object v2, p0, Ljava/io/PipedInputStream;->writeSide:Ljava/lang/Thread;

    #@b
    .line 235
    move v0, p3

    #@c
    .line 236
    .local v0, "bytesToTransfer":I
    :cond_0
    :goto_0
    if-lez v0, :cond_8

    #@e
    .line 237
    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    #@10
    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    #@12
    if-ne v2, v4, :cond_1

    #@14
    .line 238
    invoke-direct {p0}, Ljava/io/PipedInputStream;->awaitSpace()V

    #@17
    .line 239
    :cond_1
    const/4 v1, 0x0

    #@18
    .line 240
    .local v1, "nextTransferAmount":I
    iget v2, p0, Ljava/io/PipedInputStream;->out:I

    #@1a
    iget v4, p0, Ljava/io/PipedInputStream;->in:I

    #@1c
    if-ge v2, v4, :cond_4

    #@1e
    .line 241
    iget-object v2, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@20
    array-length v2, v2

    #@21
    iget v4, p0, Ljava/io/PipedInputStream;->in:I

    #@23
    sub-int v1, v2, v4

    #@25
    .line 250
    :cond_2
    :goto_1
    if-le v1, v0, :cond_3

    #@27
    .line 251
    move v1, v0

    #@28
    .line 252
    :cond_3
    sget-boolean v2, Ljava/io/PipedInputStream;->-assertionsDisabled:Z

    #@2a
    if-nez v2, :cond_7

    #@2c
    if-lez v1, :cond_6

    #@2e
    const/4 v2, 0x1

    #@2f
    :goto_2
    if-nez v2, :cond_7

    #@31
    new-instance v2, Ljava/lang/AssertionError;

    #@33
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@36
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@37
    .end local v0    # "bytesToTransfer":I
    .end local v1    # "nextTransferAmount":I
    :catchall_0
    move-exception v2

    #@38
    monitor-exit p0

    #@39
    throw v2

    #@3a
    .line 242
    .restart local v0    # "bytesToTransfer":I
    .restart local v1    # "nextTransferAmount":I
    :cond_4
    :try_start_1
    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    #@3c
    iget v4, p0, Ljava/io/PipedInputStream;->out:I

    #@3e
    if-ge v2, v4, :cond_2

    #@40
    .line 243
    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    #@42
    const/4 v4, -0x1

    #@43
    if-ne v2, v4, :cond_5

    #@45
    .line 244
    const/4 v2, 0x0

    #@46
    iput v2, p0, Ljava/io/PipedInputStream;->out:I

    #@48
    const/4 v2, 0x0

    #@49
    iput v2, p0, Ljava/io/PipedInputStream;->in:I

    #@4b
    .line 245
    iget-object v2, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@4d
    array-length v2, v2

    #@4e
    iget v4, p0, Ljava/io/PipedInputStream;->in:I

    #@50
    sub-int v1, v2, v4

    #@52
    goto :goto_1

    #@53
    .line 247
    :cond_5
    iget v2, p0, Ljava/io/PipedInputStream;->out:I

    #@55
    iget v4, p0, Ljava/io/PipedInputStream;->in:I

    #@57
    sub-int v1, v2, v4

    #@59
    goto :goto_1

    #@5a
    :cond_6
    move v2, v3

    #@5b
    .line 252
    goto :goto_2

    #@5c
    .line 253
    :cond_7
    iget-object v2, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@5e
    iget v4, p0, Ljava/io/PipedInputStream;->in:I

    #@60
    invoke-static {p1, p2, v2, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@63
    .line 254
    sub-int/2addr v0, v1

    #@64
    .line 255
    add-int/2addr p2, v1

    #@65
    .line 256
    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    #@67
    add-int/2addr v2, v1

    #@68
    iput v2, p0, Ljava/io/PipedInputStream;->in:I

    #@6a
    .line 257
    iget v2, p0, Ljava/io/PipedInputStream;->in:I

    #@6c
    iget-object v4, p0, Ljava/io/PipedInputStream;->buffer:[B

    #@6e
    array-length v4, v4

    #@6f
    if-lt v2, v4, :cond_0

    #@71
    .line 258
    const/4 v2, 0x0

    #@72
    iput v2, p0, Ljava/io/PipedInputStream;->in:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@74
    goto :goto_0

    #@75
    .end local v1    # "nextTransferAmount":I
    :cond_8
    monitor-exit p0

    #@76
    .line 232
    return-void
.end method

.method declared-synchronized receivedLast()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 297
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Ljava/io/PipedInputStream;->closedByWriter:Z

    #@4
    .line 298
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 296
    return-void

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method
