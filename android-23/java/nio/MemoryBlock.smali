.class Ljava/nio/MemoryBlock;
.super Ljava/lang/Object;
.source "MemoryBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/MemoryBlock$MemoryMappedBlock;,
        Ljava/nio/MemoryBlock$NonMovableHeapBlock;,
        Ljava/nio/MemoryBlock$UnmanagedBlock;
    }
.end annotation


# instance fields
.field private accessible:Z

.field protected address:J

.field private freed:Z

.field protected final size:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "size"    # J

    #@0
    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 141
    iput-wide p1, p0, Ljava/nio/MemoryBlock;->address:J

    #@5
    .line 142
    iput-wide p3, p0, Ljava/nio/MemoryBlock;->size:J

    #@7
    .line 143
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Ljava/nio/MemoryBlock;->accessible:Z

    #@a
    .line 144
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Ljava/nio/MemoryBlock;->freed:Z

    #@d
    .line 140
    return-void
.end method

.method synthetic constructor <init>(JJLjava/nio/MemoryBlock;)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "size"    # J

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/MemoryBlock;-><init>(JJ)V

    #@3
    return-void
.end method

.method public static allocate(I)Ljava/nio/MemoryBlock;
    .locals 8
    .param p0, "byteCount"    # I

    #@0
    .prologue
    .line 130
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@3
    move-result-object v7

    #@4
    .line 131
    .local v7, "runtime":Ldalvik/system/VMRuntime;
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    #@6
    invoke-virtual {v7, v0, p0}, Ldalvik/system/VMRuntime;->newNonMovableArray(Ljava/lang/Class;I)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, [B

    #@c
    .line 132
    .local v1, "array":[B
    invoke-virtual {v7, v1}, Ldalvik/system/VMRuntime;->addressOf(Ljava/lang/Object;)J

    #@f
    move-result-wide v2

    #@10
    .line 133
    .local v2, "address":J
    new-instance v0, Ljava/nio/MemoryBlock$NonMovableHeapBlock;

    #@12
    int-to-long v4, p0

    #@13
    const/4 v6, 0x0

    #@14
    invoke-direct/range {v0 .. v6}, Ljava/nio/MemoryBlock$NonMovableHeapBlock;-><init>([BJJLjava/nio/MemoryBlock$NonMovableHeapBlock;)V

    #@17
    return-object v0
.end method

.method public static mmap(Ljava/io/FileDescriptor;JJLjava/nio/channels/FileChannel$MapMode;)Ljava/nio/MemoryBlock;
    .locals 17
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "offset"    # J
    .param p3, "size"    # J
    .param p5, "mapMode"    # Ljava/nio/channels/FileChannel$MapMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 101
    const-wide/16 v4, 0x0

    #@2
    cmp-long v3, p3, v4

    #@4
    if-nez v3, :cond_0

    #@6
    .line 103
    new-instance v3, Ljava/nio/MemoryBlock;

    #@8
    const-wide/16 v4, 0x0

    #@a
    const-wide/16 v6, 0x0

    #@c
    invoke-direct {v3, v4, v5, v6, v7}, Ljava/nio/MemoryBlock;-><init>(JJ)V

    #@f
    return-object v3

    #@10
    .line 106
    :cond_0
    const-wide/16 v4, 0x0

    #@12
    cmp-long v3, p1, v4

    #@14
    if-ltz v3, :cond_1

    #@16
    const-wide/16 v4, 0x0

    #@18
    cmp-long v3, p3, v4

    #@1a
    if-gez v3, :cond_2

    #@1c
    .line 107
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@1e
    new-instance v4, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v5, "offset="

    #@26
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    move-wide/from16 v0, p1

    #@2c
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v4

    #@30
    const-string/jumbo v5, " size="

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    move-wide/from16 v0, p3

    #@39
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@44
    throw v3

    #@45
    .line 106
    :cond_2
    const-wide/32 v4, 0x7fffffff

    #@48
    cmp-long v3, p1, v4

    #@4a
    if-gtz v3, :cond_1

    #@4c
    const-wide/32 v4, 0x7fffffff

    #@4f
    cmp-long v3, p3, v4

    #@51
    if-gtz v3, :cond_1

    #@53
    .line 111
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->PRIVATE:Ljava/nio/channels/FileChannel$MapMode;

    #@55
    move-object/from16 v0, p5

    #@57
    if-ne v0, v3, :cond_3

    #@59
    .line 112
    sget v3, Landroid/system/OsConstants;->PROT_READ:I

    #@5b
    sget v4, Landroid/system/OsConstants;->PROT_WRITE:I

    #@5d
    or-int v8, v3, v4

    #@5f
    .line 113
    .local v8, "prot":I
    sget v9, Landroid/system/OsConstants;->MAP_PRIVATE:I

    #@61
    .line 122
    .local v9, "flags":I
    :goto_0
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    #@63
    const-wide/16 v4, 0x0

    #@65
    move-wide/from16 v6, p3

    #@67
    move-object/from16 v10, p0

    #@69
    move-wide/from16 v11, p1

    #@6b
    invoke-interface/range {v3 .. v12}, Llibcore/io/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    #@6e
    move-result-wide v12

    #@6f
    .line 123
    .local v12, "address":J
    new-instance v11, Ljava/nio/MemoryBlock$MemoryMappedBlock;

    #@71
    const/16 v16, 0x0

    #@73
    move-wide/from16 v14, p3

    #@75
    invoke-direct/range {v11 .. v16}, Ljava/nio/MemoryBlock$MemoryMappedBlock;-><init>(JJLjava/nio/MemoryBlock$MemoryMappedBlock;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    #@78
    return-object v11

    #@79
    .line 114
    .end local v8    # "prot":I
    .end local v9    # "flags":I
    .end local v12    # "address":J
    :cond_3
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    #@7b
    move-object/from16 v0, p5

    #@7d
    if-ne v0, v3, :cond_4

    #@7f
    .line 115
    sget v8, Landroid/system/OsConstants;->PROT_READ:I

    #@81
    .line 116
    .restart local v8    # "prot":I
    sget v9, Landroid/system/OsConstants;->MAP_SHARED:I

    #@83
    .restart local v9    # "flags":I
    goto :goto_0

    #@84
    .line 118
    .end local v8    # "prot":I
    .end local v9    # "flags":I
    :cond_4
    sget v3, Landroid/system/OsConstants;->PROT_READ:I

    #@86
    sget v4, Landroid/system/OsConstants;->PROT_WRITE:I

    #@88
    or-int v8, v3, v4

    #@8a
    .line 119
    .restart local v8    # "prot":I
    sget v9, Landroid/system/OsConstants;->MAP_SHARED:I

    #@8c
    .restart local v9    # "flags":I
    goto :goto_0

    #@8d
    .line 124
    :catch_0
    move-exception v2

    #@8e
    .line 125
    .local v2, "errnoException":Landroid/system/ErrnoException;
    invoke-virtual {v2}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    #@91
    move-result-object v3

    #@92
    throw v3
.end method

.method public static wrapFromJni(JJ)Ljava/nio/MemoryBlock;
    .locals 8
    .param p0, "address"    # J
    .param p2, "byteCount"    # J

    #@0
    .prologue
    .line 137
    new-instance v1, Ljava/nio/MemoryBlock$UnmanagedBlock;

    #@2
    const/4 v6, 0x0

    #@3
    move-wide v2, p0

    #@4
    move-wide v4, p2

    #@5
    invoke-direct/range {v1 .. v6}, Ljava/nio/MemoryBlock$UnmanagedBlock;-><init>(JJLjava/nio/MemoryBlock$UnmanagedBlock;)V

    #@8
    return-object v1
.end method


# virtual methods
.method public array()[B
    .locals 1

    #@0
    .prologue
    .line 149
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public free()V
    .locals 2

    #@0
    .prologue
    .line 153
    const-wide/16 v0, 0x0

    #@2
    iput-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    #@4
    .line 154
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Ljava/nio/MemoryBlock;->freed:Z

    #@7
    .line 152
    return-void
.end method

.method public final getSize()J
    .locals 2

    #@0
    .prologue
    .line 266
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->size:J

    #@2
    return-wide v0
.end method

.method public isAccessible()Z
    .locals 1

    #@0
    .prologue
    .line 162
    invoke-virtual {p0}, Ljava/nio/MemoryBlock;->isFreed()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget-boolean v0, p0, Ljava/nio/MemoryBlock;->accessible:Z

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method public isFreed()Z
    .locals 1

    #@0
    .prologue
    .line 158
    iget-boolean v0, p0, Ljava/nio/MemoryBlock;->freed:Z

    #@2
    return v0
.end method

.method public final peekByte(I)B
    .locals 4
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 202
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    #@2
    int-to-long v2, p1

    #@3
    add-long/2addr v0, v2

    #@4
    invoke-static {v0, v1}, Llibcore/io/Memory;->peekByte(J)B

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final peekByteArray(I[BII)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "dst"    # [B
    .param p3, "dstOffset"    # I
    .param p4, "byteCount"    # I

    #@0
    .prologue
    .line 206
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    #@2
    int-to-long v2, p1

    #@3
    add-long/2addr v0, v2

    #@4
    invoke-static {v0, v1, p2, p3, p4}, Llibcore/io/Memory;->peekByteArray(J[BII)V

    #@7
    .line 205
    return-void
.end method

.method public final peekCharArray(I[CIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "dst"    # [C
    .param p3, "dstOffset"    # I
    .param p4, "charCount"    # I
    .param p5, "swap"    # Z

    #@0
    .prologue
    .line 210
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    #@2
    int-to-long v2, p1

    #@3
    add-long/2addr v0, v2

    #@4
    move-object v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    move v5, p5

    #@8
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekCharArray(J[CIIZ)V

    #@b
    .line 209
    return-void
.end method

.method public final peekDoubleArray(I[DIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "dst"    # [D
    .param p3, "dstOffset"    # I
    .param p4, "doubleCount"    # I
    .param p5, "swap"    # Z

    #@0
    .prologue
    .line 214
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    #@2
    int-to-long v2, p1

    #@3
    add-long/2addr v0, v2

    #@4
    move-object v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    move v5, p5

    #@8
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekDoubleArray(J[DIIZ)V

    #@b
    .line 213
    return-void
.end method

.method public final peekFloatArray(I[FIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "dst"    # [F
    .param p3, "dstOffset"    # I
    .param p4, "floatCount"    # I
    .param p5, "swap"    # Z

    #@0
    .prologue
    .line 218
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    #@2
    int-to-long v2, p1

    #@3
    add-long/2addr v0, v2

    #@4
    move-object v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    move v5, p5

    #@8
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekFloatArray(J[FIIZ)V

    #@b
    .line 217
    return-void
.end method

.method public final peekInt(ILjava/nio/ByteOrder;)I
    .locals 4
    .param p1, "offset"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    .line 246
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    #@2
    int-to-long v2, p1

    #@3
    add-long/2addr v0, v2

    #@4
    iget-boolean v2, p2, Ljava/nio/ByteOrder;->needsSwap:Z

    #@6
    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekInt(JZ)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public final peekIntArray(I[IIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "dst"    # [I
    .param p3, "dstOffset"    # I
    .param p4, "intCount"    # I
    .param p5, "swap"    # Z

    #@0
    .prologue
    .line 222
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    #@2
    int-to-long v2, p1

    #@3
    add-long/2addr v0, v2

    #@4
    move-object v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    move v5, p5

    #@8
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekIntArray(J[IIIZ)V

    #@b
    .line 221
    return-void
.end method

.method public final peekLong(ILjava/nio/ByteOrder;)J
    .locals 4
    .param p1, "offset"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    .line 254
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    #@2
    int-to-long v2, p1

    #@3
    add-long/2addr v0, v2

    #@4
    iget-boolean v2, p2, Ljava/nio/ByteOrder;->needsSwap:Z

    #@6
    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekLong(JZ)J

    #@9
    move-result-wide v0

    #@a
    return-wide v0
.end method

.method public final peekLongArray(I[JIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "dst"    # [J
    .param p3, "dstOffset"    # I
    .param p4, "longCount"    # I
    .param p5, "swap"    # Z

    #@0
    .prologue
    .line 226
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    #@2
    int-to-long v2, p1

    #@3
    add-long/2addr v0, v2

    #@4
    move-object v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    move v5, p5

    #@8
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekLongArray(J[JIIZ)V

    #@b
    .line 225
    return-void
.end method

.method public final peekShort(ILjava/nio/ByteOrder;)S
    .locals 4
    .param p1, "offset"    # I
    .param p2, "order"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    .line 238
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    #@2
    int-to-long v2, p1

    #@3
    add-long/2addr v0, v2

    #@4
    iget-boolean v2, p2, Ljava/nio/ByteOrder;->needsSwap:Z

    #@6
    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekShort(JZ)S

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public final peekShortArray(I[SIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "dst"    # [S
    .param p3, "dstOffset"    # I
    .param p4, "shortCount"    # I
    .param p5, "swap"    # Z

    #@0
    .prologue
    .line 230
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    #@2
    int-to-long v2, p1

    #@3
    add-long/2addr v0, v2

    #@4
    move-object v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    move v5, p5

    #@8
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->peekShortArray(J[SIIZ)V

    #@b
    .line 229
    return-void
.end method

.method public final pokeByte(IB)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "value"    # B

    #@0
    .prologue
    .line 170
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    #@2
    int-to-long v2, p1

    #@3
    add-long/2addr v0, v2

    #@4
    invoke-static {v0, v1, p2}, Llibcore/io/Memory;->pokeByte(JB)V

    #@7
    .line 169
    return-void
.end method

.method public final pokeByteArray(I[BII)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "src"    # [B
    .param p3, "srcOffset"    # I
    .param p4, "byteCount"    # I

    #@0
    .prologue
    .line 174
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    #@2
    int-to-long v2, p1

    #@3
    add-long/2addr v0, v2

    #@4
    invoke-static {v0, v1, p2, p3, p4}, Llibcore/io/Memory;->pokeByteArray(J[BII)V

    #@7
    .line 173
    return-void
.end method

.method public final pokeCharArray(I[CIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "src"    # [C
    .param p3, "srcOffset"    # I
    .param p4, "charCount"    # I
    .param p5, "swap"    # Z

    #@0
    .prologue
    .line 178
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    #@2
    int-to-long v2, p1

    #@3
    add-long/2addr v0, v2

    #@4
    move-object v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    move v5, p5

    #@8
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeCharArray(J[CIIZ)V

    #@b
    .line 177
    return-void
.end method

.method public final pokeDoubleArray(I[DIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "src"    # [D
    .param p3, "srcOffset"    # I
    .param p4, "doubleCount"    # I
    .param p5, "swap"    # Z

    #@0
    .prologue
    .line 182
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    #@2
    int-to-long v2, p1

    #@3
    add-long/2addr v0, v2

    #@4
    move-object v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    move v5, p5

    #@8
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeDoubleArray(J[DIIZ)V

    #@b
    .line 181
    return-void
.end method

.method public final pokeFloatArray(I[FIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "src"    # [F
    .param p3, "srcOffset"    # I
    .param p4, "floatCount"    # I
    .param p5, "swap"    # Z

    #@0
    .prologue
    .line 186
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    #@2
    int-to-long v2, p1

    #@3
    add-long/2addr v0, v2

    #@4
    move-object v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    move v5, p5

    #@8
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeFloatArray(J[FIIZ)V

    #@b
    .line 185
    return-void
.end method

.method public final pokeInt(IILjava/nio/ByteOrder;)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "value"    # I
    .param p3, "order"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    .line 242
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    #@2
    int-to-long v2, p1

    #@3
    add-long/2addr v0, v2

    #@4
    iget-boolean v2, p3, Ljava/nio/ByteOrder;->needsSwap:Z

    #@6
    invoke-static {v0, v1, p2, v2}, Llibcore/io/Memory;->pokeInt(JIZ)V

    #@9
    .line 241
    return-void
.end method

.method public final pokeIntArray(I[IIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "src"    # [I
    .param p3, "srcOffset"    # I
    .param p4, "intCount"    # I
    .param p5, "swap"    # Z

    #@0
    .prologue
    .line 190
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    #@2
    int-to-long v2, p1

    #@3
    add-long/2addr v0, v2

    #@4
    move-object v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    move v5, p5

    #@8
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeIntArray(J[IIIZ)V

    #@b
    .line 189
    return-void
.end method

.method public final pokeLong(IJLjava/nio/ByteOrder;)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "value"    # J
    .param p4, "order"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    .line 250
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    #@2
    int-to-long v2, p1

    #@3
    add-long/2addr v0, v2

    #@4
    iget-boolean v2, p4, Ljava/nio/ByteOrder;->needsSwap:Z

    #@6
    invoke-static {v0, v1, p2, p3, v2}, Llibcore/io/Memory;->pokeLong(JJZ)V

    #@9
    .line 249
    return-void
.end method

.method public final pokeLongArray(I[JIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "src"    # [J
    .param p3, "srcOffset"    # I
    .param p4, "longCount"    # I
    .param p5, "swap"    # Z

    #@0
    .prologue
    .line 194
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    #@2
    int-to-long v2, p1

    #@3
    add-long/2addr v0, v2

    #@4
    move-object v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    move v5, p5

    #@8
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeLongArray(J[JIIZ)V

    #@b
    .line 193
    return-void
.end method

.method public final pokeShort(ISLjava/nio/ByteOrder;)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "value"    # S
    .param p3, "order"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    .line 234
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    #@2
    int-to-long v2, p1

    #@3
    add-long/2addr v0, v2

    #@4
    iget-boolean v2, p3, Ljava/nio/ByteOrder;->needsSwap:Z

    #@6
    invoke-static {v0, v1, p2, v2}, Llibcore/io/Memory;->pokeShort(JSZ)V

    #@9
    .line 233
    return-void
.end method

.method public final pokeShortArray(I[SIIZ)V
    .locals 6
    .param p1, "offset"    # I
    .param p2, "src"    # [S
    .param p3, "srcOffset"    # I
    .param p4, "shortCount"    # I
    .param p5, "swap"    # Z

    #@0
    .prologue
    .line 198
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    #@2
    int-to-long v2, p1

    #@3
    add-long/2addr v0, v2

    #@4
    move-object v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    move v5, p5

    #@8
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->pokeShortArray(J[SIIZ)V

    #@b
    .line 197
    return-void
.end method

.method public final setAccessible(Z)V
    .locals 0
    .param p1, "accessible"    # Z

    #@0
    .prologue
    .line 166
    iput-boolean p1, p0, Ljava/nio/MemoryBlock;->accessible:Z

    #@2
    .line 165
    return-void
.end method

.method public final toLong()J
    .locals 2

    #@0
    .prologue
    .line 258
    iget-wide v0, p0, Ljava/nio/MemoryBlock;->address:J

    #@2
    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/nio/MemoryBlock;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string/jumbo v1, "["

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    iget-wide v2, p0, Ljava/nio/MemoryBlock;->address:J

    #@1a
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    const-string/jumbo v1, "]"

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    return-object v0
.end method
