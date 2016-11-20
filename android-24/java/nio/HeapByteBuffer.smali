.class Ljava/nio/HeapByteBuffer;
.super Ljava/nio/ByteBuffer;
.source "HeapByteBuffer.java"


# direct methods
.method constructor <init>(II)V
    .locals 1
    .param p1, "cap"    # I
    .param p2, "lim"    # I

    #@0
    .prologue
    .line 49
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/nio/HeapByteBuffer;-><init>(IIZ)V

    #@4
    .line 48
    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 7
    .param p1, "cap"    # I
    .param p2, "lim"    # I
    .param p3, "isReadOnly"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 54
    new-array v5, p1, [B

    #@3
    const/4 v1, -0x1

    #@4
    move-object v0, p0

    #@5
    move v3, p2

    #@6
    move v4, p1

    #@7
    move v6, v2

    #@8
    invoke-direct/range {v0 .. v6}, Ljava/nio/ByteBuffer;-><init>(IIII[BI)V

    #@b
    .line 55
    iput-boolean p3, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    #@d
    .line 53
    return-void
.end method

.method constructor <init>([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 59
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/HeapByteBuffer;-><init>([BIIZ)V

    #@4
    .line 58
    return-void
.end method

.method protected constructor <init>([BIIIII)V
    .locals 8
    .param p1, "buf"    # [B
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I

    #@0
    .prologue
    .line 70
    const/4 v7, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    move v6, p6

    #@8
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapByteBuffer;-><init>([BIIIIIZ)V

    #@b
    .line 69
    return-void
.end method

.method protected constructor <init>([BIIIIIZ)V
    .locals 7
    .param p1, "buf"    # [B
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I
    .param p7, "isReadOnly"    # Z

    #@0
    .prologue
    move-object v0, p0

    #@1
    move v1, p2

    #@2
    move v2, p3

    #@3
    move v3, p4

    #@4
    move v4, p5

    #@5
    move-object v5, p1

    #@6
    move v6, p6

    #@7
    .line 76
    invoke-direct/range {v0 .. v6}, Ljava/nio/ByteBuffer;-><init>(IIII[BI)V

    #@a
    .line 77
    iput-boolean p7, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    #@c
    .line 75
    return-void
.end method

.method constructor <init>([BIIZ)V
    .locals 7
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "isReadOnly"    # Z

    #@0
    .prologue
    .line 63
    add-int v3, p2, p3

    #@2
    array-length v4, p1

    #@3
    const/4 v1, -0x1

    #@4
    const/4 v6, 0x0

    #@5
    move-object v0, p0

    #@6
    move v2, p2

    #@7
    move-object v5, p1

    #@8
    invoke-direct/range {v0 .. v6}, Ljava/nio/ByteBuffer;-><init>(IIII[BI)V

    #@b
    .line 64
    iput-boolean p4, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    #@d
    .line 62
    return-void
.end method


# virtual methods
.method _get(I)B
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 178
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    #@2
    aget-byte v0, v0, p1

    #@4
    return v0
.end method

.method _put(IB)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "b"    # B

    #@0
    .prologue
    .line 182
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 183
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 185
    :cond_0
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    #@c
    aput-byte p2, v0, p1

    #@e
    .line 181
    return-void
.end method

.method public asCharBuffer()Ljava/nio/CharBuffer;
    .locals 8

    #@0
    .prologue
    .line 229
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    #@3
    move-result v0

    #@4
    shr-int/lit8 v4, v0, 0x1

    #@6
    .line 230
    .local v4, "size":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    #@9
    move-result v6

    #@a
    .line 231
    .local v6, "off":I
    new-instance v0, Ljava/nio/ByteBufferAsCharBuffer;

    #@c
    .line 237
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    #@f
    move-result-object v7

    #@10
    .line 232
    const/4 v2, -0x1

    #@11
    .line 233
    const/4 v3, 0x0

    #@12
    move-object v1, p0

    #@13
    move v5, v4

    #@14
    .line 231
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsCharBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    #@17
    return-object v0
.end method

.method public asDoubleBuffer()Ljava/nio/DoubleBuffer;
    .locals 8

    #@0
    .prologue
    .line 490
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    #@3
    move-result v0

    #@4
    shr-int/lit8 v4, v0, 0x3

    #@6
    .line 491
    .local v4, "size":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    #@9
    move-result v6

    #@a
    .line 492
    .local v6, "off":I
    new-instance v0, Ljava/nio/ByteBufferAsDoubleBuffer;

    #@c
    .line 498
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    #@f
    move-result-object v7

    #@10
    .line 493
    const/4 v2, -0x1

    #@11
    .line 494
    const/4 v3, 0x0

    #@12
    move-object v1, p0

    #@13
    move v5, v4

    #@14
    .line 492
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    #@17
    return-object v0
.end method

.method public asFloatBuffer()Ljava/nio/FloatBuffer;
    .locals 8

    #@0
    .prologue
    .line 438
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    #@3
    move-result v0

    #@4
    shr-int/lit8 v4, v0, 0x2

    #@6
    .line 439
    .local v4, "size":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    #@9
    move-result v6

    #@a
    .line 440
    .local v6, "off":I
    new-instance v0, Ljava/nio/ByteBufferAsFloatBuffer;

    #@c
    .line 446
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    #@f
    move-result-object v7

    #@10
    .line 441
    const/4 v2, -0x1

    #@11
    .line 442
    const/4 v3, 0x0

    #@12
    move-object v1, p0

    #@13
    move v5, v4

    #@14
    .line 440
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsFloatBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    #@17
    return-object v0
.end method

.method public asIntBuffer()Ljava/nio/IntBuffer;
    .locals 8

    #@0
    .prologue
    .line 333
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    #@3
    move-result v0

    #@4
    shr-int/lit8 v4, v0, 0x2

    #@6
    .line 334
    .local v4, "size":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    #@9
    move-result v6

    #@a
    .line 336
    .local v6, "off":I
    new-instance v0, Ljava/nio/ByteBufferAsIntBuffer;

    #@c
    .line 342
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    #@f
    move-result-object v7

    #@10
    .line 337
    const/4 v2, -0x1

    #@11
    .line 338
    const/4 v3, 0x0

    #@12
    move-object v1, p0

    #@13
    move v5, v4

    #@14
    .line 336
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsIntBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    #@17
    return-object v0
.end method

.method public asLongBuffer()Ljava/nio/LongBuffer;
    .locals 8

    #@0
    .prologue
    .line 386
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    #@3
    move-result v0

    #@4
    shr-int/lit8 v4, v0, 0x3

    #@6
    .line 387
    .local v4, "size":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    #@9
    move-result v6

    #@a
    .line 388
    .local v6, "off":I
    new-instance v0, Ljava/nio/ByteBufferAsLongBuffer;

    #@c
    .line 394
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    #@f
    move-result-object v7

    #@10
    .line 389
    const/4 v2, -0x1

    #@11
    .line 390
    const/4 v3, 0x0

    #@12
    move-object v1, p0

    #@13
    move v5, v4

    #@14
    .line 388
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsLongBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    #@17
    return-object v0
.end method

.method public asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .locals 8

    #@0
    .prologue
    .line 101
    new-instance v0, Ljava/nio/HeapByteBuffer;

    #@2
    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    #@4
    .line 102
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->markValue()I

    #@7
    move-result v2

    #@8
    .line 103
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    #@b
    move-result v3

    #@c
    .line 104
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->limit()I

    #@f
    move-result v4

    #@10
    .line 105
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->capacity()I

    #@13
    move-result v5

    #@14
    .line 106
    iget v6, p0, Ljava/nio/HeapByteBuffer;->offset:I

    #@16
    const/4 v7, 0x1

    #@17
    .line 101
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapByteBuffer;-><init>([BIIIIIZ)V

    #@1a
    return-object v0
.end method

.method public asShortBuffer()Ljava/nio/ShortBuffer;
    .locals 8

    #@0
    .prologue
    .line 281
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    #@3
    move-result v0

    #@4
    shr-int/lit8 v4, v0, 0x1

    #@6
    .line 282
    .local v4, "size":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    #@9
    move-result v6

    #@a
    .line 283
    .local v6, "off":I
    new-instance v0, Ljava/nio/ByteBufferAsShortBuffer;

    #@c
    .line 289
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    #@f
    move-result-object v7

    #@10
    .line 284
    const/4 v2, -0x1

    #@11
    .line 285
    const/4 v3, 0x0

    #@12
    move-object v1, p0

    #@13
    move v5, v4

    #@14
    .line 283
    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsShortBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    #@17
    return-object v0
.end method

.method public compact()Ljava/nio/ByteBuffer;
    .locals 5

    #@0
    .prologue
    .line 167
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 168
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 170
    :cond_0
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    #@c
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    #@f
    move-result v1

    #@10
    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@13
    move-result v1

    #@14
    iget-object v2, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    #@16
    const/4 v3, 0x0

    #@17
    invoke-virtual {p0, v3}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@1a
    move-result v3

    #@1b
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    #@1e
    move-result v4

    #@1f
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@22
    .line 171
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    #@25
    move-result v0

    #@26
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->position(I)Ljava/nio/Buffer;

    #@29
    .line 172
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->capacity()I

    #@2c
    move-result v0

    #@2d
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@30
    .line 173
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->discardMark()V

    #@33
    .line 174
    return-object p0
.end method

.method public duplicate()Ljava/nio/ByteBuffer;
    .locals 8

    #@0
    .prologue
    .line 91
    new-instance v0, Ljava/nio/HeapByteBuffer;

    #@2
    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    #@4
    .line 92
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->markValue()I

    #@7
    move-result v2

    #@8
    .line 93
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    #@b
    move-result v3

    #@c
    .line 94
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->limit()I

    #@f
    move-result v4

    #@10
    .line 95
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->capacity()I

    #@13
    move-result v5

    #@14
    .line 96
    iget v6, p0, Ljava/nio/HeapByteBuffer;->offset:I

    #@16
    .line 97
    iget-boolean v7, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    #@18
    .line 91
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapByteBuffer;-><init>([BIIIIIZ)V

    #@1b
    return-object v0
.end method

.method public get()B
    .locals 2

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    #@2
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->nextGetIndex()I

    #@5
    move-result v1

    #@6
    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@9
    move-result v1

    #@a
    aget-byte v0, v0, v1

    #@c
    return v0
.end method

.method public get(I)B
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    #@2
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->checkIndex(I)I

    #@5
    move-result v1

    #@6
    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@9
    move-result v1

    #@a
    aget-byte v0, v0, v1

    #@c
    return v0
.end method

.method public get([BII)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 122
    array-length v0, p1

    #@1
    invoke-static {p2, p3, v0}, Ljava/nio/HeapByteBuffer;->checkBounds(III)V

    #@4
    .line 123
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    #@7
    move-result v0

    #@8
    if-le p3, v0, :cond_0

    #@a
    .line 124
    new-instance v0, Ljava/nio/BufferUnderflowException;

    #@c
    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@f
    throw v0

    #@10
    .line 125
    :cond_0
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    #@12
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    #@15
    move-result v1

    #@16
    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@19
    move-result v1

    #@1a
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1d
    .line 126
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    #@20
    move-result v0

    #@21
    add-int/2addr v0, p3

    #@22
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->position(I)Ljava/nio/Buffer;

    #@25
    .line 127
    return-object p0
.end method

.method public getChar()C
    .locals 2

    #@0
    .prologue
    .line 189
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextGetIndex(I)I

    #@4
    move-result v0

    #@5
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@8
    move-result v0

    #@9
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@b
    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getChar(Ljava/nio/ByteBuffer;IZ)C

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public getChar(I)C
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 193
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    #@4
    move-result v0

    #@5
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@8
    move-result v0

    #@9
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@b
    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getChar(Ljava/nio/ByteBuffer;IZ)C

    #@e
    move-result v0

    #@f
    return v0
.end method

.method getCharUnchecked(I)C
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 197
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@3
    move-result v0

    #@4
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@6
    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getChar(Ljava/nio/ByteBuffer;IZ)C

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getDouble()D
    .locals 2

    #@0
    .prologue
    .line 450
    const/16 v0, 0x8

    #@2
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextGetIndex(I)I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@9
    move-result v0

    #@a
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@c
    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getDouble(Ljava/nio/ByteBuffer;IZ)D

    #@f
    move-result-wide v0

    #@10
    return-wide v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 454
    const/16 v0, 0x8

    #@2
    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@9
    move-result v0

    #@a
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@c
    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getDouble(Ljava/nio/ByteBuffer;IZ)D

    #@f
    move-result-wide v0

    #@10
    return-wide v0
.end method

.method getDoubleUnchecked(I)D
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 458
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@3
    move-result v0

    #@4
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@6
    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getDouble(Ljava/nio/ByteBuffer;IZ)D

    #@9
    move-result-wide v0

    #@a
    return-wide v0
.end method

.method public getFloat()F
    .locals 2

    #@0
    .prologue
    .line 398
    const/4 v0, 0x4

    #@1
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextGetIndex(I)I

    #@4
    move-result v0

    #@5
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@8
    move-result v0

    #@9
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@b
    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getFloat(Ljava/nio/ByteBuffer;IZ)F

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public getFloat(I)F
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 402
    const/4 v0, 0x4

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    #@4
    move-result v0

    #@5
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@8
    move-result v0

    #@9
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@b
    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getFloat(Ljava/nio/ByteBuffer;IZ)F

    #@e
    move-result v0

    #@f
    return v0
.end method

.method getFloatUnchecked(I)F
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 406
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@3
    move-result v0

    #@4
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@6
    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getFloat(Ljava/nio/ByteBuffer;IZ)F

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getInt()I
    .locals 2

    #@0
    .prologue
    .line 293
    const/4 v0, 0x4

    #@1
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextGetIndex(I)I

    #@4
    move-result v0

    #@5
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@8
    move-result v0

    #@9
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@b
    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getInt(Ljava/nio/ByteBuffer;IZ)I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public getInt(I)I
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 297
    const/4 v0, 0x4

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    #@4
    move-result v0

    #@5
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@8
    move-result v0

    #@9
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@b
    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getInt(Ljava/nio/ByteBuffer;IZ)I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method getIntUnchecked(I)I
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 301
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@3
    move-result v0

    #@4
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@6
    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getInt(Ljava/nio/ByteBuffer;IZ)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public getLong()J
    .locals 2

    #@0
    .prologue
    .line 346
    const/16 v0, 0x8

    #@2
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextGetIndex(I)I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@9
    move-result v0

    #@a
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@c
    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getLong(Ljava/nio/ByteBuffer;IZ)J

    #@f
    move-result-wide v0

    #@10
    return-wide v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 350
    const/16 v0, 0x8

    #@2
    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@9
    move-result v0

    #@a
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@c
    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getLong(Ljava/nio/ByteBuffer;IZ)J

    #@f
    move-result-wide v0

    #@10
    return-wide v0
.end method

.method getLongUnchecked(I)J
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 354
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@3
    move-result v0

    #@4
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@6
    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getLong(Ljava/nio/ByteBuffer;IZ)J

    #@9
    move-result-wide v0

    #@a
    return-wide v0
.end method

.method public getShort()S
    .locals 2

    #@0
    .prologue
    .line 241
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextGetIndex(I)I

    #@4
    move-result v0

    #@5
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@8
    move-result v0

    #@9
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@b
    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getShort(Ljava/nio/ByteBuffer;IZ)S

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public getShort(I)S
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 245
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    #@4
    move-result v0

    #@5
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@8
    move-result v0

    #@9
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@b
    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getShort(Ljava/nio/ByteBuffer;IZ)S

    #@e
    move-result v0

    #@f
    return v0
.end method

.method getShortUnchecked(I)S
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 249
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@3
    move-result v0

    #@4
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@6
    invoke-static {p0, v0, v1}, Ljava/nio/Bits;->getShort(Ljava/nio/ByteBuffer;IZ)S

    #@9
    move-result v0

    #@a
    return v0
.end method

.method getUnchecked(I[CII)V
    .locals 7
    .param p1, "pos"    # I
    .param p2, "dst"    # [C
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 201
    mul-int/lit8 v2, p4, 0x2

    #@2
    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    #@4
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@7
    move-result v4

    #@8
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    #@a
    if-eqz v0, :cond_0

    #@c
    const/4 v6, 0x0

    #@d
    :goto_0
    const/4 v5, 0x2

    #@e
    move-object v0, p2

    #@f
    move v1, p3

    #@10
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    #@13
    .line 200
    return-void

    #@14
    .line 201
    :cond_0
    const/4 v6, 0x1

    #@15
    goto :goto_0
.end method

.method getUnchecked(I[DII)V
    .locals 7
    .param p1, "pos"    # I
    .param p2, "dst"    # [D
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 462
    mul-int/lit8 v2, p4, 0x8

    #@2
    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    #@4
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@7
    move-result v4

    #@8
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    #@a
    if-eqz v0, :cond_0

    #@c
    const/4 v6, 0x0

    #@d
    :goto_0
    const/16 v5, 0x8

    #@f
    move-object v0, p2

    #@10
    move v1, p3

    #@11
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    #@14
    .line 461
    return-void

    #@15
    .line 462
    :cond_0
    const/4 v6, 0x1

    #@16
    goto :goto_0
.end method

.method getUnchecked(I[FII)V
    .locals 7
    .param p1, "pos"    # I
    .param p2, "dst"    # [F
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 410
    mul-int/lit8 v2, p4, 0x4

    #@2
    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    #@4
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@7
    move-result v4

    #@8
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    #@a
    if-eqz v0, :cond_0

    #@c
    const/4 v6, 0x0

    #@d
    :goto_0
    const/4 v5, 0x4

    #@e
    move-object v0, p2

    #@f
    move v1, p3

    #@10
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    #@13
    .line 409
    return-void

    #@14
    .line 410
    :cond_0
    const/4 v6, 0x1

    #@15
    goto :goto_0
.end method

.method getUnchecked(I[III)V
    .locals 7
    .param p1, "pos"    # I
    .param p2, "dst"    # [I
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 305
    mul-int/lit8 v2, p4, 0x4

    #@2
    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    #@4
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@7
    move-result v4

    #@8
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    #@a
    if-eqz v0, :cond_0

    #@c
    const/4 v6, 0x0

    #@d
    :goto_0
    const/4 v5, 0x4

    #@e
    move-object v0, p2

    #@f
    move v1, p3

    #@10
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    #@13
    .line 304
    return-void

    #@14
    .line 305
    :cond_0
    const/4 v6, 0x1

    #@15
    goto :goto_0
.end method

.method getUnchecked(I[JII)V
    .locals 7
    .param p1, "pos"    # I
    .param p2, "dst"    # [J
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 358
    mul-int/lit8 v2, p4, 0x8

    #@2
    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    #@4
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@7
    move-result v4

    #@8
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    #@a
    if-eqz v0, :cond_0

    #@c
    const/4 v6, 0x0

    #@d
    :goto_0
    const/16 v5, 0x8

    #@f
    move-object v0, p2

    #@10
    move v1, p3

    #@11
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    #@14
    .line 357
    return-void

    #@15
    .line 358
    :cond_0
    const/4 v6, 0x1

    #@16
    goto :goto_0
.end method

.method getUnchecked(I[SII)V
    .locals 7
    .param p1, "pos"    # I
    .param p2, "dst"    # [S
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 253
    mul-int/lit8 v2, p4, 0x2

    #@2
    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    #@4
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@7
    move-result v4

    #@8
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    #@a
    if-eqz v0, :cond_0

    #@c
    const/4 v6, 0x0

    #@d
    :goto_0
    const/4 v5, 0x2

    #@e
    move-object v0, p2

    #@f
    move v1, p3

    #@10
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    #@13
    .line 252
    return-void

    #@14
    .line 253
    :cond_0
    const/4 v6, 0x1

    #@15
    goto :goto_0
.end method

.method public isDirect()Z
    .locals 1

    #@0
    .prologue
    .line 131
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    #@0
    .prologue
    .line 135
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    #@2
    return v0
.end method

.method protected ix(I)I
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 110
    iget v0, p0, Ljava/nio/HeapByteBuffer;->offset:I

    #@2
    add-int/2addr v0, p1

    #@3
    return v0
.end method

.method public put(B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "x"    # B

    #@0
    .prologue
    .line 139
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 140
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 142
    :cond_0
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    #@c
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->nextPutIndex()I

    #@f
    move-result v1

    #@10
    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@13
    move-result v1

    #@14
    aput-byte p1, v0, v1

    #@16
    .line 143
    return-object p0
.end method

.method public put(IB)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # B

    #@0
    .prologue
    .line 147
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 148
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 150
    :cond_0
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    #@c
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->checkIndex(I)I

    #@f
    move-result v1

    #@10
    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@13
    move-result v1

    #@14
    aput-byte p2, v0, v1

    #@16
    .line 151
    return-object p0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 155
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 156
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 158
    :cond_0
    array-length v0, p1

    #@b
    invoke-static {p2, p3, v0}, Ljava/nio/HeapByteBuffer;->checkBounds(III)V

    #@e
    .line 159
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    #@11
    move-result v0

    #@12
    if-le p3, v0, :cond_1

    #@14
    .line 160
    new-instance v0, Ljava/nio/BufferOverflowException;

    #@16
    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    #@19
    throw v0

    #@1a
    .line 161
    :cond_1
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    #@1c
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    #@1f
    move-result v1

    #@20
    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@23
    move-result v1

    #@24
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@27
    .line 162
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    #@2a
    move-result v0

    #@2b
    add-int/2addr v0, p3

    #@2c
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->position(I)Ljava/nio/Buffer;

    #@2f
    .line 163
    return-object p0
.end method

.method public putChar(C)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "x"    # C

    #@0
    .prologue
    .line 205
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 206
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 208
    :cond_0
    const/4 v0, 0x2

    #@b
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    #@e
    move-result v0

    #@f
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@12
    move-result v0

    #@13
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@15
    invoke-static {p0, v0, p1, v1}, Ljava/nio/Bits;->putChar(Ljava/nio/ByteBuffer;ICZ)V

    #@18
    .line 209
    return-object p0
.end method

.method public putChar(IC)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # C

    #@0
    .prologue
    .line 213
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 214
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 216
    :cond_0
    const/4 v0, 0x2

    #@b
    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    #@e
    move-result v0

    #@f
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@12
    move-result v0

    #@13
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@15
    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putChar(Ljava/nio/ByteBuffer;ICZ)V

    #@18
    .line 217
    return-object p0
.end method

.method putCharUnchecked(IC)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # C

    #@0
    .prologue
    .line 221
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@3
    move-result v0

    #@4
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@6
    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putChar(Ljava/nio/ByteBuffer;ICZ)V

    #@9
    .line 220
    return-void
.end method

.method public putDouble(D)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "x"    # D

    #@0
    .prologue
    .line 466
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 467
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 469
    :cond_0
    const/16 v0, 0x8

    #@c
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    #@f
    move-result v0

    #@10
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@13
    move-result v0

    #@14
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@16
    invoke-static {p0, v0, p1, p2, v1}, Ljava/nio/Bits;->putDouble(Ljava/nio/ByteBuffer;IDZ)V

    #@19
    .line 470
    return-object p0
.end method

.method public putDouble(ID)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # D

    #@0
    .prologue
    .line 474
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 475
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 477
    :cond_0
    const/16 v0, 0x8

    #@c
    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    #@f
    move-result v0

    #@10
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@13
    move-result v0

    #@14
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@16
    invoke-static {p0, v0, p2, p3, v1}, Ljava/nio/Bits;->putDouble(Ljava/nio/ByteBuffer;IDZ)V

    #@19
    .line 478
    return-object p0
.end method

.method putDoubleUnchecked(ID)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # D

    #@0
    .prologue
    .line 482
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@3
    move-result v0

    #@4
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@6
    invoke-static {p0, v0, p2, p3, v1}, Ljava/nio/Bits;->putDouble(Ljava/nio/ByteBuffer;IDZ)V

    #@9
    .line 481
    return-void
.end method

.method public putFloat(F)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "x"    # F

    #@0
    .prologue
    .line 414
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 415
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 417
    :cond_0
    const/4 v0, 0x4

    #@b
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    #@e
    move-result v0

    #@f
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@12
    move-result v0

    #@13
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@15
    invoke-static {p0, v0, p1, v1}, Ljava/nio/Bits;->putFloat(Ljava/nio/ByteBuffer;IFZ)V

    #@18
    .line 418
    return-object p0
.end method

.method public putFloat(IF)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # F

    #@0
    .prologue
    .line 422
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 423
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 425
    :cond_0
    const/4 v0, 0x4

    #@b
    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    #@e
    move-result v0

    #@f
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@12
    move-result v0

    #@13
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@15
    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putFloat(Ljava/nio/ByteBuffer;IFZ)V

    #@18
    .line 426
    return-object p0
.end method

.method putFloatUnchecked(IF)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # F

    #@0
    .prologue
    .line 430
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@3
    move-result v0

    #@4
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@6
    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putFloat(Ljava/nio/ByteBuffer;IFZ)V

    #@9
    .line 429
    return-void
.end method

.method public putInt(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "x"    # I

    #@0
    .prologue
    .line 309
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 310
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 312
    :cond_0
    const/4 v0, 0x4

    #@b
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    #@e
    move-result v0

    #@f
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@12
    move-result v0

    #@13
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@15
    invoke-static {p0, v0, p1, v1}, Ljava/nio/Bits;->putInt(Ljava/nio/ByteBuffer;IIZ)V

    #@18
    .line 313
    return-object p0
.end method

.method public putInt(II)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # I

    #@0
    .prologue
    .line 317
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 318
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 320
    :cond_0
    const/4 v0, 0x4

    #@b
    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    #@e
    move-result v0

    #@f
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@12
    move-result v0

    #@13
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@15
    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putInt(Ljava/nio/ByteBuffer;IIZ)V

    #@18
    .line 321
    return-object p0
.end method

.method putIntUnchecked(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # I

    #@0
    .prologue
    .line 325
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@3
    move-result v0

    #@4
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@6
    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putInt(Ljava/nio/ByteBuffer;IIZ)V

    #@9
    .line 324
    return-void
.end method

.method public putLong(IJ)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # J

    #@0
    .prologue
    .line 370
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 371
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 373
    :cond_0
    const/16 v0, 0x8

    #@c
    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    #@f
    move-result v0

    #@10
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@13
    move-result v0

    #@14
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@16
    invoke-static {p0, v0, p2, p3, v1}, Ljava/nio/Bits;->putLong(Ljava/nio/ByteBuffer;IJZ)V

    #@19
    .line 374
    return-object p0
.end method

.method public putLong(J)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "x"    # J

    #@0
    .prologue
    .line 362
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 363
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 365
    :cond_0
    const/16 v0, 0x8

    #@c
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    #@f
    move-result v0

    #@10
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@13
    move-result v0

    #@14
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@16
    invoke-static {p0, v0, p1, p2, v1}, Ljava/nio/Bits;->putLong(Ljava/nio/ByteBuffer;IJZ)V

    #@19
    .line 366
    return-object p0
.end method

.method putLongUnchecked(IJ)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # J

    #@0
    .prologue
    .line 378
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@3
    move-result v0

    #@4
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@6
    invoke-static {p0, v0, p2, p3, v1}, Ljava/nio/Bits;->putLong(Ljava/nio/ByteBuffer;IJZ)V

    #@9
    .line 377
    return-void
.end method

.method public putShort(IS)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # S

    #@0
    .prologue
    .line 265
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 266
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 268
    :cond_0
    const/4 v0, 0x2

    #@b
    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    #@e
    move-result v0

    #@f
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@12
    move-result v0

    #@13
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@15
    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putShort(Ljava/nio/ByteBuffer;ISZ)V

    #@18
    .line 269
    return-object p0
.end method

.method public putShort(S)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "x"    # S

    #@0
    .prologue
    .line 257
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 258
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 260
    :cond_0
    const/4 v0, 0x2

    #@b
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    #@e
    move-result v0

    #@f
    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@12
    move-result v0

    #@13
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@15
    invoke-static {p0, v0, p1, v1}, Ljava/nio/Bits;->putShort(Ljava/nio/ByteBuffer;ISZ)V

    #@18
    .line 261
    return-object p0
.end method

.method putShortUnchecked(IS)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # S

    #@0
    .prologue
    .line 273
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@3
    move-result v0

    #@4
    iget-boolean v1, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    #@6
    invoke-static {p0, v0, p2, v1}, Ljava/nio/Bits;->putShort(Ljava/nio/ByteBuffer;ISZ)V

    #@9
    .line 272
    return-void
.end method

.method putUnchecked(I[CII)V
    .locals 7
    .param p1, "pos"    # I
    .param p2, "src"    # [C
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 225
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    #@2
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@5
    move-result v1

    #@6
    mul-int/lit8 v2, p4, 0x2

    #@8
    iget-boolean v3, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    #@a
    if-eqz v3, :cond_0

    #@c
    const/4 v6, 0x0

    #@d
    :goto_0
    const/4 v5, 0x2

    #@e
    move-object v3, p2

    #@f
    move v4, p3

    #@10
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    #@13
    .line 224
    return-void

    #@14
    .line 225
    :cond_0
    const/4 v6, 0x1

    #@15
    goto :goto_0
.end method

.method putUnchecked(I[DII)V
    .locals 7
    .param p1, "pos"    # I
    .param p2, "src"    # [D
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 486
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    #@2
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@5
    move-result v1

    #@6
    mul-int/lit8 v2, p4, 0x8

    #@8
    iget-boolean v3, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    #@a
    if-eqz v3, :cond_0

    #@c
    const/4 v6, 0x0

    #@d
    :goto_0
    const/16 v5, 0x8

    #@f
    move-object v3, p2

    #@10
    move v4, p3

    #@11
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    #@14
    .line 485
    return-void

    #@15
    .line 486
    :cond_0
    const/4 v6, 0x1

    #@16
    goto :goto_0
.end method

.method putUnchecked(I[FII)V
    .locals 7
    .param p1, "pos"    # I
    .param p2, "src"    # [F
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 434
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    #@2
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@5
    move-result v1

    #@6
    mul-int/lit8 v2, p4, 0x4

    #@8
    iget-boolean v3, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    #@a
    if-eqz v3, :cond_0

    #@c
    const/4 v6, 0x0

    #@d
    :goto_0
    const/4 v5, 0x4

    #@e
    move-object v3, p2

    #@f
    move v4, p3

    #@10
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    #@13
    .line 433
    return-void

    #@14
    .line 434
    :cond_0
    const/4 v6, 0x1

    #@15
    goto :goto_0
.end method

.method putUnchecked(I[III)V
    .locals 7
    .param p1, "pos"    # I
    .param p2, "src"    # [I
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 329
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    #@2
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@5
    move-result v1

    #@6
    mul-int/lit8 v2, p4, 0x4

    #@8
    iget-boolean v3, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    #@a
    if-eqz v3, :cond_0

    #@c
    const/4 v6, 0x0

    #@d
    :goto_0
    const/4 v5, 0x4

    #@e
    move-object v3, p2

    #@f
    move v4, p3

    #@10
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    #@13
    .line 328
    return-void

    #@14
    .line 329
    :cond_0
    const/4 v6, 0x1

    #@15
    goto :goto_0
.end method

.method putUnchecked(I[JII)V
    .locals 7
    .param p1, "pos"    # I
    .param p2, "src"    # [J
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 382
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    #@2
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@5
    move-result v1

    #@6
    mul-int/lit8 v2, p4, 0x8

    #@8
    iget-boolean v3, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    #@a
    if-eqz v3, :cond_0

    #@c
    const/4 v6, 0x0

    #@d
    :goto_0
    const/16 v5, 0x8

    #@f
    move-object v3, p2

    #@10
    move v4, p3

    #@11
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    #@14
    .line 381
    return-void

    #@15
    .line 382
    :cond_0
    const/4 v6, 0x1

    #@16
    goto :goto_0
.end method

.method putUnchecked(I[SII)V
    .locals 7
    .param p1, "pos"    # I
    .param p2, "src"    # [S
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 277
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    #@2
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    #@5
    move-result v1

    #@6
    mul-int/lit8 v2, p4, 0x2

    #@8
    iget-boolean v3, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    #@a
    if-eqz v3, :cond_0

    #@c
    const/4 v6, 0x0

    #@d
    :goto_0
    const/4 v5, 0x2

    #@e
    move-object v3, p2

    #@f
    move v4, p3

    #@10
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    #@13
    .line 276
    return-void

    #@14
    .line 277
    :cond_0
    const/4 v6, 0x1

    #@15
    goto :goto_0
.end method

.method public slice()Ljava/nio/ByteBuffer;
    .locals 8

    #@0
    .prologue
    .line 81
    new-instance v0, Ljava/nio/HeapByteBuffer;

    #@2
    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    #@4
    .line 84
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    #@7
    move-result v4

    #@8
    .line 85
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->remaining()I

    #@b
    move-result v5

    #@c
    .line 86
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    #@f
    move-result v2

    #@10
    iget v3, p0, Ljava/nio/HeapByteBuffer;->offset:I

    #@12
    add-int v6, v2, v3

    #@14
    .line 87
    iget-boolean v7, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    #@16
    .line 82
    const/4 v2, -0x1

    #@17
    .line 83
    const/4 v3, 0x0

    #@18
    .line 81
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapByteBuffer;-><init>([BIIIIIZ)V

    #@1b
    return-object v0
.end method
