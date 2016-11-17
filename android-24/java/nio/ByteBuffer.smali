.class public abstract Ljava/nio/ByteBuffer;
.super Ljava/nio/Buffer;
.source "ByteBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field bigEndian:Z

.field final hb:[B

.field isReadOnly:Z

.field nativeByteOrder:Z

.field final offset:I


# direct methods
.method constructor <init>(IIII)V
    .locals 7
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I

    #@0
    .prologue
    .line 219
    const/4 v5, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    invoke-direct/range {v0 .. v6}, Ljava/nio/ByteBuffer;-><init>(IIII[BI)V

    #@a
    .line 218
    return-void
.end method

.method constructor <init>(IIII[BI)V
    .locals 7
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I
    .param p5, "hb"    # [B
    .param p6, "offset"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move v2, p2

    #@5
    move v3, p3

    #@6
    move v4, p4

    #@7
    .line 211
    invoke-direct/range {v0 .. v5}, Ljava/nio/Buffer;-><init>(IIIII)V

    #@a
    .line 894
    iput-boolean v6, p0, Ljava/nio/ByteBuffer;->bigEndian:Z

    #@c
    .line 897
    invoke-static {}, Ljava/nio/Bits;->byteOrder()Ljava/nio/ByteOrder;

    #@f
    move-result-object v0

    #@10
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@12
    if-ne v0, v1, :cond_0

    #@14
    move v5, v6

    #@15
    .line 896
    :cond_0
    iput-boolean v5, p0, Ljava/nio/ByteBuffer;->nativeByteOrder:Z

    #@17
    .line 212
    iput-object p5, p0, Ljava/nio/ByteBuffer;->hb:[B

    #@19
    .line 213
    iput p6, p0, Ljava/nio/ByteBuffer;->offset:I

    #@1b
    .line 210
    return-void
.end method

.method public static allocate(I)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "capacity"    # I

    #@0
    .prologue
    .line 259
    if-gez p0, :cond_0

    #@2
    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v0

    #@8
    .line 261
    :cond_0
    new-instance v0, Ljava/nio/HeapByteBuffer;

    #@a
    invoke-direct {v0, p0, p0}, Ljava/nio/HeapByteBuffer;-><init>(II)V

    #@d
    return-object v0
.end method

.method public static allocateDirect(I)Ljava/nio/ByteBuffer;
    .locals 4
    .param p0, "capacity"    # I

    #@0
    .prologue
    .line 236
    if-gez p0, :cond_0

    #@2
    .line 237
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v3, "capacity < 0: "

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    .line 240
    :cond_0
    new-instance v0, Ljava/nio/DirectByteBuffer$MemoryRef;

    #@1e
    invoke-direct {v0, p0}, Ljava/nio/DirectByteBuffer$MemoryRef;-><init>(I)V

    #@21
    .line 241
    .local v0, "memoryRef":Ljava/nio/DirectByteBuffer$MemoryRef;
    new-instance v1, Ljava/nio/DirectByteBuffer;

    #@23
    invoke-direct {v1, p0, v0}, Ljava/nio/DirectByteBuffer;-><init>(ILjava/nio/DirectByteBuffer$MemoryRef;)V

    #@26
    return-object v1
.end method

.method private static compare(BB)I
    .locals 1
    .param p0, "x"    # B
    .param p1, "y"    # B

    #@0
    .prologue
    .line 884
    invoke-static {p0, p1}, Ljava/lang/Byte;->compare(BB)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private static equals(BB)Z
    .locals 1
    .param p0, "x"    # B
    .param p1, "y"    # B

    #@0
    .prologue
    .line 844
    if-ne p0, p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    const/4 v0, 0x0

    #@5
    goto :goto_0
.end method

.method public static wrap([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "array"    # [B

    #@0
    .prologue
    .line 312
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static wrap([BII)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 291
    :try_start_0
    new-instance v1, Ljava/nio/HeapByteBuffer;

    #@2
    invoke-direct {v1, p0, p1, p2}, Ljava/nio/HeapByteBuffer;-><init>([BII)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    return-object v1

    #@6
    .line 292
    :catch_0
    move-exception v0

    #@7
    .line 293
    .local v0, "x":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@9
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@c
    throw v1
.end method


# virtual methods
.method abstract _get(I)B
.end method

.method abstract _put(IB)V
.end method

.method public bridge synthetic array()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 678
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final array()[B
    .locals 1

    #@0
    .prologue
    .line 679
    iget-object v0, p0, Ljava/nio/ByteBuffer;->hb:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 680
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@6
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@9
    throw v0

    #@a
    .line 681
    :cond_0
    iget-boolean v0, p0, Ljava/nio/ByteBuffer;->isReadOnly:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 682
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@10
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@13
    throw v0

    #@14
    .line 683
    :cond_1
    iget-object v0, p0, Ljava/nio/ByteBuffer;->hb:[B

    #@16
    return-object v0
.end method

.method public final arrayOffset()I
    .locals 1

    #@0
    .prologue
    .line 703
    iget-object v0, p0, Ljava/nio/ByteBuffer;->hb:[B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 704
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@6
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@9
    throw v0

    #@a
    .line 705
    :cond_0
    iget-boolean v0, p0, Ljava/nio/ByteBuffer;->isReadOnly:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 706
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@10
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@13
    throw v0

    #@14
    .line 707
    :cond_1
    iget v0, p0, Ljava/nio/ByteBuffer;->offset:I

    #@16
    return v0
.end method

.method public abstract asCharBuffer()Ljava/nio/CharBuffer;
.end method

.method public abstract asDoubleBuffer()Ljava/nio/DoubleBuffer;
.end method

.method public abstract asFloatBuffer()Ljava/nio/FloatBuffer;
.end method

.method public abstract asIntBuffer()Ljava/nio/IntBuffer;
.end method

.method public abstract asLongBuffer()Ljava/nio/LongBuffer;
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract asShortBuffer()Ljava/nio/ShortBuffer;
.end method

.method public abstract compact()Ljava/nio/ByteBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 871
    check-cast p1, Ljava/nio/ByteBuffer;

    #@2
    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->compareTo(Ljava/nio/ByteBuffer;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Ljava/nio/ByteBuffer;)I
    .locals 7
    .param p1, "that"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 872
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@3
    move-result v4

    #@4
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@7
    move-result v5

    #@8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@b
    move-result v6

    #@c
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    #@f
    move-result v5

    #@10
    add-int v3, v4, v5

    #@12
    .line 873
    .local v3, "n":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@15
    move-result v1

    #@16
    .local v1, "i":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@19
    move-result v2

    #@1a
    .local v2, "j":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@1c
    .line 874
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    #@1f
    move-result v4

    #@20
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    #@23
    move-result v5

    #@24
    invoke-static {v4, v5}, Ljava/nio/ByteBuffer;->compare(BB)I

    #@27
    move-result v0

    #@28
    .line 875
    .local v0, "cmp":I
    if-eqz v0, :cond_0

    #@2a
    .line 876
    return v0

    #@2b
    .line 873
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@2d
    add-int/lit8 v2, v2, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 878
    .end local v0    # "cmp":I
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@33
    move-result v4

    #@34
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@37
    move-result v5

    #@38
    sub-int/2addr v4, v5

    #@39
    return v4
.end method

.method public abstract duplicate()Ljava/nio/ByteBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "ob"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 827
    if-ne p0, p1, :cond_0

    #@4
    .line 828
    return v7

    #@5
    .line 829
    :cond_0
    instance-of v4, p1, Ljava/nio/ByteBuffer;

    #@7
    if-nez v4, :cond_1

    #@9
    .line 830
    return v6

    #@a
    :cond_1
    move-object v3, p1

    #@b
    .line 831
    check-cast v3, Ljava/nio/ByteBuffer;

    #@d
    .line 832
    .local v3, "that":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@10
    move-result v4

    #@11
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    #@14
    move-result v5

    #@15
    if-eq v4, v5, :cond_2

    #@17
    .line 833
    return v6

    #@18
    .line 834
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@1b
    move-result v2

    #@1c
    .line 835
    .local v2, "p":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    #@1f
    move-result v4

    #@20
    add-int/lit8 v0, v4, -0x1

    #@22
    .local v0, "i":I
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    #@25
    move-result v4

    #@26
    add-int/lit8 v1, v4, -0x1

    #@28
    .local v1, "j":I
    :goto_0
    if-lt v0, v2, :cond_4

    #@2a
    .line 836
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    #@2d
    move-result v4

    #@2e
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->get(I)B

    #@31
    move-result v5

    #@32
    invoke-static {v4, v5}, Ljava/nio/ByteBuffer;->equals(BB)Z

    #@35
    move-result v4

    #@36
    if-nez v4, :cond_3

    #@38
    .line 837
    return v6

    #@39
    .line 835
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@3b
    add-int/lit8 v1, v1, -0x1

    #@3d
    goto :goto_0

    #@3e
    .line 838
    :cond_4
    return v7
.end method

.method public abstract get()B
.end method

.method public abstract get(I)B
.end method

.method public get([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "dst"    # [B

    #@0
    .prologue
    .line 493
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public get([BII)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 469
    array-length v2, p1

    #@1
    invoke-static {p2, p3, v2}, Ljava/nio/ByteBuffer;->checkBounds(III)V

    #@4
    .line 470
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@7
    move-result v2

    #@8
    if-le p3, v2, :cond_0

    #@a
    .line 471
    new-instance v2, Ljava/nio/BufferUnderflowException;

    #@c
    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@f
    throw v2

    #@10
    .line 472
    :cond_0
    add-int v0, p2, p3

    #@12
    .line 473
    .local v0, "end":I
    move v1, p2

    #@13
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@15
    .line 474
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    #@18
    move-result v2

    #@19
    aput-byte v2, p1, v1

    #@1b
    .line 473
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 475
    :cond_1
    return-object p0
.end method

.method public abstract getChar()C
.end method

.method public abstract getChar(I)C
.end method

.method getCharUnchecked(I)C
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 979
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public abstract getDouble()D
.end method

.method public abstract getDouble(I)D
.end method

.method getDoubleUnchecked(I)D
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1454
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public abstract getFloat()F
.end method

.method public abstract getFloat(I)F
.end method

.method getFloatUnchecked(I)F
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1359
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public abstract getInt()I
.end method

.method public abstract getInt(I)I
.end method

.method getIntUnchecked(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1169
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public abstract getLong()J
.end method

.method public abstract getLong(I)J
.end method

.method getLongUnchecked(I)J
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1264
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public abstract getShort()S
.end method

.method public abstract getShort(I)S
.end method

.method getShortUnchecked(I)S
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 1074
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method getUnchecked(I[CII)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "dst"    # [C
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 983
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method getUnchecked(I[DII)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "dst"    # [D
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 1458
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method getUnchecked(I[FII)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "dst"    # [F
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 1363
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method getUnchecked(I[III)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "dst"    # [I
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 1173
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method getUnchecked(I[JII)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "dst"    # [J
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 1268
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method getUnchecked(I[SII)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "dst"    # [S
    .param p3, "dstOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 1078
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public final hasArray()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 660
    iget-object v1, p0, Ljava/nio/ByteBuffer;->hb:[B

    #@3
    if-eqz v1, :cond_0

    #@5
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_1

    #@b
    :cond_0
    :goto_0
    return v0

    #@c
    :cond_1
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    .line 788
    const/4 v0, 0x1

    #@1
    .line 789
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@4
    move-result v2

    #@5
    .line 790
    .local v2, "p":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    #@8
    move-result v3

    #@9
    add-int/lit8 v1, v3, -0x1

    #@b
    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    #@d
    .line 791
    mul-int/lit8 v3, v0, 0x1f

    #@f
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    #@12
    move-result v4

    #@13
    add-int v0, v3, v4

    #@15
    .line 790
    add-int/lit8 v1, v1, -0x1

    #@17
    goto :goto_0

    #@18
    .line 792
    :cond_0
    return v0
.end method

.method public isAccessible()Z
    .locals 1

    #@0
    .prologue
    .line 1508
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public final order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "bo"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 922
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@4
    if-ne p1, v0, :cond_0

    #@6
    move v0, v1

    #@7
    :goto_0
    iput-boolean v0, p0, Ljava/nio/ByteBuffer;->bigEndian:Z

    #@9
    .line 924
    iget-boolean v3, p0, Ljava/nio/ByteBuffer;->bigEndian:Z

    #@b
    invoke-static {}, Ljava/nio/Bits;->byteOrder()Ljava/nio/ByteOrder;

    #@e
    move-result-object v0

    #@f
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@11
    if-ne v0, v4, :cond_1

    #@13
    move v0, v1

    #@14
    :goto_1
    if-ne v3, v0, :cond_2

    #@16
    .line 923
    :goto_2
    iput-boolean v1, p0, Ljava/nio/ByteBuffer;->nativeByteOrder:Z

    #@18
    .line 925
    return-object p0

    #@19
    :cond_0
    move v0, v2

    #@1a
    .line 922
    goto :goto_0

    #@1b
    :cond_1
    move v0, v2

    #@1c
    .line 924
    goto :goto_1

    #@1d
    :cond_2
    move v1, v2

    #@1e
    goto :goto_2
.end method

.method public final order()Ljava/nio/ByteOrder;
    .locals 1

    #@0
    .prologue
    .line 910
    iget-boolean v0, p0, Ljava/nio/ByteBuffer;->bigEndian:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@9
    goto :goto_0
.end method

.method public abstract put(B)Ljava/nio/ByteBuffer;
.end method

.method public abstract put(IB)Ljava/nio/ByteBuffer;
.end method

.method public put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 11
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 533
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isAccessible()Z

    #@3
    move-result v4

    #@4
    if-nez v4, :cond_0

    #@6
    .line 534
    new-instance v4, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v5, "buffer is inaccessible"

    #@b
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v4

    #@f
    .line 536
    :cond_0
    iget-boolean v4, p0, Ljava/nio/ByteBuffer;->isReadOnly:Z

    #@11
    if-eqz v4, :cond_1

    #@13
    .line 537
    new-instance v4, Ljava/nio/ReadOnlyBufferException;

    #@15
    invoke-direct {v4}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@18
    throw v4

    #@19
    .line 539
    :cond_1
    if-ne p1, p0, :cond_2

    #@1b
    .line 540
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1d
    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@20
    throw v4

    #@21
    .line 542
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@24
    move-result v7

    #@25
    .line 543
    .local v7, "n":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@28
    move-result v4

    #@29
    if-le v7, v4, :cond_3

    #@2b
    .line 544
    new-instance v4, Ljava/nio/BufferOverflowException;

    #@2d
    invoke-direct {v4}, Ljava/nio/BufferOverflowException;-><init>()V

    #@30
    throw v4

    #@31
    .line 550
    :cond_3
    iget-object v4, p0, Ljava/nio/ByteBuffer;->hb:[B

    #@33
    if-eqz v4, :cond_4

    #@35
    iget-object v4, p1, Ljava/nio/ByteBuffer;->hb:[B

    #@37
    if-eqz v4, :cond_4

    #@39
    .line 552
    iget-object v4, p1, Ljava/nio/ByteBuffer;->hb:[B

    #@3b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@3e
    move-result v5

    #@3f
    iget v8, p1, Ljava/nio/ByteBuffer;->offset:I

    #@41
    add-int/2addr v5, v8

    #@42
    iget-object v8, p0, Ljava/nio/ByteBuffer;->hb:[B

    #@44
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@47
    move-result v9

    #@48
    iget v10, p0, Ljava/nio/ByteBuffer;->offset:I

    #@4a
    add-int/2addr v9, v10

    #@4b
    invoke-static {v4, v5, v8, v9, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@4e
    .line 572
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    #@51
    move-result v4

    #@52
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@55
    .line 573
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@58
    move-result v4

    #@59
    add-int/2addr v4, v7

    #@5a
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@5d
    .line 574
    return-object p0

    #@5e
    .line 558
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@61
    move-result v4

    #@62
    if-eqz v4, :cond_7

    #@64
    move-object v2, p1

    #@65
    .line 559
    .local v2, "srcObject":Ljava/lang/Object;
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@68
    move-result v3

    #@69
    .line 560
    .local v3, "srcOffset":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@6c
    move-result v4

    #@6d
    if-nez v4, :cond_5

    #@6f
    .line 561
    iget v4, p1, Ljava/nio/ByteBuffer;->offset:I

    #@71
    add-int/2addr v3, v4

    #@72
    .line 564
    :cond_5
    move-object v6, p0

    #@73
    .line 565
    .local v6, "dst":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@76
    move-result v4

    #@77
    if-eqz v4, :cond_8

    #@79
    move-object v0, p0

    #@7a
    .line 566
    .local v0, "dstObject":Ljava/lang/Object;
    :goto_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@7d
    move-result v1

    #@7e
    .line 567
    .local v1, "dstOffset":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@81
    move-result v4

    #@82
    if-nez v4, :cond_6

    #@84
    .line 568
    iget v4, p0, Ljava/nio/ByteBuffer;->offset:I

    #@86
    add-int/2addr v1, v4

    #@87
    .line 570
    :cond_6
    int-to-long v4, v7

    #@88
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    #@8b
    goto :goto_0

    #@8c
    .line 558
    .end local v0    # "dstObject":Ljava/lang/Object;
    .end local v1    # "dstOffset":I
    .end local v2    # "srcObject":Ljava/lang/Object;
    .end local v3    # "srcOffset":I
    .end local v6    # "dst":Ljava/nio/ByteBuffer;
    :cond_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    #@8f
    move-result-object v2

    #@90
    .restart local v2    # "srcObject":Ljava/lang/Object;
    goto :goto_1

    #@91
    .line 565
    .restart local v3    # "srcOffset":I
    .restart local v6    # "dst":Ljava/nio/ByteBuffer;
    :cond_8
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    #@94
    move-result-object v0

    #@95
    .restart local v0    # "dstObject":Ljava/lang/Object;
    goto :goto_2
.end method

.method public final put([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "src"    # [B

    #@0
    .prologue
    .line 642
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 617
    array-length v2, p1

    #@1
    invoke-static {p2, p3, v2}, Ljava/nio/ByteBuffer;->checkBounds(III)V

    #@4
    .line 618
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@7
    move-result v2

    #@8
    if-le p3, v2, :cond_0

    #@a
    .line 619
    new-instance v2, Ljava/nio/BufferOverflowException;

    #@c
    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    #@f
    throw v2

    #@10
    .line 620
    :cond_0
    add-int v0, p2, p3

    #@12
    .line 621
    .local v0, "end":I
    move v1, p2

    #@13
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@15
    .line 622
    aget-byte v2, p1, v1

    #@17
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@1a
    .line 621
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 623
    :cond_1
    return-object p0
.end method

.method public abstract putChar(C)Ljava/nio/ByteBuffer;
.end method

.method public abstract putChar(IC)Ljava/nio/ByteBuffer;
.end method

.method putCharUnchecked(IC)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # C

    #@0
    .prologue
    .line 1004
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public abstract putDouble(D)Ljava/nio/ByteBuffer;
.end method

.method public abstract putDouble(ID)Ljava/nio/ByteBuffer;
.end method

.method putDoubleUnchecked(ID)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # D

    #@0
    .prologue
    .line 1479
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public abstract putFloat(F)Ljava/nio/ByteBuffer;
.end method

.method public abstract putFloat(IF)Ljava/nio/ByteBuffer;
.end method

.method putFloatUnchecked(IF)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 1384
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public abstract putInt(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract putInt(II)Ljava/nio/ByteBuffer;
.end method

.method putIntUnchecked(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 1194
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public abstract putLong(IJ)Ljava/nio/ByteBuffer;
.end method

.method public abstract putLong(J)Ljava/nio/ByteBuffer;
.end method

.method putLongUnchecked(IJ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    #@0
    .prologue
    .line 1289
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public abstract putShort(IS)Ljava/nio/ByteBuffer;
.end method

.method public abstract putShort(S)Ljava/nio/ByteBuffer;
.end method

.method putShortUnchecked(IS)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # S

    #@0
    .prologue
    .line 1099
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method putUnchecked(I[CII)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "dst"    # [C
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 1008
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method putUnchecked(I[DII)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "dst"    # [D
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 1483
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method putUnchecked(I[FII)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "dst"    # [F
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 1388
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method putUnchecked(I[III)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "dst"    # [I
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 1198
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method putUnchecked(I[JII)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "dst"    # [J
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 1293
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method putUnchecked(I[SII)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "dst"    # [S
    .param p3, "srcOffset"    # I
    .param p4, "length"    # I

    #@0
    .prologue
    .line 1103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public setAccessible(Z)V
    .locals 1
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 1515
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public abstract slice()Ljava/nio/ByteBuffer;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 761
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 762
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@10
    .line 763
    const-string/jumbo v1, "[pos="

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@16
    .line 764
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    #@19
    move-result v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@1d
    .line 765
    const-string/jumbo v1, " lim="

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    .line 766
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    #@26
    move-result v1

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@2a
    .line 767
    const-string/jumbo v1, " cap="

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@30
    .line 768
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    #@33
    move-result v1

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@37
    .line 769
    const-string/jumbo v1, "]"

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3d
    .line 770
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    return-object v1
.end method
