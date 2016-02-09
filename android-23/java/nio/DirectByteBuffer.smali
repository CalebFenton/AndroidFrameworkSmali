.class Ljava/nio/DirectByteBuffer;
.super Ljava/nio/MappedByteBuffer;
.source "DirectByteBuffer.java"


# instance fields
.field private final isReadOnly:Z

.field protected final offset:I


# direct methods
.method constructor <init>(JI)V
    .locals 7
    .param p1, "address"    # J
    .param p3, "capacity"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 49
    int-to-long v0, p3

    #@2
    invoke-static {p1, p2, v0, v1}, Ljava/nio/MemoryBlock;->wrapFromJni(JJ)Ljava/nio/MemoryBlock;

    #@5
    move-result-object v1

    #@6
    const/4 v5, 0x0

    #@7
    move-object v0, p0

    #@8
    move v2, p3

    #@9
    move v4, v3

    #@a
    invoke-direct/range {v0 .. v5}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;IIZLjava/nio/channels/FileChannel$MapMode;)V

    #@d
    .line 48
    return-void
.end method

.method protected constructor <init>(Ljava/nio/MemoryBlock;IIZLjava/nio/channels/FileChannel$MapMode;)V
    .locals 8
    .param p1, "block"    # Ljava/nio/MemoryBlock;
    .param p2, "capacity"    # I
    .param p3, "offset"    # I
    .param p4, "isReadOnly"    # Z
    .param p5, "mapMode"    # Ljava/nio/channels/FileChannel$MapMode;

    #@0
    .prologue
    .line 33
    invoke-virtual {p1}, Ljava/nio/MemoryBlock;->toLong()J

    #@3
    move-result-wide v0

    #@4
    int-to-long v2, p3

    #@5
    add-long v4, v0, v2

    #@7
    move-object v0, p0

    #@8
    move-object v1, p1

    #@9
    move v2, p2

    #@a
    move-object v3, p5

    #@b
    invoke-direct/range {v0 .. v5}, Ljava/nio/MappedByteBuffer;-><init>(Ljava/nio/MemoryBlock;ILjava/nio/channels/FileChannel$MapMode;J)V

    #@e
    .line 35
    invoke-virtual {p1}, Ljava/nio/MemoryBlock;->getSize()J

    #@11
    move-result-wide v6

    #@12
    .line 39
    .local v6, "baseSize":J
    const-wide/16 v0, 0x0

    #@14
    cmp-long v0, v6, v0

    #@16
    if-ltz v0, :cond_0

    #@18
    add-int v0, p2, p3

    #@1a
    int-to-long v0, v0

    #@1b
    cmp-long v0, v0, v6

    #@1d
    if-lez v0, :cond_0

    #@1f
    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@21
    const-string/jumbo v1, "capacity + offset > baseSize"

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 43
    :cond_0
    iput p3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@2a
    .line 44
    iput-boolean p4, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@2c
    .line 32
    return-void
.end method

.method private checkIsAccessible()V
    .locals 2

    #@0
    .prologue
    .line 549
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkNotFreed()V

    #@3
    .line 550
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@5
    invoke-virtual {v0}, Ljava/nio/MemoryBlock;->isAccessible()Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 551
    new-instance v0, Ljava/lang/IllegalStateException;

    #@d
    const-string/jumbo v1, "buffer is inaccessible"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 548
    :cond_0
    return-void
.end method

.method private checkNotFreed()V
    .locals 2

    #@0
    .prologue
    .line 556
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@2
    invoke-virtual {v0}, Ljava/nio/MemoryBlock;->isFreed()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 557
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v1, "buffer was freed"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 555
    :cond_0
    return-void
.end method

.method private static copy(Ljava/nio/DirectByteBuffer;IZ)Ljava/nio/DirectByteBuffer;
    .locals 6
    .param p0, "other"    # Ljava/nio/DirectByteBuffer;
    .param p1, "markOfOther"    # I
    .param p2, "isReadOnly"    # Z

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkNotFreed()V

    #@3
    .line 54
    new-instance v0, Ljava/nio/DirectByteBuffer;

    #@5
    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@7
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->capacity()I

    #@a
    move-result v2

    #@b
    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@d
    iget-object v5, p0, Ljava/nio/DirectByteBuffer;->mapMode:Ljava/nio/channels/FileChannel$MapMode;

    #@f
    move v4, p2

    #@10
    invoke-direct/range {v0 .. v5}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;IIZLjava/nio/channels/FileChannel$MapMode;)V

    #@13
    .line 55
    .local v0, "buf":Ljava/nio/DirectByteBuffer;
    iget v1, p0, Ljava/nio/DirectByteBuffer;->limit:I

    #@15
    iput v1, v0, Ljava/nio/DirectByteBuffer;->limit:I

    #@17
    .line 56
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->position()I

    #@1a
    move-result v1

    #@1b
    iput v1, v0, Ljava/nio/DirectByteBuffer;->position:I

    #@1d
    .line 57
    iput p1, v0, Ljava/nio/DirectByteBuffer;->mark:I

    #@1f
    .line 58
    return-object v0
.end method


# virtual methods
.method public final asCharBuffer()Ljava/nio/CharBuffer;
    .locals 1

    #@0
    .prologue
    .line 300
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkNotFreed()V

    #@3
    .line 301
    invoke-static {p0}, Ljava/nio/ByteBufferAsCharBuffer;->asCharBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public final asDoubleBuffer()Ljava/nio/DoubleBuffer;
    .locals 1

    #@0
    .prologue
    .line 305
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkNotFreed()V

    #@3
    .line 306
    invoke-static {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->asDoubleBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/DoubleBuffer;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public final asFloatBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    #@0
    .prologue
    .line 310
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkNotFreed()V

    #@3
    .line 311
    invoke-static {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->asFloatBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public final asIntBuffer()Ljava/nio/IntBuffer;
    .locals 1

    #@0
    .prologue
    .line 315
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkNotFreed()V

    #@3
    .line 316
    invoke-static {p0}, Ljava/nio/ByteBufferAsIntBuffer;->asIntBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/IntBuffer;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public final asLongBuffer()Ljava/nio/LongBuffer;
    .locals 1

    #@0
    .prologue
    .line 320
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkNotFreed()V

    #@3
    .line 321
    invoke-static {p0}, Ljava/nio/ByteBufferAsLongBuffer;->asLongBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/LongBuffer;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    #@0
    .prologue
    .line 62
    iget v0, p0, Ljava/nio/DirectByteBuffer;->mark:I

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->copy(Ljava/nio/DirectByteBuffer;IZ)Ljava/nio/DirectByteBuffer;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public final asShortBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    #@0
    .prologue
    .line 325
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkNotFreed()V

    #@3
    .line 326
    invoke-static {p0}, Ljava/nio/ByteBufferAsShortBuffer;->asShortBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ShortBuffer;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public compact()Ljava/nio/ByteBuffer;
    .locals 6

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 67
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 68
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@9
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@c
    throw v0

    #@d
    .line 70
    :cond_0
    iget v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@f
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->remaining()I

    #@12
    move-result v0

    #@13
    int-to-long v4, v0

    #@14
    const/4 v1, 0x0

    #@15
    move-object v0, p0

    #@16
    move-object v2, p0

    #@17
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    #@1a
    .line 71
    iget v0, p0, Ljava/nio/DirectByteBuffer;->limit:I

    #@1c
    iget v1, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@1e
    sub-int/2addr v0, v1

    #@1f
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@21
    .line 72
    iget v0, p0, Ljava/nio/DirectByteBuffer;->capacity:I

    #@23
    iput v0, p0, Ljava/nio/DirectByteBuffer;->limit:I

    #@25
    .line 73
    const/4 v0, -0x1

    #@26
    iput v0, p0, Ljava/nio/DirectByteBuffer;->mark:I

    #@28
    .line 74
    return-object p0
.end method

.method public duplicate()Ljava/nio/ByteBuffer;
    .locals 2

    #@0
    .prologue
    .line 78
    iget v0, p0, Ljava/nio/DirectByteBuffer;->mark:I

    #@2
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@4
    invoke-static {p0, v0, v1}, Ljava/nio/DirectByteBuffer;->copy(Ljava/nio/DirectByteBuffer;IZ)Ljava/nio/DirectByteBuffer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final free()V
    .locals 1

    #@0
    .prologue
    .line 296
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@2
    invoke-virtual {v0}, Ljava/nio/MemoryBlock;->free()V

    #@5
    .line 295
    return-void
.end method

.method public final get()B
    .locals 4

    #@0
    .prologue
    .line 162
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 163
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@5
    iget v1, p0, Ljava/nio/DirectByteBuffer;->limit:I

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 164
    new-instance v0, Ljava/nio/BufferUnderflowException;

    #@b
    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@e
    throw v0

    #@f
    .line 166
    :cond_0
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@11
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@13
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@15
    add-int/lit8 v3, v2, 0x1

    #@17
    iput v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@19
    add-int/2addr v1, v2

    #@1a
    invoke-virtual {v0, v1}, Ljava/nio/MemoryBlock;->peekByte(I)B

    #@1d
    move-result v0

    #@1e
    return v0
.end method

.method public final get(I)B
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 170
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 171
    invoke-virtual {p0, p1}, Ljava/nio/DirectByteBuffer;->checkIndex(I)V

    #@6
    .line 172
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@8
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@a
    add-int/2addr v1, p1

    #@b
    invoke-virtual {v0, v1}, Ljava/nio/MemoryBlock;->peekByte(I)B

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public final get([BII)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "dst"    # [B
    .param p2, "dstOffset"    # I
    .param p3, "byteCount"    # I

    #@0
    .prologue
    .line 112
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 113
    array-length v0, p1

    #@4
    const/4 v1, 0x1

    #@5
    invoke-virtual {p0, v1, v0, p2, p3}, Ljava/nio/DirectByteBuffer;->checkGetBounds(IIII)I

    #@8
    .line 114
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@a
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@c
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@e
    add-int/2addr v1, v2

    #@f
    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/MemoryBlock;->peekByteArray(I[BII)V

    #@12
    .line 115
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@14
    add-int/2addr v0, p3

    #@15
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@17
    .line 116
    return-object p0
.end method

.method final get([CII)V
    .locals 7
    .param p1, "dst"    # [C
    .param p2, "dstOffset"    # I
    .param p3, "charCount"    # I

    #@0
    .prologue
    .line 120
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 121
    array-length v0, p1

    #@4
    const/4 v1, 0x2

    #@5
    invoke-virtual {p0, v1, v0, p2, p3}, Ljava/nio/DirectByteBuffer;->checkGetBounds(IIII)I

    #@8
    move-result v6

    #@9
    .line 122
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@b
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@d
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@f
    add-int/2addr v1, v2

    #@10
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@12
    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    #@14
    move-object v2, p1

    #@15
    move v3, p2

    #@16
    move v4, p3

    #@17
    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->peekCharArray(I[CIIZ)V

    #@1a
    .line 123
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@1c
    add-int/2addr v0, v6

    #@1d
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@1f
    .line 119
    return-void
.end method

.method final get([DII)V
    .locals 7
    .param p1, "dst"    # [D
    .param p2, "dstOffset"    # I
    .param p3, "doubleCount"    # I

    #@0
    .prologue
    .line 127
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 128
    array-length v0, p1

    #@4
    const/16 v1, 0x8

    #@6
    invoke-virtual {p0, v1, v0, p2, p3}, Ljava/nio/DirectByteBuffer;->checkGetBounds(IIII)I

    #@9
    move-result v6

    #@a
    .line 129
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@c
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@e
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@10
    add-int/2addr v1, v2

    #@11
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@13
    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    #@15
    move-object v2, p1

    #@16
    move v3, p2

    #@17
    move v4, p3

    #@18
    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->peekDoubleArray(I[DIIZ)V

    #@1b
    .line 130
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@1d
    add-int/2addr v0, v6

    #@1e
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@20
    .line 126
    return-void
.end method

.method final get([FII)V
    .locals 7
    .param p1, "dst"    # [F
    .param p2, "dstOffset"    # I
    .param p3, "floatCount"    # I

    #@0
    .prologue
    .line 134
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 135
    array-length v0, p1

    #@4
    const/4 v1, 0x4

    #@5
    invoke-virtual {p0, v1, v0, p2, p3}, Ljava/nio/DirectByteBuffer;->checkGetBounds(IIII)I

    #@8
    move-result v6

    #@9
    .line 136
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@b
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@d
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@f
    add-int/2addr v1, v2

    #@10
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@12
    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    #@14
    move-object v2, p1

    #@15
    move v3, p2

    #@16
    move v4, p3

    #@17
    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->peekFloatArray(I[FIIZ)V

    #@1a
    .line 137
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@1c
    add-int/2addr v0, v6

    #@1d
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@1f
    .line 133
    return-void
.end method

.method final get([III)V
    .locals 7
    .param p1, "dst"    # [I
    .param p2, "dstOffset"    # I
    .param p3, "intCount"    # I

    #@0
    .prologue
    .line 141
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 142
    array-length v0, p1

    #@4
    const/4 v1, 0x4

    #@5
    invoke-virtual {p0, v1, v0, p2, p3}, Ljava/nio/DirectByteBuffer;->checkGetBounds(IIII)I

    #@8
    move-result v6

    #@9
    .line 143
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@b
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@d
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@f
    add-int/2addr v1, v2

    #@10
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@12
    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    #@14
    move-object v2, p1

    #@15
    move v3, p2

    #@16
    move v4, p3

    #@17
    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->peekIntArray(I[IIIZ)V

    #@1a
    .line 144
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@1c
    add-int/2addr v0, v6

    #@1d
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@1f
    .line 140
    return-void
.end method

.method final get([JII)V
    .locals 7
    .param p1, "dst"    # [J
    .param p2, "dstOffset"    # I
    .param p3, "longCount"    # I

    #@0
    .prologue
    .line 148
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 149
    array-length v0, p1

    #@4
    const/16 v1, 0x8

    #@6
    invoke-virtual {p0, v1, v0, p2, p3}, Ljava/nio/DirectByteBuffer;->checkGetBounds(IIII)I

    #@9
    move-result v6

    #@a
    .line 150
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@c
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@e
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@10
    add-int/2addr v1, v2

    #@11
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@13
    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    #@15
    move-object v2, p1

    #@16
    move v3, p2

    #@17
    move v4, p3

    #@18
    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->peekLongArray(I[JIIZ)V

    #@1b
    .line 151
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@1d
    add-int/2addr v0, v6

    #@1e
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@20
    .line 147
    return-void
.end method

.method final get([SII)V
    .locals 7
    .param p1, "dst"    # [S
    .param p2, "dstOffset"    # I
    .param p3, "shortCount"    # I

    #@0
    .prologue
    .line 155
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 156
    array-length v0, p1

    #@4
    const/4 v1, 0x2

    #@5
    invoke-virtual {p0, v1, v0, p2, p3}, Ljava/nio/DirectByteBuffer;->checkGetBounds(IIII)I

    #@8
    move-result v6

    #@9
    .line 157
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@b
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@d
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@f
    add-int/2addr v1, v2

    #@10
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@12
    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    #@14
    move-object v2, p1

    #@15
    move v3, p2

    #@16
    move v4, p3

    #@17
    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->peekShortArray(I[SIIZ)V

    #@1a
    .line 158
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@1c
    add-int/2addr v0, v6

    #@1d
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@1f
    .line 154
    return-void
.end method

.method public final getChar()C
    .locals 5

    #@0
    .prologue
    .line 176
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 177
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@5
    add-int/lit8 v0, v2, 0x2

    #@7
    .line 178
    .local v0, "newPosition":I
    iget v2, p0, Ljava/nio/DirectByteBuffer;->limit:I

    #@9
    if-le v0, v2, :cond_0

    #@b
    .line 179
    new-instance v2, Ljava/nio/BufferUnderflowException;

    #@d
    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@10
    throw v2

    #@11
    .line 181
    :cond_0
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@13
    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@15
    iget v4, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@17
    add-int/2addr v3, v4

    #@18
    iget-object v4, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@1a
    invoke-virtual {v2, v3, v4}, Ljava/nio/MemoryBlock;->peekShort(ILjava/nio/ByteOrder;)S

    #@1d
    move-result v2

    #@1e
    int-to-char v1, v2

    #@1f
    .line 182
    .local v1, "result":C
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@21
    .line 183
    return v1
.end method

.method public final getChar(I)C
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 187
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 188
    const/4 v0, 0x2

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    #@7
    .line 189
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@9
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@b
    add-int/2addr v1, p1

    #@c
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@e
    invoke-virtual {v0, v1, v2}, Ljava/nio/MemoryBlock;->peekShort(ILjava/nio/ByteOrder;)S

    #@11
    move-result v0

    #@12
    int-to-char v0, v0

    #@13
    return v0
.end method

.method public final getDouble()D
    .locals 6

    #@0
    .prologue
    .line 193
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 194
    iget v1, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@5
    add-int/lit8 v0, v1, 0x8

    #@7
    .line 195
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/DirectByteBuffer;->limit:I

    #@9
    if-le v0, v1, :cond_0

    #@b
    .line 196
    new-instance v1, Ljava/nio/BufferUnderflowException;

    #@d
    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@10
    throw v1

    #@11
    .line 198
    :cond_0
    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@13
    iget v4, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@15
    iget v5, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@17
    add-int/2addr v4, v5

    #@18
    iget-object v5, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@1a
    invoke-virtual {v1, v4, v5}, Ljava/nio/MemoryBlock;->peekLong(ILjava/nio/ByteOrder;)J

    #@1d
    move-result-wide v4

    #@1e
    invoke-static {v4, v5}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@21
    move-result-wide v2

    #@22
    .line 199
    .local v2, "result":D
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@24
    .line 200
    return-wide v2
.end method

.method public final getDouble(I)D
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 204
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 205
    const/16 v0, 0x8

    #@5
    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    #@8
    .line 206
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@a
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@c
    add-int/2addr v1, p1

    #@d
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@f
    invoke-virtual {v0, v1, v2}, Ljava/nio/MemoryBlock;->peekLong(ILjava/nio/ByteOrder;)J

    #@12
    move-result-wide v0

    #@13
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@16
    move-result-wide v0

    #@17
    return-wide v0
.end method

.method public final getFloat()F
    .locals 5

    #@0
    .prologue
    .line 210
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 211
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@5
    add-int/lit8 v0, v2, 0x4

    #@7
    .line 212
    .local v0, "newPosition":I
    iget v2, p0, Ljava/nio/DirectByteBuffer;->limit:I

    #@9
    if-le v0, v2, :cond_0

    #@b
    .line 213
    new-instance v2, Ljava/nio/BufferUnderflowException;

    #@d
    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@10
    throw v2

    #@11
    .line 215
    :cond_0
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@13
    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@15
    iget v4, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@17
    add-int/2addr v3, v4

    #@18
    iget-object v4, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@1a
    invoke-virtual {v2, v3, v4}, Ljava/nio/MemoryBlock;->peekInt(ILjava/nio/ByteOrder;)I

    #@1d
    move-result v2

    #@1e
    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@21
    move-result v1

    #@22
    .line 216
    .local v1, "result":F
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@24
    .line 217
    return v1
.end method

.method public final getFloat(I)F
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 221
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 222
    const/4 v0, 0x4

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    #@7
    .line 223
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@9
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@b
    add-int/2addr v1, p1

    #@c
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@e
    invoke-virtual {v0, v1, v2}, Ljava/nio/MemoryBlock;->peekInt(ILjava/nio/ByteOrder;)I

    #@11
    move-result v0

    #@12
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@15
    move-result v0

    #@16
    return v0
.end method

.method public final getInt()I
    .locals 5

    #@0
    .prologue
    .line 227
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 228
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@5
    add-int/lit8 v0, v2, 0x4

    #@7
    .line 229
    .local v0, "newPosition":I
    iget v2, p0, Ljava/nio/DirectByteBuffer;->limit:I

    #@9
    if-le v0, v2, :cond_0

    #@b
    .line 230
    new-instance v2, Ljava/nio/BufferUnderflowException;

    #@d
    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@10
    throw v2

    #@11
    .line 232
    :cond_0
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@13
    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@15
    iget v4, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@17
    add-int/2addr v3, v4

    #@18
    iget-object v4, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@1a
    invoke-virtual {v2, v3, v4}, Ljava/nio/MemoryBlock;->peekInt(ILjava/nio/ByteOrder;)I

    #@1d
    move-result v1

    #@1e
    .line 233
    .local v1, "result":I
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@20
    .line 234
    return v1
.end method

.method public final getInt(I)I
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 238
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 239
    const/4 v0, 0x4

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    #@7
    .line 240
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@9
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@b
    add-int/2addr v1, p1

    #@c
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@e
    invoke-virtual {v0, v1, v2}, Ljava/nio/MemoryBlock;->peekInt(ILjava/nio/ByteOrder;)I

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public final getLong()J
    .locals 6

    #@0
    .prologue
    .line 244
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 245
    iget v1, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@5
    add-int/lit8 v0, v1, 0x8

    #@7
    .line 246
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/DirectByteBuffer;->limit:I

    #@9
    if-le v0, v1, :cond_0

    #@b
    .line 247
    new-instance v1, Ljava/nio/BufferUnderflowException;

    #@d
    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@10
    throw v1

    #@11
    .line 249
    :cond_0
    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@13
    iget v4, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@15
    iget v5, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@17
    add-int/2addr v4, v5

    #@18
    iget-object v5, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@1a
    invoke-virtual {v1, v4, v5}, Ljava/nio/MemoryBlock;->peekLong(ILjava/nio/ByteOrder;)J

    #@1d
    move-result-wide v2

    #@1e
    .line 250
    .local v2, "result":J
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@20
    .line 251
    return-wide v2
.end method

.method public final getLong(I)J
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 255
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 256
    const/16 v0, 0x8

    #@5
    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    #@8
    .line 257
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@a
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@c
    add-int/2addr v1, p1

    #@d
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@f
    invoke-virtual {v0, v1, v2}, Ljava/nio/MemoryBlock;->peekLong(ILjava/nio/ByteOrder;)J

    #@12
    move-result-wide v0

    #@13
    return-wide v0
.end method

.method public final getShort()S
    .locals 5

    #@0
    .prologue
    .line 261
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 262
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@5
    add-int/lit8 v0, v2, 0x2

    #@7
    .line 263
    .local v0, "newPosition":I
    iget v2, p0, Ljava/nio/DirectByteBuffer;->limit:I

    #@9
    if-le v0, v2, :cond_0

    #@b
    .line 264
    new-instance v2, Ljava/nio/BufferUnderflowException;

    #@d
    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@10
    throw v2

    #@11
    .line 266
    :cond_0
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@13
    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@15
    iget v4, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@17
    add-int/2addr v3, v4

    #@18
    iget-object v4, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@1a
    invoke-virtual {v2, v3, v4}, Ljava/nio/MemoryBlock;->peekShort(ILjava/nio/ByteOrder;)S

    #@1d
    move-result v1

    #@1e
    .line 267
    .local v1, "result":S
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@20
    .line 268
    return v1
.end method

.method public final getShort(I)S
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 272
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 273
    const/4 v0, 0x2

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    #@7
    .line 274
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@9
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@b
    add-int/2addr v1, p1

    #@c
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@e
    invoke-virtual {v0, v1, v2}, Ljava/nio/MemoryBlock;->peekShort(ILjava/nio/ByteOrder;)S

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public final isAccessible()Z
    .locals 1

    #@0
    .prologue
    .line 283
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@2
    invoke-virtual {v0}, Ljava/nio/MemoryBlock;->isAccessible()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final isDirect()Z
    .locals 1

    #@0
    .prologue
    .line 278
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    #@0
    .prologue
    .line 87
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@2
    return v0
.end method

.method protectedArray()[B
    .locals 2

    #@0
    .prologue
    .line 91
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 92
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 93
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    #@9
    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@c
    throw v1

    #@d
    .line 95
    :cond_0
    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@f
    invoke-virtual {v1}, Ljava/nio/MemoryBlock;->array()[B

    #@12
    move-result-object v0

    #@13
    .line 96
    .local v0, "array":[B
    if-nez v0, :cond_1

    #@15
    .line 97
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    #@17
    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@1a
    throw v1

    #@1b
    .line 99
    :cond_1
    return-object v0
.end method

.method protectedArrayOffset()I
    .locals 1

    #@0
    .prologue
    .line 103
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->protectedArray()[B

    #@3
    .line 104
    iget v0, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@5
    return v0
.end method

.method protectedHasArray()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 108
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@3
    if-nez v1, :cond_0

    #@5
    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@7
    invoke-virtual {v1}, Ljava/nio/MemoryBlock;->array()[B

    #@a
    move-result-object v1

    #@b
    if-eqz v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public put(B)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "value"    # B

    #@0
    .prologue
    .line 330
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 331
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 332
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@9
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@c
    throw v0

    #@d
    .line 334
    :cond_0
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@f
    iget v1, p0, Ljava/nio/DirectByteBuffer;->limit:I

    #@11
    if-ne v0, v1, :cond_1

    #@13
    .line 335
    new-instance v0, Ljava/nio/BufferOverflowException;

    #@15
    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    #@18
    throw v0

    #@19
    .line 337
    :cond_1
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@1b
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@1d
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@1f
    add-int/lit8 v3, v2, 0x1

    #@21
    iput v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@23
    add-int/2addr v1, v2

    #@24
    invoke-virtual {v0, v1, p1}, Ljava/nio/MemoryBlock;->pokeByte(IB)V

    #@27
    .line 338
    return-object p0
.end method

.method public put(IB)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # B

    #@0
    .prologue
    .line 342
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 343
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 344
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@9
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@c
    throw v0

    #@d
    .line 346
    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/DirectByteBuffer;->checkIndex(I)V

    #@10
    .line 347
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@12
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@14
    add-int/2addr v1, p1

    #@15
    invoke-virtual {v0, v1, p2}, Ljava/nio/MemoryBlock;->pokeByte(IB)V

    #@18
    .line 348
    return-object p0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "src"    # [B
    .param p2, "srcOffset"    # I
    .param p3, "byteCount"    # I

    #@0
    .prologue
    .line 352
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 353
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 354
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@9
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@c
    throw v0

    #@d
    .line 356
    :cond_0
    array-length v0, p1

    #@e
    const/4 v1, 0x1

    #@f
    invoke-virtual {p0, v1, v0, p2, p3}, Ljava/nio/DirectByteBuffer;->checkPutBounds(IIII)I

    #@12
    .line 357
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@14
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@16
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@18
    add-int/2addr v1, v2

    #@19
    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/MemoryBlock;->pokeByteArray(I[BII)V

    #@1c
    .line 358
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@1e
    add-int/2addr v0, p3

    #@1f
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@21
    .line 359
    return-object p0
.end method

.method final put([CII)V
    .locals 7
    .param p1, "src"    # [C
    .param p2, "srcOffset"    # I
    .param p3, "charCount"    # I

    #@0
    .prologue
    .line 363
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 364
    array-length v0, p1

    #@4
    const/4 v1, 0x2

    #@5
    invoke-virtual {p0, v1, v0, p2, p3}, Ljava/nio/DirectByteBuffer;->checkPutBounds(IIII)I

    #@8
    move-result v6

    #@9
    .line 365
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@b
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@d
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@f
    add-int/2addr v1, v2

    #@10
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@12
    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    #@14
    move-object v2, p1

    #@15
    move v3, p2

    #@16
    move v4, p3

    #@17
    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeCharArray(I[CIIZ)V

    #@1a
    .line 366
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@1c
    add-int/2addr v0, v6

    #@1d
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@1f
    .line 362
    return-void
.end method

.method final put([DII)V
    .locals 7
    .param p1, "src"    # [D
    .param p2, "srcOffset"    # I
    .param p3, "doubleCount"    # I

    #@0
    .prologue
    .line 370
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 371
    array-length v0, p1

    #@4
    const/16 v1, 0x8

    #@6
    invoke-virtual {p0, v1, v0, p2, p3}, Ljava/nio/DirectByteBuffer;->checkPutBounds(IIII)I

    #@9
    move-result v6

    #@a
    .line 372
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@c
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@e
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@10
    add-int/2addr v1, v2

    #@11
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@13
    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    #@15
    move-object v2, p1

    #@16
    move v3, p2

    #@17
    move v4, p3

    #@18
    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeDoubleArray(I[DIIZ)V

    #@1b
    .line 373
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@1d
    add-int/2addr v0, v6

    #@1e
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@20
    .line 369
    return-void
.end method

.method final put([FII)V
    .locals 7
    .param p1, "src"    # [F
    .param p2, "srcOffset"    # I
    .param p3, "floatCount"    # I

    #@0
    .prologue
    .line 377
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 378
    array-length v0, p1

    #@4
    const/4 v1, 0x4

    #@5
    invoke-virtual {p0, v1, v0, p2, p3}, Ljava/nio/DirectByteBuffer;->checkPutBounds(IIII)I

    #@8
    move-result v6

    #@9
    .line 379
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@b
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@d
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@f
    add-int/2addr v1, v2

    #@10
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@12
    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    #@14
    move-object v2, p1

    #@15
    move v3, p2

    #@16
    move v4, p3

    #@17
    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeFloatArray(I[FIIZ)V

    #@1a
    .line 380
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@1c
    add-int/2addr v0, v6

    #@1d
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@1f
    .line 376
    return-void
.end method

.method final put([III)V
    .locals 7
    .param p1, "src"    # [I
    .param p2, "srcOffset"    # I
    .param p3, "intCount"    # I

    #@0
    .prologue
    .line 384
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 385
    array-length v0, p1

    #@4
    const/4 v1, 0x4

    #@5
    invoke-virtual {p0, v1, v0, p2, p3}, Ljava/nio/DirectByteBuffer;->checkPutBounds(IIII)I

    #@8
    move-result v6

    #@9
    .line 386
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@b
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@d
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@f
    add-int/2addr v1, v2

    #@10
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@12
    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    #@14
    move-object v2, p1

    #@15
    move v3, p2

    #@16
    move v4, p3

    #@17
    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeIntArray(I[IIIZ)V

    #@1a
    .line 387
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@1c
    add-int/2addr v0, v6

    #@1d
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@1f
    .line 383
    return-void
.end method

.method final put([JII)V
    .locals 7
    .param p1, "src"    # [J
    .param p2, "srcOffset"    # I
    .param p3, "longCount"    # I

    #@0
    .prologue
    .line 391
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 392
    array-length v0, p1

    #@4
    const/16 v1, 0x8

    #@6
    invoke-virtual {p0, v1, v0, p2, p3}, Ljava/nio/DirectByteBuffer;->checkPutBounds(IIII)I

    #@9
    move-result v6

    #@a
    .line 393
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@c
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@e
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@10
    add-int/2addr v1, v2

    #@11
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@13
    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    #@15
    move-object v2, p1

    #@16
    move v3, p2

    #@17
    move v4, p3

    #@18
    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeLongArray(I[JIIZ)V

    #@1b
    .line 394
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@1d
    add-int/2addr v0, v6

    #@1e
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@20
    .line 390
    return-void
.end method

.method final put([SII)V
    .locals 7
    .param p1, "src"    # [S
    .param p2, "srcOffset"    # I
    .param p3, "shortCount"    # I

    #@0
    .prologue
    .line 398
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 399
    array-length v0, p1

    #@4
    const/4 v1, 0x2

    #@5
    invoke-virtual {p0, v1, v0, p2, p3}, Ljava/nio/DirectByteBuffer;->checkPutBounds(IIII)I

    #@8
    move-result v6

    #@9
    .line 400
    .local v6, "byteCount":I
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@b
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@d
    iget v2, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@f
    add-int/2addr v1, v2

    #@10
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@12
    iget-boolean v5, v2, Ljava/nio/ByteOrder;->needsSwap:Z

    #@14
    move-object v2, p1

    #@15
    move v3, p2

    #@16
    move v4, p3

    #@17
    invoke-virtual/range {v0 .. v5}, Ljava/nio/MemoryBlock;->pokeShortArray(I[SIIZ)V

    #@1a
    .line 401
    iget v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@1c
    add-int/2addr v0, v6

    #@1d
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@1f
    .line 397
    return-void
.end method

.method public putChar(C)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "value"    # C

    #@0
    .prologue
    .line 405
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 406
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 407
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    #@9
    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@c
    throw v1

    #@d
    .line 409
    :cond_0
    iget v1, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@f
    add-int/lit8 v0, v1, 0x2

    #@11
    .line 410
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/DirectByteBuffer;->limit:I

    #@13
    if-le v0, v1, :cond_1

    #@15
    .line 411
    new-instance v1, Ljava/nio/BufferOverflowException;

    #@17
    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    #@1a
    throw v1

    #@1b
    .line 413
    :cond_1
    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@1d
    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@1f
    iget v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@21
    add-int/2addr v2, v3

    #@22
    int-to-short v3, p1

    #@23
    iget-object v4, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@25
    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/MemoryBlock;->pokeShort(ISLjava/nio/ByteOrder;)V

    #@28
    .line 414
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@2a
    .line 415
    return-object p0
.end method

.method public putChar(IC)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # C

    #@0
    .prologue
    .line 419
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 420
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 421
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@9
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@c
    throw v0

    #@d
    .line 423
    :cond_0
    const/4 v0, 0x2

    #@e
    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    #@11
    .line 424
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@13
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@15
    add-int/2addr v1, p1

    #@16
    int-to-short v2, p2

    #@17
    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@19
    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/MemoryBlock;->pokeShort(ISLjava/nio/ByteOrder;)V

    #@1c
    .line 425
    return-object p0
.end method

.method public putDouble(D)Ljava/nio/ByteBuffer;
    .locals 7
    .param p1, "value"    # D

    #@0
    .prologue
    .line 429
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 430
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 431
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    #@9
    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@c
    throw v1

    #@d
    .line 433
    :cond_0
    iget v1, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@f
    add-int/lit8 v0, v1, 0x8

    #@11
    .line 434
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/DirectByteBuffer;->limit:I

    #@13
    if-le v0, v1, :cond_1

    #@15
    .line 435
    new-instance v1, Ljava/nio/BufferOverflowException;

    #@17
    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    #@1a
    throw v1

    #@1b
    .line 437
    :cond_1
    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@1d
    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@1f
    iget v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@21
    add-int/2addr v2, v3

    #@22
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@25
    move-result-wide v4

    #@26
    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@28
    invoke-virtual {v1, v2, v4, v5, v3}, Ljava/nio/MemoryBlock;->pokeLong(IJLjava/nio/ByteOrder;)V

    #@2b
    .line 438
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@2d
    .line 439
    return-object p0
.end method

.method public putDouble(ID)Ljava/nio/ByteBuffer;
    .locals 6
    .param p1, "index"    # I
    .param p2, "value"    # D

    #@0
    .prologue
    .line 443
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 444
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 445
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@9
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@c
    throw v0

    #@d
    .line 447
    :cond_0
    const/16 v0, 0x8

    #@f
    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    #@12
    .line 448
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@14
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@16
    add-int/2addr v1, p1

    #@17
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@1a
    move-result-wide v2

    #@1b
    iget-object v4, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@1d
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/nio/MemoryBlock;->pokeLong(IJLjava/nio/ByteOrder;)V

    #@20
    .line 449
    return-object p0
.end method

.method public putFloat(F)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "value"    # F

    #@0
    .prologue
    .line 453
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 454
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 455
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    #@9
    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@c
    throw v1

    #@d
    .line 457
    :cond_0
    iget v1, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@f
    add-int/lit8 v0, v1, 0x4

    #@11
    .line 458
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/DirectByteBuffer;->limit:I

    #@13
    if-le v0, v1, :cond_1

    #@15
    .line 459
    new-instance v1, Ljava/nio/BufferOverflowException;

    #@17
    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    #@1a
    throw v1

    #@1b
    .line 461
    :cond_1
    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@1d
    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@1f
    iget v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@21
    add-int/2addr v2, v3

    #@22
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@25
    move-result v3

    #@26
    iget-object v4, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@28
    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/MemoryBlock;->pokeInt(IILjava/nio/ByteOrder;)V

    #@2b
    .line 462
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@2d
    .line 463
    return-object p0
.end method

.method public putFloat(IF)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 467
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 468
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 469
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@9
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@c
    throw v0

    #@d
    .line 471
    :cond_0
    const/4 v0, 0x4

    #@e
    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    #@11
    .line 472
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@13
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@15
    add-int/2addr v1, p1

    #@16
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@19
    move-result v2

    #@1a
    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@1c
    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/MemoryBlock;->pokeInt(IILjava/nio/ByteOrder;)V

    #@1f
    .line 473
    return-object p0
.end method

.method public putInt(I)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "value"    # I

    #@0
    .prologue
    .line 477
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 478
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 479
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    #@9
    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@c
    throw v1

    #@d
    .line 481
    :cond_0
    iget v1, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@f
    add-int/lit8 v0, v1, 0x4

    #@11
    .line 482
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/DirectByteBuffer;->limit:I

    #@13
    if-le v0, v1, :cond_1

    #@15
    .line 483
    new-instance v1, Ljava/nio/BufferOverflowException;

    #@17
    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    #@1a
    throw v1

    #@1b
    .line 485
    :cond_1
    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@1d
    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@1f
    iget v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@21
    add-int/2addr v2, v3

    #@22
    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@24
    invoke-virtual {v1, v2, p1, v3}, Ljava/nio/MemoryBlock;->pokeInt(IILjava/nio/ByteOrder;)V

    #@27
    .line 486
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@29
    .line 487
    return-object p0
.end method

.method public putInt(II)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 491
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 492
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 493
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@9
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@c
    throw v0

    #@d
    .line 495
    :cond_0
    const/4 v0, 0x4

    #@e
    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    #@11
    .line 496
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@13
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@15
    add-int/2addr v1, p1

    #@16
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@18
    invoke-virtual {v0, v1, p2, v2}, Ljava/nio/MemoryBlock;->pokeInt(IILjava/nio/ByteOrder;)V

    #@1b
    .line 497
    return-object p0
.end method

.method public putLong(IJ)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # J

    #@0
    .prologue
    .line 515
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 516
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 517
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@9
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@c
    throw v0

    #@d
    .line 519
    :cond_0
    const/16 v0, 0x8

    #@f
    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    #@12
    .line 520
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@14
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@16
    add-int/2addr v1, p1

    #@17
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@19
    invoke-virtual {v0, v1, p2, p3, v2}, Ljava/nio/MemoryBlock;->pokeLong(IJLjava/nio/ByteOrder;)V

    #@1c
    .line 521
    return-object p0
.end method

.method public putLong(J)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "value"    # J

    #@0
    .prologue
    .line 501
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 502
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 503
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    #@9
    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@c
    throw v1

    #@d
    .line 505
    :cond_0
    iget v1, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@f
    add-int/lit8 v0, v1, 0x8

    #@11
    .line 506
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/DirectByteBuffer;->limit:I

    #@13
    if-le v0, v1, :cond_1

    #@15
    .line 507
    new-instance v1, Ljava/nio/BufferOverflowException;

    #@17
    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    #@1a
    throw v1

    #@1b
    .line 509
    :cond_1
    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@1d
    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@1f
    iget v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@21
    add-int/2addr v2, v3

    #@22
    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@24
    invoke-virtual {v1, v2, p1, p2, v3}, Ljava/nio/MemoryBlock;->pokeLong(IJLjava/nio/ByteOrder;)V

    #@27
    .line 510
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@29
    .line 511
    return-object p0
.end method

.method public putShort(IS)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # S

    #@0
    .prologue
    .line 539
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 540
    iget-boolean v0, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 541
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@9
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@c
    throw v0

    #@d
    .line 543
    :cond_0
    const/4 v0, 0x2

    #@e
    invoke-virtual {p0, p1, v0}, Ljava/nio/DirectByteBuffer;->checkIndex(II)V

    #@11
    .line 544
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@13
    iget v1, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@15
    add-int/2addr v1, p1

    #@16
    iget-object v2, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@18
    invoke-virtual {v0, v1, p2, v2}, Ljava/nio/MemoryBlock;->pokeShort(ISLjava/nio/ByteOrder;)V

    #@1b
    .line 545
    return-object p0
.end method

.method public putShort(S)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "value"    # S

    #@0
    .prologue
    .line 525
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkIsAccessible()V

    #@3
    .line 526
    iget-boolean v1, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 527
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    #@9
    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@c
    throw v1

    #@d
    .line 529
    :cond_0
    iget v1, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@f
    add-int/lit8 v0, v1, 0x2

    #@11
    .line 530
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/DirectByteBuffer;->limit:I

    #@13
    if-le v0, v1, :cond_1

    #@15
    .line 531
    new-instance v1, Ljava/nio/BufferOverflowException;

    #@17
    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    #@1a
    throw v1

    #@1b
    .line 533
    :cond_1
    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@1d
    iget v2, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@1f
    iget v3, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@21
    add-int/2addr v2, v3

    #@22
    iget-object v3, p0, Ljava/nio/DirectByteBuffer;->order:Ljava/nio/ByteOrder;

    #@24
    invoke-virtual {v1, v2, p1, v3}, Ljava/nio/MemoryBlock;->pokeShort(ISLjava/nio/ByteOrder;)V

    #@27
    .line 534
    iput v0, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@29
    .line 535
    return-object p0
.end method

.method public setAccessible(Z)V
    .locals 1
    .param p1, "accessible"    # Z

    #@0
    .prologue
    .line 288
    iget-object v0, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@2
    invoke-virtual {v0, p1}, Ljava/nio/MemoryBlock;->setAccessible(Z)V

    #@5
    .line 287
    return-void
.end method

.method public slice()Ljava/nio/ByteBuffer;
    .locals 6

    #@0
    .prologue
    .line 82
    invoke-direct {p0}, Ljava/nio/DirectByteBuffer;->checkNotFreed()V

    #@3
    .line 83
    new-instance v0, Ljava/nio/DirectByteBuffer;

    #@5
    iget-object v1, p0, Ljava/nio/DirectByteBuffer;->block:Ljava/nio/MemoryBlock;

    #@7
    invoke-virtual {p0}, Ljava/nio/DirectByteBuffer;->remaining()I

    #@a
    move-result v2

    #@b
    iget v3, p0, Ljava/nio/DirectByteBuffer;->offset:I

    #@d
    iget v4, p0, Ljava/nio/DirectByteBuffer;->position:I

    #@f
    add-int/2addr v3, v4

    #@10
    iget-boolean v4, p0, Ljava/nio/DirectByteBuffer;->isReadOnly:Z

    #@12
    iget-object v5, p0, Ljava/nio/DirectByteBuffer;->mapMode:Ljava/nio/channels/FileChannel$MapMode;

    #@14
    invoke-direct/range {v0 .. v5}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;IIZLjava/nio/channels/FileChannel$MapMode;)V

    #@17
    return-object v0
.end method
