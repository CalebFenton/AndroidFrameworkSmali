.class public Ljava/io/PipedReader;
.super Ljava/io/Reader;
.source "PipedReader.java"


# static fields
.field private static final greylist-max-o DEFAULT_PIPE_SIZE:I = 0x400


# instance fields
.field greylist-max-o buffer:[C

.field greylist-max-o closedByReader:Z

.field greylist-max-o closedByWriter:Z

.field greylist-max-o connected:Z

.field greylist-max-o in:I

.field greylist-max-o out:I

.field greylist-max-o readSide:Ljava/lang/Thread;

.field greylist-max-o writeSide:Ljava/lang/Thread;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 112
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/PipedReader;->closedByWriter:Z

    .line 40
    iput-boolean v0, p0, Ljava/io/PipedReader;->closedByReader:Z

    .line 41
    iput-boolean v0, p0, Ljava/io/PipedReader;->connected:Z

    .line 66
    const/4 v1, -0x1

    iput v1, p0, Ljava/io/PipedReader;->in:I

    .line 72
    iput v0, p0, Ljava/io/PipedReader;->out:I

    .line 113
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Ljava/io/PipedReader;->initPipe(I)V

    .line 114
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 4
    .param p1, "pipeSize"    # I

    .line 128
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/PipedReader;->closedByWriter:Z

    .line 40
    iput-boolean v0, p0, Ljava/io/PipedReader;->closedByReader:Z

    .line 41
    iput-boolean v0, p0, Ljava/io/PipedReader;->connected:Z

    .line 66
    const/4 v1, -0x1

    iput v1, p0, Ljava/io/PipedReader;->in:I

    .line 72
    iput v0, p0, Ljava/io/PipedReader;->out:I

    .line 129
    invoke-direct {p0, p1}, Ljava/io/PipedReader;->initPipe(I)V

    .line 130
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/PipedWriter;)V
    .registers 3
    .param p1, "src"    # Ljava/io/PipedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    const/16 v0, 0x400

    invoke-direct {p0, p1, v0}, Ljava/io/PipedReader;-><init>(Ljava/io/PipedWriter;I)V

    .line 85
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/PipedWriter;I)V
    .registers 5
    .param p1, "src"    # Ljava/io/PipedWriter;
    .param p2, "pipeSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/PipedReader;->closedByWriter:Z

    .line 40
    iput-boolean v0, p0, Ljava/io/PipedReader;->closedByReader:Z

    .line 41
    iput-boolean v0, p0, Ljava/io/PipedReader;->connected:Z

    .line 66
    const/4 v1, -0x1

    iput v1, p0, Ljava/io/PipedReader;->in:I

    .line 72
    iput v0, p0, Ljava/io/PipedReader;->out:I

    .line 100
    invoke-direct {p0, p2}, Ljava/io/PipedReader;->initPipe(I)V

    .line 101
    invoke-virtual {p0, p1}, Ljava/io/PipedReader;->connect(Ljava/io/PipedWriter;)V

    .line 102
    return-void
.end method

.method private greylist-max-o initPipe(I)V
    .registers 4
    .param p1, "pipeSize"    # I

    .line 133
    if-lez p1, :cond_7

    .line 136
    new-array v0, p1, [C

    iput-object v0, p0, Ljava/io/PipedReader;->buffer:[C

    .line 137
    return-void

    .line 134
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Pipe size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/PipedReader;->in:I

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/io/PipedReader;->closedByReader:Z

    .line 368
    return-void
.end method

.method public whitelist test-api connect(Ljava/io/PipedWriter;)V
    .registers 2
    .param p1, "src"    # Ljava/io/PipedWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    invoke-virtual {p1, p0}, Ljava/io/PipedWriter;->connect(Ljava/io/PipedReader;)V

    .line 164
    return-void
.end method

.method public declared-synchronized whitelist test-api read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 238
    :try_start_1
    iget-boolean v0, p0, Ljava/io/PipedReader;->connected:Z

    if-eqz v0, :cond_85

    .line 240
    iget-boolean v0, p0, Ljava/io/PipedReader;->closedByReader:Z

    if-nez v0, :cond_7d

    .line 242
    iget-object v0, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    if-eqz v0, :cond_26

    iget-object v0, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_26

    iget-boolean v0, p0, Ljava/io/PipedReader;->closedByWriter:Z

    if-nez v0, :cond_26

    iget v0, p0, Ljava/io/PipedReader;->in:I

    if-ltz v0, :cond_1e

    goto :goto_26

    .line 244
    :cond_1e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Write end dead"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    .end local p0    # "this":Ljava/io/PipedReader;
    :cond_26
    :goto_26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/io/PipedReader;->readSide:Ljava/lang/Thread;

    .line 248
    const/4 v0, 0x2

    .line 249
    .local v0, "trials":I
    :goto_2d
    iget v1, p0, Ljava/io/PipedReader;->in:I

    const/4 v2, -0x1

    if-gez v1, :cond_5f

    .line 250
    iget-boolean v1, p0, Ljava/io/PipedReader;->closedByWriter:Z
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_8d

    if-eqz v1, :cond_38

    .line 252
    monitor-exit p0

    return v2

    .line 254
    .restart local p0    # "this":Ljava/io/PipedReader;
    :cond_38
    :try_start_38
    iget-object v1, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    if-eqz v1, :cond_51

    iget-object v1, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_51

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_49

    goto :goto_51

    .line 255
    :cond_49
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pipe broken"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    .end local p0    # "this":Ljava/io/PipedReader;
    :cond_51
    :goto_51
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_54
    .catchall {:try_start_38 .. :try_end_54} :catchall_8d

    .line 260
    const-wide/16 v1, 0x3e8

    :try_start_56
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_59
    .catch Ljava/lang/InterruptedException; {:try_start_56 .. :try_end_59} :catch_5a
    .catchall {:try_start_56 .. :try_end_59} :catchall_8d

    .line 265
    :goto_59
    goto :goto_2d

    .line 261
    :catch_5a
    move-exception v1

    .line 264
    .local v1, "ex":Ljava/lang/InterruptedException;
    :try_start_5b
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    .end local v1    # "ex":Ljava/lang/InterruptedException;
    goto :goto_59

    .line 267
    :cond_5f
    iget-object v1, p0, Ljava/io/PipedReader;->buffer:[C

    iget v3, p0, Ljava/io/PipedReader;->out:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljava/io/PipedReader;->out:I

    aget-char v1, v1, v3

    .line 268
    .local v1, "ret":I
    iget v3, p0, Ljava/io/PipedReader;->out:I

    iget-object v4, p0, Ljava/io/PipedReader;->buffer:[C

    array-length v4, v4

    if-lt v3, v4, :cond_73

    .line 269
    const/4 v3, 0x0

    iput v3, p0, Ljava/io/PipedReader;->out:I

    .line 271
    :cond_73
    iget v3, p0, Ljava/io/PipedReader;->in:I

    iget v4, p0, Ljava/io/PipedReader;->out:I

    if-ne v3, v4, :cond_7b

    .line 273
    iput v2, p0, Ljava/io/PipedReader;->in:I
    :try_end_7b
    .catchall {:try_start_5b .. :try_end_7b} :catchall_8d

    .line 275
    :cond_7b
    monitor-exit p0

    return v1

    .line 241
    .end local v0    # "trials":I
    .end local v1    # "ret":I
    :cond_7d
    :try_start_7d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_85
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :catchall_8d
    move-exception v0

    monitor-exit p0
    :try_end_8f
    .catchall {:try_start_7d .. :try_end_8f} :catchall_8d

    throw v0
.end method

.method public declared-synchronized whitelist test-api read([CII)I
    .registers 12
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 298
    :try_start_1
    iget-boolean v0, p0, Ljava/io/PipedReader;->connected:Z

    if-eqz v0, :cond_82

    .line 300
    iget-boolean v0, p0, Ljava/io/PipedReader;->closedByReader:Z

    if-nez v0, :cond_7a

    .line 302
    iget-object v0, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    if-eqz v0, :cond_26

    iget-object v0, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_26

    iget-boolean v0, p0, Ljava/io/PipedReader;->closedByWriter:Z

    if-nez v0, :cond_26

    iget v0, p0, Ljava/io/PipedReader;->in:I

    if-ltz v0, :cond_1e

    goto :goto_26

    .line 304
    :cond_1e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Write end dead"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    .end local p0    # "this":Ljava/io/PipedReader;
    :cond_26
    :goto_26
    if-ltz p2, :cond_74

    array-length v0, p1

    if-gt p2, v0, :cond_74

    if-ltz p3, :cond_74

    add-int v0, p2, p3

    array-length v1, p1
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_8a

    if-gt v0, v1, :cond_74

    add-int v0, p2, p3

    if-ltz v0, :cond_74

    .line 310
    const/4 v0, 0x0

    if-nez p3, :cond_3b

    .line 311
    monitor-exit p0

    return v0

    .line 315
    .restart local p0    # "this":Ljava/io/PipedReader;
    :cond_3b
    :try_start_3b
    invoke-virtual {p0}, Ljava/io/PipedReader;->read()I

    move-result v1
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_8a

    .line 316
    .local v1, "c":I
    const/4 v2, -0x1

    if-gez v1, :cond_44

    .line 317
    monitor-exit p0

    return v2

    .line 319
    :cond_44
    int-to-char v3, v1

    :try_start_45
    aput-char v3, p1, p2

    .line 320
    const/4 v3, 0x1

    .line 321
    .local v3, "rlen":I
    :cond_48
    :goto_48
    iget v4, p0, Ljava/io/PipedReader;->in:I

    if-ltz v4, :cond_72

    add-int/lit8 p3, p3, -0x1

    if-lez p3, :cond_72

    .line 322
    add-int v4, p2, v3

    iget-object v5, p0, Ljava/io/PipedReader;->buffer:[C

    iget v6, p0, Ljava/io/PipedReader;->out:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Ljava/io/PipedReader;->out:I

    aget-char v5, v5, v6

    aput-char v5, p1, v4

    .line 323
    add-int/lit8 v3, v3, 0x1

    .line 324
    iget v4, p0, Ljava/io/PipedReader;->out:I

    iget-object v5, p0, Ljava/io/PipedReader;->buffer:[C

    array-length v5, v5

    if-lt v4, v5, :cond_69

    .line 325
    iput v0, p0, Ljava/io/PipedReader;->out:I

    .line 327
    .end local p0    # "this":Ljava/io/PipedReader;
    :cond_69
    iget v4, p0, Ljava/io/PipedReader;->in:I

    iget v5, p0, Ljava/io/PipedReader;->out:I

    if-ne v4, v5, :cond_48

    .line 329
    iput v2, p0, Ljava/io/PipedReader;->in:I
    :try_end_71
    .catchall {:try_start_45 .. :try_end_71} :catchall_8a

    goto :goto_48

    .line 332
    :cond_72
    monitor-exit p0

    return v3

    .line 309
    .end local v1    # "c":I
    .end local v3    # "rlen":I
    :cond_74
    :try_start_74
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 301
    :cond_7a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_82
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    .end local p1    # "cbuf":[C
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_8a
    move-exception p1

    monitor-exit p0
    :try_end_8c
    .catchall {:try_start_74 .. :try_end_8c} :catchall_8a

    throw p1
.end method

.method public declared-synchronized whitelist test-api ready()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 344
    :try_start_1
    iget-boolean v0, p0, Ljava/io/PipedReader;->connected:Z

    if-eqz v0, :cond_38

    .line 346
    iget-boolean v0, p0, Ljava/io/PipedReader;->closedByReader:Z

    if-nez v0, :cond_30

    .line 348
    iget-object v0, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    if-eqz v0, :cond_26

    iget-object v0, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_26

    iget-boolean v0, p0, Ljava/io/PipedReader;->closedByWriter:Z

    if-nez v0, :cond_26

    iget v0, p0, Ljava/io/PipedReader;->in:I

    if-ltz v0, :cond_1e

    goto :goto_26

    .line 350
    :cond_1e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Write end dead"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    .end local p0    # "this":Ljava/io/PipedReader;
    :cond_26
    :goto_26
    iget v0, p0, Ljava/io/PipedReader;->in:I
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_40

    if-gez v0, :cond_2d

    .line 353
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 355
    .restart local p0    # "this":Ljava/io/PipedReader;
    :cond_2d
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 347
    .end local p0    # "this":Ljava/io/PipedReader;
    :cond_30
    :try_start_30
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_38
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :catchall_40
    move-exception v0

    monitor-exit p0
    :try_end_42
    .catchall {:try_start_30 .. :try_end_42} :catchall_40

    throw v0
.end method

.method declared-synchronized greylist-max-o receive(I)V
    .registers 6
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 171
    :try_start_1
    iget-boolean v0, p0, Ljava/io/PipedReader;->connected:Z

    if-eqz v0, :cond_78

    .line 173
    iget-boolean v0, p0, Ljava/io/PipedReader;->closedByWriter:Z

    if-nez v0, :cond_70

    iget-boolean v0, p0, Ljava/io/PipedReader;->closedByReader:Z

    if-nez v0, :cond_70

    .line 175
    iget-object v0, p0, Ljava/io/PipedReader;->readSide:Ljava/lang/Thread;

    if-eqz v0, :cond_22

    iget-object v0, p0, Ljava/io/PipedReader;->readSide:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_22

    .line 176
    :cond_1a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Read end dead"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    .end local p0    # "this":Ljava/io/PipedReader;
    :cond_22
    :goto_22
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Ljava/io/PipedReader;->writeSide:Ljava/lang/Thread;

    .line 180
    :goto_28
    iget v0, p0, Ljava/io/PipedReader;->in:I

    iget v1, p0, Ljava/io/PipedReader;->out:I

    if-ne v0, v1, :cond_51

    .line 181
    iget-object v0, p0, Ljava/io/PipedReader;->readSide:Ljava/lang/Thread;

    if-eqz v0, :cond_43

    iget-object v0, p0, Ljava/io/PipedReader;->readSide:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3b

    goto :goto_43

    .line 182
    :cond_3b
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe broken"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_43
    :goto_43
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_80

    .line 187
    const-wide/16 v0, 0x3e8

    :try_start_48
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_4b
    .catch Ljava/lang/InterruptedException; {:try_start_48 .. :try_end_4b} :catch_4c
    .catchall {:try_start_48 .. :try_end_4b} :catchall_80

    .line 192
    :goto_4b
    goto :goto_28

    .line 188
    :catch_4c
    move-exception v0

    .line 191
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_4d
    invoke-static {}, Llibcore/io/IoUtils;->throwInterruptedIoException()V

    .end local v0    # "ex":Ljava/lang/InterruptedException;
    goto :goto_4b

    .line 194
    :cond_51
    iget v0, p0, Ljava/io/PipedReader;->in:I

    const/4 v1, 0x0

    if-gez v0, :cond_5a

    .line 195
    iput v1, p0, Ljava/io/PipedReader;->in:I

    .line 196
    iput v1, p0, Ljava/io/PipedReader;->out:I

    .line 198
    :cond_5a
    iget-object v0, p0, Ljava/io/PipedReader;->buffer:[C

    iget v2, p0, Ljava/io/PipedReader;->in:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/PipedReader;->in:I

    int-to-char v3, p1

    aput-char v3, v0, v2

    .line 199
    iget v0, p0, Ljava/io/PipedReader;->in:I

    iget-object v2, p0, Ljava/io/PipedReader;->buffer:[C

    array-length v2, v2

    if-lt v0, v2, :cond_6e

    .line 200
    iput v1, p0, Ljava/io/PipedReader;->in:I
    :try_end_6e
    .catchall {:try_start_4d .. :try_end_6e} :catchall_80

    .line 202
    :cond_6e
    monitor-exit p0

    return-void

    .line 174
    :cond_70
    :try_start_70
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_78
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Pipe not connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    .end local p1    # "c":I
    :catchall_80
    move-exception p1

    monitor-exit p0
    :try_end_82
    .catchall {:try_start_70 .. :try_end_82} :catchall_80

    throw p1
.end method

.method declared-synchronized greylist-max-o receive([CII)V
    .registers 5
    .param p1, "c"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 209
    nop

    :goto_2
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_12

    .line 210
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "off":I
    .local v0, "off":I
    :try_start_8
    aget-char p2, p1, p2

    invoke-virtual {p0, p2}, Ljava/io/PipedReader;->receive(I)V

    move p2, v0

    goto :goto_2

    .line 208
    .end local v0    # "off":I
    .end local p0    # "this":Ljava/io/PipedReader;
    .end local p1    # "c":[C
    .end local p3    # "len":I
    :catchall_f
    move-exception p1

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw p1

    .line 212
    .restart local p1    # "c":[C
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :cond_12
    monitor-exit p0

    return-void
.end method

.method declared-synchronized greylist-max-o receivedLast()V
    .registers 2

    monitor-enter p0

    .line 219
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Ljava/io/PipedReader;->closedByWriter:Z

    .line 220
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_9

    .line 221
    monitor-exit p0

    return-void

    .line 218
    .end local p0    # "this":Ljava/io/PipedReader;
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method
