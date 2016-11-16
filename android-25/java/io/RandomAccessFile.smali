.class public Ljava/io/RandomAccessFile;
.super Ljava/lang/Object;
.source "RandomAccessFile.java"

# interfaces
.implements Ljava/io/DataOutput;
.implements Ljava/io/DataInput;
.implements Ljava/io/Closeable;


# instance fields
.field private channel:Ljava/nio/channels/FileChannel;

.field private closeLock:Ljava/lang/Object;

.field private volatile closed:Z

.field private fd:Ljava/io/FileDescriptor;

.field private final guard:Ldalvik/system/CloseGuard;

.field private mode:I

.field private final path:Ljava/lang/String;

.field private rw:Z

.field private final scratch:[B

.field private syncMetadata:Z


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 7
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, -0x1

    #@2
    const/4 v4, 0x0

    #@3
    const/4 v3, 0x0

    #@4
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 68
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@a
    move-result-object v2

    #@b
    iput-object v2, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    #@d
    .line 69
    const/16 v2, 0x8

    #@f
    new-array v2, v2, [B

    #@11
    iput-object v2, p0, Ljava/io/RandomAccessFile;->scratch:[B

    #@13
    .line 70
    iput-boolean v3, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    #@15
    .line 74
    iput-object v4, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    #@17
    .line 80
    new-instance v2, Ljava/lang/Object;

    #@19
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    #@1c
    iput-object v2, p0, Ljava/io/RandomAccessFile;->closeLock:Ljava/lang/Object;

    #@1e
    .line 81
    iput-boolean v3, p0, Ljava/io/RandomAccessFile;->closed:Z

    #@20
    .line 210
    if-eqz p1, :cond_1

    #@22
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    .line 211
    :goto_0
    iput v5, p0, Ljava/io/RandomAccessFile;->mode:I

    #@28
    .line 212
    const-string/jumbo v2, "r"

    #@2b
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v2

    #@2f
    if-eqz v2, :cond_2

    #@31
    .line 213
    sget v2, Landroid/system/OsConstants;->O_RDONLY:I

    #@33
    iput v2, p0, Ljava/io/RandomAccessFile;->mode:I

    #@35
    .line 230
    :cond_0
    :goto_1
    iget v2, p0, Ljava/io/RandomAccessFile;->mode:I

    #@37
    if-gez v2, :cond_5

    #@39
    .line 231
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@3b
    new-instance v3, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v4, "Illegal mode \""

    #@43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    .line 232
    const-string/jumbo v4, "\" must be one of "

    #@4e
    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v3

    #@52
    .line 233
    const-string/jumbo v4, "\"r\", \"rw\", \"rws\","

    #@55
    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    .line 234
    const-string/jumbo v4, " or \"rwd\""

    #@5c
    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v3

    #@60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v3

    #@64
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@67
    throw v2

    #@68
    .line 210
    :cond_1
    const/4 v1, 0x0

    #@69
    .local v1, "name":Ljava/lang/String;
    goto :goto_0

    #@6a
    .line 214
    .end local v1    # "name":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "rw"

    #@6d
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@70
    move-result v2

    #@71
    if-eqz v2, :cond_0

    #@73
    .line 216
    sget v2, Landroid/system/OsConstants;->O_RDWR:I

    #@75
    sget v3, Landroid/system/OsConstants;->O_CREAT:I

    #@77
    or-int/2addr v2, v3

    #@78
    iput v2, p0, Ljava/io/RandomAccessFile;->mode:I

    #@7a
    .line 217
    iput-boolean v6, p0, Ljava/io/RandomAccessFile;->rw:Z

    #@7c
    .line 218
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@7f
    move-result v2

    #@80
    const/4 v3, 0x2

    #@81
    if-le v2, v3, :cond_0

    #@83
    .line 219
    const-string/jumbo v2, "rws"

    #@86
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@89
    move-result v2

    #@8a
    if-eqz v2, :cond_3

    #@8c
    .line 220
    iput-boolean v6, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    #@8e
    goto :goto_1

    #@8f
    .line 221
    :cond_3
    const-string/jumbo v2, "rwd"

    #@92
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@95
    move-result v2

    #@96
    if-eqz v2, :cond_4

    #@98
    .line 223
    iget v2, p0, Ljava/io/RandomAccessFile;->mode:I

    #@9a
    sget v3, Landroid/system/OsConstants;->O_SYNC:I

    #@9c
    or-int/2addr v2, v3

    #@9d
    iput v2, p0, Ljava/io/RandomAccessFile;->mode:I

    #@9f
    goto :goto_1

    #@a0
    .line 225
    :cond_4
    iput v5, p0, Ljava/io/RandomAccessFile;->mode:I

    #@a2
    goto :goto_1

    #@a3
    .line 237
    :cond_5
    if-nez v1, :cond_6

    #@a5
    .line 238
    new-instance v2, Ljava/lang/NullPointerException;

    #@a7
    const-string/jumbo v3, "file == null"

    #@aa
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@ad
    throw v2

    #@ae
    .line 241
    :cond_6
    invoke-virtual {p1}, Ljava/io/File;->isInvalid()Z

    #@b1
    move-result v2

    #@b2
    if-eqz v2, :cond_7

    #@b4
    .line 242
    new-instance v2, Ljava/io/FileNotFoundException;

    #@b6
    const-string/jumbo v3, "Invalid file path"

    #@b9
    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    #@bc
    throw v2

    #@bd
    .line 244
    :cond_7
    iput-object v1, p0, Ljava/io/RandomAccessFile;->path:Ljava/lang/String;

    #@bf
    .line 247
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    #@c2
    move-result-object v2

    #@c3
    iget v3, p0, Ljava/io/RandomAccessFile;->mode:I

    #@c5
    invoke-static {v2, v3}, Llibcore/io/IoBridge;->open(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    #@c8
    move-result-object v2

    #@c9
    iput-object v2, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    #@cb
    .line 248
    iget-boolean v2, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    #@cd
    if-eqz v2, :cond_8

    #@cf
    .line 250
    :try_start_0
    iget-object v2, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    #@d1
    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@d4
    .line 255
    :cond_8
    :goto_2
    iget-object v2, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    #@d6
    const-string/jumbo v3, "close"

    #@d9
    invoke-virtual {v2, v3}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    #@dc
    .line 208
    return-void

    #@dd
    .line 251
    :catch_0
    move-exception v0

    #@de
    .local v0, "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 128
    if-eqz p1, :cond_0

    #@3
    new-instance v0, Ljava/io/File;

    #@5
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@8
    :cond_0
    invoke-direct {p0, v0, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@b
    .line 126
    return-void
.end method

.method private readBytes([BII)I
    .locals 1
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
    .line 325
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    #@2
    invoke-static {v0, p1, p2, p3}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private writeBytes([BII)V
    .locals 1
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
    .line 478
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    #@2
    invoke-static {v0, p1, p2, p3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    #@5
    .line 480
    iget-boolean v0, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 481
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    #@b
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    #@e
    .line 477
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 620
    iget-object v0, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    #@2
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@5
    .line 621
    iget-object v1, p0, Ljava/io/RandomAccessFile;->closeLock:Ljava/lang/Object;

    #@7
    monitor-enter v1

    #@8
    .line 622
    :try_start_0
    iget-boolean v0, p0, Ljava/io/RandomAccessFile;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    if-eqz v0, :cond_0

    #@c
    monitor-exit v1

    #@d
    .line 623
    return-void

    #@e
    .line 625
    :cond_0
    const/4 v0, 0x1

    #@f
    :try_start_1
    iput-boolean v0, p0, Ljava/io/RandomAccessFile;->closed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    monitor-exit v1

    #@12
    .line 628
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    #@14
    if-eqz v0, :cond_1

    #@16
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    #@18
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    #@1b
    move-result v0

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 629
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    #@20
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    #@23
    .line 631
    :cond_1
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    #@25
    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    #@28
    .line 619
    return-void

    #@29
    .line 621
    :catchall_0
    move-exception v0

    #@2a
    monitor-exit v1

    #@2b
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
    .line 1157
    :try_start_0
    iget-object v0, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1158
    iget-object v0, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    #@6
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@9
    .line 1160
    :cond_0
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 1162
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@f
    .line 1155
    return-void

    #@10
    .line 1161
    :catchall_0
    move-exception v0

    #@11
    .line 1162
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@14
    .line 1161
    throw v0
.end method

.method public final getChannel()Ljava/nio/channels/FileChannel;
    .locals 4

    #@0
    .prologue
    .line 290
    monitor-enter p0

    #@1
    .line 291
    :try_start_0
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 292
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    #@7
    iget-object v1, p0, Ljava/io/RandomAccessFile;->path:Ljava/lang/String;

    #@9
    iget-boolean v2, p0, Ljava/io/RandomAccessFile;->rw:Z

    #@b
    const/4 v3, 0x1

    #@c
    invoke-static {v0, v1, v3, v2, p0}, Lsun/nio/ch/FileChannelImpl;->open(Ljava/io/FileDescriptor;Ljava/lang/String;ZZLjava/lang/Object;)Ljava/nio/channels/FileChannel;

    #@f
    move-result-object v0

    #@10
    iput-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    #@12
    .line 294
    :cond_0
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    monitor-exit p0

    #@15
    return-object v0

    #@16
    .line 290
    :catchall_0
    move-exception v0

    #@17
    monitor-exit p0

    #@18
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
    .line 267
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    #@6
    return-object v0

    #@7
    .line 268
    :cond_0
    new-instance v0, Ljava/io/IOException;

    #@9
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    #@c
    throw v0
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
    .line 520
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
    .line 521
    :catch_0
    move-exception v0

    #@e
    .line 522
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
    .line 559
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
    .line 560
    :catch_0
    move-exception v0

    #@c
    .line 561
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
    .line 314
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
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 377
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v1, v0}, Ljava/io/RandomAccessFile;->readBytes([BII)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public read([BII)I
    .locals 1
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
    .line 354
    invoke-direct {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->readBytes([BII)I

    #@3
    move-result v0

    #@4
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
    .line 652
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    #@4
    move-result v0

    #@5
    .line 653
    .local v0, "ch":I
    if-gez v0, :cond_0

    #@7
    .line 654
    new-instance v1, Ljava/io/EOFException;

    #@9
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    #@c
    throw v1

    #@d
    .line 655
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
    .line 677
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    #@3
    move-result v0

    #@4
    .line 678
    .local v0, "ch":I
    if-gez v0, :cond_0

    #@6
    .line 679
    new-instance v1, Ljava/io/EOFException;

    #@8
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    #@b
    throw v1

    #@c
    .line 680
    :cond_0
    int-to-byte v1, v0

    #@d
    return v1
.end method

.method public final readChar()C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 780
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    #@3
    move-result v0

    #@4
    .line 781
    .local v0, "ch1":I
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    #@7
    move-result v1

    #@8
    .line 782
    .local v1, "ch2":I
    or-int v2, v0, v1

    #@a
    if-gez v2, :cond_0

    #@c
    .line 783
    new-instance v2, Ljava/io/EOFException;

    #@e
    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    #@11
    throw v2

    #@12
    .line 784
    :cond_0
    shl-int/lit8 v2, v0, 0x8

    #@14
    shl-int/lit8 v3, v1, 0x0

    #@16
    add-int/2addr v2, v3

    #@17
    int-to-char v2, v2

    #@18
    return v2
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
    .line 892
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
    .line 869
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
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 393
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/io/RandomAccessFile;->readFully([BII)V

    #@5
    .line 392
    return-void
.end method

.method public final readFully([BII)V
    .locals 4
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
    .line 411
    const/4 v1, 0x0

    #@1
    .line 413
    .local v1, "n":I
    :cond_0
    add-int v2, p2, v1

    #@3
    sub-int v3, p3, v1

    #@5
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    #@8
    move-result v0

    #@9
    .line 414
    .local v0, "count":I
    if-gez v0, :cond_1

    #@b
    .line 415
    new-instance v2, Ljava/io/EOFException;

    #@d
    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    #@10
    throw v2

    #@11
    .line 416
    :cond_1
    add-int/2addr v1, v0

    #@12
    .line 417
    if-lt v1, p3, :cond_0

    #@14
    .line 410
    return-void
.end method

.method public final readInt()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 808
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    #@3
    move-result v0

    #@4
    .line 809
    .local v0, "ch1":I
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    #@7
    move-result v1

    #@8
    .line 810
    .local v1, "ch2":I
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    #@b
    move-result v2

    #@c
    .line 811
    .local v2, "ch3":I
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    #@f
    move-result v3

    #@10
    .line 812
    .local v3, "ch4":I
    or-int v4, v0, v1

    #@12
    or-int/2addr v4, v2

    #@13
    or-int/2addr v4, v3

    #@14
    if-gez v4, :cond_0

    #@16
    .line 813
    new-instance v4, Ljava/io/EOFException;

    #@18
    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    #@1b
    throw v4

    #@1c
    .line 814
    :cond_0
    shl-int/lit8 v4, v0, 0x18

    #@1e
    shl-int/lit8 v5, v1, 0x10

    #@20
    add-int/2addr v4, v5

    #@21
    shl-int/lit8 v5, v2, 0x8

    #@23
    add-int/2addr v4, v5

    #@24
    shl-int/lit8 v5, v3, 0x0

    #@26
    add-int/2addr v4, v5

    #@27
    return v4
.end method

.method public final readLine()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 920
    new-instance v4, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 921
    .local v4, "input":Ljava/lang/StringBuffer;
    const/4 v0, -0x1

    #@6
    .line 922
    .local v0, "c":I
    const/4 v1, 0x0

    #@7
    .line 924
    .local v1, "eol":Z
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    #@9
    .line 925
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    #@c
    move-result v0

    #@d
    sparse-switch v0, :sswitch_data_0

    #@10
    .line 938
    int-to-char v5, v0

    #@11
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@14
    goto :goto_0

    #@15
    .line 928
    :sswitch_0
    const/4 v1, 0x1

    #@16
    .line 929
    goto :goto_0

    #@17
    .line 931
    :sswitch_1
    const/4 v1, 0x1

    #@18
    .line 932
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    #@1b
    move-result-wide v2

    #@1c
    .line 933
    .local v2, "cur":J
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    #@1f
    move-result v5

    #@20
    const/16 v6, 0xa

    #@22
    if-eq v5, v6, :cond_0

    #@24
    .line 934
    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    #@27
    goto :goto_0

    #@28
    .line 943
    .end local v2    # "cur":J
    :cond_1
    const/4 v5, -0x1

    #@29
    if-ne v0, v5, :cond_2

    #@2b
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    #@2e
    move-result v5

    #@2f
    if-nez v5, :cond_2

    #@31
    .line 944
    const/4 v5, 0x0

    #@32
    return-object v5

    #@33
    .line 946
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@36
    move-result-object v5

    #@37
    return-object v5

    #@38
    .line 925
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method public final readLong()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 846
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    #@3
    move-result v0

    #@4
    int-to-long v0, v0

    #@5
    const/16 v2, 0x20

    #@7
    shl-long/2addr v0, v2

    #@8
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    #@b
    move-result v2

    #@c
    int-to-long v2, v2

    #@d
    const-wide v4, 0xffffffffL

    #@12
    and-long/2addr v2, v4

    #@13
    add-long/2addr v0, v2

    #@14
    return-wide v0
.end method

.method public final readShort()S
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 724
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    #@3
    move-result v0

    #@4
    .line 725
    .local v0, "ch1":I
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    #@7
    move-result v1

    #@8
    .line 726
    .local v1, "ch2":I
    or-int v2, v0, v1

    #@a
    if-gez v2, :cond_0

    #@c
    .line 727
    new-instance v2, Ljava/io/EOFException;

    #@e
    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    #@11
    throw v2

    #@12
    .line 728
    :cond_0
    shl-int/lit8 v2, v0, 0x8

    #@14
    shl-int/lit8 v3, v1, 0x0

    #@16
    add-int/2addr v2, v3

    #@17
    int-to-short v2, v2

    #@18
    return v2
.end method

.method public final readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 975
    invoke-static {p0}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
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
    .line 697
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    #@3
    move-result v0

    #@4
    .line 698
    .local v0, "ch":I
    if-gez v0, :cond_0

    #@6
    .line 699
    new-instance v1, Ljava/io/EOFException;

    #@8
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    #@b
    throw v1

    #@c
    .line 700
    :cond_0
    return v0
.end method

.method public final readUnsignedShort()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 752
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    #@3
    move-result v0

    #@4
    .line 753
    .local v0, "ch1":I
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    #@7
    move-result v1

    #@8
    .line 754
    .local v1, "ch2":I
    or-int v2, v0, v1

    #@a
    if-gez v2, :cond_0

    #@c
    .line 755
    new-instance v2, Ljava/io/EOFException;

    #@e
    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    #@11
    throw v2

    #@12
    .line 756
    :cond_0
    shl-int/lit8 v2, v0, 0x8

    #@14
    shl-int/lit8 v3, v1, 0x0

    #@16
    add-int/2addr v2, v3

    #@17
    return v2
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
    .line 541
    const-wide/16 v2, 0x0

    #@2
    cmp-long v1, p1, v2

    #@4
    if-gez v1, :cond_0

    #@6
    .line 542
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
    .line 545
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
    .line 540
    return-void

    #@2a
    .line 546
    :catch_0
    move-exception v0

    #@2b
    .line 547
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
    .line 585
    const-wide/16 v4, 0x0

    #@2
    cmp-long v1, p1, v4

    #@4
    if-gez v1, :cond_0

    #@6
    .line 586
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v4, "newLength < 0"

    #@b
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 589
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
    .line 594
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    #@19
    move-result-wide v2

    #@1a
    .line 595
    .local v2, "filePointer":J
    cmp-long v1, v2, p1

    #@1c
    if-lez v1, :cond_1

    #@1e
    .line 596
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    #@21
    .line 599
    :cond_1
    iget-boolean v1, p0, Ljava/io/RandomAccessFile;->syncMetadata:Z

    #@23
    if-eqz v1, :cond_2

    #@25
    .line 600
    iget-object v1, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    #@27
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    #@2a
    .line 584
    :cond_2
    return-void

    #@2b
    .line 590
    .end local v2    # "filePointer":J
    :catch_0
    move-exception v0

    #@2c
    .line 591
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@2f
    move-result-object v1

    #@30
    throw v1
.end method

.method public skipBytes(I)I
    .locals 8
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 441
    if-gtz p1, :cond_0

    #@3
    .line 442
    return v6

    #@4
    .line 444
    :cond_0
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    #@7
    move-result-wide v4

    #@8
    .line 445
    .local v4, "pos":J
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    #@b
    move-result-wide v0

    #@c
    .line 446
    .local v0, "len":J
    int-to-long v6, p1

    #@d
    add-long v2, v4, v6

    #@f
    .line 447
    .local v2, "newpos":J
    cmp-long v6, v2, v0

    #@11
    if-lez v6, :cond_1

    #@13
    .line 448
    move-wide v2, v0

    #@14
    .line 450
    :cond_1
    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    #@17
    .line 453
    sub-long v6, v2, v4

    #@19
    long-to-int v6, v6

    #@1a
    return v6
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 466
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    #@3
    and-int/lit16 v1, p1, 0xff

    #@5
    int-to-byte v1, v1

    #@6
    aput-byte v1, v0, v2

    #@8
    .line 467
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    #@a
    const/4 v1, 0x1

    #@b
    invoke-virtual {p0, v0, v2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    #@e
    .line 465
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 493
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, p1, v1, v0}, Ljava/io/RandomAccessFile;->writeBytes([BII)V

    #@5
    .line 492
    return-void
.end method

.method public write([BII)V
    .locals 0
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
    .line 506
    invoke-direct {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->writeBytes([BII)V

    #@3
    .line 505
    return-void
.end method

.method public final writeBoolean(Z)V
    .locals 1
    .param p1, "v"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 989
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    #@6
    .line 988
    return-void

    #@7
    .line 989
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public final writeByte(I)V
    .locals 0
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1001
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    #@3
    .line 1000
    return-void
.end method

.method public final writeBytes(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1106
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v1

    #@5
    .line 1107
    .local v1, "len":I
    new-array v0, v1, [B

    #@7
    .line 1108
    .local v0, "b":[B
    invoke-virtual {p1, v2, v1, v0, v2}, Ljava/lang/String;->getBytes(II[BI)V

    #@a
    .line 1109
    invoke-direct {p0, v0, v2, v1}, Ljava/io/RandomAccessFile;->writeBytes([BII)V

    #@d
    .line 1105
    return-void
.end method

.method public final writeChar(I)V
    .locals 1
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1027
    ushr-int/lit8 v0, p1, 0x8

    #@2
    and-int/lit16 v0, v0, 0xff

    #@4
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    #@7
    .line 1028
    ushr-int/lit8 v0, p1, 0x0

    #@9
    and-int/lit16 v0, v0, 0xff

    #@b
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    #@e
    .line 1026
    return-void
.end method

.method public final writeChars(Ljava/lang/String;)V
    .locals 9
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1123
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v3

    #@5
    .line 1124
    .local v3, "clen":I
    mul-int/lit8 v1, v3, 0x2

    #@7
    .line 1125
    .local v1, "blen":I
    new-array v0, v1, [B

    #@9
    .line 1126
    .local v0, "b":[B
    new-array v2, v3, [C

    #@b
    .line 1127
    .local v2, "c":[C
    invoke-virtual {p1, v8, v3, v2, v8}, Ljava/lang/String;->getChars(II[CI)V

    #@e
    .line 1128
    const/4 v4, 0x0

    #@f
    .local v4, "i":I
    const/4 v5, 0x0

    #@10
    .local v5, "j":I
    move v6, v5

    #@11
    .end local v5    # "j":I
    .local v6, "j":I
    :goto_0
    if-ge v4, v3, :cond_0

    #@13
    .line 1129
    add-int/lit8 v5, v6, 0x1

    #@15
    .end local v6    # "j":I
    .restart local v5    # "j":I
    aget-char v7, v2, v4

    #@17
    ushr-int/lit8 v7, v7, 0x8

    #@19
    int-to-byte v7, v7

    #@1a
    aput-byte v7, v0, v6

    #@1c
    .line 1130
    add-int/lit8 v6, v5, 0x1

    #@1e
    .end local v5    # "j":I
    .restart local v6    # "j":I
    aget-char v7, v2, v4

    #@20
    ushr-int/lit8 v7, v7, 0x0

    #@22
    int-to-byte v7, v7

    #@23
    aput-byte v7, v0, v5

    #@25
    .line 1128
    add-int/lit8 v4, v4, 0x1

    #@27
    goto :goto_0

    #@28
    .line 1132
    :cond_0
    invoke-direct {p0, v0, v8, v1}, Ljava/io/RandomAccessFile;->writeBytes([BII)V

    #@2b
    .line 1122
    return-void
.end method

.method public final writeDouble(D)V
    .locals 3
    .param p1, "v"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1093
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->writeLong(J)V

    #@7
    .line 1092
    return-void
.end method

.method public final writeFloat(F)V
    .locals 1
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1078
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    #@7
    .line 1077
    return-void
.end method

.method public final writeInt(I)V
    .locals 1
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1040
    ushr-int/lit8 v0, p1, 0x18

    #@2
    and-int/lit16 v0, v0, 0xff

    #@4
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    #@7
    .line 1041
    ushr-int/lit8 v0, p1, 0x10

    #@9
    and-int/lit16 v0, v0, 0xff

    #@b
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    #@e
    .line 1042
    ushr-int/lit8 v0, p1, 0x8

    #@10
    and-int/lit16 v0, v0, 0xff

    #@12
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    #@15
    .line 1043
    ushr-int/lit8 v0, p1, 0x0

    #@17
    and-int/lit16 v0, v0, 0xff

    #@19
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    #@1c
    .line 1039
    return-void
.end method

.method public final writeLong(J)V
    .locals 3
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1055
    const/16 v0, 0x38

    #@2
    ushr-long v0, p1, v0

    #@4
    long-to-int v0, v0

    #@5
    and-int/lit16 v0, v0, 0xff

    #@7
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    #@a
    .line 1056
    const/16 v0, 0x30

    #@c
    ushr-long v0, p1, v0

    #@e
    long-to-int v0, v0

    #@f
    and-int/lit16 v0, v0, 0xff

    #@11
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    #@14
    .line 1057
    const/16 v0, 0x28

    #@16
    ushr-long v0, p1, v0

    #@18
    long-to-int v0, v0

    #@19
    and-int/lit16 v0, v0, 0xff

    #@1b
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    #@1e
    .line 1058
    const/16 v0, 0x20

    #@20
    ushr-long v0, p1, v0

    #@22
    long-to-int v0, v0

    #@23
    and-int/lit16 v0, v0, 0xff

    #@25
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    #@28
    .line 1059
    const/16 v0, 0x18

    #@2a
    ushr-long v0, p1, v0

    #@2c
    long-to-int v0, v0

    #@2d
    and-int/lit16 v0, v0, 0xff

    #@2f
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    #@32
    .line 1060
    const/16 v0, 0x10

    #@34
    ushr-long v0, p1, v0

    #@36
    long-to-int v0, v0

    #@37
    and-int/lit16 v0, v0, 0xff

    #@39
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    #@3c
    .line 1061
    const/16 v0, 0x8

    #@3e
    ushr-long v0, p1, v0

    #@40
    long-to-int v0, v0

    #@41
    and-int/lit16 v0, v0, 0xff

    #@43
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    #@46
    .line 1062
    const/4 v0, 0x0

    #@47
    ushr-long v0, p1, v0

    #@49
    long-to-int v0, v0

    #@4a
    and-int/lit16 v0, v0, 0xff

    #@4c
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    #@4f
    .line 1054
    return-void
.end method

.method public final writeShort(I)V
    .locals 1
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1013
    ushr-int/lit8 v0, p1, 0x8

    #@2
    and-int/lit16 v0, v0, 0xff

    #@4
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    #@7
    .line 1014
    ushr-int/lit8 v0, p1, 0x0

    #@9
    and-int/lit16 v0, v0, 0xff

    #@b
    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    #@e
    .line 1012
    return-void
.end method

.method public final writeUTF(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1152
    invoke-static {p1, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;Ljava/io/DataOutput;)I

    #@3
    .line 1151
    return-void
.end method
