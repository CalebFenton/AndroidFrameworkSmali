.class public final Llibcore/io/MemoryMappedFile;
.super Ljava/lang/Object;
.source "MemoryMappedFile.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final blacklist address:J

.field private blacklist closed:Z

.field private final blacklist size:I


# direct methods
.method public constructor blacklist <init>(JJ)V
    .registers 8
    .param p1, "address"    # J
    .param p3, "size"    # J

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-wide p1, p0, Llibcore/io/MemoryMappedFile;->address:J

    .line 43
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_16

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p3, v0

    if-gtz v0, :cond_16

    .line 46
    long-to-int v0, p3

    iput v0, p0, Llibcore/io/MemoryMappedFile;->size:I

    .line 47
    return-void

    .line 44
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported file size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist mmapRO(Ljava/lang/String;)Llibcore/io/MemoryMappedFile;
    .registers 14
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 54
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v1, Landroid/system/OsConstants;->O_RDONLY:I

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v10

    .line 56
    .local v10, "fd":Ljava/io/FileDescriptor;
    :try_start_9
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, v10}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    iget-wide v6, v0, Landroid/system/StructStat;->st_size:J

    .line 57
    .local v6, "size":J
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v8, Landroid/system/OsConstants;->PROT_READ:I

    sget v9, Landroid/system/OsConstants;->MAP_SHARED:I

    const-wide/16 v11, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v3 .. v12}, Llibcore/io/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v0

    .line 58
    .local v0, "address":J
    new-instance v2, Llibcore/io/MemoryMappedFile;

    invoke-direct {v2, v0, v1, v6, v7}, Llibcore/io/MemoryMappedFile;-><init>(JJ)V
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_2a

    .line 60
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v3, v10}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V

    .line 58
    return-object v2

    .line 60
    .end local v0    # "address":J
    .end local v6    # "size":J
    :catchall_2a
    move-exception v0

    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v1, v10}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V

    .line 61
    throw v0
.end method


# virtual methods
.method public greylist bigEndianIterator()Llibcore/io/BufferIterator;
    .registers 7

    .line 88
    new-instance v0, Llibcore/io/NioBufferIterator;

    iget-wide v2, p0, Llibcore/io/MemoryMappedFile;->address:J

    iget v4, p0, Llibcore/io/MemoryMappedFile;->size:I

    .line 89
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v1, v5, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    move v5, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Llibcore/io/NioBufferIterator;-><init>(Llibcore/io/MemoryMappedFile;JIZ)V

    .line 88
    return-object v0
.end method

.method blacklist checkNotClosed()V
    .registers 3

    .line 102
    iget-boolean v0, p0, Llibcore/io/MemoryMappedFile;->closed:Z

    if-nez v0, :cond_5

    .line 105
    return-void

    .line 103
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MemoryMappedFile is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api close()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 73
    iget-boolean v0, p0, Llibcore/io/MemoryMappedFile;->closed:Z

    if-nez v0, :cond_11

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Llibcore/io/MemoryMappedFile;->closed:Z

    .line 75
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    iget-wide v1, p0, Llibcore/io/MemoryMappedFile;->address:J

    iget v3, p0, Llibcore/io/MemoryMappedFile;->size:I

    int-to-long v3, v3

    invoke-interface {v0, v1, v2, v3, v4}, Llibcore/io/Os;->munmap(JJ)V

    .line 77
    :cond_11
    return-void
.end method

.method public blacklist isClosed()Z
    .registers 2

    .line 80
    iget-boolean v0, p0, Llibcore/io/MemoryMappedFile;->closed:Z

    return v0
.end method

.method public blacklist littleEndianIterator()Llibcore/io/BufferIterator;
    .registers 7

    .line 96
    new-instance v0, Llibcore/io/NioBufferIterator;

    iget-wide v2, p0, Llibcore/io/MemoryMappedFile;->address:J

    iget v4, p0, Llibcore/io/MemoryMappedFile;->size:I

    .line 97
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v1, v5, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    move v5, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Llibcore/io/NioBufferIterator;-><init>(Llibcore/io/MemoryMappedFile;JIZ)V

    .line 96
    return-object v0
.end method

.method public blacklist size()I
    .registers 2

    .line 111
    invoke-virtual {p0}, Llibcore/io/MemoryMappedFile;->checkNotClosed()V

    .line 112
    iget v0, p0, Llibcore/io/MemoryMappedFile;->size:I

    return v0
.end method
