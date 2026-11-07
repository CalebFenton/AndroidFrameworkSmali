.class public abstract Ljava/nio/ByteBuffer;
.super Ljava/nio/Buffer;
.source "ByteBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist ARRAY_BASE_OFFSET:J

.field private static final blacklist ELEMENT_SIZE_SHIFT:I


# instance fields
.field greylist-max-o bigEndian:Z

.field final greylist-max-r hb:[B

.field greylist-max-r isReadOnly:Z

.field greylist-max-o nativeByteOrder:Z

.field final greylist-max-r offset:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 277
    sget-object v0, Ljava/nio/ByteBuffer;->UNSAFE:Ljdk/internal/misc/Unsafe;

    const-class v1, [B

    invoke-virtual {v0, v1}, Ljdk/internal/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Ljava/nio/ByteBuffer;->ARRAY_BASE_OFFSET:J

    return-void
.end method

.method constructor greylist-max-o <init>(IIII)V
    .registers 12
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I

    .line 306
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "mark":I
    .end local p2    # "pos":I
    .end local p3    # "lim":I
    .end local p4    # "cap":I
    .local v1, "mark":I
    .local v2, "pos":I
    .local v3, "lim":I
    .local v4, "cap":I
    invoke-direct/range {v0 .. v6}, Ljava/nio/ByteBuffer;-><init>(IIII[BI)V

    .line 307
    return-void
.end method

.method constructor greylist-max-o <init>(IIII[BI)V
    .registers 13
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I
    .param p5, "hb"    # [B
    .param p6, "offset"    # I

    .line 298
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "mark":I
    .end local p2    # "pos":I
    .end local p3    # "lim":I
    .end local p4    # "cap":I
    .local v1, "mark":I
    .local v2, "pos":I
    .local v3, "lim":I
    .local v4, "cap":I
    invoke-direct/range {v0 .. v5}, Ljava/nio/Buffer;-><init>(IIIII)V

    .line 2210
    const/4 p1, 0x1

    iput-boolean p1, v0, Ljava/nio/ByteBuffer;->bigEndian:Z

    .line 2212
    nop

    .line 2213
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    sget-object p3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, p3, :cond_16

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    iput-boolean p1, v0, Ljava/nio/ByteBuffer;->nativeByteOrder:Z

    .line 299
    iput-object p5, v0, Ljava/nio/ByteBuffer;->hb:[B

    .line 300
    iput p6, v0, Ljava/nio/ByteBuffer;->offset:I

    .line 301
    return-void
.end method

.method public static whitelist test-api allocate(I)Ljava/nio/ByteBuffer;
    .registers 2
    .param p0, "capacity"    # I

    .line 377
    if-ltz p0, :cond_8

    .line 380
    new-instance v0, Ljava/nio/HeapByteBuffer;

    invoke-direct {v0, p0, p0}, Ljava/nio/HeapByteBuffer;-><init>(II)V

    return-object v0

    .line 378
    :cond_8
    invoke-static {p0}, Ljava/nio/ByteBuffer;->createCapacityException(I)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public static whitelist test-api allocateDirect(I)Ljava/nio/ByteBuffer;
    .registers 3
    .param p0, "capacity"    # I

    .line 347
    new-instance v0, Ljava/nio/DirectByteBuffer$MemoryRef;

    invoke-direct {v0, p0}, Ljava/nio/DirectByteBuffer$MemoryRef;-><init>(I)V

    .line 348
    .local v0, "memoryRef":Ljava/nio/DirectByteBuffer$MemoryRef;
    new-instance v1, Ljava/nio/DirectByteBuffer;

    invoke-direct {v1, p0, v0}, Ljava/nio/DirectByteBuffer;-><init>(ILjava/nio/DirectByteBuffer$MemoryRef;)V

    return-object v1
.end method

.method private static greylist-max-o compare(BB)I
    .registers 3
    .param p0, "x"    # B
    .param p1, "y"    # B

    .line 1932
    invoke-static {p0, p1}, Ljava/lang/Byte;->compare(BB)I

    move-result v0

    return v0
.end method

.method private blacklist getArray(I[BII)Ljava/nio/ByteBuffer;
    .registers 9
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 968
    add-int v0, p3, p4

    .line 969
    .local v0, "end":I
    move v1, p3

    .local v1, "i":I
    move v2, p1

    .local v2, "j":I
    :goto_4
    if-ge v1, v0, :cond_11

    .line 970
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    aput-byte v3, p2, v1

    .line 969
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 972
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_11
    return-object p0
.end method

.method private blacklist putArray(I[BII)Ljava/nio/ByteBuffer;
    .registers 9
    .param p1, "index"    # I
    .param p2, "src"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 1455
    add-int v0, p3, p4

    .line 1456
    .local v0, "end":I
    move v1, p3

    .local v1, "i":I
    move v2, p1

    .local v2, "j":I
    :goto_4
    if-ge v1, v0, :cond_10

    .line 1457
    aget-byte v3, p2, v1

    invoke-virtual {p0, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 1456
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1459
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_10
    return-object p0
.end method

.method public static whitelist test-api wrap([B)Ljava/nio/ByteBuffer;
    .registers 3
    .param p0, "array"    # [B

    .line 455
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api wrap([BII)Ljava/nio/ByteBuffer;
    .registers 5
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 426
    :try_start_0
    new-instance v0, Ljava/nio/HeapByteBuffer;

    invoke-direct {v0, p0, p1, p2}, Ljava/nio/HeapByteBuffer;-><init>([BII)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 427
    :catch_6
    move-exception v0

    .line 428
    .local v0, "x":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method


# virtual methods
.method abstract greylist-max-o _get(I)B
.end method

.method abstract greylist-max-o _put(IB)V
.end method

.method public final whitelist test-api alignedSlice(I)Ljava/nio/ByteBuffer;
    .registers 9
    .param p1, "unitSize"    # I

    .line 2379
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 2380
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 2382
    .local v1, "lim":I
    invoke-virtual {p0, v0, p1}, Ljava/nio/ByteBuffer;->alignmentOffset(II)I

    move-result v2

    .line 2383
    .local v2, "pos_mod":I
    invoke-virtual {p0, v1, p1}, Ljava/nio/ByteBuffer;->alignmentOffset(II)I

    move-result v3

    .line 2386
    .local v3, "lim_mod":I
    if-lez v2, :cond_16

    .line 2387
    sub-int v4, p1, v2

    add-int/2addr v4, v0

    goto :goto_17

    .line 2388
    :cond_16
    move v4, v0

    :goto_17
    nop

    .line 2391
    .local v4, "aligned_pos":I
    sub-int v5, v1, v3

    .line 2393
    .local v5, "aligned_lim":I
    if-gt v4, v1, :cond_1e

    if-ge v5, v0, :cond_20

    .line 2394
    :cond_1e
    move v5, v0

    move v4, v0

    .line 2397
    :cond_20
    sub-int v6, v5, v4

    invoke-virtual {p0, v4, v6}, Ljava/nio/ByteBuffer;->slice(II)Ljava/nio/ByteBuffer;

    move-result-object v6

    return-object v6
.end method

.method public final whitelist test-api alignmentOffset(II)I
    .registers 9
    .param p1, "index"    # I
    .param p2, "unitSize"    # I

    .line 2303
    if-ltz p1, :cond_5e

    .line 2305
    const/4 v0, 0x1

    if-lt p2, v0, :cond_45

    add-int/lit8 v0, p2, -0x1

    and-int/2addr v0, p2

    if-nez v0, :cond_45

    .line 2307
    const/16 v0, 0x8

    if-le p2, v0, :cond_2e

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_2e

    .line 2308
    :cond_15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unit size unsupported for non-direct buffers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2312
    :cond_2e
    :goto_2e
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-wide v0, p0, Ljava/nio/ByteBuffer;->address:J

    goto :goto_3d

    :cond_37
    sget-wide v0, Ljava/nio/ByteBuffer;->ARRAY_BASE_OFFSET:J

    iget v2, p0, Ljava/nio/ByteBuffer;->offset:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 2314
    .local v0, "baseAddress":J
    :goto_3d
    int-to-long v2, p1

    add-long/2addr v2, v0

    .line 2315
    .local v2, "elementAddress":J
    add-int/lit8 v4, p2, -0x1

    int-to-long v4, v4

    and-long/2addr v4, v2

    long-to-int v4, v4

    return v4

    .line 2306
    .end local v0    # "baseAddress":J
    .end local v2    # "elementAddress":J
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unit size not a power of two: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2304
    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index less than zero: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic whitelist test-api array()Ljava/lang/Object;
    .registers 2

    .line 272
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api array()[B
    .registers 2

    .line 1605
    iget-object v0, p0, Ljava/nio/ByteBuffer;->hb:[B

    if-eqz v0, :cond_11

    .line 1607
    iget-boolean v0, p0, Ljava/nio/ByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_b

    .line 1609
    iget-object v0, p0, Ljava/nio/ByteBuffer;->hb:[B

    return-object v0

    .line 1608
    :cond_b
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 1606
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api arrayOffset()I
    .registers 2

    .line 1633
    iget-object v0, p0, Ljava/nio/ByteBuffer;->hb:[B

    if-eqz v0, :cond_11

    .line 1635
    iget-boolean v0, p0, Ljava/nio/ByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_b

    .line 1637
    iget v0, p0, Ljava/nio/ByteBuffer;->offset:I

    return v0

    .line 1636
    :cond_b
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 1634
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist test-api asCharBuffer()Ljava/nio/CharBuffer;
.end method

.method public abstract whitelist test-api asDoubleBuffer()Ljava/nio/DoubleBuffer;
.end method

.method public abstract whitelist test-api asFloatBuffer()Ljava/nio/FloatBuffer;
.end method

.method public abstract whitelist test-api asIntBuffer()Ljava/nio/IntBuffer;
.end method

.method public abstract whitelist test-api asLongBuffer()Ljava/nio/LongBuffer;
.end method

.method public abstract whitelist test-api asReadOnlyBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract whitelist test-api asShortBuffer()Ljava/nio/ShortBuffer;
.end method

.method blacklist base()Ljava/lang/Object;
    .registers 2

    .line 322
    iget-object v0, p0, Ljava/nio/ByteBuffer;->hb:[B

    return-object v0
.end method

.method public whitelist test-api clear()Ljava/nio/Buffer;
    .registers 1

    .line 1699
    invoke-super {p0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 1700
    return-object p0
.end method

.method public bridge synthetic whitelist clear()Ljava/nio/ByteBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public abstract whitelist test-api compact()Ljava/nio/ByteBuffer;
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 272
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->compareTo(Ljava/nio/ByteBuffer;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/nio/ByteBuffer;)I
    .registers 10
    .param p1, "that"    # Ljava/nio/ByteBuffer;

    .line 1909
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1910
    .local v0, "thisPos":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, v0

    .line 1911
    .local v1, "thisRem":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 1912
    .local v2, "thatPos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    sub-int/2addr v3, v2

    .line 1913
    .local v3, "thatRem":I
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1914
    .local v4, "length":I
    if-gez v4, :cond_1a

    .line 1915
    const/4 v5, -0x1

    return v5

    .line 1916
    :cond_1a
    invoke-static {p0, v0, p1, v2, v4}, Ljava/nio/BufferMismatch;->mismatch(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)I

    move-result v5

    .line 1919
    .local v5, "i":I
    if-ltz v5, :cond_31

    .line 1920
    add-int v6, v0, v5

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    add-int v7, v2, v5

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-static {v6, v7}, Ljava/nio/ByteBuffer;->compare(BB)I

    move-result v6

    return v6

    .line 1922
    :cond_31
    sub-int v6, v1, v3

    return v6
.end method

.method public bridge synthetic whitelist test-api duplicate()Ljava/nio/Buffer;
    .registers 2

    .line 272
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api duplicate()Ljava/nio/ByteBuffer;
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "ob"    # Ljava/lang/Object;

    .line 1869
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1870
    return v0

    .line 1871
    :cond_4
    instance-of v1, p1, Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1872
    return v2

    .line 1873
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 1874
    .local v1, "that":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 1875
    .local v3, "thisPos":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    sub-int/2addr v4, v3

    .line 1876
    .local v4, "thisRem":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 1877
    .local v5, "thatPos":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    sub-int/2addr v6, v5

    .line 1878
    .local v6, "thatRem":I
    if-ltz v4, :cond_2d

    if-eq v4, v6, :cond_24

    goto :goto_2d

    .line 1880
    :cond_24
    invoke-static {p0, v3, v1, v5, v4}, Ljava/nio/BufferMismatch;->mismatch(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)I

    move-result v7

    if-gez v7, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v2

    :goto_2c
    return v0

    .line 1879
    :cond_2d
    :goto_2d
    return v2
.end method

.method public whitelist test-api flip()Ljava/nio/Buffer;
    .registers 1

    .line 1711
    invoke-super {p0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 1712
    return-object p0
.end method

.method public bridge synthetic whitelist flip()Ljava/nio/ByteBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public abstract whitelist test-api get()B
.end method

.method public abstract whitelist test-api get(I)B
.end method

.method public whitelist test-api get(I[B)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "index"    # I
    .param p2, "dst"    # [B

    .line 931
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/nio/ByteBuffer;->get(I[BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api get(I[BII)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 895
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {p1, p4, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 896
    array-length v0, p2

    invoke-static {p3, p4, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 898
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/ByteBuffer;->getArray(I[BII)Ljava/nio/ByteBuffer;

    .line 900
    return-object p0
.end method

.method public whitelist test-api get([B)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "dst"    # [B

    .line 847
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api get([BII)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "dst"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 816
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 817
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 818
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, v0

    if-gt p3, v1, :cond_18

    .line 821
    invoke-direct {p0, v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->getArray(I[BII)Ljava/nio/ByteBuffer;

    .line 823
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 824
    return-object p0

    .line 819
    :cond_18
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1
.end method

.method public abstract whitelist test-api getChar()C
.end method

.method public abstract whitelist test-api getChar(I)C
.end method

.method abstract greylist-max-o getCharUnchecked(I)C
.end method

.method public abstract whitelist test-api getDouble()D
.end method

.method public abstract whitelist test-api getDouble(I)D
.end method

.method abstract greylist-max-o getDoubleUnchecked(I)D
.end method

.method public abstract whitelist test-api getFloat()F
.end method

.method public abstract whitelist test-api getFloat(I)F
.end method

.method abstract greylist-max-o getFloatUnchecked(I)F
.end method

.method public abstract whitelist test-api getInt()I
.end method

.method public abstract whitelist test-api getInt(I)I
.end method

.method abstract greylist-max-o getIntUnchecked(I)I
.end method

.method public abstract whitelist test-api getLong()J
.end method

.method public abstract whitelist test-api getLong(I)J
.end method

.method abstract greylist-max-o getLongUnchecked(I)J
.end method

.method public abstract whitelist test-api getShort()S
.end method

.method public abstract whitelist test-api getShort(I)S
.end method

.method abstract greylist-max-o getShortUnchecked(I)S
.end method

.method abstract greylist-max-o getUnchecked(I[CII)V
.end method

.method abstract greylist-max-o getUnchecked(I[DII)V
.end method

.method abstract greylist-max-o getUnchecked(I[FII)V
.end method

.method abstract greylist-max-o getUnchecked(I[III)V
.end method

.method abstract greylist-max-o getUnchecked(I[JII)V
.end method

.method abstract greylist-max-o getUnchecked(I[SII)V
.end method

.method public final whitelist test-api hasArray()Z
    .registers 2

    .line 1582
    iget-object v0, p0, Ljava/nio/ByteBuffer;->hb:[B

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Ljava/nio/ByteBuffer;->isReadOnly:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 1825
    const/4 v0, 0x1

    .line 1826
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 1827
    .local v1, "p":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_b
    if-lt v2, v1, :cond_18

    .line 1831
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    add-int v0, v3, v4

    .line 1827
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 1833
    .end local v2    # "i":I
    :cond_18
    return v0
.end method

.method public greylist-max-o isAccessible()Z
    .registers 2

    .line 2410
    const/4 v0, 0x1

    return v0
.end method

.method public abstract whitelist test-api isDirect()Z
.end method

.method public whitelist test-api limit(I)Ljava/nio/Buffer;
    .registers 2
    .param p1, "newLimit"    # I

    .line 1663
    invoke-super {p0, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 1664
    return-object p0
.end method

.method public bridge synthetic whitelist limit(I)Ljava/nio/ByteBuffer;
    .registers 2

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public whitelist test-api mark()Ljava/nio/Buffer;
    .registers 1

    .line 1675
    invoke-super {p0}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 1676
    return-object p0
.end method

.method public bridge synthetic whitelist mark()Ljava/nio/ByteBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public whitelist test-api mismatch(Ljava/nio/ByteBuffer;)I
    .registers 9
    .param p1, "that"    # Ljava/nio/ByteBuffer;

    .line 1961
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1962
    .local v0, "thisPos":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, v0

    .line 1963
    .local v1, "thisRem":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 1964
    .local v2, "thatPos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    sub-int/2addr v3, v2

    .line 1965
    .local v3, "thatRem":I
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1966
    .local v4, "length":I
    const/4 v5, -0x1

    if-gez v4, :cond_1a

    .line 1967
    return v5

    .line 1968
    :cond_1a
    invoke-static {p0, v0, p1, v2, v4}, Ljava/nio/BufferMismatch;->mismatch(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)I

    move-result v6

    .line 1971
    .local v6, "r":I
    if-ne v6, v5, :cond_24

    if-eq v1, v3, :cond_24

    move v5, v4

    goto :goto_25

    :cond_24
    move v5, v6

    :goto_25
    return v5
.end method

.method public final whitelist test-api order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    .registers 7
    .param p1, "bo"    # Ljava/nio/ByteOrder;

    .line 2240
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    iput-boolean v0, p0, Ljava/nio/ByteBuffer;->bigEndian:Z

    .line 2241
    iget-boolean v0, p0, Ljava/nio/ByteBuffer;->bigEndian:Z

    .line 2242
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v3, v4, :cond_17

    move v3, v1

    goto :goto_18

    :cond_17
    move v3, v2

    :goto_18
    if-ne v0, v3, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    iput-boolean v1, p0, Ljava/nio/ByteBuffer;->nativeByteOrder:Z

    .line 2243
    return-object p0
.end method

.method public final whitelist test-api order()Ljava/nio/ByteOrder;
    .registers 2

    .line 2226
    iget-boolean v0, p0, Ljava/nio/ByteBuffer;->bigEndian:Z

    if-eqz v0, :cond_7

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_9

    :cond_7
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_9
    return-object v0
.end method

.method public whitelist test-api position(I)Ljava/nio/Buffer;
    .registers 2
    .param p1, "newPosition"    # I

    .line 1651
    invoke-super {p0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 1652
    return-object p0
.end method

.method public bridge synthetic whitelist position(I)Ljava/nio/ByteBuffer;
    .registers 2

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public abstract whitelist test-api put(B)Ljava/nio/ByteBuffer;
.end method

.method public abstract whitelist test-api put(IB)Ljava/nio/ByteBuffer;
.end method

.method public whitelist test-api put(ILjava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "index"    # I
    .param p2, "src"    # Ljava/nio/ByteBuffer;
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 1096
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {p1, p4, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 1097
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {p3, p4, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 1098
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1101
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/nio/ByteBuffer;->putBuffer(ILjava/nio/ByteBuffer;II)V

    .line 1103
    return-object p0

    .line 1099
    :cond_18
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist test-api put(I[B)Ljava/nio/ByteBuffer;
    .registers 5
    .param p1, "index"    # I
    .param p2, "src"    # [B

    .line 1418
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/nio/ByteBuffer;->put(I[BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api put(I[BII)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "index"    # I
    .param p2, "src"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 1378
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1380
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {p1, p4, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 1381
    array-length v0, p2

    invoke-static {p3, p4, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 1383
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/ByteBuffer;->putArray(I[BII)Ljava/nio/ByteBuffer;

    .line 1385
    return-object p0

    .line 1379
    :cond_15
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist test-api put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 9
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 1022
    if-eq p1, p0, :cond_3f

    .line 1024
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_39

    .line 1027
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1028
    .local v0, "srcPos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 1029
    .local v1, "srcLim":I
    const/4 v2, 0x0

    if-gt v0, v1, :cond_16

    sub-int v3, v1, v0

    goto :goto_17

    :cond_16
    move v3, v2

    .line 1030
    .local v3, "srcRem":I
    :goto_17
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 1031
    .local v4, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    .line 1032
    .local v5, "lim":I
    if-gt v4, v5, :cond_23

    sub-int v2, v5, v4

    .line 1034
    .local v2, "rem":I
    :cond_23
    if-gt v3, v2, :cond_33

    .line 1037
    invoke-virtual {p0, v4, p1, v0, v3}, Ljava/nio/ByteBuffer;->putBuffer(ILjava/nio/ByteBuffer;II)V

    .line 1039
    add-int v6, v4, v3

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1040
    add-int v6, v0, v3

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1042
    return-object p0

    .line 1035
    :cond_33
    new-instance v6, Ljava/nio/BufferOverflowException;

    invoke-direct {v6}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v6

    .line 1025
    .end local v0    # "srcPos":I
    .end local v1    # "srcLim":I
    .end local v2    # "rem":I
    .end local v3    # "srcRem":I
    .end local v4    # "pos":I
    .end local v5    # "lim":I
    :cond_39
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 1023
    :cond_3f
    invoke-static {}, Ljava/nio/ByteBuffer;->createSameBufferException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public final whitelist test-api put([B)Ljava/nio/ByteBuffer;
    .registers 4
    .param p1, "src"    # [B

    .line 1329
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api put([BII)Ljava/nio/ByteBuffer;
    .registers 6
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1293
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_24

    .line 1295
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 1296
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1297
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, v0

    if-gt p3, v1, :cond_1e

    .line 1300
    invoke-direct {p0, v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->putArray(I[BII)Ljava/nio/ByteBuffer;

    .line 1302
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1303
    return-object p0

    .line 1298
    :cond_1e
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 1294
    .end local v0    # "pos":I
    :cond_24
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method blacklist putBuffer(ILjava/nio/ByteBuffer;II)V
    .registers 12
    .param p1, "pos"    # I
    .param p2, "src"    # Ljava/nio/ByteBuffer;
    .param p3, "srcPos"    # I
    .param p4, "n"    # I

    .line 1155
    iget-object v0, p0, Ljava/nio/ByteBuffer;->hb:[B

    if-eqz v0, :cond_16

    iget-object v0, p2, Ljava/nio/ByteBuffer;->hb:[B

    if-eqz v0, :cond_16

    .line 1157
    iget-object v0, p2, Ljava/nio/ByteBuffer;->hb:[B

    iget v1, p2, Ljava/nio/ByteBuffer;->offset:I

    add-int/2addr v1, p3

    iget-object v2, p0, Ljava/nio/ByteBuffer;->hb:[B

    iget v3, p0, Ljava/nio/ByteBuffer;->offset:I

    add-int/2addr v3, p1

    invoke-static {v0, v1, v2, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_47

    .line 1163
    :cond_16
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1e

    move-object v0, p2

    goto :goto_20

    :cond_1e
    iget-object v0, p2, Ljava/nio/ByteBuffer;->hb:[B

    :goto_20
    move-object v3, v0

    .line 1164
    .local v3, "srcObject":Ljava/lang/Object;
    move v0, p3

    .line 1165
    .local v0, "srcOffset":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 1166
    iget v1, p2, Ljava/nio/ByteBuffer;->offset:I

    add-int/2addr v0, v1

    move v4, v0

    goto :goto_2e

    .line 1165
    :cond_2d
    move v4, v0

    .line 1169
    .end local v0    # "srcOffset":I
    .local v4, "srcOffset":I
    :goto_2e
    move-object v0, p0

    .line 1170
    .local v0, "dst":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_37

    move-object v1, v0

    goto :goto_39

    :cond_37
    iget-object v1, v0, Ljava/nio/ByteBuffer;->hb:[B

    .line 1171
    .local v1, "dstObject":Ljava/lang/Object;
    :goto_39
    move v2, p1

    .line 1172
    .local v2, "dstOffset":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v5

    if-nez v5, :cond_43

    .line 1173
    iget v5, v0, Ljava/nio/ByteBuffer;->offset:I

    add-int/2addr v2, v5

    .line 1175
    :cond_43
    int-to-long v5, p4

    invoke-static/range {v1 .. v6}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    .line 1239
    .end local v0    # "dst":Ljava/nio/ByteBuffer;
    .end local v1    # "dstObject":Ljava/lang/Object;
    .end local v2    # "dstOffset":I
    .end local v3    # "srcObject":Ljava/lang/Object;
    .end local v4    # "srcOffset":I
    :goto_47
    return-void
.end method

.method public abstract whitelist test-api putChar(C)Ljava/nio/ByteBuffer;
.end method

.method public abstract whitelist test-api putChar(IC)Ljava/nio/ByteBuffer;
.end method

.method abstract greylist-max-o putCharUnchecked(IC)V
.end method

.method public abstract whitelist test-api putDouble(D)Ljava/nio/ByteBuffer;
.end method

.method public abstract whitelist test-api putDouble(ID)Ljava/nio/ByteBuffer;
.end method

.method abstract greylist-max-o putDoubleUnchecked(ID)V
.end method

.method public abstract whitelist test-api putFloat(F)Ljava/nio/ByteBuffer;
.end method

.method public abstract whitelist test-api putFloat(IF)Ljava/nio/ByteBuffer;
.end method

.method abstract greylist-max-o putFloatUnchecked(IF)V
.end method

.method public abstract whitelist test-api putInt(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract whitelist test-api putInt(II)Ljava/nio/ByteBuffer;
.end method

.method abstract greylist-max-o putIntUnchecked(II)V
.end method

.method public abstract whitelist test-api putLong(IJ)Ljava/nio/ByteBuffer;
.end method

.method public abstract whitelist test-api putLong(J)Ljava/nio/ByteBuffer;
.end method

.method abstract greylist-max-o putLongUnchecked(IJ)V
.end method

.method public abstract whitelist test-api putShort(IS)Ljava/nio/ByteBuffer;
.end method

.method public abstract whitelist test-api putShort(S)Ljava/nio/ByteBuffer;
.end method

.method abstract greylist-max-o putShortUnchecked(IS)V
.end method

.method abstract greylist-max-o putUnchecked(I[CII)V
.end method

.method abstract greylist-max-o putUnchecked(I[DII)V
.end method

.method abstract greylist-max-o putUnchecked(I[FII)V
.end method

.method abstract greylist-max-o putUnchecked(I[III)V
.end method

.method abstract greylist-max-o putUnchecked(I[JII)V
.end method

.method abstract greylist-max-o putUnchecked(I[SII)V
.end method

.method public whitelist test-api reset()Ljava/nio/Buffer;
    .registers 1

    .line 1687
    invoke-super {p0}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    .line 1688
    return-object p0
.end method

.method public bridge synthetic whitelist reset()Ljava/nio/ByteBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public whitelist test-api rewind()Ljava/nio/Buffer;
    .registers 1

    .line 1723
    invoke-super {p0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 1724
    return-object p0
.end method

.method public bridge synthetic whitelist rewind()Ljava/nio/ByteBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public greylist-max-o test-api setAccessible(Z)V
    .registers 3
    .param p1, "value"    # Z

    .line 2417
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api slice()Ljava/nio/Buffer;
    .registers 2

    .line 272
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

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

    .line 272
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->slice(II)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist test-api slice()Ljava/nio/ByteBuffer;
.end method

.method public abstract whitelist test-api slice(II)Ljava/nio/ByteBuffer;
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1800
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1801
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1802
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1799
    return-object v0
.end method
