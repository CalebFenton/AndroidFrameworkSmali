.class final Ljava/nio/HeapByteBuffer;
.super Ljava/nio/ByteBuffer;
.source "HeapByteBuffer.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 46
    return-void
.end method

.method constructor blacklist <init>(II)V
    .registers 4
    .param p1, "cap"    # I
    .param p2, "lim"    # I

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/nio/HeapByteBuffer;-><init>(IIZ)V

    .line 82
    return-void
.end method

.method private constructor blacklist <init>(IIZ)V
    .registers 11
    .param p1, "cap"    # I
    .param p2, "lim"    # I
    .param p3, "isReadOnly"    # Z

    .line 87
    new-array v5, p1, [B

    const/4 v6, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move-object v0, p0

    move v4, p1

    move v3, p2

    .end local p1    # "cap":I
    .end local p2    # "lim":I
    .local v3, "lim":I
    .local v4, "cap":I
    invoke-direct/range {v0 .. v6}, Ljava/nio/ByteBuffer;-><init>(IIII[BI)V

    .line 88
    iput-boolean p3, v0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    .line 89
    return-void
.end method

.method constructor blacklist <init>([BII)V
    .registers 5
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/HeapByteBuffer;-><init>([BIIZ)V

    .line 108
    return-void
.end method

.method private constructor blacklist <init>([BIIIIIZ)V
    .registers 15
    .param p1, "buf"    # [B
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I
    .param p7, "isReadOnly"    # Z

    .line 126
    move-object v0, p0

    move-object v5, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v6, p6

    .end local p1    # "buf":[B
    .end local p2    # "mark":I
    .end local p3    # "pos":I
    .end local p4    # "lim":I
    .end local p5    # "cap":I
    .end local p6    # "off":I
    .local v1, "mark":I
    .local v2, "pos":I
    .local v3, "lim":I
    .local v4, "cap":I
    .local v5, "buf":[B
    .local v6, "off":I
    invoke-direct/range {v0 .. v6}, Ljava/nio/ByteBuffer;-><init>(IIII[BI)V

    .line 128
    iput-boolean p7, v0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    .line 139
    return-void
.end method

.method private constructor blacklist <init>([BIIZ)V
    .registers 12
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "isReadOnly"    # Z

    .line 113
    add-int v3, p2, p3

    array-length v4, p1

    const/4 v6, 0x0

    const/4 v1, -0x1

    move-object v0, p0

    move-object v5, p1

    move v2, p2

    .end local p1    # "buf":[B
    .end local p2    # "off":I
    .local v2, "off":I
    .local v5, "buf":[B
    invoke-direct/range {v0 .. v6}, Ljava/nio/ByteBuffer;-><init>(IIII[BI)V

    .line 114
    iput-boolean p4, v0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    .line 115
    return-void
.end method

.method private blacklist byteOffset(J)J
    .registers 5
    .param p1, "i"    # J

    .line 215
    iget-wide v0, p0, Ljava/nio/HeapByteBuffer;->address:J

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private blacklist ix(I)I
    .registers 3
    .param p1, "i"    # I

    .line 210
    iget v0, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int/2addr v0, p1

    return v0
.end method

.method private blacklist throwIfReadOnly()V
    .registers 2

    .line 1220
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_5

    .line 1223
    return-void

    .line 1221
    :cond_5
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method


# virtual methods
.method blacklist _get(I)B
    .registers 3
    .param p1, "i"    # I

    .line 426
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method blacklist _put(IB)V
    .registers 4
    .param p1, "i"    # I
    .param p2, "b"    # B

    .line 433
    invoke-direct {p0}, Ljava/nio/HeapByteBuffer;->throwIfReadOnly()V

    .line 434
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    aput-byte p2, v0, p1

    .line 438
    return-void
.end method

.method public whitelist test-api asCharBuffer()Ljava/nio/CharBuffer;
    .registers 9

    .line 529
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v6

    .line 530
    .local v6, "pos":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->limit()I

    move-result v0

    sub-int/2addr v0, v6

    shr-int/lit8 v4, v0, 0x1

    .line 549
    .local v4, "size":I
    new-instance v0, Ljava/nio/ByteBufferAsCharBuffer;

    .line 555
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v5, v4

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsCharBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 549
    return-object v0
.end method

.method public whitelist test-api asDoubleBuffer()Ljava/nio/DoubleBuffer;
    .registers 9

    .line 1142
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v6

    .line 1143
    .local v6, "pos":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->limit()I

    move-result v0

    sub-int/2addr v0, v6

    shr-int/lit8 v4, v0, 0x3

    .line 1162
    .local v4, "size":I
    new-instance v0, Ljava/nio/ByteBufferAsDoubleBuffer;

    .line 1168
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v5, v4

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 1162
    return-object v0
.end method

.method public whitelist test-api asFloatBuffer()Ljava/nio/FloatBuffer;
    .registers 9

    .line 1034
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v6

    .line 1035
    .local v6, "pos":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->limit()I

    move-result v0

    sub-int/2addr v0, v6

    shr-int/lit8 v4, v0, 0x2

    .line 1054
    .local v4, "size":I
    new-instance v0, Ljava/nio/ByteBufferAsFloatBuffer;

    .line 1060
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v5, v4

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsFloatBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 1054
    return-object v0
.end method

.method public whitelist test-api asIntBuffer()Ljava/nio/IntBuffer;
    .registers 9

    .line 776
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v6

    .line 777
    .local v6, "pos":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->limit()I

    move-result v0

    sub-int/2addr v0, v6

    shr-int/lit8 v4, v0, 0x2

    .line 795
    .local v4, "size":I
    new-instance v0, Ljava/nio/ByteBufferAsIntBuffer;

    .line 801
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v5, v4

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsIntBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 795
    return-object v0
.end method

.method public whitelist test-api asLongBuffer()Ljava/nio/LongBuffer;
    .registers 9

    .line 926
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v6

    .line 927
    .local v6, "pos":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->limit()I

    move-result v0

    sub-int/2addr v0, v6

    shr-int/lit8 v4, v0, 0x3

    .line 946
    .local v4, "size":I
    new-instance v0, Ljava/nio/ByteBufferAsLongBuffer;

    .line 952
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v5, v4

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsLongBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 946
    return-object v0
.end method

.method public whitelist test-api asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .registers 9

    .line 194
    new-instance v0, Ljava/nio/HeapByteBuffer;

    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    .line 195
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->markValue()I

    move-result v2

    .line 196
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v3

    .line 197
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->limit()I

    move-result v4

    .line 198
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/HeapByteBuffer;->offset:I

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapByteBuffer;-><init>([BIIIIIZ)V

    .line 194
    return-object v0
.end method

.method public whitelist test-api asShortBuffer()Ljava/nio/ShortBuffer;
    .registers 9

    .line 647
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v6

    .line 648
    .local v6, "pos":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->limit()I

    move-result v0

    sub-int/2addr v0, v6

    shr-int/lit8 v4, v0, 0x1

    .line 667
    .local v4, "size":I
    new-instance v0, Ljava/nio/ByteBufferAsShortBuffer;

    .line 673
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    const/4 v2, -0x1

    const/4 v3, 0x0

    move v5, v4

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsShortBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 667
    return-object v0
.end method

.method public whitelist test-api compact()Ljava/nio/ByteBuffer;
    .registers 8

    .line 405
    invoke-direct {p0}, Ljava/nio/HeapByteBuffer;->throwIfReadOnly()V

    .line 406
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v0

    .line 407
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->limit()I

    move-result v1

    .line 408
    .local v1, "lim":I
    nop

    .line 409
    const/4 v2, 0x0

    if-gt v0, v1, :cond_12

    sub-int v3, v1, v0

    goto :goto_13

    :cond_12
    move v3, v2

    .line 410
    .local v3, "rem":I
    :goto_13
    iget-object v4, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-direct {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v5

    iget-object v6, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-direct {p0, v2}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v2

    invoke-static {v4, v5, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    invoke-virtual {p0, v3}, Ljava/nio/HeapByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 412
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/HeapByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 413
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->discardMark()V

    .line 414
    return-object p0
.end method

.method public bridge synthetic whitelist test-api duplicate()Ljava/nio/Buffer;
    .registers 2

    .line 46
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api duplicate()Ljava/nio/ByteBuffer;
    .registers 9

    .line 171
    new-instance v0, Ljava/nio/HeapByteBuffer;

    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    .line 172
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->markValue()I

    move-result v2

    .line 173
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v3

    .line 174
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->limit()I

    move-result v4

    .line 175
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/HeapByteBuffer;->offset:I

    iget-boolean v7, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapByteBuffer;-><init>([BIIIIIZ)V

    .line 171
    return-object v0
.end method

.method public whitelist test-api get()B
    .registers 3

    .line 221
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->nextGetIndex()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    aget-byte v0, v0, v1

    return v0
.end method

.method public whitelist test-api get(I)B
    .registers 4
    .param p1, "i"    # I

    .line 226
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->checkIndex(I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    aget-byte v0, v0, v1

    return v0
.end method

.method public whitelist test-api get(I[BII)Ljava/nio/ByteBuffer;
    .registers 7
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 250
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->checkScope()V

    .line 251
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->limit()I

    move-result v0

    invoke-static {p1, p4, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 252
    array-length v0, p2

    invoke-static {p3, p4, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 253
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-direct {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    invoke-static {v0, v1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    return-object p0
.end method

.method public whitelist test-api get([BII)Ljava/nio/ByteBuffer;
    .registers 7
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 238
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->checkScope()V

    .line 239
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 240
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v0

    .line 241
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, v0

    if-gt p3, v1, :cond_21

    .line 243
    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-direct {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v2

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 245
    return-object p0

    .line 242
    :cond_21
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1
.end method

.method public whitelist test-api getChar()C
    .registers 2

    .line 448
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->getCharUnchecked(I)C

    move-result v0

    return v0
.end method

.method public whitelist test-api getChar(I)C
    .registers 3
    .param p1, "i"    # I

    .line 455
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->getCharUnchecked(I)C

    move-result v0

    return v0
.end method

.method blacklist getCharUnchecked(I)C
    .registers 6
    .param p1, "i"    # I

    .line 477
    invoke-direct {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    .line 478
    .local v0, "ix":I
    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    .line 479
    .local v1, "src":[B
    iget-boolean v2, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    if-eqz v2, :cond_17

    .line 480
    aget-byte v2, v1, v0

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-char v2, v2

    return v2

    .line 482
    :cond_17
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x8

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-char v2, v2

    return v2
.end method

.method public whitelist test-api getDouble()D
    .registers 3

    .line 1073
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->getDoubleUnchecked(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getDouble(I)D
    .registers 4
    .param p1, "i"    # I

    .line 1081
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->getDoubleUnchecked(I)D

    move-result-wide v0

    return-wide v0
.end method

.method blacklist getDoubleUnchecked(I)D
    .registers 4
    .param p1, "i"    # I

    .line 1089
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->getLongUnchecked(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getFloat()F
    .registers 2

    .line 965
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->getFloatUnchecked(I)F

    move-result v0

    return v0
.end method

.method public whitelist test-api getFloat(I)F
    .registers 3
    .param p1, "i"    # I

    .line 973
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->getFloatUnchecked(I)F

    move-result v0

    return v0
.end method

.method blacklist getFloatUnchecked(I)F
    .registers 3
    .param p1, "i"    # I

    .line 981
    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->getIntUnchecked(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public whitelist test-api getInt()I
    .registers 2

    .line 685
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->getIntUnchecked(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getInt(I)I
    .registers 3
    .param p1, "i"    # I

    .line 692
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->getIntUnchecked(I)I

    move-result v0

    return v0
.end method

.method blacklist getIntUnchecked(I)I
    .registers 6
    .param p1, "i"    # I

    .line 700
    invoke-direct {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    .line 701
    .local v0, "ix":I
    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    .line 702
    .local v1, "src":[B
    iget-boolean v2, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    if-eqz v2, :cond_2a

    .line 703
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "ix":I
    .local v2, "ix":I
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ix":I
    .local v3, "ix":I
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "ix":I
    .restart local v2    # "ix":I
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v0, v3

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    return v0

    .line 708
    .end local v2    # "ix":I
    .restart local v0    # "ix":I
    :cond_2a
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "ix":I
    .restart local v2    # "ix":I
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "ix":I
    .restart local v3    # "ix":I
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "ix":I
    .restart local v2    # "ix":I
    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v0, v3

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v0, v3

    return v0
.end method

.method public whitelist test-api getLong()J
    .registers 3

    .line 813
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->getLongUnchecked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getLong(I)J
    .registers 4
    .param p1, "i"    # I

    .line 820
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->getLongUnchecked(I)J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist getLongUnchecked(I)J
    .registers 13
    .param p1, "i"    # I

    .line 828
    invoke-direct {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    .line 829
    .local v0, "ix":I
    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    .line 831
    .local v1, "src":[B
    iget-boolean v2, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    const-wide v3, 0xffffffffL

    const/16 v5, 0x20

    if-eqz v2, :cond_5b

    .line 832
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "ix":I
    .local v2, "ix":I
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "ix":I
    .local v6, "ix":I
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    add-int/lit8 v2, v6, 0x1

    .end local v6    # "ix":I
    .restart local v2    # "ix":I
    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v0, v6

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "ix":I
    .restart local v6    # "ix":I
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x0

    or-int/2addr v0, v2

    .line 836
    .local v0, "h":I
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "ix":I
    .restart local v2    # "ix":I
    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    add-int/lit8 v7, v2, 0x1

    .end local v2    # "ix":I
    .local v7, "ix":I
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v6

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "ix":I
    .restart local v6    # "ix":I
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v2, v7

    aget-byte v7, v1, v6

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x0

    or-int/2addr v2, v7

    .line 840
    .local v2, "l":I
    int-to-long v7, v0

    shl-long/2addr v7, v5

    int-to-long v9, v2

    and-long/2addr v3, v9

    or-long/2addr v3, v7

    return-wide v3

    .line 842
    .end local v2    # "l":I
    .end local v6    # "ix":I
    .local v0, "ix":I
    :cond_5b
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "ix":I
    .local v2, "ix":I
    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x0

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "ix":I
    .restart local v6    # "ix":I
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    add-int/lit8 v2, v6, 0x1

    .end local v6    # "ix":I
    .restart local v2    # "ix":I
    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v0, v6

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "ix":I
    .restart local v6    # "ix":I
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v0, v2

    .line 846
    .local v0, "l":I
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "ix":I
    .restart local v2    # "ix":I
    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x0

    add-int/lit8 v7, v2, 0x1

    .end local v2    # "ix":I
    .restart local v7    # "ix":I
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v6

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "ix":I
    .restart local v6    # "ix":I
    aget-byte v7, v1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v2, v7

    aget-byte v7, v1, v6

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v2, v7

    .line 850
    .local v2, "h":I
    int-to-long v7, v2

    shl-long/2addr v7, v5

    int-to-long v9, v0

    and-long/2addr v3, v9

    or-long/2addr v3, v7

    return-wide v3
.end method

.method public whitelist test-api getShort()S
    .registers 2

    .line 567
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextGetIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->getShortUnchecked(I)S

    move-result v0

    return v0
.end method

.method public whitelist test-api getShort(I)S
    .registers 3
    .param p1, "i"    # I

    .line 574
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->getShortUnchecked(I)S

    move-result v0

    return v0
.end method

.method blacklist getShortUnchecked(I)S
    .registers 6
    .param p1, "i"    # I

    .line 582
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    .line 583
    .local v0, "src":[B
    invoke-direct {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    .line 584
    .local v1, "ix":I
    iget-boolean v2, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    if-eqz v2, :cond_17

    .line 585
    aget-byte v2, v0, v1

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-short v2, v2

    return v2

    .line 587
    :cond_17
    add-int/lit8 v2, v1, 0x1

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-short v2, v2

    return v2
.end method

.method blacklist getUnchecked(I[CII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "dst"    # [C
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .line 488
    mul-int/lit8 v2, p4, 0x2

    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-direct {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v4

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    const/4 v5, 0x2

    move-object v0, p2

    move v1, p3

    .end local p2    # "dst":[C
    .end local p3    # "dstOffset":I
    .local v0, "dst":[C
    .local v1, "dstOffset":I
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 489
    return-void
.end method

.method blacklist getUnchecked(I[DII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "dst"    # [D
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .line 1094
    mul-int/lit8 v2, p4, 0x8

    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-direct {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v4

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    const/16 v5, 0x8

    move-object v0, p2

    move v1, p3

    .end local p2    # "dst":[D
    .end local p3    # "dstOffset":I
    .local v0, "dst":[D
    .local v1, "dstOffset":I
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 1095
    return-void
.end method

.method blacklist getUnchecked(I[FII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "dst"    # [F
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .line 986
    mul-int/lit8 v2, p4, 0x4

    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-direct {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v4

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    const/4 v5, 0x4

    move-object v0, p2

    move v1, p3

    .end local p2    # "dst":[F
    .end local p3    # "dstOffset":I
    .local v0, "dst":[F
    .local v1, "dstOffset":I
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 987
    return-void
.end method

.method blacklist getUnchecked(I[III)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "dst"    # [I
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .line 717
    mul-int/lit8 v2, p4, 0x4

    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-direct {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v4

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    const/4 v5, 0x4

    move-object v0, p2

    move v1, p3

    .end local p2    # "dst":[I
    .end local p3    # "dstOffset":I
    .local v0, "dst":[I
    .local v1, "dstOffset":I
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 718
    return-void
.end method

.method blacklist getUnchecked(I[JII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "dst"    # [J
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .line 856
    mul-int/lit8 v2, p4, 0x8

    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-direct {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v4

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    const/16 v5, 0x8

    move-object v0, p2

    move v1, p3

    .end local p2    # "dst":[J
    .end local p3    # "dstOffset":I
    .local v0, "dst":[J
    .local v1, "dstOffset":I
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 857
    return-void
.end method

.method blacklist getUnchecked(I[SII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "dst"    # [S
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    .line 593
    mul-int/lit8 v2, p4, 0x2

    iget-object v3, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-direct {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v4

    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v0, 0x1

    const/4 v5, 0x2

    move-object v0, p2

    move v1, p3

    .end local p2    # "dst":[S
    .end local p3    # "dstOffset":I
    .local v0, "dst":[S
    .local v1, "dstOffset":I
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    .line 594
    return-void
.end method

.method public whitelist test-api isDirect()Z
    .registers 2

    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isReadOnly()Z
    .registers 2

    .line 266
    iget-boolean v0, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    return v0
.end method

.method public whitelist test-api put(B)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "x"    # B

    .line 273
    invoke-direct {p0}, Ljava/nio/HeapByteBuffer;->throwIfReadOnly()V

    .line 274
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->nextPutIndex()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    aput-byte p1, v0, v1

    .line 275
    return-object p0
.end method

.method public whitelist test-api put(IB)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # B

    .line 285
    invoke-direct {p0}, Ljava/nio/HeapByteBuffer;->throwIfReadOnly()V

    .line 286
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-virtual {p0, p1}, Ljava/nio/HeapByteBuffer;->checkIndex(I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    aput-byte p2, v0, v1

    .line 287
    return-object p0
.end method

.method public whitelist test-api put(ILjava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "index"    # I
    .param p2, "src"    # Ljava/nio/ByteBuffer;
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 353
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->checkScope()V

    .line 354
    invoke-super {p0, p1, p2, p3, p4}, Ljava/nio/ByteBuffer;->put(ILjava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    .line 355
    return-object p0
.end method

.method public whitelist test-api put(I[BII)Ljava/nio/ByteBuffer;
    .registers 7
    .param p1, "index"    # I
    .param p2, "src"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 364
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->checkScope()V

    .line 365
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->limit()I

    move-result v0

    invoke-static {p1, p4, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 366
    array-length v0, p2

    invoke-static {p3, p4, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 368
    invoke-direct {p0}, Ljava/nio/HeapByteBuffer;->throwIfReadOnly()V

    .line 369
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-direct {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    return-object p0
.end method

.method public whitelist test-api put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 314
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->checkScope()V

    .line 317
    invoke-super {p0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 344
    return-object p0
.end method

.method public whitelist test-api put([BII)Ljava/nio/ByteBuffer;
    .registers 7
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 297
    invoke-direct {p0}, Ljava/nio/HeapByteBuffer;->throwIfReadOnly()V

    .line 298
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->checkScope()V

    .line 299
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 300
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v0

    .line 301
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, v0

    if-gt p3, v1, :cond_24

    .line 303
    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-direct {p0, v0}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v2

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Ljava/nio/HeapByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 305
    return-object p0

    .line 302
    :cond_24
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1
.end method

.method public whitelist test-api putChar(C)Ljava/nio/ByteBuffer;
    .registers 3
    .param p1, "x"    # C

    .line 464
    invoke-direct {p0}, Ljava/nio/HeapByteBuffer;->throwIfReadOnly()V

    .line 467
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/nio/HeapByteBuffer;->putCharUnchecked(IC)V

    .line 468
    return-object p0
.end method

.method public whitelist test-api putChar(IC)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "i"    # I
    .param p2, "x"    # C

    .line 496
    invoke-direct {p0}, Ljava/nio/HeapByteBuffer;->throwIfReadOnly()V

    .line 499
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Ljava/nio/HeapByteBuffer;->putCharUnchecked(IC)V

    .line 500
    return-object p0
.end method

.method blacklist putCharUnchecked(IC)V
    .registers 7
    .param p1, "i"    # I
    .param p2, "x"    # C

    .line 509
    invoke-direct {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    .line 510
    .local v0, "ix":I
    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    .line 512
    .local v1, "dst":[B
    iget-boolean v2, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    if-eqz v2, :cond_1b

    .line 513
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "ix":I
    .local v2, "ix":I
    shr-int/lit8 v3, p2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 514
    shr-int/lit8 v0, p2, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    goto :goto_2b

    .line 516
    .end local v2    # "ix":I
    .restart local v0    # "ix":I
    :cond_1b
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "ix":I
    .restart local v2    # "ix":I
    shr-int/lit8 v3, p2, 0x0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 517
    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 519
    :goto_2b
    return-void
.end method

.method public whitelist test-api putDouble(D)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "x"    # D

    .line 1102
    invoke-direct {p0}, Ljava/nio/HeapByteBuffer;->throwIfReadOnly()V

    .line 1106
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Ljava/nio/HeapByteBuffer;->putDoubleUnchecked(ID)V

    .line 1107
    return-object p0
.end method

.method public whitelist test-api putDouble(ID)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # D

    .line 1117
    invoke-direct {p0}, Ljava/nio/HeapByteBuffer;->throwIfReadOnly()V

    .line 1121
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Ljava/nio/HeapByteBuffer;->putDoubleUnchecked(ID)V

    .line 1122
    return-object p0
.end method

.method blacklist putDoubleUnchecked(ID)V
    .registers 6
    .param p1, "i"    # I
    .param p2, "x"    # D

    .line 1131
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/HeapByteBuffer;->putLongUnchecked(IJ)V

    .line 1132
    return-void
.end method

.method public whitelist test-api putFloat(F)Ljava/nio/ByteBuffer;
    .registers 3
    .param p1, "x"    # F

    .line 994
    invoke-direct {p0}, Ljava/nio/HeapByteBuffer;->throwIfReadOnly()V

    .line 998
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/nio/HeapByteBuffer;->putFloatUnchecked(IF)V

    .line 999
    return-object p0
.end method

.method public whitelist test-api putFloat(IF)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "i"    # I
    .param p2, "x"    # F

    .line 1009
    invoke-direct {p0}, Ljava/nio/HeapByteBuffer;->throwIfReadOnly()V

    .line 1013
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Ljava/nio/HeapByteBuffer;->putFloatUnchecked(IF)V

    .line 1014
    return-object p0
.end method

.method blacklist putFloatUnchecked(IF)V
    .registers 4
    .param p1, "i"    # I
    .param p2, "x"    # F

    .line 1023
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->putIntUnchecked(II)V

    .line 1024
    return-void
.end method

.method public whitelist test-api putInt(I)Ljava/nio/ByteBuffer;
    .registers 3
    .param p1, "x"    # I

    .line 725
    invoke-direct {p0}, Ljava/nio/HeapByteBuffer;->throwIfReadOnly()V

    .line 728
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/nio/HeapByteBuffer;->putIntUnchecked(II)V

    .line 729
    return-object p0
.end method

.method public whitelist test-api putInt(II)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "i"    # I
    .param p2, "x"    # I

    .line 739
    invoke-direct {p0}, Ljava/nio/HeapByteBuffer;->throwIfReadOnly()V

    .line 742
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Ljava/nio/HeapByteBuffer;->putIntUnchecked(II)V

    .line 743
    return-object p0
.end method

.method blacklist putIntUnchecked(II)V
    .registers 7
    .param p1, "i"    # I
    .param p2, "x"    # I

    .line 752
    invoke-direct {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    .line 753
    .local v0, "ix":I
    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    .line 755
    .local v1, "dst":[B
    iget-boolean v2, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    if-eqz v2, :cond_2b

    .line 756
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "ix":I
    .local v2, "ix":I
    shr-int/lit8 v3, p2, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 757
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "ix":I
    .restart local v0    # "ix":I
    shr-int/lit8 v3, p2, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 758
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "ix":I
    .restart local v2    # "ix":I
    shr-int/lit8 v3, p2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 759
    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    goto :goto_4b

    .line 761
    .end local v2    # "ix":I
    .restart local v0    # "ix":I
    :cond_2b
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "ix":I
    .restart local v2    # "ix":I
    and-int/lit16 v3, p2, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 762
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "ix":I
    .restart local v0    # "ix":I
    shr-int/lit8 v3, p2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 763
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "ix":I
    .restart local v2    # "ix":I
    shr-int/lit8 v3, p2, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 764
    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    .line 766
    :goto_4b
    return-void
.end method

.method public whitelist test-api putLong(IJ)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "i"    # I
    .param p2, "x"    # J

    .line 878
    invoke-direct {p0}, Ljava/nio/HeapByteBuffer;->throwIfReadOnly()V

    .line 881
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Ljava/nio/HeapByteBuffer;->putLongUnchecked(IJ)V

    .line 882
    return-object p0
.end method

.method public whitelist test-api putLong(J)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "x"    # J

    .line 864
    invoke-direct {p0}, Ljava/nio/HeapByteBuffer;->throwIfReadOnly()V

    .line 867
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Ljava/nio/HeapByteBuffer;->putLongUnchecked(IJ)V

    .line 868
    return-object p0
.end method

.method blacklist putLongUnchecked(IJ)V
    .registers 10
    .param p1, "i"    # I
    .param p2, "x"    # J

    .line 891
    invoke-direct {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v0

    .line 892
    .local v0, "ix":I
    iget-object v1, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    .line 893
    .local v1, "dst":[B
    iget-boolean v2, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    const/16 v3, 0x20

    if-eqz v2, :cond_57

    .line 894
    shr-long v2, p2, v3

    long-to-int v2, v2

    .line 895
    .local v2, "t":I
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "ix":I
    .local v3, "ix":I
    shr-int/lit8 v4, v2, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 896
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "ix":I
    .restart local v0    # "ix":I
    shr-int/lit8 v4, v2, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 897
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "ix":I
    .restart local v3    # "ix":I
    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 898
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "ix":I
    .restart local v0    # "ix":I
    shr-int/lit8 v4, v2, 0x0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 899
    long-to-int v2, p2

    .line 900
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "ix":I
    .restart local v3    # "ix":I
    shr-int/lit8 v4, v2, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 901
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "ix":I
    .restart local v0    # "ix":I
    shr-int/lit8 v4, v2, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 902
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "ix":I
    .restart local v3    # "ix":I
    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 903
    shr-int/lit8 v0, v2, 0x0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    .line 904
    .end local v2    # "t":I
    goto :goto_a1

    .line 905
    .end local v3    # "ix":I
    .restart local v0    # "ix":I
    :cond_57
    long-to-int v2, p2

    .line 906
    .restart local v2    # "t":I
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "ix":I
    .local v4, "ix":I
    shr-int/lit8 v5, v2, 0x0

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v0

    .line 907
    add-int/lit8 v0, v4, 0x1

    .end local v4    # "ix":I
    .restart local v0    # "ix":I
    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 908
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "ix":I
    .restart local v4    # "ix":I
    shr-int/lit8 v5, v2, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v0

    .line 909
    add-int/lit8 v0, v4, 0x1

    .end local v4    # "ix":I
    .restart local v0    # "ix":I
    shr-int/lit8 v5, v2, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    .line 910
    shr-long v3, p2, v3

    long-to-int v2, v3

    .line 911
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "ix":I
    .restart local v3    # "ix":I
    shr-int/lit8 v4, v2, 0x0

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 912
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "ix":I
    .restart local v0    # "ix":I
    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 913
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "ix":I
    .restart local v3    # "ix":I
    shr-int/lit8 v4, v2, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    .line 914
    shr-int/lit8 v0, v2, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v1, v3

    .line 916
    .end local v2    # "t":I
    :goto_a1
    return-void
.end method

.method public whitelist test-api putShort(IS)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "i"    # I
    .param p2, "x"    # S

    .line 615
    invoke-direct {p0}, Ljava/nio/HeapByteBuffer;->throwIfReadOnly()V

    .line 618
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/nio/HeapByteBuffer;->checkIndex(II)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Ljava/nio/HeapByteBuffer;->putShortUnchecked(IS)V

    .line 619
    return-object p0
.end method

.method public whitelist test-api putShort(S)Ljava/nio/ByteBuffer;
    .registers 3
    .param p1, "x"    # S

    .line 601
    invoke-direct {p0}, Ljava/nio/HeapByteBuffer;->throwIfReadOnly()V

    .line 604
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/HeapByteBuffer;->nextPutIndex(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Ljava/nio/HeapByteBuffer;->putShortUnchecked(IS)V

    .line 605
    return-object p0
.end method

.method blacklist putShortUnchecked(IS)V
    .registers 7
    .param p1, "i"    # I
    .param p2, "x"    # S

    .line 628
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    .line 629
    .local v0, "dst":[B
    invoke-direct {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    .line 630
    .local v1, "ix":I
    iget-boolean v2, p0, Ljava/nio/HeapByteBuffer;->bigEndian:Z

    if-eqz v2, :cond_1b

    .line 631
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "ix":I
    .local v2, "ix":I
    shr-int/lit8 v3, p2, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 632
    shr-int/lit8 v1, p2, 0x0

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    goto :goto_2b

    .line 634
    .end local v2    # "ix":I
    .restart local v1    # "ix":I
    :cond_1b
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "ix":I
    .restart local v2    # "ix":I
    shr-int/lit8 v3, p2, 0x0

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 635
    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 637
    :goto_2b
    return-void
.end method

.method blacklist putUnchecked(I[CII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "src"    # [C
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .line 523
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-direct {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    mul-int/lit8 v2, p4, 0x2

    iget-boolean v3, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v3, 0x1

    const/4 v5, 0x2

    move-object v3, p2

    move v4, p3

    .end local p2    # "src":[C
    .end local p3    # "srcOffset":I
    .local v3, "src":[C
    .local v4, "srcOffset":I
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 524
    return-void
.end method

.method blacklist putUnchecked(I[DII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "src"    # [D
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .line 1136
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-direct {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    mul-int/lit8 v2, p4, 0x8

    iget-boolean v3, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v3, 0x1

    const/16 v5, 0x8

    move-object v3, p2

    move v4, p3

    .end local p2    # "src":[D
    .end local p3    # "srcOffset":I
    .local v3, "src":[D
    .local v4, "srcOffset":I
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 1137
    return-void
.end method

.method blacklist putUnchecked(I[FII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "src"    # [F
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .line 1028
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-direct {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    mul-int/lit8 v2, p4, 0x4

    iget-boolean v3, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v3, 0x1

    const/4 v5, 0x4

    move-object v3, p2

    move v4, p3

    .end local p2    # "src":[F
    .end local p3    # "srcOffset":I
    .local v3, "src":[F
    .local v4, "srcOffset":I
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 1029
    return-void
.end method

.method blacklist putUnchecked(I[III)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "src"    # [I
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .line 770
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-direct {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    mul-int/lit8 v2, p4, 0x4

    iget-boolean v3, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v3, 0x1

    const/4 v5, 0x4

    move-object v3, p2

    move v4, p3

    .end local p2    # "src":[I
    .end local p3    # "srcOffset":I
    .local v3, "src":[I
    .local v4, "srcOffset":I
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 771
    return-void
.end method

.method blacklist putUnchecked(I[JII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "src"    # [J
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .line 920
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-direct {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    mul-int/lit8 v2, p4, 0x8

    iget-boolean v3, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v3, 0x1

    const/16 v5, 0x8

    move-object v3, p2

    move v4, p3

    .end local p2    # "src":[J
    .end local p3    # "srcOffset":I
    .local v3, "src":[J
    .local v4, "srcOffset":I
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 921
    return-void
.end method

.method blacklist putUnchecked(I[SII)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "src"    # [S
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    .line 641
    iget-object v0, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    invoke-direct {p0, p1}, Ljava/nio/HeapByteBuffer;->ix(I)I

    move-result v1

    mul-int/lit8 v2, p4, 0x2

    iget-boolean v3, p0, Ljava/nio/HeapByteBuffer;->nativeByteOrder:Z

    xor-int/lit8 v6, v3, 0x1

    const/4 v5, 0x2

    move-object v3, p2

    move v4, p3

    .end local p2    # "src":[S
    .end local p3    # "srcOffset":I
    .local v3, "src":[S
    .local v4, "srcOffset":I
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    .line 642
    return-void
.end method

.method public bridge synthetic whitelist test-api slice()Ljava/nio/Buffer;
    .registers 2

    .line 46
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api slice(II)Ljava/nio/Buffer;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 46
    invoke-virtual {p0, p1, p2}, Ljava/nio/HeapByteBuffer;->slice(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api slice()Ljava/nio/ByteBuffer;
    .registers 12

    .line 142
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->position()I

    move-result v0

    .line 143
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->limit()I

    move-result v1

    .line 144
    .local v1, "lim":I
    if-gt v0, v1, :cond_d

    sub-int v2, v1, v0

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    move v7, v2

    .line 145
    .local v7, "rem":I
    new-instance v3, Ljava/nio/HeapByteBuffer;

    iget-object v4, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    iget v2, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int v9, v0, v2

    iget-boolean v10, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    const/4 v5, -0x1

    const/4 v6, 0x0

    move v8, v7

    invoke-direct/range {v3 .. v10}, Ljava/nio/HeapByteBuffer;-><init>([BIIIIIZ)V

    return-object v3
.end method

.method public whitelist test-api slice(II)Ljava/nio/ByteBuffer;
    .registers 12
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 158
    invoke-virtual {p0}, Ljava/nio/HeapByteBuffer;->limit()I

    move-result v0

    invoke-static {p1, p2, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 159
    new-instance v1, Ljava/nio/HeapByteBuffer;

    iget-object v2, p0, Ljava/nio/HeapByteBuffer;->hb:[B

    iget v0, p0, Ljava/nio/HeapByteBuffer;->offset:I

    add-int v7, p1, v0

    iget-boolean v8, p0, Ljava/nio/HeapByteBuffer;->isReadOnly:Z

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v6, p2

    move v5, p2

    .end local p2    # "length":I
    .local v5, "length":I
    invoke-direct/range {v1 .. v8}, Ljava/nio/HeapByteBuffer;-><init>([BIIIIIZ)V

    return-object v1
.end method
