.class public abstract Ljava/nio/MappedByteBuffer;
.super Ljava/nio/ByteBuffer;
.source "MappedByteBuffer.java"


# instance fields
.field final block:Ljava/nio/MemoryBlock;

.field final mapMode:Ljava/nio/channels/FileChannel$MapMode;


# direct methods
.method constructor <init>(Ljava/nio/MemoryBlock;ILjava/nio/channels/FileChannel$MapMode;J)V
    .locals 0
    .param p1, "block"    # Ljava/nio/MemoryBlock;
    .param p2, "capacity"    # I
    .param p3, "mapMode"    # Ljava/nio/channels/FileChannel$MapMode;
    .param p4, "effectiveDirectAddress"    # J

    #@0
    .prologue
    .line 44
    invoke-direct {p0, p2, p4, p5}, Ljava/nio/ByteBuffer;-><init>(IJ)V

    #@3
    .line 45
    iput-object p3, p0, Ljava/nio/MappedByteBuffer;->mapMode:Ljava/nio/channels/FileChannel$MapMode;

    #@5
    .line 46
    iput-object p1, p0, Ljava/nio/MappedByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@7
    .line 43
    return-void
.end method

.method private checkIsMapped()V
    .locals 1

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->mapMode:Ljava/nio/channels/FileChannel$MapMode;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@6
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@9
    throw v0

    #@a
    .line 121
    :cond_0
    return-void
.end method


# virtual methods
.method public final force()Ljava/nio/MappedByteBuffer;
    .locals 7

    #@0
    .prologue
    .line 105
    invoke-direct {p0}, Ljava/nio/MappedByteBuffer;->checkIsMapped()V

    #@3
    .line 107
    iget-object v1, p0, Ljava/nio/MappedByteBuffer;->mapMode:Ljava/nio/channels/FileChannel$MapMode;

    #@5
    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 109
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@b
    iget-object v2, p0, Ljava/nio/MappedByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@d
    invoke-virtual {v2}, Ljava/nio/MemoryBlock;->toLong()J

    #@10
    move-result-wide v2

    #@11
    iget-object v4, p0, Ljava/nio/MappedByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@13
    invoke-virtual {v4}, Ljava/nio/MemoryBlock;->getSize()J

    #@16
    move-result-wide v4

    #@17
    sget v6, Landroid/system/OsConstants;->MS_SYNC:I

    #@19
    invoke-interface/range {v1 .. v6}, Llibcore/io/Os;->msync(JJI)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 116
    :cond_0
    return-object p0

    #@1d
    .line 110
    :catch_0
    move-exception v0

    #@1e
    .line 113
    .local v0, "errnoException":Landroid/system/ErrnoException;
    new-instance v1, Ljava/lang/AssertionError;

    #@20
    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@23
    throw v1
.end method

.method public final isLoaded()Z
    .locals 18

    #@0
    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/nio/MappedByteBuffer;->checkIsMapped()V

    #@3
    .line 57
    move-object/from16 v0, p0

    #@5
    iget-object v3, v0, Ljava/nio/MappedByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@7
    invoke-virtual {v3}, Ljava/nio/MemoryBlock;->toLong()J

    #@a
    move-result-wide v4

    #@b
    .line 58
    .local v4, "address":J
    move-object/from16 v0, p0

    #@d
    iget-object v3, v0, Ljava/nio/MappedByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@f
    invoke-virtual {v3}, Ljava/nio/MemoryBlock;->getSize()J

    #@12
    move-result-wide v6

    #@13
    .line 59
    .local v6, "size":J
    const-wide/16 v14, 0x0

    #@15
    cmp-long v3, v6, v14

    #@17
    if-nez v3, :cond_0

    #@19
    .line 60
    const/4 v3, 0x1

    #@1a
    return v3

    #@1b
    .line 64
    :cond_0
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@1d
    sget v13, Landroid/system/OsConstants;->_SC_PAGE_SIZE:I

    #@1f
    invoke-interface {v3, v13}, Llibcore/io/Os;->sysconf(I)J

    #@22
    move-result-wide v14

    #@23
    long-to-int v12, v14

    #@24
    .line 65
    .local v12, "pageSize":I
    int-to-long v14, v12

    #@25
    rem-long v14, v4, v14

    #@27
    long-to-int v11, v14

    #@28
    .line 66
    .local v11, "pageOffset":I
    int-to-long v14, v11

    #@29
    sub-long/2addr v4, v14

    #@2a
    .line 67
    int-to-long v14, v11

    #@2b
    add-long/2addr v6, v14

    #@2c
    .line 68
    int-to-long v14, v12

    #@2d
    add-long/2addr v14, v6

    #@2e
    const-wide/16 v16, 0x1

    #@30
    sub-long v14, v14, v16

    #@32
    int-to-long v0, v12

    #@33
    move-wide/from16 v16, v0

    #@35
    div-long v14, v14, v16

    #@37
    long-to-int v10, v14

    #@38
    .line 69
    .local v10, "pageCount":I
    new-array v8, v10, [B

    #@3a
    .line 70
    .local v8, "vector":[B
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@3c
    invoke-interface/range {v3 .. v8}, Llibcore/io/Os;->mincore(JJ[B)V

    #@3f
    .line 71
    const/4 v9, 0x0

    #@40
    .local v9, "i":I
    :goto_0
    array-length v3, v8

    #@41
    if-ge v9, v3, :cond_2

    #@43
    .line 72
    aget-byte v3, v8, v9
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    and-int/lit8 v3, v3, 0x1

    #@47
    const/4 v13, 0x1

    #@48
    if-eq v3, v13, :cond_1

    #@4a
    .line 73
    const/4 v3, 0x0

    #@4b
    return v3

    #@4c
    .line 71
    :cond_1
    add-int/lit8 v9, v9, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 76
    :cond_2
    const/4 v3, 0x1

    #@50
    return v3

    #@51
    .line 77
    .end local v8    # "vector":[B
    .end local v9    # "i":I
    .end local v10    # "pageCount":I
    .end local v11    # "pageOffset":I
    .end local v12    # "pageSize":I
    :catch_0
    move-exception v2

    #@52
    .line 78
    .local v2, "errnoException":Landroid/system/ErrnoException;
    const/4 v3, 0x0

    #@53
    return v3
.end method

.method public final load()Ljava/nio/MappedByteBuffer;
    .locals 6

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Ljava/nio/MappedByteBuffer;->checkIsMapped()V

    #@3
    .line 90
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@5
    iget-object v2, p0, Ljava/nio/MappedByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@7
    invoke-virtual {v2}, Ljava/nio/MemoryBlock;->toLong()J

    #@a
    move-result-wide v2

    #@b
    iget-object v4, p0, Ljava/nio/MappedByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@d
    invoke-virtual {v4}, Ljava/nio/MemoryBlock;->getSize()J

    #@10
    move-result-wide v4

    #@11
    invoke-interface {v1, v2, v3, v4, v5}, Llibcore/io/Os;->mlock(JJ)V

    #@14
    .line 91
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@16
    iget-object v2, p0, Ljava/nio/MappedByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@18
    invoke-virtual {v2}, Ljava/nio/MemoryBlock;->toLong()J

    #@1b
    move-result-wide v2

    #@1c
    iget-object v4, p0, Ljava/nio/MappedByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@1e
    invoke-virtual {v4}, Ljava/nio/MemoryBlock;->getSize()J

    #@21
    move-result-wide v4

    #@22
    invoke-interface {v1, v2, v3, v4, v5}, Llibcore/io/Os;->munlock(JJ)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 94
    :goto_0
    return-object p0

    #@26
    .line 92
    :catch_0
    move-exception v0

    #@27
    .local v0, "ignored":Landroid/system/ErrnoException;
    goto :goto_0
.end method
