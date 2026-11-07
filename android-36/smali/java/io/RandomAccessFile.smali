.class public Ljava/io/RandomAccessFile;
.super Ljava/lang/Object;
.source "RandomAccessFile.java"

# interfaces
.implements Ljava/io/DataOutput;
.implements Ljava/io/DataInput;
.implements Ljava/io/Closeable;


# static fields
.field private static final greylist-max-o FLUSH_FDATASYNC:I = 0x2

.field private static final greylist-max-o FLUSH_FSYNC:I = 0x1

.field private static final greylist-max-o FLUSH_NONE:I


# instance fields
.field private greylist-max-o channel:Ljava/nio/channels/FileChannel;

.field private greylist-max-o closeLock:Ljava/lang/Object;

.field private volatile greylist-max-o closed:Z

.field private greylist-max-r fd:Ljava/io/FileDescriptor;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private greylist-max-o flushAfterWrite:I

.field private final greylist-max-o guard:Ldalvik/system/CloseGuard;
    .annotation runtime Ldalvik/annotation/optimization/ReachabilitySensitive;
    .end annotation
.end field

.field private final greylist-max-o ioTracker:Llibcore/io/IoTracker;

.field private greylist-max-o mode:I

.field private final greylist-max-o path:Ljava/lang/String;

.field private greylist-max-o rw:Z

.field private final greylist-max-o scratch:[B


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/File;Ljava/lang/String;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 237
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;Z)V

    .line 238
    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/File;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "setCloExecFlag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    nop

    .line 75
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    .line 76
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/RandomAccessFile;->flushAfterWrite:I

    .line 89
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    .line 98
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Ljava/io/RandomAccessFile;->closeLock:Ljava/lang/Object;

    .line 99
    iput-boolean v0, p0, Ljava/io/RandomAccessFile;->closed:Z

    .line 106
    new-instance v0, Llibcore/io/IoTracker;

    invoke-direct {v0}, Llibcore/io/IoTracker;-><init>()V

    iput-object v0, p0, Ljava/io/RandomAccessFile;->ioTracker:Llibcore/io/IoTracker;

    .line 250
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "name":Ljava/lang/String;
    :cond_2c
    const/4 v0, -0x1

    .line 252
    .local v0, "imode":I
    const-string v2, "r"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 253
    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    goto :goto_67

    .line 254
    :cond_38
    const-string v2, "rw"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 257
    sget v2, Landroid/system/OsConstants;->O_RDWR:I

    sget v3, Landroid/system/OsConstants;->O_CREAT:I

    or-int v0, v2, v3

    .line 258
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/io/RandomAccessFile;->rw:Z

    .line 259
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_67

    .line 260
    const-string v3, "rws"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 267
    iput v2, p0, Ljava/io/RandomAccessFile;->flushAfterWrite:I

    goto :goto_67

    .line 268
    :cond_5b
    const-string v2, "rwd"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 271
    iput v4, p0, Ljava/io/RandomAccessFile;->flushAfterWrite:I

    goto :goto_67

    .line 273
    :cond_66
    const/4 v0, -0x1

    .line 277
    :cond_67
    :goto_67
    if-ltz v0, :cond_a2

    .line 293
    if-eqz v1, :cond_9a

    .line 298
    invoke-virtual {p1}, Ljava/io/File;->isInvalid()Z

    move-result v2

    if-nez v2, :cond_92

    .line 301
    iput-object v1, p0, Ljava/io/RandomAccessFile;->path:Ljava/lang/String;

    .line 303
    if-eqz p3, :cond_79

    sget v2, Landroid/system/OsConstants;->O_CLOEXEC:I

    or-int/2addr v2, v0

    goto :goto_7a

    :cond_79
    move v2, v0

    .line 304
    .end local v0    # "imode":I
    .local v2, "imode":I
    :goto_7a
    iput v2, p0, Ljava/io/RandomAccessFile;->mode:I

    .line 307
    invoke-static {v1, v2}, Llibcore/io/IoBridge;->open(Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    .line 308
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p0}, Llibcore/io/IoUtils;->setFdOwner(Ljava/io/FileDescriptor;Ljava/lang/Object;)V

    .line 309
    invoke-direct {p0}, Ljava/io/RandomAccessFile;->maybeSync()V

    .line 310
    iget-object v0, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    const-string v3, "close"

    invoke-virtual {v0, v3}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 312
    return-void

    .line 299
    .end local v2    # "imode":I
    .restart local v0    # "imode":I
    :cond_92
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string v3, "Invalid file path"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 296
    :cond_9a
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "file == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
    :cond_a2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal mode \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" must be one of \"r\", \"rw\", \"rws\", or \"rwd\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 154
    if-eqz p1, :cond_8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-direct {p0, v0, p2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method private greylist-max-o maybeSync()V
    .registers 3

    .line 316
    iget v0, p0, Ljava/io/RandomAccessFile;->flushAfterWrite:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 318
    :try_start_5
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_c

    .line 319
    :catch_b
    move-exception v0

    .line 321
    :goto_c
    goto :goto_19

    .line 322
    :cond_d
    iget v0, p0, Ljava/io/RandomAccessFile;->flushAfterWrite:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    .line 324
    :try_start_12
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Landroid/system/Os;->fdatasync(Ljava/io/FileDescriptor;)V
    :try_end_17
    .catch Landroid/system/ErrnoException; {:try_start_12 .. :try_end_17} :catch_18

    .line 327
    goto :goto_19

    .line 325
    :catch_18
    move-exception v0

    .line 329
    :cond_19
    :goto_19
    return-void
.end method

.method private greylist-max-o readBytes([BII)I
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Ljava/io/RandomAccessFile;->ioTracker:Llibcore/io/IoTracker;

    sget-object v1, Llibcore/io/IoTracker$Mode;->READ:Llibcore/io/IoTracker$Mode;

    invoke-virtual {v0, p3, v1}, Llibcore/io/IoTracker;->trackIo(ILlibcore/io/IoTracker$Mode;)V

    .line 405
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2, p3}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    return v0
.end method

.method private greylist-max-o writeBytes([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 563
    iget-object v0, p0, Ljava/io/RandomAccessFile;->ioTracker:Llibcore/io/IoTracker;

    sget-object v1, Llibcore/io/IoTracker$Mode;->WRITE:Llibcore/io/IoTracker$Mode;

    invoke-virtual {v0, p3, v1}, Llibcore/io/IoTracker;->trackIo(ILlibcore/io/IoTracker$Mode;)V

    .line 564
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0, p1, p2, p3}, Llibcore/io/IoBridge;->write(Ljava/io/FileDescriptor;[BII)V

    .line 565
    invoke-direct {p0}, Ljava/io/RandomAccessFile;->maybeSync()V

    .line 567
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 714
    iget-object v0, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 715
    iget-object v0, p0, Ljava/io/RandomAccessFile;->closeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 716
    :try_start_8
    iget-boolean v1, p0, Ljava/io/RandomAccessFile;->closed:Z

    if-eqz v1, :cond_e

    .line 717
    monitor-exit v0

    return-void

    .line 719
    :cond_e
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/io/RandomAccessFile;->closed:Z

    .line 720
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_29

    .line 723
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_23

    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 724
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 726
    :cond_23
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 728
    return-void

    .line 720
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1255
    :try_start_0
    iget-object v0, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 1256
    iget-object v0, p0, Ljava/io/RandomAccessFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 1258
    :cond_9
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_11

    .line 1260
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1261
    nop

    .line 1262
    return-void

    .line 1260
    :catchall_11
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1261
    throw v0
.end method

.method public final whitelist test-api getChannel()Ljava/nio/channels/FileChannel;
    .registers 5

    .line 366
    monitor-enter p0

    .line 367
    :try_start_1
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_12

    .line 368
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    iget-object v1, p0, Ljava/io/RandomAccessFile;->path:Ljava/lang/String;

    iget-boolean v2, p0, Ljava/io/RandomAccessFile;->rw:Z

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2, p0}, Lsun/nio/ch/FileChannelImpl;->open(Ljava/io/FileDescriptor;Ljava/lang/String;ZZLjava/lang/Object;)Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    .line 370
    :cond_12
    iget-object v0, p0, Ljava/io/RandomAccessFile;->channel:Ljava/nio/channels/FileChannel;

    monitor-exit p0

    return-object v0

    .line 371
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public final whitelist test-api getFD()Ljava/io/FileDescriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_7

    .line 342
    iget-object v0, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    return-object v0

    .line 344
    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getFilePointer()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 605
    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    sget v2, Landroid/system/OsConstants;->SEEK_CUR:I

    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v3, v4, v2}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    move-result-wide v0
    :try_end_c
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_c} :catch_d

    return-wide v0

    .line 606
    :catch_d
    move-exception v0

    .line 607
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api length()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 653
    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    iget-wide v0, v0, Landroid/system/StructStat;->st_size:J
    :try_end_a
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_a} :catch_b

    return-wide v0

    .line 654
    :catch_b
    move-exception v0

    .line 655
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    aget-byte v0, v0, v2

    and-int/lit16 v1, v0, 0xff

    :cond_11
    return v1
.end method

.method public whitelist test-api read([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 457
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Ljava/io/RandomAccessFile;->readBytes([BII)I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    invoke-direct {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->readBytes([BII)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api readBoolean()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 748
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 749
    .local v0, "ch":I
    if-ltz v0, :cond_c

    .line 751
    if-eqz v0, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1

    .line 750
    :cond_c
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public final whitelist test-api readByte()B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 773
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 774
    .local v0, "ch":I
    if-ltz v0, :cond_8

    .line 776
    int-to-byte v1, v0

    return v1

    .line 775
    :cond_8
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public final whitelist test-api readChar()C
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 876
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 877
    .local v0, "ch1":I
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    .line 878
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-ltz v2, :cond_13

    .line 880
    shl-int/lit8 v2, v0, 0x8

    shl-int/lit8 v3, v1, 0x0

    add-int/2addr v2, v3

    int-to-char v2, v2

    return v2

    .line 879
    :cond_13
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public final whitelist test-api readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 988
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 965
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final whitelist test-api readFully([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 473
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 474
    return-void
.end method

.method public final whitelist test-api readFully([BII)V
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    const/4 v0, 0x0

    .line 493
    .local v0, "n":I
    :cond_1
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 494
    .local v1, "count":I
    if-ltz v1, :cond_f

    .line 496
    add-int/2addr v0, v1

    .line 497
    .end local v1    # "count":I
    if-lt v0, p3, :cond_1

    .line 498
    return-void

    .line 495
    .restart local v1    # "count":I
    :cond_f
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public final whitelist test-api readInt()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 904
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 905
    .local v0, "ch1":I
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    .line 906
    .local v1, "ch2":I
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v2

    .line 907
    .local v2, "ch3":I
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    .line 908
    .local v3, "ch4":I
    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-ltz v4, :cond_22

    .line 910
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    add-int/2addr v4, v5

    shl-int/lit8 v5, v3, 0x0

    add-int/2addr v4, v5

    return v4

    .line 909
    :cond_22
    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4
.end method

.method public final whitelist test-api readLine()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1016
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1017
    .local v0, "input":Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 1018
    .local v1, "c":I
    const/4 v2, 0x0

    .line 1020
    .local v2, "eol":Z
    :cond_7
    :goto_7
    if-nez v2, :cond_29

    .line 1021
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v3

    move v1, v3

    sparse-switch v3, :sswitch_data_3a

    .line 1034
    int-to-char v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1035
    goto :goto_7

    .line 1027
    :sswitch_16
    const/4 v2, 0x1

    .line 1028
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    .line 1029
    .local v3, "cur":J
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_7

    .line 1030
    invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_7

    .line 1024
    .end local v3    # "cur":J
    :sswitch_27
    const/4 v2, 0x1

    .line 1025
    goto :goto_7

    .line 1039
    :cond_29
    const/4 v3, -0x1

    if-ne v1, v3, :cond_34

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-nez v3, :cond_34

    .line 1040
    const/4 v3, 0x0

    return-object v3

    .line 1042
    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    nop

    :sswitch_data_3a
    .sparse-switch
        -0x1 -> :sswitch_27
        0xa -> :sswitch_27
        0xd -> :sswitch_16
    .end sparse-switch
.end method

.method public final whitelist test-api readLong()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 942
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final whitelist test-api readShort()S
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 820
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 821
    .local v0, "ch1":I
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    .line 822
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-ltz v2, :cond_13

    .line 824
    shl-int/lit8 v2, v0, 0x8

    shl-int/lit8 v3, v1, 0x0

    add-int/2addr v2, v3

    int-to-short v2, v2

    return v2

    .line 823
    :cond_13
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public final whitelist test-api readUTF()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1071
    invoke-static {p0}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api readUnsignedByte()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 793
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 794
    .local v0, "ch":I
    if-ltz v0, :cond_7

    .line 796
    return v0

    .line 795
    :cond_7
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1
.end method

.method public final whitelist test-api readUnsignedShort()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 848
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 849
    .local v0, "ch1":I
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    .line 850
    .local v1, "ch2":I
    or-int v2, v0, v1

    if-ltz v2, :cond_12

    .line 852
    shl-int/lit8 v2, v0, 0x8

    shl-int/lit8 v3, v1, 0x0

    add-int/2addr v2, v3

    return v2

    .line 851
    :cond_12
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
.end method

.method public whitelist test-api seek(J)V
    .registers 6
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 627
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1c

    .line 635
    :try_start_6
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    sget v2, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-interface {v0, v1, p1, p2, v2}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    .line 636
    iget-object v0, p0, Ljava/io/RandomAccessFile;->ioTracker:Llibcore/io/IoTracker;

    invoke-virtual {v0}, Llibcore/io/IoTracker;->reset()V
    :try_end_14
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_14} :catch_16

    .line 639
    nop

    .line 642
    return-void

    .line 637
    :catch_16
    move-exception v0

    .line 638
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 630
    .end local v0    # "errnoException":Landroid/system/ErrnoException;
    :cond_1c
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setLength(J)V
    .registers 6
    .param p1, "newLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 681
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_23

    .line 685
    :try_start_6
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-object v1, p0, Ljava/io/RandomAccessFile;->fd:Ljava/io/FileDescriptor;

    invoke-interface {v0, v1, p1, p2}, Llibcore/io/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_d} :catch_1d

    .line 688
    nop

    .line 690
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 691
    .local v0, "filePointer":J
    cmp-long v2, v0, p1

    if-lez v2, :cond_19

    .line 692
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 694
    :cond_19
    invoke-direct {p0}, Ljava/io/RandomAccessFile;->maybeSync()V

    .line 696
    return-void

    .line 686
    .end local v0    # "filePointer":J
    :catch_1d
    move-exception v0

    .line 687
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 682
    .end local v0    # "errnoException":Landroid/system/ErrnoException;
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newLength < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api skipBytes(I)I
    .registers 10
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 521
    if-gtz p1, :cond_4

    .line 522
    const/4 v0, 0x0

    return v0

    .line 524
    :cond_4
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    .line 525
    .local v0, "pos":J
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    .line 526
    .local v2, "len":J
    int-to-long v4, p1

    add-long/2addr v4, v0

    .line 527
    .local v4, "newpos":J
    cmp-long v6, v4, v2

    if-lez v6, :cond_13

    .line 528
    move-wide v4, v2

    .line 530
    :cond_13
    invoke-virtual {p0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 533
    sub-long v6, v4, v0

    long-to-int v6, v6

    return v6
.end method

.method public whitelist test-api write(I)V
    .registers 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 548
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 549
    iget-object v0, p0, Ljava/io/RandomAccessFile;->scratch:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 551
    return-void
.end method

.method public whitelist test-api write([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 577
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Ljava/io/RandomAccessFile;->writeBytes([BII)V

    .line 578
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 590
    invoke-direct {p0, p1, p2, p3}, Ljava/io/RandomAccessFile;->writeBytes([BII)V

    .line 591
    return-void
.end method

.method public final whitelist test-api writeBoolean(Z)V
    .registers 2
    .param p1, "v"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1085
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1087
    return-void
.end method

.method public final whitelist test-api writeByte(I)V
    .registers 2
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1097
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1099
    return-void
.end method

.method public final whitelist test-api writeBytes(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1203
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1204
    .local v0, "len":I
    new-array v1, v0, [B

    .line 1205
    .local v1, "b":[B
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getBytes(II[BI)V

    .line 1206
    invoke-direct {p0, v1, v2, v0}, Ljava/io/RandomAccessFile;->writeBytes([BII)V

    .line 1207
    return-void
.end method

.method public final whitelist test-api writeChar(I)V
    .registers 3
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1123
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1124
    ushr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1126
    return-void
.end method

.method public final whitelist test-api writeChars(Ljava/lang/String;)V
    .registers 11
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1220
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1221
    .local v0, "clen":I
    mul-int/lit8 v1, v0, 0x2

    .line 1222
    .local v1, "blen":I
    new-array v2, v1, [B

    .line 1223
    .local v2, "b":[B
    new-array v3, v0, [C

    .line 1224
    .local v3, "c":[C
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1225
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_10
    if-ge v5, v0, :cond_26

    .line 1226
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .local v7, "j":I
    aget-char v8, v3, v5

    ushr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v2, v6

    .line 1227
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    aget-char v8, v3, v5

    ushr-int/2addr v8, v4

    int-to-byte v8, v8

    aput-byte v8, v2, v7

    .line 1225
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 1229
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_26
    invoke-direct {p0, v2, v4, v1}, Ljava/io/RandomAccessFile;->writeBytes([BII)V

    .line 1230
    return-void
.end method

.method public final whitelist test-api writeDouble(D)V
    .registers 5
    .param p1, "v"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1189
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 1190
    return-void
.end method

.method public final whitelist test-api writeFloat(F)V
    .registers 3
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1174
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1175
    return-void
.end method

.method public final whitelist test-api writeInt(I)V
    .registers 3
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1136
    ushr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1137
    ushr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1138
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1139
    ushr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1141
    return-void
.end method

.method public final whitelist test-api writeLong(J)V
    .registers 5
    .param p1, "v"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1151
    const/16 v0, 0x38

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1152
    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1153
    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1154
    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1155
    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1156
    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1157
    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1158
    const/4 v0, 0x0

    ushr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1160
    return-void
.end method

.method public final whitelist test-api writeShort(I)V
    .registers 3
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1109
    ushr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1110
    ushr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/RandomAccessFile;->write(I)V

    .line 1112
    return-void
.end method

.method public final whitelist test-api writeUTF(Ljava/lang/String;)V
    .registers 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1249
    invoke-static {p1, p0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;Ljava/io/DataOutput;)I

    .line 1250
    return-void
.end method
