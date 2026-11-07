.class public final Lcom/android/i18n/timezone/internal/MemoryMappedFile;
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

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lcom/android/i18n/timezone/internal/MemoryMappedFile;->address:J

    .line 40
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_16

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p3, v0

    if-gtz v0, :cond_16

    .line 43
    long-to-int v0, p3

    iput v0, p0, Lcom/android/i18n/timezone/internal/MemoryMappedFile;->size:I

    .line 44
    return-void

    .line 41
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

.method public static blacklist mmapRO(Ljava/lang/String;)Lcom/android/i18n/timezone/internal/MemoryMappedFile;
    .registers 11
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v7

    .line 52
    .local v7, "fd":Ljava/io/FileDescriptor;
    :try_start_5
    invoke-static {v7}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    iget-wide v3, v0, Landroid/system/StructStat;->st_size:J

    .line 53
    .local v3, "size":J
    const/4 v6, 0x1

    const-wide/16 v8, 0x0

    const-wide/16 v1, 0x0

    const/4 v5, 0x1

    invoke-static/range {v1 .. v9}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v0

    .line 54
    .local v0, "address":J
    new-instance v2, Lcom/android/i18n/timezone/internal/MemoryMappedFile;

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/android/i18n/timezone/internal/MemoryMappedFile;-><init>(JJ)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1e

    .line 56
    invoke-static {v7}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 54
    return-object v2

    .line 56
    .end local v0    # "address":J
    .end local v3    # "size":J
    :catchall_1e
    move-exception v0

    invoke-static {v7}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 57
    throw v0
.end method


# virtual methods
.method public blacklist bigEndianIterator()Lcom/android/i18n/timezone/internal/BufferIterator;
    .registers 7

    .line 83
    new-instance v0, Lcom/android/i18n/timezone/internal/NioBufferIterator;

    iget-wide v2, p0, Lcom/android/i18n/timezone/internal/MemoryMappedFile;->address:J

    iget v4, p0, Lcom/android/i18n/timezone/internal/MemoryMappedFile;->size:I

    .line 84
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

    invoke-direct/range {v0 .. v5}, Lcom/android/i18n/timezone/internal/NioBufferIterator;-><init>(Lcom/android/i18n/timezone/internal/MemoryMappedFile;JIZ)V

    .line 83
    return-object v0
.end method

.method blacklist checkNotClosed()V
    .registers 3

    .line 97
    iget-boolean v0, p0, Lcom/android/i18n/timezone/internal/MemoryMappedFile;->closed:Z

    if-nez v0, :cond_5

    .line 100
    return-void

    .line 98
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MemoryMappedFile is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 69
    iget-boolean v0, p0, Lcom/android/i18n/timezone/internal/MemoryMappedFile;->closed:Z

    if-nez v0, :cond_f

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/timezone/internal/MemoryMappedFile;->closed:Z

    .line 71
    iget-wide v0, p0, Lcom/android/i18n/timezone/internal/MemoryMappedFile;->address:J

    iget v2, p0, Lcom/android/i18n/timezone/internal/MemoryMappedFile;->size:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Landroid/system/Os;->munmap(JJ)V

    .line 73
    :cond_f
    return-void
.end method

.method public blacklist isClosed()Z
    .registers 2

    .line 76
    iget-boolean v0, p0, Lcom/android/i18n/timezone/internal/MemoryMappedFile;->closed:Z

    return v0
.end method

.method public blacklist littleEndianIterator()Lcom/android/i18n/timezone/internal/BufferIterator;
    .registers 7

    .line 91
    new-instance v0, Lcom/android/i18n/timezone/internal/NioBufferIterator;

    iget-wide v2, p0, Lcom/android/i18n/timezone/internal/MemoryMappedFile;->address:J

    iget v4, p0, Lcom/android/i18n/timezone/internal/MemoryMappedFile;->size:I

    .line 92
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

    invoke-direct/range {v0 .. v5}, Lcom/android/i18n/timezone/internal/NioBufferIterator;-><init>(Lcom/android/i18n/timezone/internal/MemoryMappedFile;JIZ)V

    .line 91
    return-object v0
.end method

.method public blacklist size()I
    .registers 2

    .line 106
    invoke-virtual {p0}, Lcom/android/i18n/timezone/internal/MemoryMappedFile;->checkNotClosed()V

    .line 107
    iget v0, p0, Lcom/android/i18n/timezone/internal/MemoryMappedFile;->size:I

    return v0
.end method
