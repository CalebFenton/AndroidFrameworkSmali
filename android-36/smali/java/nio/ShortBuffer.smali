.class public abstract Ljava/nio/ShortBuffer;
.super Ljava/nio/Buffer;
.source "ShortBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable<",
        "Ljava/nio/ShortBuffer;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist ARRAY_BASE_OFFSET:J

.field private static final blacklist ELEMENT_SIZE_SHIFT:I = 0x1


# instance fields
.field final greylist-max-o hb:[S

.field greylist-max-o isReadOnly:Z

.field final greylist-max-o offset:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 277
    sget-object v0, Ljava/nio/ShortBuffer;->UNSAFE:Ljdk/internal/misc/Unsafe;

    const-class v1, [S

    invoke-virtual {v0, v1}, Ljdk/internal/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Ljava/nio/ShortBuffer;->ARRAY_BASE_OFFSET:J

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
    invoke-direct/range {v0 .. v6}, Ljava/nio/ShortBuffer;-><init>(IIII[SI)V

    .line 307
    return-void
.end method

.method constructor greylist-max-o <init>(IIII[SI)V
    .registers 13
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I
    .param p5, "hb"    # [S
    .param p6, "offset"    # I

    .line 298
    const/4 v5, 0x1

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

    .line 299
    iput-object p5, v0, Ljava/nio/ShortBuffer;->hb:[S

    .line 300
    iput p6, v0, Ljava/nio/ShortBuffer;->offset:I

    .line 301
    return-void
.end method

.method public static whitelist test-api allocate(I)Ljava/nio/ShortBuffer;
    .registers 2
    .param p0, "capacity"    # I

    .line 377
    if-ltz p0, :cond_8

    .line 380
    new-instance v0, Ljava/nio/HeapShortBuffer;

    invoke-direct {v0, p0, p0}, Ljava/nio/HeapShortBuffer;-><init>(II)V

    return-object v0

    .line 378
    :cond_8
    invoke-static {p0}, Ljava/nio/ShortBuffer;->createCapacityException(I)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method private static greylist-max-o compare(SS)I
    .registers 3
    .param p0, "x"    # S
    .param p1, "y"    # S

    .line 1932
    invoke-static {p0, p1}, Ljava/lang/Short;->compare(SS)I

    move-result v0

    return v0
.end method

.method private blacklist getArray(I[SII)Ljava/nio/ShortBuffer;
    .registers 9
    .param p1, "index"    # I
    .param p2, "dst"    # [S
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
    invoke-virtual {p0, v2}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v3

    aput-short v3, p2, v1

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

.method private blacklist putArray(I[SII)Ljava/nio/ShortBuffer;
    .registers 9
    .param p1, "index"    # I
    .param p2, "src"    # [S
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
    aget-short v3, p2, v1

    invoke-virtual {p0, v2, v3}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

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

.method public static whitelist test-api wrap([S)Ljava/nio/ShortBuffer;
    .registers 3
    .param p0, "array"    # [S

    .line 455
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Ljava/nio/ShortBuffer;->wrap([SII)Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api wrap([SII)Ljava/nio/ShortBuffer;
    .registers 5
    .param p0, "array"    # [S
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 426
    :try_start_0
    new-instance v0, Ljava/nio/HeapShortBuffer;

    invoke-direct {v0, p0, p1, p2}, Ljava/nio/HeapShortBuffer;-><init>([SII)V
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
.method public bridge synthetic whitelist test-api array()Ljava/lang/Object;
    .registers 2

    .line 272
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->array()[S

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api array()[S
    .registers 2

    .line 1605
    iget-object v0, p0, Ljava/nio/ShortBuffer;->hb:[S

    if-eqz v0, :cond_11

    .line 1607
    iget-boolean v0, p0, Ljava/nio/ShortBuffer;->isReadOnly:Z

    if-nez v0, :cond_b

    .line 1609
    iget-object v0, p0, Ljava/nio/ShortBuffer;->hb:[S

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
    iget-object v0, p0, Ljava/nio/ShortBuffer;->hb:[S

    if-eqz v0, :cond_11

    .line 1635
    iget-boolean v0, p0, Ljava/nio/ShortBuffer;->isReadOnly:Z

    if-nez v0, :cond_b

    .line 1637
    iget v0, p0, Ljava/nio/ShortBuffer;->offset:I

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

.method public abstract whitelist test-api asReadOnlyBuffer()Ljava/nio/ShortBuffer;
.end method

.method blacklist base()Ljava/lang/Object;
    .registers 2

    .line 322
    iget-object v0, p0, Ljava/nio/ShortBuffer;->hb:[S

    return-object v0
.end method

.method public whitelist test-api clear()Ljava/nio/Buffer;
    .registers 1

    .line 1699
    invoke-super {p0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 1700
    return-object p0
.end method

.method public bridge synthetic whitelist clear()Ljava/nio/ShortBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public abstract whitelist test-api compact()Ljava/nio/ShortBuffer;
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
    check-cast p1, Ljava/nio/ShortBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ShortBuffer;->compareTo(Ljava/nio/ShortBuffer;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/nio/ShortBuffer;)I
    .registers 10
    .param p1, "that"    # Ljava/nio/ShortBuffer;

    .line 1909
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->position()I

    move-result v0

    .line 1910
    .local v0, "thisPos":I
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, v0

    .line 1911
    .local v1, "thisRem":I
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->position()I

    move-result v2

    .line 1912
    .local v2, "thatPos":I
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->limit()I

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
    invoke-static {p0, v0, p1, v2, v4}, Ljava/nio/BufferMismatch;->mismatch(Ljava/nio/ShortBuffer;ILjava/nio/ShortBuffer;II)I

    move-result v5

    .line 1919
    .local v5, "i":I
    if-ltz v5, :cond_31

    .line 1920
    add-int v6, v0, v5

    invoke-virtual {p0, v6}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v6

    add-int v7, v2, v5

    invoke-virtual {p1, v7}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v7

    invoke-static {v6, v7}, Ljava/nio/ShortBuffer;->compare(SS)I

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
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->duplicate()Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api duplicate()Ljava/nio/ShortBuffer;
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
    instance-of v1, p1, Ljava/nio/ShortBuffer;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 1872
    return v2

    .line 1873
    :cond_a
    move-object v1, p1

    check-cast v1, Ljava/nio/ShortBuffer;

    .line 1874
    .local v1, "that":Ljava/nio/ShortBuffer;
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->position()I

    move-result v3

    .line 1875
    .local v3, "thisPos":I
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v4

    sub-int/2addr v4, v3

    .line 1876
    .local v4, "thisRem":I
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->position()I

    move-result v5

    .line 1877
    .local v5, "thatPos":I
    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->limit()I

    move-result v6

    sub-int/2addr v6, v5

    .line 1878
    .local v6, "thatRem":I
    if-ltz v4, :cond_2d

    if-eq v4, v6, :cond_24

    goto :goto_2d

    .line 1880
    :cond_24
    invoke-static {p0, v3, v1, v5, v4}, Ljava/nio/BufferMismatch;->mismatch(Ljava/nio/ShortBuffer;ILjava/nio/ShortBuffer;II)I

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

.method public bridge synthetic whitelist flip()Ljava/nio/ShortBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public whitelist test-api get(I[S)Ljava/nio/ShortBuffer;
    .registers 5
    .param p1, "index"    # I
    .param p2, "dst"    # [S

    .line 931
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/nio/ShortBuffer;->get(I[SII)Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api get(I[SII)Ljava/nio/ShortBuffer;
    .registers 6
    .param p1, "index"    # I
    .param p2, "dst"    # [S
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 895
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v0

    invoke-static {p1, p4, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 896
    array-length v0, p2

    invoke-static {p3, p4, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 898
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/ShortBuffer;->getArray(I[SII)Ljava/nio/ShortBuffer;

    .line 900
    return-object p0
.end method

.method public whitelist test-api get([S)Ljava/nio/ShortBuffer;
    .registers 4
    .param p1, "dst"    # [S

    .line 847
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api get([SII)Ljava/nio/ShortBuffer;
    .registers 6
    .param p1, "dst"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 816
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 817
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->position()I

    move-result v0

    .line 818
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, v0

    if-gt p3, v1, :cond_18

    .line 821
    invoke-direct {p0, v0, p1, p2, p3}, Ljava/nio/ShortBuffer;->getArray(I[SII)Ljava/nio/ShortBuffer;

    .line 823
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 824
    return-object p0

    .line 819
    :cond_18
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1
.end method

.method public abstract whitelist test-api get()S
.end method

.method public abstract whitelist test-api get(I)S
.end method

.method public final whitelist test-api hasArray()Z
    .registers 2

    .line 1582
    iget-object v0, p0, Ljava/nio/ShortBuffer;->hb:[S

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Ljava/nio/ShortBuffer;->isReadOnly:Z

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
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->position()I

    move-result v1

    .line 1827
    .local v1, "p":I
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_b
    if-lt v2, v1, :cond_18

    .line 1831
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {p0, v2}, Ljava/nio/ShortBuffer;->get(I)S

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

.method public bridge synthetic whitelist limit(I)Ljava/nio/ShortBuffer;
    .registers 2

    invoke-virtual {p0, p1}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ShortBuffer;

    return-object p1
.end method

.method public whitelist test-api mark()Ljava/nio/Buffer;
    .registers 1

    .line 1675
    invoke-super {p0}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;

    .line 1676
    return-object p0
.end method

.method public bridge synthetic whitelist mark()Ljava/nio/ShortBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->mark()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public whitelist test-api mismatch(Ljava/nio/ShortBuffer;)I
    .registers 9
    .param p1, "that"    # Ljava/nio/ShortBuffer;

    .line 1961
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->position()I

    move-result v0

    .line 1962
    .local v0, "thisPos":I
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, v0

    .line 1963
    .local v1, "thisRem":I
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->position()I

    move-result v2

    .line 1964
    .local v2, "thatPos":I
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->limit()I

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
    invoke-static {p0, v0, p1, v2, v4}, Ljava/nio/BufferMismatch;->mismatch(Ljava/nio/ShortBuffer;ILjava/nio/ShortBuffer;II)I

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

.method public abstract whitelist test-api order()Ljava/nio/ByteOrder;
.end method

.method public whitelist test-api position(I)Ljava/nio/Buffer;
    .registers 2
    .param p1, "newPosition"    # I

    .line 1651
    invoke-super {p0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 1652
    return-object p0
.end method

.method public bridge synthetic whitelist position(I)Ljava/nio/ShortBuffer;
    .registers 2

    invoke-virtual {p0, p1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ShortBuffer;

    return-object p1
.end method

.method public whitelist test-api put(ILjava/nio/ShortBuffer;II)Ljava/nio/ShortBuffer;
    .registers 6
    .param p1, "index"    # I
    .param p2, "src"    # Ljava/nio/ShortBuffer;
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 1096
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v0

    invoke-static {p1, p4, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 1097
    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->limit()I

    move-result v0

    invoke-static {p3, p4, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 1098
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1101
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/nio/ShortBuffer;->putBuffer(ILjava/nio/ShortBuffer;II)V

    .line 1103
    return-object p0

    .line 1099
    :cond_18
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public abstract whitelist test-api put(IS)Ljava/nio/ShortBuffer;
.end method

.method public whitelist test-api put(I[S)Ljava/nio/ShortBuffer;
    .registers 5
    .param p1, "index"    # I
    .param p2, "src"    # [S

    .line 1418
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/nio/ShortBuffer;->put(I[SII)Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api put(I[SII)Ljava/nio/ShortBuffer;
    .registers 6
    .param p1, "index"    # I
    .param p2, "src"    # [S
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 1378
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1380
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v0

    invoke-static {p1, p4, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 1381
    array-length v0, p2

    invoke-static {p3, p4, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 1383
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/ShortBuffer;->putArray(I[SII)Ljava/nio/ShortBuffer;

    .line 1385
    return-object p0

    .line 1379
    :cond_15
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public whitelist test-api put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;
    .registers 9
    .param p1, "src"    # Ljava/nio/ShortBuffer;

    .line 1022
    if-eq p1, p0, :cond_3f

    .line 1024
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_39

    .line 1027
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->position()I

    move-result v0

    .line 1028
    .local v0, "srcPos":I
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->limit()I

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
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->position()I

    move-result v4

    .line 1031
    .local v4, "pos":I
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->limit()I

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
    invoke-virtual {p0, v4, p1, v0, v3}, Ljava/nio/ShortBuffer;->putBuffer(ILjava/nio/ShortBuffer;II)V

    .line 1039
    add-int v6, v4, v3

    invoke-virtual {p0, v6}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 1040
    add-int v6, v0, v3

    invoke-virtual {p1, v6}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

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
    invoke-static {}, Ljava/nio/ShortBuffer;->createSameBufferException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public abstract whitelist test-api put(S)Ljava/nio/ShortBuffer;
.end method

.method public final whitelist test-api put([S)Ljava/nio/ShortBuffer;
    .registers 4
    .param p1, "src"    # [S

    .line 1329
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api put([SII)Ljava/nio/ShortBuffer;
    .registers 6
    .param p1, "src"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1293
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_24

    .line 1295
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 1296
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->position()I

    move-result v0

    .line 1297
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, v0

    if-gt p3, v1, :cond_1e

    .line 1300
    invoke-direct {p0, v0, p1, p2, p3}, Ljava/nio/ShortBuffer;->putArray(I[SII)Ljava/nio/ShortBuffer;

    .line 1302
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

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

.method blacklist putBuffer(ILjava/nio/ShortBuffer;II)V
    .registers 21
    .param p1, "pos"    # I
    .param p2, "src"    # Ljava/nio/ShortBuffer;
    .param p3, "srcPos"    # I
    .param p4, "n"    # I

    .line 1178
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    iget-object v5, v0, Ljava/nio/ShortBuffer;->hb:[S

    if-eqz v5, :cond_29

    .line 1179
    iget-object v5, v2, Ljava/nio/ShortBuffer;->hb:[S

    if-eqz v5, :cond_20

    .line 1180
    iget-object v5, v2, Ljava/nio/ShortBuffer;->hb:[S

    iget v6, v2, Ljava/nio/ShortBuffer;->offset:I

    add-int/2addr v6, v3

    iget-object v7, v0, Ljava/nio/ShortBuffer;->hb:[S

    iget v8, v0, Ljava/nio/ShortBuffer;->offset:I

    add-int/2addr v8, v1

    invoke-static {v5, v6, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_28

    .line 1183
    :cond_20
    iget-object v5, v0, Ljava/nio/ShortBuffer;->hb:[S

    iget v6, v0, Ljava/nio/ShortBuffer;->offset:I

    add-int/2addr v6, v1

    invoke-virtual {v2, v3, v5, v6, v4}, Ljava/nio/ShortBuffer;->get(I[SII)Ljava/nio/ShortBuffer;

    .line 1185
    :goto_28
    return-void

    .line 1186
    :cond_29
    iget-object v5, v2, Ljava/nio/ShortBuffer;->hb:[S

    if-eqz v5, :cond_36

    .line 1188
    iget-object v5, v2, Ljava/nio/ShortBuffer;->hb:[S

    iget v6, v2, Ljava/nio/ShortBuffer;->offset:I

    add-int/2addr v6, v3

    invoke-virtual {v0, v1, v5, v6, v4}, Ljava/nio/ShortBuffer;->put(I[SII)Ljava/nio/ShortBuffer;

    .line 1189
    return-void

    .line 1193
    :cond_36
    add-int v5, v1, v4

    .line 1194
    .local v5, "posMax":I
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->base()Ljava/lang/Object;

    move-result-object v6

    .line 1200
    .local v6, "thisBase":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->isDirect()Z

    move-result v7

    const/4 v9, 0x1

    if-eqz v7, :cond_65

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->isDirect()Z

    move-result v7

    if-eqz v7, :cond_65

    .line 1203
    iget-wide v10, v0, Ljava/nio/ShortBuffer;->address:J

    int-to-long v12, v1

    shl-long/2addr v12, v9

    add-long/2addr v10, v12

    .line 1204
    .local v10, "dstStart":J
    iget-wide v12, v2, Ljava/nio/ShortBuffer;->address:J

    int-to-long v14, v3

    shl-long/2addr v14, v9

    add-long/2addr v12, v14

    .line 1206
    .local v12, "srcStart":J
    cmp-long v7, v10, v12

    if-lez v7, :cond_61

    int-to-long v14, v4

    shl-long/2addr v14, v9

    add-long/2addr v14, v12

    cmp-long v7, v14, v10

    if-gez v7, :cond_5f

    goto :goto_61

    :cond_5f
    const/4 v8, 0x0

    goto :goto_62

    :cond_61
    :goto_61
    move v8, v9

    .line 1208
    .end local v10    # "dstStart":J
    .end local v12    # "srcStart":J
    .local v8, "ascendingOrder":Z
    :goto_62
    move v15, v9

    goto/16 :goto_c5

    .end local v8    # "ascendingOrder":Z
    :cond_65
    if-eqz v6, :cond_c3

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->base()Ljava/lang/Object;

    move-result-object v7

    if-ne v6, v7, :cond_c3

    .line 1209
    iget-object v7, v0, Ljava/nio/ShortBuffer;->hb:[S

    if-ne v6, v7, :cond_83

    .line 1210
    iget v7, v0, Ljava/nio/ShortBuffer;->offset:I

    add-int/2addr v7, v1

    .line 1211
    .local v7, "dstStart":I
    iget v10, v2, Ljava/nio/ShortBuffer;->offset:I

    add-int/2addr v10, v3

    .line 1212
    .local v10, "srcStart":I
    if-le v7, v10, :cond_80

    add-int v11, v10, v4

    if-ge v11, v7, :cond_7e

    goto :goto_80

    :cond_7e
    const/4 v8, 0x0

    goto :goto_81

    :cond_80
    :goto_80
    move v8, v9

    .line 1213
    .end local v7    # "dstStart":I
    .end local v10    # "srcStart":I
    .restart local v8    # "ascendingOrder":Z
    :goto_81
    move v15, v9

    goto :goto_c5

    .end local v8    # "ascendingOrder":Z
    :cond_83
    instance-of v7, v0, Ljava/nio/ByteBufferAsShortBuffer;

    if-eqz v7, :cond_c0

    move-object v7, v0

    check-cast v7, Ljava/nio/ByteBufferAsShortBuffer;

    .local v7, "asDst":Ljava/nio/ByteBufferAsShortBuffer;
    instance-of v10, v2, Ljava/nio/ByteBufferAsShortBuffer;

    if-eqz v10, :cond_be

    .line 1214
    move-object v10, v2

    check-cast v10, Ljava/nio/ByteBufferAsShortBuffer;

    .local v10, "asSrc":Ljava/nio/ByteBufferAsShortBuffer;
    instance-of v11, v6, [B

    if-eqz v11, :cond_bc

    .line 1216
    iget v11, v7, Ljava/nio/ByteBufferAsShortBuffer;->byteOffset:I

    iget-object v12, v7, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    iget v12, v12, Ljava/nio/ByteBuffer;->offset:I

    add-int/2addr v11, v12

    int-to-long v11, v11

    int-to-long v13, v1

    shl-long/2addr v13, v9

    add-long/2addr v11, v13

    .line 1217
    .local v11, "dstStart":J
    iget v13, v10, Ljava/nio/ByteBufferAsShortBuffer;->byteOffset:I

    iget-object v14, v10, Ljava/nio/ByteBufferAsShortBuffer;->bb:Ljava/nio/ByteBuffer;

    iget v14, v14, Ljava/nio/ByteBuffer;->offset:I

    add-int/2addr v13, v14

    int-to-long v13, v13

    move v15, v9

    int-to-long v8, v3

    shl-long/2addr v8, v15

    add-long/2addr v13, v8

    .line 1218
    .local v13, "srcStart":J
    cmp-long v8, v11, v13

    if-lez v8, :cond_ba

    int-to-long v8, v4

    shl-long/2addr v8, v15

    add-long/2addr v8, v13

    cmp-long v8, v8, v11

    if-gez v8, :cond_b8

    goto :goto_ba

    :cond_b8
    const/4 v8, 0x0

    goto :goto_bb

    :cond_ba
    :goto_ba
    move v8, v15

    .line 1219
    .end local v11    # "dstStart":J
    .end local v13    # "srcStart":J
    .restart local v8    # "ascendingOrder":Z
    :goto_bb
    goto :goto_c5

    .line 1214
    .end local v8    # "ascendingOrder":Z
    :cond_bc
    move v15, v9

    goto :goto_c1

    .line 1213
    .end local v10    # "asSrc":Ljava/nio/ByteBufferAsShortBuffer;
    :cond_be
    move v15, v9

    goto :goto_c1

    .end local v7    # "asDst":Ljava/nio/ByteBufferAsShortBuffer;
    :cond_c0
    move v15, v9

    .line 1221
    :goto_c1
    const/4 v8, 0x1

    .restart local v8    # "ascendingOrder":Z
    goto :goto_c5

    .line 1208
    .end local v8    # "ascendingOrder":Z
    :cond_c3
    move v15, v9

    .line 1224
    const/4 v8, 0x1

    .line 1226
    .restart local v8    # "ascendingOrder":Z
    :goto_c5
    if-eqz v8, :cond_da

    .line 1227
    move/from16 v7, p1

    .local v7, "i":I
    move/from16 v9, p3

    .local v9, "j":I
    :goto_cb
    if-ge v7, v5, :cond_d9

    .line 1228
    invoke-virtual {v2, v9}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v10

    invoke-virtual {v0, v7, v10}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 1227
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_cb

    .end local v7    # "i":I
    .end local v9    # "j":I
    :cond_d9
    goto :goto_ed

    .line 1231
    :cond_da
    add-int/lit8 v7, v5, -0x1

    .restart local v7    # "i":I
    add-int v9, v3, v4

    sub-int/2addr v9, v15

    .restart local v9    # "j":I
    :goto_df
    if-lt v7, v1, :cond_ed

    .line 1232
    invoke-virtual {v2, v9}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v10

    invoke-virtual {v0, v7, v10}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 1231
    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_df

    .line 1239
    .end local v7    # "i":I
    .end local v9    # "j":I
    :cond_ed
    :goto_ed
    return-void
.end method

.method public whitelist test-api reset()Ljava/nio/Buffer;
    .registers 1

    .line 1687
    invoke-super {p0}, Ljava/nio/Buffer;->reset()Ljava/nio/Buffer;

    .line 1688
    return-object p0
.end method

.method public bridge synthetic whitelist reset()Ljava/nio/ShortBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->reset()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public whitelist test-api rewind()Ljava/nio/Buffer;
    .registers 1

    .line 1723
    invoke-super {p0}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    .line 1724
    return-object p0
.end method

.method public bridge synthetic whitelist rewind()Ljava/nio/ShortBuffer;
    .registers 2

    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api slice()Ljava/nio/Buffer;
    .registers 2

    .line 272
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->slice()Ljava/nio/ShortBuffer;

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
    invoke-virtual {p0, p1, p2}, Ljava/nio/ShortBuffer;->slice(II)Ljava/nio/ShortBuffer;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist test-api slice()Ljava/nio/ShortBuffer;
.end method

.method public abstract whitelist test-api slice(II)Ljava/nio/ShortBuffer;
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
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1801
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1802
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->capacity()I

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
