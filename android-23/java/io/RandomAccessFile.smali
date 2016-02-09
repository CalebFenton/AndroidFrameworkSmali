.class public Ljava/io/RandomAccessFile;
.super Ljava/lang/Object;
.source "RandomAccessFile.java"

# interfaces
.implements Ljava/io/DataInput;
.implements Ljava/io/DataOutput;
.implements Ljava/io/Closeable;


# instance fields
.field private channel:Ljava/nio/channels/FileChannel;

.field private fd:Ljava/io/FileDescriptor;

.field private final guard:Ldalvik/system/CloseGuard;

.field private mode:I

.field private final scratch:[B

.field private syncMetadata:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    const/4 v2, 0x0

    #@4
    iput-boolean v2, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    #@6
    .line 55
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@9
    move-result-object v2

    #@a
    iput-object v2, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    #@c
    .line 57
    const/16 v2, 0x8

    #@e
    new-array v2, v2, [B

    #@10
    iput-object v2, p0, Ljava/io/RandomAccessFile;->scratch:[B

    #@12
    .line 102
    const-string/jumbo v2, "r"

    #@15
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_2

    #@1b
    .line 103
    sget v1, Landroid/system/OsConstants;->O_RDONLY:I

    #@1d
    .line 116
    .local v1, "flags":I
    :cond_0
    :goto_0
    iput v1, p0, Ljava/io/RandomAccessFile;->mode:I

    #@1f
    .line 117
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@22
    move-result-object v2

    #@23
    invoke-static {v2, v1}, Llibcore/io/IoBridge;->open(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    #@26
    move-result-object v2

    #@27
    iput-object v2, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    #@29
    .line 120
    iget-boolean v2, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    #@2b
    if-eqz v2, :cond_1

    #@2d
    .line 122
    :try_start_0
    iget-object v2, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    #@2f
    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 127
    :cond_1
    :goto_1
    iget-object v2, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    #@34
    const-string/jumbo v3, "close"

    #@37
    invoke-virtual {v2, v3}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@3a
    .line 100
    return-void

    #@3b
    .line 104
    .end local v1    # "flags":I
    :cond_2
    const-string/jumbo v2, "rw"

    #@3e
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v2

    #@42
    if-nez v2, :cond_3

    #@44
    const-string/jumbo v2, "rws"

    #@47
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v2

    #@4b
    if-nez v2, :cond_3

    #@4d
    const-string/jumbo v2, "rwd"

    #@50
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@53
    move-result v2

    #@54
    if-eqz v2, :cond_5

    #@56
    .line 105
    :cond_3
    sget v2, Landroid/system/OsConstants;->O_RDWR:I

    #@58
    sget v3, Landroid/system/OsConstants;->O_CREAT:I

    #@5a
    or-int v1, v2, v3

    #@5c
    .line 106
    .restart local v1    # "flags":I
    const-string/jumbo v2, "rws"

    #@5f
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@62
    move-result v2

    #@63
    if-eqz v2, :cond_4

    #@65
    .line 108
    const/4 v2, 0x1

    #@66
    iput-boolean v2, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    #@68
    goto :goto_0

    #@69
    .line 109
    :cond_4
    const-string/jumbo v2, "rwd"

    #@6c
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6f
    move-result v2

    #@70
    if-eqz v2, :cond_0

    #@72
    .line 111
    sget v2, Landroid/system/OsConstants;->O_SYNC:I

    #@74
    or-int/2addr v1, v2

    #@75
    goto :goto_0

    #@76
    .line 114
    .end local v1    # "flags":I
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@78
    new-instance v3, Ljava/lang/StringBuilder;

    #@7a
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@7d
    const-string/jumbo v4, "Invalid mode: "

    #@80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v3

    #@84
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v3

    #@88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v3

    #@8c
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v2

    #@90
    .line 123
    .restart local v1    # "flags":I
    :catch_0
    move-exception v0

    #@91
    .local v0, "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 149
    new-instance v0, Ljava/io/File;

    #@2
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@5
    invoke-direct {p0, v0, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@8
    .line 148
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
    .line 159
    iget-object v0, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    #@2
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@5
    .line 160
    monitor-enter p0

    #@6
    .line 161
    :try_start_0
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    #@8
    if-eqz v0, :cond_0

    #@a
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    #@c
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 162
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    #@14
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    #@17
    .line 164
    :cond_0
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    #@19
    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    monitor-exit p0

    #@1d
    .line 158
    return-void

    #@1e
    .line 160
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit p0

    #@20
    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 170
    :try_start_0
    iget-object v0, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 171
    iget-object v0, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@9
    .line 173
    :cond_0
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 175
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@f
    .line 168
    return-void

    #@10
    .line 174
    :catchall_0
    move-exception v0

    #@11
    .line 175
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@14
    .line 174
    throw v0
.end method

.method public final declared-synchronized getChannel()Ljava/nio/channels/FileChannel;
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 194
    :try_start_0
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 195
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    #@7
    iget v1, p0, Ljava/io/RandomAccessFile;->mode:I

    #@9
    invoke-static {p0, v0, v1}, Ljava/nio/NioUtils;->newFileChannel(Ljava/io/Closeable;Ljava/io/FileDescriptor;I)Ljava/nio/channels/FileChannel;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    #@f
    .line 197
    :cond_0
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit p0

    #@12
    return-object v0

    #@13
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method public final getFD()Ljava/io/FileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    #@2
    return-object v0
.end method

.method public getFilePointer()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 225
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    iget-object v2, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    #@4
    sget v3, Landroid/system/OsConstants;->SEEK_CUR:I

    #@6
    const-wide/16 v4, 0x0

    #@8
    invoke-interface {v1, v2, v4, v5, v3}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-wide v2

    #@c
    return-wide v2

    #@d
    .line 226
    :catch_0
    move-exception v0

    #@e
    .line 227
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@11
    move-result-object v1

    #@12
    throw v1
.end method

.method public length()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 240
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@2
    iget-object v2, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    #@4
    invoke-interface {v1, v2}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    #@7
    move-result-object v1

    #@8
    iget-wide v2, v1, Landroid/system/StructStat;->st_size:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    return-wide v2

    #@b
    .line 241
    :catch_0
    move-exception v0

    #@c
    .line 242
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@f
    move-result-object v1

    #@10
    throw v1
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
    const/4 v3, 0x0

    #@1
    const/4 v0, -0x1

    #@2
    .line 257
    iget-object v1, p0, Ljava/io/RandomAccessFile;->scratch:[B

    #@4
    const/4 v2, 0x1

    #@5
    invoke-virtual {p0, v1, v3, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    #@8
    move-result v1

    #@9
    if-eq v1, v0, :cond_0

    #@b
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    #@d
    aget-byte v0, v0, v3

    #@f
    and-int/lit16 v0, v0, 0xff

    #@11
    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 272
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 289
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    #@2
    invoke-static {v0, p1, p2, p3}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final readBoolean()Z
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
    .line 305
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    #@4
    move-result v0

    #@5
    .line 306
    .local v0, "temp":I
    if-gez v0, :cond_0

    #@7
    .line 307
    new-instance v1, Ljava/io/EOFException;

    #@9
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    #@c
    throw v1

    #@d
    .line 309
    :cond_0
    if-eqz v0, :cond_1

    #@f
    const/4 v1, 0x1

    #@10
    :cond_1
    return v1
.end method

.method public final readByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 325
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    #@3
    move-result v0

    #@4
    .line 326
    .local v0, "temp":I
    if-gez v0, :cond_0

    #@6
    .line 327
    new-instance v1, Ljava/io/EOFException;

    #@8
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    #@b
    throw v1

    #@c
    .line 329
    :cond_0
    int-to-byte v1, v0

    #@d
    return v1
.end method

.method public final readChar()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 345
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readShort()S

    #@3
    move-result v0

    #@4
    int-to-char v0, v0

    #@5
    return v0
.end method

.method public final readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 361
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readLong()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public final readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 377
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final readFully([B)V
    .locals 2
    .param p1, "dst"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 384
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/RandomAccessFile;->readFully([BII)V

    #@5
    .line 383
    return-void
.end method

.method public final readFully([BII)V
    .locals 2
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 414
    array-length v1, p1

    #@1
    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 415
    :goto_0
    if-lez p3, :cond_1

    #@6
    .line 416
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    #@9
    move-result v0

    #@a
    .line 417
    .local v0, "result":I
    if-gez v0, :cond_0

    #@c
    .line 418
    new-instance v1, Ljava/io/EOFException;

    #@e
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    #@11
    throw v1

    #@12
    .line 420
    :cond_0
    add-int/2addr p2, v0

    #@13
    .line 421
    sub-int/2addr p3, v0

    #@14
    goto :goto_0

    #@15
    .line 413
    .end local v0    # "result":I
    :cond_1
    return-void
.end method

.method public final readInt()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 438
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    #@3
    const/4 v1, 0x4

    #@4
    invoke-virtual {p0, v0, v2, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    #@7
    .line 439
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    #@9
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@b
    invoke-static {v0, v2, v1}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public final readLine()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    const/16 v3, 0x50

    #@4
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    #@7
    .line 458
    .local v1, "line":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@8
    .line 459
    .local v0, "foundTerminator":Z
    const-wide/16 v4, 0x0

    #@a
    .line 461
    .local v4, "unreadPosition":J
    :goto_0
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    #@d
    move-result v2

    #@e
    .line 462
    .local v2, "nextByte":I
    sparse-switch v2, :sswitch_data_0

    #@11
    .line 477
    if-eqz v0, :cond_2

    #@13
    .line 478
    invoke-virtual {p0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    #@16
    .line 479
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    return-object v3

    #@1b
    .line 464
    :sswitch_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_0

    #@21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    :goto_1
    return-object v3

    #@26
    :cond_0
    const/4 v3, 0x0

    #@27
    goto :goto_1

    #@28
    .line 466
    :sswitch_1
    if-eqz v0, :cond_1

    #@2a
    .line 467
    invoke-virtual {p0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    #@2d
    .line 468
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    return-object v3

    #@32
    .line 470
    :cond_1
    const/4 v0, 0x1

    #@33
    .line 472
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    #@36
    move-result-wide v4

    #@37
    goto :goto_0

    #@38
    .line 475
    :sswitch_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v3

    #@3c
    return-object v3

    #@3d
    .line 481
    :cond_2
    int-to-char v3, v2

    #@3e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@41
    goto :goto_0

    #@42
    .line 462
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0xa -> :sswitch_2
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public final readLong()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 499
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    #@3
    const/16 v1, 0x8

    #@5
    invoke-virtual {p0, v0, v2, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    #@8
    .line 500
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    #@a
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@c
    invoke-static {v0, v2, v1}, Llibcore/io/Memory;->peekLong([BILjava/nio/ByteOrder;)J

    #@f
    move-result-wide v0

    #@10
    return-wide v0
.end method

.method public final readShort()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 516
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    #@3
    const/4 v1, 0x2

    #@4
    invoke-virtual {p0, v0, v2, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    #@7
    .line 517
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    #@9
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@b
    invoke-static {v0, v2, v1}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public final readUTF()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 574
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readUnsignedShort()I

    #@4
    move-result v1

    #@5
    .line 575
    .local v1, "utfSize":I
    if-nez v1, :cond_0

    #@7
    .line 576
    const-string/jumbo v2, ""

    #@a
    return-object v2

    #@b
    .line 578
    :cond_0
    new-array v0, v1, [B

    #@d
    .line 579
    .local v0, "buf":[B
    array-length v2, v0

    #@e
    invoke-virtual {p0, v0, v4, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    #@11
    move-result v2

    #@12
    array-length v3, v0

    #@13
    if-eq v2, v3, :cond_1

    #@15
    .line 580
    new-instance v2, Ljava/io/EOFException;

    #@17
    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    #@1a
    throw v2

    #@1b
    .line 582
    :cond_1
    new-array v2, v1, [C

    #@1d
    invoke-static {v0, v2, v4, v1}, Ljava/nio/charset/ModifiedUtf8;->decode([B[CII)Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    return-object v2
.end method

.method public final readUnsignedByte()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 533
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    #@3
    move-result v0

    #@4
    .line 534
    .local v0, "temp":I
    if-gez v0, :cond_0

    #@6
    .line 535
    new-instance v1, Ljava/io/EOFException;

    #@8
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    #@b
    throw v1

    #@c
    .line 537
    :cond_0
    return v0
.end method

.method public final readUnsignedShort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 553
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readShort()S

    #@3
    move-result v0

    #@4
    const v1, 0xffff

    #@7
    and-int/2addr v0, v1

    #@8
    return v0
.end method

.method public seek(J)V
    .locals 5
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 599
    const-wide/16 v2, 0x0

    #@2
    cmp-long v1, p1, v2

    #@4
    if-gez v1, :cond_0

    #@6
    .line 600
    new-instance v1, Ljava/io/IOException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "offset < 0: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v1

    #@20
    .line 603
    :cond_0
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@22
    iget-object v2, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    #@24
    sget v3, Landroid/system/OsConstants;->SEEK_SET:I

    #@26
    invoke-interface {v1, v2, p1, p2, v3}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 598
    return-void

    #@2a
    .line 604
    :catch_0
    move-exception v0

    #@2b
    .line 605
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@2e
    move-result-object v1

    #@2f
    throw v1
.end method

.method public setLength(J)V
    .locals 7
    .param p1, "newLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 624
    const-wide/16 v4, 0x0

    #@2
    cmp-long v1, p1, v4

    #@4
    if-gez v1, :cond_0

    #@6
    .line 625
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v4, "newLength < 0"

    #@b
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 628
    :cond_0
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@11
    iget-object v4, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    #@13
    invoke-interface {v1, v4, p1, p2}, Llibcore/io/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 633
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    #@19
    move-result-wide v2

    #@1a
    .line 634
    .local v2, "filePointer":J
    cmp-long v1, v2, p1

    #@1c
    if-lez v1, :cond_1

    #@1e
    .line 635
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    #@21
    .line 639
    :cond_1
    iget-boolean v1, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    #@23
    if-eqz v1, :cond_2

    #@25
    .line 640
    iget-object v1, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    #@27
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    #@2a
    .line 623
    :cond_2
    return-void

    #@2b
    .line 629
    .end local v2    # "filePointer":J
    :catch_0
    move-exception v0

    #@2c
    .line 630
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@2f
    move-result-object v1

    #@30
    throw v1
.end method

.method public skipBytes(I)I
    .locals 8
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 657
    if-lez p1, :cond_1

    #@3
    .line 658
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    #@6
    move-result-wide v0

    #@7
    .local v0, "currentPos":J
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    #@a
    move-result-wide v2

    #@b
    .line 659
    .local v2, "eof":J
    int-to-long v6, p1

    #@c
    add-long/2addr v6, v0

    #@d
    cmp-long v5, v6, v2

    #@f
    if-lez v5, :cond_0

    #@11
    sub-long v6, v2, v0

    #@13
    :goto_0
    long-to-int v4, v6

    #@14
    .line 660
    .local v4, "newCount":I
    int-to-long v6, v4

    #@15
    add-long/2addr v6, v0

    #@16
    invoke-virtual {p0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    #@19
    .line 661
    return v4

    #@1a
    .line 659
    .end local v4    # "newCount":I
    :cond_0
    int-to-long v6, p1

    #@1b
    goto :goto_0

    #@1c
    .line 663
    .end local v0    # "currentPos":J
    .end local v2    # "eof":J
    :cond_1
    return v5
.end method

.method public write(I)V
    .locals 3
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 709
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    #@3
    and-int/lit16 v1, p1, 0xff

    #@5
    int-to-byte v1, v1

    #@6
    aput-byte v1, v0, v2

    #@8
    .line 710
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    #@a
    const/4 v1, 0x1

    #@b
    invoke-virtual {p0, v0, v2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    #@e
    .line 708
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 676
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    #@5
    .line 675
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "byteOffset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 691
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    #@2
    invoke-static {v0, p1, p2, p3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    #@5
    .line 693
    iget-boolean v0, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 694
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    #@b
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    #@e
    .line 690
    :cond_0
    return-void
.end method

.method public final writeBoolean(Z)V
    .locals 1
    .param p1, "val"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 724
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    #@6
    .line 723
    return-void

    #@7
    .line 724
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public final writeByte(I)V
    .locals 1
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 739
    and-int/lit16 v0, p1, 0xff

    #@2
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    #@5
    .line 738
    return-void
.end method

.method public final writeBytes(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 752
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v2

    #@4
    new-array v0, v2, [B

    #@6
    .line 753
    .local v0, "bytes":[B
    const/4 v1, 0x0

    #@7
    .local v1, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@a
    move-result v2

    #@b
    if-ge v1, v2, :cond_0

    #@d
    .line 754
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@10
    move-result v2

    #@11
    and-int/lit16 v2, v2, 0xff

    #@13
    int-to-byte v2, v2

    #@14
    aput-byte v2, v0, v1

    #@16
    .line 753
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 756
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write([B)V

    #@1c
    .line 751
    return-void
.end method

.method public final writeChar(I)V
    .locals 0
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 771
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->writeShort(I)V

    #@3
    .line 770
    return-void
.end method

.method public final writeChars(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 785
    const-string/jumbo v0, "UTF-16BE"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write([B)V

    #@a
    .line 784
    return-void
.end method

.method public final writeDouble(D)V
    .locals 3
    .param p1, "val"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 800
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->writeLong(J)V

    #@7
    .line 799
    return-void
.end method

.method public final writeFloat(F)V
    .locals 1
    .param p1, "val"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 815
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    #@7
    .line 814
    return-void
.end method

.method public final writeInt(I)V
    .locals 3
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 829
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    #@3
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@5
    invoke-static {v0, v2, p1, v1}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    #@8
    .line 830
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    #@a
    const/4 v1, 0x4

    #@b
    invoke-virtual {p0, v0, v2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    #@e
    .line 828
    return-void
.end method

.method public final writeLong(J)V
    .locals 3
    .param p1, "val"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 844
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    #@3
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@5
    invoke-static {v0, v2, p1, p2, v1}, Llibcore/io/Memory;->pokeLong([BIJLjava/nio/ByteOrder;)V

    #@8
    .line 845
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    #@a
    const/16 v1, 0x8

    #@c
    invoke-virtual {p0, v0, v2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    #@f
    .line 843
    return-void
.end method

.method public final writeShort(I)V
    .locals 4
    .param p1, "val"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 861
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    #@3
    int-to-short v1, p1

    #@4
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@6
    invoke-static {v0, v3, v1, v2}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    #@9
    .line 862
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    #@b
    const/4 v1, 0x2

    #@c
    invoke-virtual {p0, v0, v3, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    #@f
    .line 860
    return-void
.end method

.method public final writeUTF(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 879
    invoke-static {p1}, Ljava/nio/charset/ModifiedUtf8;->encode(Ljava/lang/String;)[B

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write([B)V

    #@7
    .line 878
    return-void
.end method
