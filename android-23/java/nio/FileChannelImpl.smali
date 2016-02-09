.class final Ljava/nio/FileChannelImpl;
.super Ljava/nio/channels/FileChannel;
.source "FileChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/FileChannelImpl$FileLockImpl;,
        Ljava/nio/FileChannelImpl$1;
    }
.end annotation


# static fields
.field private static final LOCK_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final fd:Ljava/io/FileDescriptor;

.field private final ioObject:Ljava/io/Closeable;

.field private final locks:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation
.end field

.field private final mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 47
    new-instance v0, Ljava/nio/FileChannelImpl$1;

    #@2
    invoke-direct {v0}, Ljava/nio/FileChannelImpl$1;-><init>()V

    #@5
    sput-object v0, Ljava/nio/FileChannelImpl;->LOCK_COMPARATOR:Ljava/util/Comparator;

    #@7
    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/io/Closeable;Ljava/io/FileDescriptor;I)V
    .locals 2
    .param p1, "ioObject"    # Ljava/io/Closeable;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "mode"    # I

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/nio/channels/FileChannel;-><init>()V

    #@3
    .line 60
    new-instance v0, Ljava/util/TreeSet;

    #@5
    sget-object v1, Ljava/nio/FileChannelImpl;->LOCK_COMPARATOR:Ljava/util/Comparator;

    #@7
    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    #@a
    iput-object v0, p0, Ljava/nio/FileChannelImpl;->locks:Ljava/util/SortedSet;

    #@c
    .line 67
    iput-object p2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@e
    .line 68
    iput-object p1, p0, Ljava/nio/FileChannelImpl;->ioObject:Ljava/io/Closeable;

    #@10
    .line 69
    iput p3, p0, Ljava/nio/FileChannelImpl;->mode:I

    #@12
    .line 66
    return-void
.end method

.method private declared-synchronized addLock(Ljava/nio/channels/FileLock;)V
    .locals 8
    .param p1, "lock"    # Ljava/nio/channels/FileLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/OverlappingFileLockException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 545
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    #@4
    move-result-wide v4

    #@5
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->size()J

    #@8
    move-result-wide v6

    #@9
    add-long v2, v4, v6

    #@b
    .line 546
    .local v2, "lockEnd":J
    iget-object v4, p0, Ljava/nio/FileChannelImpl;->locks:Ljava/util/SortedSet;

    #@d
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "existingLock$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_1

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Ljava/nio/channels/FileLock;

    #@1d
    .line 547
    .local v0, "existingLock":Ljava/nio/channels/FileLock;
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->position()J

    #@20
    move-result-wide v4

    #@21
    cmp-long v4, v4, v2

    #@23
    if-lez v4, :cond_2

    #@25
    .line 556
    .end local v0    # "existingLock":Ljava/nio/channels/FileLock;
    :cond_1
    iget-object v4, p0, Ljava/nio/FileChannelImpl;->locks:Ljava/util/SortedSet;

    #@27
    invoke-interface {v4, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    monitor-exit p0

    #@2b
    .line 544
    return-void

    #@2c
    .line 552
    .restart local v0    # "existingLock":Ljava/nio/channels/FileLock;
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    #@2f
    move-result-wide v4

    #@30
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->size()J

    #@33
    move-result-wide v6

    #@34
    invoke-virtual {v0, v4, v5, v6, v7}, Ljava/nio/channels/FileLock;->overlaps(JJ)Z

    #@37
    move-result v4

    #@38
    if-eqz v4, :cond_0

    #@3a
    .line 553
    new-instance v4, Ljava/nio/channels/OverlappingFileLockException;

    #@3c
    invoke-direct {v4}, Ljava/nio/channels/OverlappingFileLockException;-><init>()V

    #@3f
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    .end local v0    # "existingLock":Ljava/nio/channels/FileLock;
    .end local v1    # "existingLock$iterator":Ljava/util/Iterator;
    .end local v2    # "lockEnd":J
    :catchall_0
    move-exception v4

    #@41
    monitor-exit p0

    #@42
    throw v4
.end method

.method private basicLock(JJZZ)Ljava/nio/channels/FileLock;
    .locals 11
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z
    .param p6, "wait"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 95
    iget v1, p0, Ljava/nio/FileChannelImpl;->mode:I

    #@2
    sget v2, Landroid/system/OsConstants;->O_ACCMODE:I

    #@4
    and-int v7, v1, v2

    #@6
    .line 96
    .local v7, "accessMode":I
    sget v1, Landroid/system/OsConstants;->O_RDONLY:I

    #@8
    if-ne v7, v1, :cond_0

    #@a
    .line 97
    if-nez p5, :cond_1

    #@c
    .line 98
    new-instance v1, Ljava/nio/channels/NonWritableChannelException;

    #@e
    invoke-direct {v1}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    #@11
    throw v1

    #@12
    .line 100
    :cond_0
    sget v1, Landroid/system/OsConstants;->O_WRONLY:I

    #@14
    if-ne v7, v1, :cond_1

    #@16
    .line 101
    if-eqz p5, :cond_1

    #@18
    .line 102
    new-instance v1, Ljava/nio/channels/NonReadableChannelException;

    #@1a
    invoke-direct {v1}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    #@1d
    throw v1

    #@1e
    .line 106
    :cond_1
    const-wide/16 v2, 0x0

    #@20
    cmp-long v1, p1, v2

    #@22
    if-ltz v1, :cond_2

    #@24
    const-wide/16 v2, 0x0

    #@26
    cmp-long v1, p3, v2

    #@28
    if-gez v1, :cond_3

    #@2a
    .line 107
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@2c
    new-instance v2, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v3, "position="

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    const-string/jumbo v3, " size="

    #@3f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v1

    #@4f
    .line 110
    :cond_3
    new-instance v0, Ljava/nio/FileChannelImpl$FileLockImpl;

    #@51
    move-object v1, p0

    #@52
    move-wide v2, p1

    #@53
    move-wide v4, p3

    #@54
    move/from16 v6, p5

    #@56
    invoke-direct/range {v0 .. v6}, Ljava/nio/FileChannelImpl$FileLockImpl;-><init>(Ljava/nio/channels/FileChannel;JJZ)V

    #@59
    .line 111
    .local v0, "pendingLock":Ljava/nio/channels/FileLock;
    invoke-direct {p0, v0}, Ljava/nio/FileChannelImpl;->addLock(Ljava/nio/channels/FileLock;)V

    #@5c
    .line 113
    new-instance v9, Landroid/system/StructFlock;

    #@5e
    invoke-direct {v9}, Landroid/system/StructFlock;-><init>()V

    #@61
    .line 114
    .local v9, "flock":Landroid/system/StructFlock;
    if-eqz p5, :cond_5

    #@63
    sget v1, Landroid/system/OsConstants;->F_RDLCK:I

    #@65
    :goto_0
    int-to-short v1, v1

    #@66
    iput-short v1, v9, Landroid/system/StructFlock;->l_type:S

    #@68
    .line 115
    sget v1, Landroid/system/OsConstants;->SEEK_SET:I

    #@6a
    int-to-short v1, v1

    #@6b
    iput-short v1, v9, Landroid/system/StructFlock;->l_whence:S

    #@6d
    .line 116
    iput-wide p1, v9, Landroid/system/StructFlock;->l_start:J

    #@6f
    .line 117
    invoke-static {p3, p4}, Ljava/nio/FileChannelImpl;->translateLockLength(J)J

    #@72
    move-result-wide v2

    #@73
    iput-wide v2, v9, Landroid/system/StructFlock;->l_len:J

    #@75
    .line 119
    const/4 v10, 0x0

    #@76
    .line 121
    .local v10, "success":Z
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@78
    iget-object v3, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@7a
    if-eqz p6, :cond_6

    #@7c
    sget v1, Landroid/system/OsConstants;->F_SETLKW64:I

    #@7e
    :goto_1
    invoke-interface {v2, v3, v1, v9}, Llibcore/io/Os;->fcntlFlock(Ljava/io/FileDescriptor;ILandroid/system/StructFlock;)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@81
    move-result v1

    #@82
    const/4 v2, -0x1

    #@83
    if-eq v1, v2, :cond_7

    #@85
    const/4 v10, 0x1

    #@86
    .line 125
    :goto_2
    if-nez v10, :cond_4

    #@88
    .line 126
    invoke-direct {p0, v0}, Ljava/nio/FileChannelImpl;->removeLock(Ljava/nio/channels/FileLock;)V

    #@8b
    .line 129
    :cond_4
    if-eqz v10, :cond_9

    #@8d
    .end local v0    # "pendingLock":Ljava/nio/channels/FileLock;
    :goto_3
    return-object v0

    #@8e
    .line 114
    .end local v10    # "success":Z
    .restart local v0    # "pendingLock":Ljava/nio/channels/FileLock;
    :cond_5
    sget v1, Landroid/system/OsConstants;->F_WRLCK:I

    #@90
    goto :goto_0

    #@91
    .line 121
    .restart local v10    # "success":Z
    :cond_6
    :try_start_1
    sget v1, Landroid/system/OsConstants;->F_SETLK64:I
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@93
    goto :goto_1

    #@94
    :cond_7
    const/4 v10, 0x0

    #@95
    goto :goto_2

    #@96
    .line 122
    :catch_0
    move-exception v8

    #@97
    .line 123
    .local v8, "errnoException":Landroid/system/ErrnoException;
    :try_start_2
    invoke-virtual {v8}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@9a
    move-result-object v1

    #@9b
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@9c
    .line 124
    .end local v8    # "errnoException":Landroid/system/ErrnoException;
    :catchall_0
    move-exception v1

    #@9d
    .line 125
    if-nez v10, :cond_8

    #@9f
    .line 126
    invoke-direct {p0, v0}, Ljava/nio/FileChannelImpl;->removeLock(Ljava/nio/channels/FileLock;)V

    #@a2
    .line 124
    :cond_8
    throw v1

    #@a3
    .line 129
    :cond_9
    const/4 v0, 0x0

    #@a4
    goto :goto_3
.end method

.method static calculateTotalRemaining([Ljava/nio/ByteBuffer;IIZ)I
    .locals 3
    .param p0, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "copyingIn"    # Z

    #@0
    .prologue
    .line 525
    const/4 v0, 0x0

    #@1
    .line 526
    .local v0, "count":I
    move v1, p1

    #@2
    .local v1, "i":I
    :goto_0
    add-int v2, p1, p2

    #@4
    if-ge v1, v2, :cond_1

    #@6
    .line 527
    aget-object v2, p0, v1

    #@8
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    #@b
    move-result v2

    #@c
    add-int/2addr v0, v2

    #@d
    .line 528
    if-eqz p3, :cond_0

    #@f
    .line 529
    aget-object v2, p0, v1

    #@11
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->checkWritable()V

    #@14
    .line 526
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 532
    :cond_1
    return v0
.end method

.method private checkOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/ClosedChannelException;
        }
    .end annotation

    #@0
    .prologue
    .line 73
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->isOpen()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 74
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    #@8
    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@b
    throw v0

    #@c
    .line 72
    :cond_0
    return-void
.end method

.method private checkReadable()V
    .locals 2

    #@0
    .prologue
    .line 79
    iget v0, p0, Ljava/nio/FileChannelImpl;->mode:I

    #@2
    sget v1, Landroid/system/OsConstants;->O_ACCMODE:I

    #@4
    and-int/2addr v0, v1

    #@5
    sget v1, Landroid/system/OsConstants;->O_WRONLY:I

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 80
    new-instance v0, Ljava/nio/channels/NonReadableChannelException;

    #@b
    invoke-direct {v0}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    #@e
    throw v0

    #@f
    .line 78
    :cond_0
    return-void
.end method

.method private checkWritable()V
    .locals 2

    #@0
    .prologue
    .line 85
    iget v0, p0, Ljava/nio/FileChannelImpl;->mode:I

    #@2
    sget v1, Landroid/system/OsConstants;->O_ACCMODE:I

    #@4
    and-int/2addr v0, v1

    #@5
    sget v1, Landroid/system/OsConstants;->O_RDONLY:I

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 86
    new-instance v0, Ljava/nio/channels/NonWritableChannelException;

    #@b
    invoke-direct {v0}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    #@e
    throw v0

    #@f
    .line 84
    :cond_0
    return-void
.end method

.method private readImpl(Ljava/nio/ByteBuffer;J)I
    .locals 8
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 295
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->checkWritable()V

    #@5
    .line 296
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    #@8
    .line 297
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkReadable()V

    #@b
    .line 298
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@e
    move-result v5

    #@f
    if-nez v5, :cond_0

    #@11
    .line 299
    return v4

    #@12
    .line 302
    :cond_0
    const/4 v1, 0x0

    #@13
    .line 304
    .local v1, "completed":Z
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->begin()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 306
    const-wide/16 v6, -0x1

    #@18
    cmp-long v5, p2, v6

    #@1a
    if-nez v5, :cond_2

    #@1c
    .line 307
    :try_start_1
    sget-object v5, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@1e
    iget-object v6, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@20
    invoke-interface {v5, v6, p1}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    move-result v0

    #@24
    .line 311
    .local v0, "bytesRead":I
    :goto_0
    if-nez v0, :cond_1

    #@26
    .line 312
    const/4 v0, -0x1

    #@27
    .line 322
    :cond_1
    :goto_1
    const/4 v1, 0x1

    #@28
    .line 324
    if-eqz v1, :cond_4

    #@2a
    if-ltz v0, :cond_4

    #@2c
    :goto_2
    invoke-virtual {p0, v3}, Ljava/nio/FileChannelImpl;->end(Z)V

    #@2f
    .line 327
    return v0

    #@30
    .line 309
    .end local v0    # "bytesRead":I
    :cond_2
    :try_start_2
    sget-object v5, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@32
    iget-object v6, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@34
    invoke-interface {v5, v6, p1, p2, p3}, Llibcore/io/Os;->pread(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@37
    move-result v0

    #@38
    .restart local v0    # "bytesRead":I
    goto :goto_0

    #@39
    .line 314
    .end local v0    # "bytesRead":I
    :catch_0
    move-exception v2

    #@3a
    .line 315
    .local v2, "errnoException":Landroid/system/ErrnoException;
    :try_start_3
    iget v5, v2, Landroid/system/ErrnoException;->errno:I

    #@3c
    sget v6, Landroid/system/OsConstants;->EAGAIN:I

    #@3e
    if-ne v5, v6, :cond_3

    #@40
    .line 317
    const/4 v0, 0x0

    #@41
    .restart local v0    # "bytesRead":I
    goto :goto_1

    #@42
    .line 319
    .end local v0    # "bytesRead":I
    :cond_3
    invoke-virtual {v2}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@45
    move-result-object v5

    #@46
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@47
    .line 323
    .end local v2    # "errnoException":Landroid/system/ErrnoException;
    :catchall_0
    move-exception v5

    #@48
    .line 324
    if-eqz v1, :cond_5

    #@4a
    :goto_3
    invoke-virtual {p0, v3}, Ljava/nio/FileChannelImpl;->end(Z)V

    #@4d
    .line 323
    throw v5

    #@4e
    .restart local v0    # "bytesRead":I
    :cond_4
    move v3, v4

    #@4f
    .line 324
    goto :goto_2

    #@50
    .end local v0    # "bytesRead":I
    :cond_5
    move v3, v4

    #@51
    goto :goto_3
.end method

.method private declared-synchronized removeLock(Ljava/nio/channels/FileLock;)V
    .locals 1
    .param p1, "lock"    # Ljava/nio/channels/FileLock;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 564
    :try_start_0
    iget-object v0, p0, Ljava/nio/FileChannelImpl;->locks:Ljava/util/SortedSet;

    #@3
    invoke-interface {v0, p1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 563
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method

.method private transferIoVec(Ljava/nio/IoVec;)I
    .locals 4
    .param p1, "ioVec"    # Ljava/nio/IoVec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 331
    invoke-virtual {p1}, Ljava/nio/IoVec;->init()I

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 332
    return v3

    #@8
    .line 334
    :cond_0
    const/4 v0, 0x0

    #@9
    .line 335
    .local v0, "bytesTransferred":I
    const/4 v1, 0x0

    #@a
    .line 337
    .local v1, "completed":Z
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->begin()V

    #@d
    .line 338
    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@f
    invoke-virtual {p1, v2}, Ljava/nio/IoVec;->doTransfer(Ljava/io/FileDescriptor;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v0

    #@13
    .line 339
    const/4 v1, 0x1

    #@14
    .line 341
    invoke-virtual {p0, v1}, Ljava/nio/FileChannelImpl;->end(Z)V

    #@17
    .line 343
    invoke-virtual {p1, v0}, Ljava/nio/IoVec;->didTransfer(I)V

    #@1a
    .line 344
    return v0

    #@1b
    .line 340
    :catchall_0
    move-exception v2

    #@1c
    .line 341
    invoke-virtual {p0, v1}, Ljava/nio/FileChannelImpl;->end(Z)V

    #@1f
    .line 340
    throw v2
.end method

.method private static translateLockLength(J)J
    .locals 2
    .param p0, "byteCount"    # J

    #@0
    .prologue
    .line 134
    const-wide v0, 0x7fffffffffffffffL

    #@5
    cmp-long v0, p0, v0

    #@7
    if-nez v0, :cond_0

    #@9
    const-wide/16 p0, 0x0

    #@b
    .end local p0    # "byteCount":J
    :cond_0
    return-wide p0
.end method

.method private writeImpl(Ljava/nio/ByteBuffer;J)I
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 484
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    #@3
    .line 485
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkWritable()V

    #@6
    .line 486
    if-nez p1, :cond_0

    #@8
    .line 487
    new-instance v3, Ljava/lang/NullPointerException;

    #@a
    const-string/jumbo v4, "buffer == null"

    #@d
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw v3

    #@11
    .line 489
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@14
    move-result v3

    #@15
    if-nez v3, :cond_1

    #@17
    .line 490
    const/4 v3, 0x0

    #@18
    return v3

    #@19
    .line 492
    :cond_1
    const/4 v0, 0x0

    #@1a
    .line 493
    .local v0, "bytesWritten":I
    const/4 v1, 0x0

    #@1b
    .line 495
    .local v1, "completed":Z
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->begin()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    .line 497
    const-wide/16 v4, -0x1

    #@20
    cmp-long v3, p2, v4

    #@22
    if-nez v3, :cond_2

    #@24
    .line 498
    :try_start_1
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@26
    iget-object v4, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@28
    invoke-interface {v3, v4, p1}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    move-result v0

    #@2c
    .line 505
    :goto_0
    const/4 v1, 0x1

    #@2d
    .line 507
    invoke-virtual {p0, v1}, Ljava/nio/FileChannelImpl;->end(Z)V

    #@30
    .line 509
    return v0

    #@31
    .line 500
    :cond_2
    :try_start_2
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@33
    iget-object v4, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@35
    invoke-interface {v3, v4, p1, p2, p3}, Llibcore/io/Os;->pwrite(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;J)I
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@38
    move-result v0

    #@39
    goto :goto_0

    #@3a
    .line 502
    :catch_0
    move-exception v2

    #@3b
    .line 503
    .local v2, "errnoException":Landroid/system/ErrnoException;
    :try_start_3
    invoke-virtual {v2}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@3e
    move-result-object v3

    #@3f
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@40
    .line 506
    .end local v2    # "errnoException":Landroid/system/ErrnoException;
    :catchall_0
    move-exception v3

    #@41
    .line 507
    invoke-virtual {p0, v1}, Ljava/nio/FileChannelImpl;->end(Z)V

    #@44
    .line 506
    throw v3
.end method


# virtual methods
.method public force(Z)V
    .locals 3
    .param p1, "metadata"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 206
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    #@3
    .line 207
    iget v1, p0, Ljava/nio/FileChannelImpl;->mode:I

    #@5
    sget v2, Landroid/system/OsConstants;->O_ACCMODE:I

    #@7
    and-int/2addr v1, v2

    #@8
    sget v2, Landroid/system/OsConstants;->O_RDONLY:I

    #@a
    if-eq v1, v2, :cond_0

    #@c
    .line 209
    if-eqz p1, :cond_1

    #@e
    .line 210
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@10
    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@12
    invoke-interface {v1, v2}, Llibcore/io/Os;->fsync(Ljava/io/FileDescriptor;)V

    #@15
    .line 205
    :cond_0
    :goto_0
    return-void

    #@16
    .line 212
    :cond_1
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@18
    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@1a
    invoke-interface {v1, v2}, Llibcore/io/Os;->fdatasync(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    goto :goto_0

    #@1e
    .line 214
    :catch_0
    move-exception v0

    #@1f
    .line 215
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@22
    move-result-object v1

    #@23
    throw v1
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    #@0
    .prologue
    .line 536
    iget-object v0, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@2
    return-object v0
.end method

.method protected implCloseChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Ljava/nio/FileChannelImpl;->ioObject:Ljava/io/Closeable;

    #@2
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    #@5
    .line 90
    return-void
.end method

.method public final lock(JJZ)Ljava/nio/channels/FileLock;
    .locals 11
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 160
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    #@3
    .line 161
    const/4 v9, 0x0

    #@4
    .line 163
    .local v9, "resultLock":Ljava/nio/channels/FileLock;
    const/4 v0, 0x0

    #@5
    .line 165
    .local v0, "completed":Z
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->begin()V

    #@8
    .line 166
    const/4 v7, 0x1

    #@9
    move-object v1, p0

    #@a
    move-wide v2, p1

    #@b
    move-wide v4, p3

    #@c
    move/from16 v6, p5

    #@e
    invoke-direct/range {v1 .. v7}, Ljava/nio/FileChannelImpl;->basicLock(JJZZ)Ljava/nio/channels/FileLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result-object v9

    #@12
    .line 167
    .local v9, "resultLock":Ljava/nio/channels/FileLock;
    const/4 v0, 0x1

    #@13
    .line 170
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/nio/FileChannelImpl;->end(Z)V
    :try_end_1
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_1 .. :try_end_1} :catch_0

    #@16
    .line 176
    return-object v9

    #@17
    .line 171
    :catch_0
    move-exception v8

    #@18
    .line 172
    .local v8, "e":Ljava/nio/channels/ClosedByInterruptException;
    new-instance v1, Ljava/nio/channels/FileLockInterruptionException;

    #@1a
    invoke-direct {v1}, Ljava/nio/channels/FileLockInterruptionException;-><init>()V

    #@1d
    throw v1

    #@1e
    .line 168
    .end local v8    # "e":Ljava/nio/channels/ClosedByInterruptException;
    .local v9, "resultLock":Ljava/nio/channels/FileLock;
    :catchall_0
    move-exception v1

    #@1f
    .line 170
    :try_start_2
    invoke-virtual {p0, v0}, Ljava/nio/FileChannelImpl;->end(Z)V
    :try_end_2
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_2 .. :try_end_2} :catch_1

    #@22
    .line 168
    throw v1

    #@23
    .line 171
    :catch_1
    move-exception v8

    #@24
    .line 172
    .restart local v8    # "e":Ljava/nio/channels/ClosedByInterruptException;
    new-instance v1, Ljava/nio/channels/FileLockInterruptionException;

    #@26
    invoke-direct {v1}, Ljava/nio/channels/FileLockInterruptionException;-><init>()V

    #@29
    throw v1
.end method

.method public final map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    .locals 16
    .param p1, "mapMode"    # Ljava/nio/channels/FileChannel$MapMode;
    .param p2, "position"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 221
    invoke-direct/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    #@3
    .line 222
    if-nez p1, :cond_0

    #@5
    .line 223
    new-instance v3, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v6, "mapMode == null"

    #@a
    invoke-direct {v3, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v3

    #@e
    .line 225
    :cond_0
    const-wide/16 v10, 0x0

    #@10
    cmp-long v3, p2, v10

    #@12
    if-ltz v3, :cond_1

    #@14
    const-wide/16 v10, 0x0

    #@16
    cmp-long v3, p4, v10

    #@18
    if-gez v3, :cond_2

    #@1a
    .line 226
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@1c
    new-instance v6, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v8, "position="

    #@24
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v6

    #@28
    move-wide/from16 v0, p2

    #@2a
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v6

    #@2e
    const-string/jumbo v8, " size="

    #@31
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v6

    #@35
    move-wide/from16 v0, p4

    #@37
    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v6

    #@3b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v6

    #@3f
    invoke-direct {v3, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@42
    throw v3

    #@43
    .line 225
    :cond_2
    const-wide/32 v10, 0x7fffffff

    #@46
    cmp-long v3, p4, v10

    #@48
    if-gtz v3, :cond_1

    #@4a
    .line 228
    move-object/from16 v0, p0

    #@4c
    iget v3, v0, Ljava/nio/FileChannelImpl;->mode:I

    #@4e
    sget v6, Landroid/system/OsConstants;->O_ACCMODE:I

    #@50
    and-int v2, v3, v6

    #@52
    .line 229
    .local v2, "accessMode":I
    sget v3, Landroid/system/OsConstants;->O_RDONLY:I

    #@54
    if-ne v2, v3, :cond_3

    #@56
    .line 230
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    #@58
    move-object/from16 v0, p1

    #@5a
    if-eq v0, v3, :cond_4

    #@5c
    .line 231
    new-instance v3, Ljava/nio/channels/NonWritableChannelException;

    #@5e
    invoke-direct {v3}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    #@61
    throw v3

    #@62
    .line 233
    :cond_3
    sget v3, Landroid/system/OsConstants;->O_WRONLY:I

    #@64
    if-ne v2, v3, :cond_4

    #@66
    .line 234
    new-instance v3, Ljava/nio/channels/NonReadableChannelException;

    #@68
    invoke-direct {v3}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    #@6b
    throw v3

    #@6c
    .line 236
    :cond_4
    add-long v10, p2, p4

    #@6e
    invoke-virtual/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->size()J

    #@71
    move-result-wide v14

    #@72
    cmp-long v3, v10, v14

    #@74
    if-lez v3, :cond_5

    #@76
    .line 240
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@78
    move-object/from16 v0, p0

    #@7a
    iget-object v6, v0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@7c
    add-long v10, p2, p4

    #@7e
    invoke-interface {v3, v6, v10, v11}, Llibcore/io/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@81
    .line 255
    :cond_5
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@83
    sget v6, Landroid/system/OsConstants;->_SC_PAGE_SIZE:I

    #@85
    invoke-interface {v3, v6}, Llibcore/io/Os;->sysconf(I)J

    #@88
    move-result-wide v10

    #@89
    rem-long v10, p2, v10

    #@8b
    sub-long v4, p2, v10

    #@8d
    .line 256
    .local v4, "alignment":J
    sub-long v10, p2, v4

    #@8f
    long-to-int v9, v10

    #@90
    .line 257
    .local v9, "offset":I
    move-object/from16 v0, p0

    #@92
    iget-object v3, v0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@94
    int-to-long v10, v9

    #@95
    add-long v6, p4, v10

    #@97
    move-object/from16 v8, p1

    #@99
    invoke-static/range {v3 .. v8}, Ljava/nio/MemoryBlock;->mmap(Ljava/io/FileDescriptor;JJLjava/nio/channels/FileChannel$MapMode;)Ljava/nio/MemoryBlock;

    #@9c
    move-result-object v7

    #@9d
    .line 258
    .local v7, "block":Ljava/nio/MemoryBlock;
    new-instance v6, Ljava/nio/DirectByteBuffer;

    #@9f
    move-wide/from16 v0, p4

    #@a1
    long-to-int v8, v0

    #@a2
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    #@a4
    move-object/from16 v0, p1

    #@a6
    if-ne v0, v3, :cond_7

    #@a8
    const/4 v10, 0x1

    #@a9
    :goto_0
    move-object/from16 v11, p1

    #@ab
    invoke-direct/range {v6 .. v11}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;IIZLjava/nio/channels/FileChannel$MapMode;)V

    #@ae
    return-object v6

    #@af
    .line 241
    .end local v4    # "alignment":J
    .end local v7    # "block":Ljava/nio/MemoryBlock;
    .end local v9    # "offset":I
    :catch_0
    move-exception v13

    #@b0
    .line 247
    .local v13, "ftruncateException":Landroid/system/ErrnoException;
    :try_start_1
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@b2
    move-object/from16 v0, p0

    #@b4
    iget-object v6, v0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@b6
    invoke-interface {v3, v6}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    #@b9
    move-result-object v3

    #@ba
    iget v3, v3, Landroid/system/StructStat;->st_mode:I

    #@bc
    invoke-static {v3}, Landroid/system/OsConstants;->S_ISREG(I)Z

    #@bf
    move-result v3

    #@c0
    if-nez v3, :cond_6

    #@c2
    iget v3, v13, Landroid/system/ErrnoException;->errno:I

    #@c4
    sget v6, Landroid/system/OsConstants;->EINVAL:I

    #@c6
    if-eq v3, v6, :cond_5

    #@c8
    .line 248
    :cond_6
    invoke-virtual {v13}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@cb
    move-result-object v3

    #@cc
    throw v3
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    #@cd
    .line 250
    :catch_1
    move-exception v12

    #@ce
    .line 251
    .local v12, "fstatException":Landroid/system/ErrnoException;
    invoke-virtual {v12}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@d1
    move-result-object v3

    #@d2
    throw v3

    #@d3
    .line 258
    .end local v12    # "fstatException":Landroid/system/ErrnoException;
    .end local v13    # "ftruncateException":Landroid/system/ErrnoException;
    .restart local v4    # "alignment":J
    .restart local v7    # "block":Ljava/nio/MemoryBlock;
    .restart local v9    # "offset":I
    :cond_7
    const/4 v10, 0x0

    #@d4
    goto :goto_0
.end method

.method public position()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 262
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    #@3
    .line 264
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@5
    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@7
    sget v3, Landroid/system/OsConstants;->SEEK_CUR:I

    #@9
    const-wide/16 v4, 0x0

    #@b
    invoke-interface {v1, v2, v4, v5, v3}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-wide v2

    #@f
    return-wide v2

    #@10
    .line 265
    :catch_0
    move-exception v0

    #@11
    .line 266
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@14
    move-result-object v1

    #@15
    throw v1
.end method

.method public position(J)Ljava/nio/channels/FileChannel;
    .locals 5
    .param p1, "newPosition"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 271
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    #@3
    .line 272
    const-wide/16 v2, 0x0

    #@5
    cmp-long v1, p1, v2

    #@7
    if-gez v1, :cond_0

    #@9
    .line 273
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "position: "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1

    #@23
    .line 276
    :cond_0
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@25
    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@27
    sget v3, Landroid/system/OsConstants;->SEEK_SET:I

    #@29
    invoke-interface {v1, v2, p1, p2, v3}, Llibcore/io/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    .line 280
    return-object p0

    #@2d
    .line 277
    :catch_0
    move-exception v0

    #@2e
    .line 278
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@31
    move-result-object v1

    #@32
    throw v1
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 291
    const-wide/16 v0, -0x1

    #@2
    invoke-direct {p0, p1, v0, v1}, Ljava/nio/FileChannelImpl;->readImpl(Ljava/nio/ByteBuffer;J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;J)I
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 284
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p2, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 285
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "position: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 287
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/FileChannelImpl;->readImpl(Ljava/nio/ByteBuffer;J)I

    #@23
    move-result v0

    #@24
    return v0
.end method

.method public read([Ljava/nio/ByteBuffer;II)J
    .locals 2
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 348
    array-length v0, p1

    #@1
    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 349
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    #@7
    .line 350
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkReadable()V

    #@a
    .line 351
    new-instance v0, Ljava/nio/IoVec;

    #@c
    sget-object v1, Ljava/nio/IoVec$Direction;->READV:Ljava/nio/IoVec$Direction;

    #@e
    invoke-direct {v0, p1, p2, p3, v1}, Ljava/nio/IoVec;-><init>([Ljava/nio/ByteBuffer;IILjava/nio/IoVec$Direction;)V

    #@11
    invoke-direct {p0, v0}, Ljava/nio/FileChannelImpl;->transferIoVec(Ljava/nio/IoVec;)I

    #@14
    move-result v0

    #@15
    int-to-long v0, v0

    #@16
    return-wide v0
.end method

.method public release(Ljava/nio/channels/FileLock;)V
    .locals 5
    .param p1, "lock"    # Ljava/nio/channels/FileLock;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 189
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    #@3
    .line 191
    new-instance v1, Landroid/system/StructFlock;

    #@5
    invoke-direct {v1}, Landroid/system/StructFlock;-><init>()V

    #@8
    .line 192
    .local v1, "flock":Landroid/system/StructFlock;
    sget v2, Landroid/system/OsConstants;->F_UNLCK:I

    #@a
    int-to-short v2, v2

    #@b
    iput-short v2, v1, Landroid/system/StructFlock;->l_type:S

    #@d
    .line 193
    sget v2, Landroid/system/OsConstants;->SEEK_SET:I

    #@f
    int-to-short v2, v2

    #@10
    iput-short v2, v1, Landroid/system/StructFlock;->l_whence:S

    #@12
    .line 194
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    #@15
    move-result-wide v2

    #@16
    iput-wide v2, v1, Landroid/system/StructFlock;->l_start:J

    #@18
    .line 195
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->size()J

    #@1b
    move-result-wide v2

    #@1c
    invoke-static {v2, v3}, Ljava/nio/FileChannelImpl;->translateLockLength(J)J

    #@1f
    move-result-wide v2

    #@20
    iput-wide v2, v1, Landroid/system/StructFlock;->l_len:J

    #@22
    .line 197
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@24
    iget-object v3, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@26
    sget v4, Landroid/system/OsConstants;->F_SETLKW64:I

    #@28
    invoke-interface {v2, v3, v4, v1}, Llibcore/io/Os;->fcntlFlock(Ljava/io/FileDescriptor;ILandroid/system/StructFlock;)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 202
    invoke-direct {p0, p1}, Ljava/nio/FileChannelImpl;->removeLock(Ljava/nio/channels/FileLock;)V

    #@2e
    .line 188
    return-void

    #@2f
    .line 198
    :catch_0
    move-exception v0

    #@30
    .line 199
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@33
    move-result-object v2

    #@34
    throw v2
.end method

.method public size()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 355
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    #@3
    .line 357
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@5
    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@7
    invoke-interface {v1, v2}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    #@a
    move-result-object v1

    #@b
    iget-wide v2, v1, Landroid/system/StructStat;->st_size:J
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    return-wide v2

    #@e
    .line 358
    :catch_0
    move-exception v0

    #@f
    .line 359
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@12
    move-result-object v1

    #@13
    throw v1
.end method

.method public transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    .locals 10
    .param p1, "src"    # Ljava/nio/channels/ReadableByteChannel;
    .param p2, "position"    # J
    .param p4, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 364
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    #@3
    .line 365
    invoke-interface {p1}, Ljava/nio/channels/ReadableByteChannel;->isOpen()Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 366
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    #@b
    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@e
    throw v1

    #@f
    .line 368
    :cond_0
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkWritable()V

    #@12
    .line 369
    const-wide/16 v4, 0x0

    #@14
    cmp-long v1, p2, v4

    #@16
    if-ltz v1, :cond_1

    #@18
    const-wide/16 v4, 0x0

    #@1a
    cmp-long v1, p4, v4

    #@1c
    if-gez v1, :cond_2

    #@1e
    .line 370
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@20
    new-instance v4, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v5, "position="

    #@28
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    const-string/jumbo v5, " count="

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v4

    #@3f
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@42
    throw v1

    #@43
    .line 369
    :cond_2
    const-wide/32 v4, 0x7fffffff

    #@46
    cmp-long v1, p4, v4

    #@48
    if-gtz v1, :cond_1

    #@4a
    .line 372
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->size()J

    #@4d
    move-result-wide v4

    #@4e
    cmp-long v1, p2, v4

    #@50
    if-lez v1, :cond_3

    #@52
    .line 373
    const-wide/16 v4, 0x0

    #@54
    return-wide v4

    #@55
    .line 382
    :cond_3
    instance-of v1, p1, Ljava/nio/channels/FileChannel;

    #@57
    if-eqz v1, :cond_4

    #@59
    move-object v0, p1

    #@5a
    .line 383
    check-cast v0, Ljava/nio/channels/FileChannel;

    #@5c
    .line 384
    .local v0, "fileSrc":Ljava/nio/channels/FileChannel;
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    #@5f
    move-result-wide v8

    #@60
    .line 385
    .local v8, "size":J
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    #@63
    move-result-wide v2

    #@64
    .line 386
    .local v2, "filePosition":J
    sub-long v4, v8, v2

    #@66
    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    #@69
    move-result-wide p4

    #@6a
    .line 387
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    #@6c
    move-wide v4, p4

    #@6d
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    #@70
    move-result-object v6

    #@71
    .line 389
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    add-long v4, v2, p4

    #@73
    :try_start_0
    invoke-virtual {v0, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    #@76
    .line 390
    invoke-virtual {p0, v6, p2, p3}, Ljava/nio/FileChannelImpl;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@79
    move-result v1

    #@7a
    int-to-long v4, v1

    #@7b
    .line 392
    invoke-static {v6}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@7e
    .line 390
    return-wide v4

    #@7f
    .line 391
    :catchall_0
    move-exception v1

    #@80
    .line 392
    invoke-static {v6}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@83
    .line 391
    throw v1

    #@84
    .line 397
    .end local v0    # "fileSrc":Ljava/nio/channels/FileChannel;
    .end local v2    # "filePosition":J
    .end local v6    # "buffer":Ljava/nio/ByteBuffer;
    .end local v8    # "size":J
    :cond_4
    long-to-int v1, p4

    #@85
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    #@88
    move-result-object v6

    #@89
    .line 398
    .restart local v6    # "buffer":Ljava/nio/ByteBuffer;
    invoke-interface {p1, v6}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    #@8c
    .line 399
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    #@8f
    .line 400
    invoke-virtual {p0, v6, p2, p3}, Ljava/nio/FileChannelImpl;->write(Ljava/nio/ByteBuffer;J)I

    #@92
    move-result v1

    #@93
    int-to-long v4, v1

    #@94
    return-wide v4
.end method

.method public transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    .locals 19
    .param p1, "position"    # J
    .param p3, "count"    # J
    .param p5, "target"    # Ljava/nio/channels/WritableByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 404
    invoke-direct/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    #@3
    .line 405
    invoke-interface/range {p5 .. p5}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    #@6
    move-result v2

    #@7
    if-nez v2, :cond_0

    #@9
    .line 406
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    #@b
    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    #@e
    throw v2

    #@f
    .line 408
    :cond_0
    invoke-direct/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->checkReadable()V

    #@12
    .line 409
    move-object/from16 v0, p5

    #@14
    instance-of v2, v0, Ljava/nio/FileChannelImpl;

    #@16
    if-eqz v2, :cond_1

    #@18
    move-object/from16 v2, p5

    #@1a
    .line 410
    check-cast v2, Ljava/nio/FileChannelImpl;

    #@1c
    invoke-direct {v2}, Ljava/nio/FileChannelImpl;->checkWritable()V

    #@1f
    .line 412
    :cond_1
    const-wide/16 v6, 0x0

    #@21
    cmp-long v2, p1, v6

    #@23
    if-ltz v2, :cond_2

    #@25
    const-wide/16 v6, 0x0

    #@27
    cmp-long v2, p3, v6

    #@29
    if-gez v2, :cond_3

    #@2b
    .line 413
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@2d
    new-instance v4, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v6, "position="

    #@35
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    move-wide/from16 v0, p1

    #@3b
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    const-string/jumbo v6, " count="

    #@42
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    move-wide/from16 v0, p3

    #@48
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@53
    throw v2

    #@54
    .line 416
    :cond_3
    const-wide/16 v6, 0x0

    #@56
    cmp-long v2, p3, v6

    #@58
    if-eqz v2, :cond_4

    #@5a
    invoke-virtual/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->size()J

    #@5d
    move-result-wide v6

    #@5e
    cmp-long v2, p1, v6

    #@60
    if-ltz v2, :cond_5

    #@62
    .line 417
    :cond_4
    const-wide/16 v6, 0x0

    #@64
    return-wide v6

    #@65
    .line 419
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->size()J

    #@68
    move-result-wide v6

    #@69
    sub-long v6, v6, p1

    #@6b
    move-wide/from16 v0, p3

    #@6d
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    #@70
    move-result-wide p3

    #@71
    .line 422
    const/4 v13, 0x0

    #@72
    .line 423
    .local v13, "completed":Z
    move-object/from16 v0, p5

    #@74
    instance-of v2, v0, Ljava/nio/SocketChannelImpl;

    #@76
    if-eqz v2, :cond_7

    #@78
    move-object/from16 v2, p5

    #@7a
    .line 424
    check-cast v2, Ljava/nio/SocketChannelImpl;

    #@7c
    invoke-virtual {v2}, Ljava/nio/SocketChannelImpl;->getFD()Ljava/io/FileDescriptor;

    #@7f
    move-result-object v3

    #@80
    .line 426
    .local v3, "outFd":Ljava/io/FileDescriptor;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/nio/FileChannelImpl;->begin()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@83
    .line 428
    :try_start_1
    new-instance v5, Landroid/util/MutableLong;

    #@85
    move-wide/from16 v0, p1

    #@87
    invoke-direct {v5, v0, v1}, Landroid/util/MutableLong;-><init>(J)V

    #@8a
    .line 429
    .local v5, "offset":Landroid/util/MutableLong;
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@8c
    move-object/from16 v0, p0

    #@8e
    iget-object v4, v0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@90
    move-wide/from16 v6, p3

    #@92
    invoke-interface/range {v2 .. v7}, Llibcore/io/Os;->sendfile(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/util/MutableLong;J)J
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@95
    move-result-wide v16

    #@96
    .line 430
    .local v16, "rc":J
    const/4 v13, 0x1

    #@97
    .line 440
    move-object/from16 v0, p0

    #@99
    invoke-virtual {v0, v13}, Ljava/nio/FileChannelImpl;->end(Z)V

    #@9c
    .line 431
    return-wide v16

    #@9d
    .line 432
    .end local v5    # "offset":Landroid/util/MutableLong;
    .end local v16    # "rc":J
    :catch_0
    move-exception v14

    #@9e
    .line 435
    .local v14, "errnoException":Landroid/system/ErrnoException;
    :try_start_2
    iget v2, v14, Landroid/system/ErrnoException;->errno:I

    #@a0
    sget v4, Landroid/system/OsConstants;->ENOSYS:I

    #@a2
    if-eq v2, v4, :cond_6

    #@a4
    iget v2, v14, Landroid/system/ErrnoException;->errno:I

    #@a6
    sget v4, Landroid/system/OsConstants;->EINVAL:I

    #@a8
    if-eq v2, v4, :cond_6

    #@aa
    .line 436
    invoke-virtual {v14}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@ad
    move-result-object v2

    #@ae
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@af
    .line 439
    .end local v14    # "errnoException":Landroid/system/ErrnoException;
    :catchall_0
    move-exception v2

    #@b0
    .line 440
    move-object/from16 v0, p0

    #@b2
    invoke-virtual {v0, v13}, Ljava/nio/FileChannelImpl;->end(Z)V

    #@b5
    .line 439
    throw v2

    #@b6
    .line 440
    .restart local v14    # "errnoException":Landroid/system/ErrnoException;
    :cond_6
    move-object/from16 v0, p0

    #@b8
    invoke-virtual {v0, v13}, Ljava/nio/FileChannelImpl;->end(Z)V

    #@bb
    .line 444
    .end local v3    # "outFd":Ljava/io/FileDescriptor;
    .end local v14    # "errnoException":Landroid/system/ErrnoException;
    :cond_7
    const/4 v12, 0x0

    #@bc
    .line 446
    .local v12, "buffer":Ljava/nio/ByteBuffer;
    :try_start_3
    sget-object v7, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    #@be
    move-object/from16 v6, p0

    #@c0
    move-wide/from16 v8, p1

    #@c2
    move-wide/from16 v10, p3

    #@c4
    invoke-virtual/range {v6 .. v11}, Ljava/nio/FileChannelImpl;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    #@c7
    move-result-object v12

    #@c8
    .line 447
    .local v12, "buffer":Ljava/nio/ByteBuffer;
    move-object/from16 v0, p5

    #@ca
    invoke-interface {v0, v12}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@cd
    move-result v2

    #@ce
    int-to-long v6, v2

    #@cf
    .line 449
    invoke-static {v12}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@d2
    .line 447
    return-wide v6

    #@d3
    .line 448
    .end local v12    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_1
    move-exception v2

    #@d4
    .line 449
    invoke-static {v12}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@d7
    .line 448
    throw v2
.end method

.method public truncate(J)Ljava/nio/channels/FileChannel;
    .locals 5
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 454
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    #@3
    .line 455
    const-wide/16 v2, 0x0

    #@5
    cmp-long v1, p1, v2

    #@7
    if-gez v1, :cond_0

    #@9
    .line 456
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "size < 0: "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1

    #@23
    .line 458
    :cond_0
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkWritable()V

    #@26
    .line 459
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->size()J

    #@29
    move-result-wide v2

    #@2a
    cmp-long v1, p1, v2

    #@2c
    if-gez v1, :cond_1

    #@2e
    .line 461
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@30
    iget-object v2, p0, Ljava/nio/FileChannelImpl;->fd:Ljava/io/FileDescriptor;

    #@32
    invoke-interface {v1, v2, p1, p2}, Llibcore/io/Os;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 466
    :cond_1
    invoke-virtual {p0}, Ljava/nio/FileChannelImpl;->position()J

    #@38
    move-result-wide v2

    #@39
    cmp-long v1, v2, p1

    #@3b
    if-lez v1, :cond_2

    #@3d
    .line 467
    invoke-virtual {p0, p1, p2}, Ljava/nio/FileChannelImpl;->position(J)Ljava/nio/channels/FileChannel;

    #@40
    .line 469
    :cond_2
    return-object p0

    #@41
    .line 462
    :catch_0
    move-exception v0

    #@42
    .line 463
    .local v0, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@45
    move-result-object v1

    #@46
    throw v1
.end method

.method public final tryLock(JJZ)Ljava/nio/channels/FileLock;
    .locals 9
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 180
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    #@3
    .line 181
    const/4 v7, 0x0

    #@4
    move-object v1, p0

    #@5
    move-wide v2, p1

    #@6
    move-wide v4, p3

    #@7
    move v6, p5

    #@8
    invoke-direct/range {v1 .. v7}, Ljava/nio/FileChannelImpl;->basicLock(JJZZ)Ljava/nio/channels/FileLock;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 480
    const-wide/16 v0, -0x1

    #@2
    invoke-direct {p0, p1, v0, v1}, Ljava/nio/FileChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;J)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public write(Ljava/nio/ByteBuffer;J)I
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 473
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p2, v0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 474
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "position < 0: "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 476
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ljava/nio/FileChannelImpl;->writeImpl(Ljava/nio/ByteBuffer;J)I

    #@23
    move-result v0

    #@24
    return v0
.end method

.method public write([Ljava/nio/ByteBuffer;II)J
    .locals 2
    .param p1, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 513
    array-length v0, p1

    #@1
    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 514
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkOpen()V

    #@7
    .line 515
    invoke-direct {p0}, Ljava/nio/FileChannelImpl;->checkWritable()V

    #@a
    .line 516
    new-instance v0, Ljava/nio/IoVec;

    #@c
    sget-object v1, Ljava/nio/IoVec$Direction;->WRITEV:Ljava/nio/IoVec$Direction;

    #@e
    invoke-direct {v0, p1, p2, p3, v1}, Ljava/nio/IoVec;-><init>([Ljava/nio/ByteBuffer;IILjava/nio/IoVec$Direction;)V

    #@11
    invoke-direct {p0, v0}, Ljava/nio/FileChannelImpl;->transferIoVec(Ljava/nio/IoVec;)I

    #@14
    move-result v0

    #@15
    int-to-long v0, v0

    #@16
    return-wide v0
.end method
