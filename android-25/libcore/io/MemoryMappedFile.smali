.class public final Llibcore/io/MemoryMappedFile;
.super Ljava/lang/Object;
.source "MemoryMappedFile.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private address:J

.field private final size:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "size"    # J

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    iput-wide p1, p0, Llibcore/io/MemoryMappedFile;->address:J

    #@5
    .line 44
    iput-wide p3, p0, Llibcore/io/MemoryMappedFile;->size:J

    #@7
    .line 42
    return-void
.end method

.method public static mmapRO(Ljava/lang/String;)Llibcore/io/MemoryMappedFile;
    .locals 14
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 51
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@4
    sget v1, Landroid/system/OsConstants;->O_RDONLY:I

    #@6
    const/4 v6, 0x0

    #@7
    invoke-interface {v0, p0, v1, v6}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    #@a
    move-result-object v8

    #@b
    .line 52
    .local v8, "fd":Ljava/io/FileDescriptor;
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@d
    invoke-interface {v0, v8}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    #@10
    move-result-object v0

    #@11
    iget-wide v4, v0, Landroid/system/StructStat;->st_size:J

    #@13
    .line 53
    .local v4, "size":J
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@15
    sget v6, Landroid/system/OsConstants;->PROT_READ:I

    #@17
    sget v7, Landroid/system/OsConstants;->MAP_SHARED:I

    #@19
    move-wide v9, v2

    #@1a
    invoke-interface/range {v1 .. v10}, Llibcore/io/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    #@1d
    move-result-wide v12

    #@1e
    .line 54
    .local v12, "address":J
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@20
    invoke-interface {v0, v8}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V

    #@23
    .line 55
    new-instance v0, Llibcore/io/MemoryMappedFile;

    #@25
    invoke-direct {v0, v12, v13, v4, v5}, Llibcore/io/MemoryMappedFile;-><init>(JJ)V

    #@28
    return-object v0
.end method


# virtual methods
.method public bigEndianIterator()Llibcore/io/BufferIterator;
    .locals 6

    #@0
    .prologue
    .line 77
    new-instance v1, Llibcore/io/NioBufferIterator;

    #@2
    iget-wide v2, p0, Llibcore/io/MemoryMappedFile;->address:J

    #@4
    iget-wide v4, p0, Llibcore/io/MemoryMappedFile;->size:J

    #@6
    long-to-int v4, v4

    #@7
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@a
    move-result-object v0

    #@b
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@d
    if-eq v0, v5, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :goto_0
    invoke-direct {v1, v2, v3, v4, v0}, Llibcore/io/NioBufferIterator;-><init>(JIZ)V

    #@13
    return-object v1

    #@14
    :cond_0
    const/4 v0, 0x0

    #@15
    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 67
    :try_start_0
    iget-wide v0, p0, Llibcore/io/MemoryMappedFile;->address:J

    #@5
    cmp-long v0, v0, v2

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 68
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@b
    iget-wide v2, p0, Llibcore/io/MemoryMappedFile;->address:J

    #@d
    iget-wide v4, p0, Llibcore/io/MemoryMappedFile;->size:J

    #@f
    invoke-interface {v0, v2, v3, v4, v5}, Llibcore/io/Os;->munmap(JJ)V

    #@12
    .line 69
    const-wide/16 v0, 0x0

    #@14
    iput-wide v0, p0, Llibcore/io/MemoryMappedFile;->address:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    :cond_0
    monitor-exit p0

    #@17
    .line 66
    return-void

    #@18
    :catchall_0
    move-exception v0

    #@19
    monitor-exit p0

    #@1a
    throw v0
.end method

.method public littleEndianIterator()Llibcore/io/BufferIterator;
    .locals 6

    #@0
    .prologue
    .line 84
    new-instance v1, Llibcore/io/NioBufferIterator;

    #@2
    iget-wide v2, p0, Llibcore/io/MemoryMappedFile;->address:J

    #@4
    iget-wide v4, p0, Llibcore/io/MemoryMappedFile;->size:J

    #@6
    long-to-int v4, v4

    #@7
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@a
    move-result-object v0

    #@b
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@d
    if-eq v0, v5, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :goto_0
    invoke-direct {v1, v2, v3, v4, v0}, Llibcore/io/NioBufferIterator;-><init>(JIZ)V

    #@13
    return-object v1

    #@14
    :cond_0
    const/4 v0, 0x0

    #@15
    goto :goto_0
.end method

.method public size()J
    .locals 2

    #@0
    .prologue
    .line 91
    iget-wide v0, p0, Llibcore/io/MemoryMappedFile;->size:J

    #@2
    return-wide v0
.end method
