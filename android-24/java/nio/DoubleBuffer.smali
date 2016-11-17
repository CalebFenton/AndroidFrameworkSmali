.class public abstract Ljava/nio/DoubleBuffer;
.super Ljava/nio/Buffer;
.source "DoubleBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/DoubleBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final hb:[D

.field isReadOnly:Z

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
    .line 105
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
    invoke-direct/range {v0 .. v6}, Ljava/nio/DoubleBuffer;-><init>(IIII[DI)V

    #@a
    .line 104
    return-void
.end method

.method constructor <init>(IIII[DI)V
    .locals 6
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I
    .param p5, "hb"    # [D
    .param p6, "offset"    # I

    #@0
    .prologue
    .line 97
    const/4 v5, 0x3

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    invoke-direct/range {v0 .. v5}, Ljava/nio/Buffer;-><init>(IIIII)V

    #@9
    .line 98
    iput-object p5, p0, Ljava/nio/DoubleBuffer;->hb:[D

    #@b
    .line 99
    iput p6, p0, Ljava/nio/DoubleBuffer;->offset:I

    #@d
    .line 96
    return-void
.end method

.method public static allocate(I)Ljava/nio/DoubleBuffer;
    .locals 1
    .param p0, "capacity"    # I

    #@0
    .prologue
    .line 123
    if-gez p0, :cond_0

    #@2
    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v0

    #@8
    .line 125
    :cond_0
    new-instance v0, Ljava/nio/HeapDoubleBuffer;

    #@a
    invoke-direct {v0, p0, p0}, Ljava/nio/HeapDoubleBuffer;-><init>(II)V

    #@d
    return-object v0
.end method

.method private static compare(DD)I
    .locals 4
    .param p0, "x"    # D
    .param p2, "y"    # D

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    const/4 v0, -0x1

    #@3
    .line 701
    cmpg-double v3, p0, p2

    #@5
    if-gez v3, :cond_1

    #@7
    :cond_0
    :goto_0
    return v0

    #@8
    .line 702
    :cond_1
    cmpl-double v3, p0, p2

    #@a
    if-lez v3, :cond_2

    #@c
    move v0, v1

    #@d
    goto :goto_0

    #@e
    .line 703
    :cond_2
    cmpl-double v3, p0, p2

    #@10
    if-nez v3, :cond_3

    #@12
    move v0, v2

    #@13
    goto :goto_0

    #@14
    .line 704
    :cond_3
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_0

    #@1a
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_4

    #@20
    move v0, v2

    #@21
    goto :goto_0

    #@22
    :cond_4
    move v0, v1

    #@23
    goto :goto_0
.end method

.method private static equals(DD)Z
    .locals 2
    .param p0, "x"    # D
    .param p2, "y"    # D

    #@0
    .prologue
    .line 659
    cmpl-double v0, p0, p2

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    #@d
    move-result v0

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/4 v0, 0x1

    #@10
    goto :goto_0

    #@11
    :cond_1
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method public static wrap([D)Ljava/nio/DoubleBuffer;
    .locals 2
    .param p0, "array"    # [D

    #@0
    .prologue
    .line 176
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0}, Ljava/nio/DoubleBuffer;->wrap([DII)Ljava/nio/DoubleBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static wrap([DII)Ljava/nio/DoubleBuffer;
    .locals 2
    .param p0, "array"    # [D
    .param p1, "offset"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 155
    :try_start_0
    new-instance v1, Ljava/nio/HeapDoubleBuffer;

    #@2
    invoke-direct {v1, p0, p1, p2}, Ljava/nio/HeapDoubleBuffer;-><init>([DII)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    return-object v1

    #@6
    .line 156
    :catch_0
    move-exception v0

    #@7
    .line 157
    .local v0, "x":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@9
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@c
    throw v1
.end method


# virtual methods
.method public bridge synthetic array()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 508
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->array()[D

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final array()[D
    .locals 1

    #@0
    .prologue
    .line 509
    iget-object v0, p0, Ljava/nio/DoubleBuffer;->hb:[D

    #@2
    if-nez v0, :cond_0

    #@4
    .line 510
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@6
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@9
    throw v0

    #@a
    .line 511
    :cond_0
    iget-boolean v0, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 512
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@10
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@13
    throw v0

    #@14
    .line 513
    :cond_1
    iget-object v0, p0, Ljava/nio/DoubleBuffer;->hb:[D

    #@16
    return-object v0
.end method

.method public final arrayOffset()I
    .locals 1

    #@0
    .prologue
    .line 533
    iget-object v0, p0, Ljava/nio/DoubleBuffer;->hb:[D

    #@2
    if-nez v0, :cond_0

    #@4
    .line 534
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@6
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@9
    throw v0

    #@a
    .line 535
    :cond_0
    iget-boolean v0, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 536
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@10
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@13
    throw v0

    #@14
    .line 537
    :cond_1
    iget v0, p0, Ljava/nio/DoubleBuffer;->offset:I

    #@16
    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/DoubleBuffer;
.end method

.method public abstract compact()Ljava/nio/DoubleBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 687
    check-cast p1, Ljava/nio/DoubleBuffer;

    #@2
    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/nio/DoubleBuffer;->compareTo(Ljava/nio/DoubleBuffer;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Ljava/nio/DoubleBuffer;)I
    .locals 8
    .param p1, "that"    # Ljava/nio/DoubleBuffer;

    #@0
    .prologue
    .line 688
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->position()I

    #@3
    move-result v4

    #@4
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    #@7
    move-result v5

    #@8
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    #@b
    move-result v6

    #@c
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    #@f
    move-result v5

    #@10
    add-int v3, v4, v5

    #@12
    .line 689
    .local v3, "n":I
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->position()I

    #@15
    move-result v1

    #@16
    .local v1, "i":I
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->position()I

    #@19
    move-result v2

    #@1a
    .local v2, "j":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@1c
    .line 692
    invoke-virtual {p0, v1}, Ljava/nio/DoubleBuffer;->get(I)D

    #@1f
    move-result-wide v4

    #@20
    invoke-virtual {p1, v2}, Ljava/nio/DoubleBuffer;->get(I)D

    #@23
    move-result-wide v6

    #@24
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    #@27
    move-result v0

    #@28
    .line 693
    .local v0, "cmp":I
    if-eqz v0, :cond_0

    #@2a
    .line 694
    return v0

    #@2b
    .line 689
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@2d
    add-int/lit8 v2, v2, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 696
    .end local v0    # "cmp":I
    :cond_1
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    #@33
    move-result v4

    #@34
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    #@37
    move-result v5

    #@38
    sub-int/2addr v4, v5

    #@39
    return v4
.end method

.method public abstract duplicate()Ljava/nio/DoubleBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "ob"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 643
    if-ne p0, p1, :cond_0

    #@4
    .line 644
    return v9

    #@5
    .line 645
    :cond_0
    instance-of v4, p1, Ljava/nio/DoubleBuffer;

    #@7
    if-nez v4, :cond_1

    #@9
    .line 646
    return v8

    #@a
    :cond_1
    move-object v3, p1

    #@b
    .line 647
    check-cast v3, Ljava/nio/DoubleBuffer;

    #@d
    .line 648
    .local v3, "that":Ljava/nio/DoubleBuffer;
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    #@10
    move-result v4

    #@11
    invoke-virtual {v3}, Ljava/nio/DoubleBuffer;->remaining()I

    #@14
    move-result v5

    #@15
    if-eq v4, v5, :cond_2

    #@17
    .line 649
    return v8

    #@18
    .line 650
    :cond_2
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->position()I

    #@1b
    move-result v2

    #@1c
    .line 651
    .local v2, "p":I
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->limit()I

    #@1f
    move-result v4

    #@20
    add-int/lit8 v0, v4, -0x1

    #@22
    .local v0, "i":I
    invoke-virtual {v3}, Ljava/nio/DoubleBuffer;->limit()I

    #@25
    move-result v4

    #@26
    add-int/lit8 v1, v4, -0x1

    #@28
    .local v1, "j":I
    :goto_0
    if-lt v0, v2, :cond_4

    #@2a
    .line 652
    invoke-virtual {p0, v0}, Ljava/nio/DoubleBuffer;->get(I)D

    #@2d
    move-result-wide v4

    #@2e
    invoke-virtual {v3, v1}, Ljava/nio/DoubleBuffer;->get(I)D

    #@31
    move-result-wide v6

    #@32
    invoke-static {v4, v5, v6, v7}, Ljava/nio/DoubleBuffer;->equals(DD)Z

    #@35
    move-result v4

    #@36
    if-nez v4, :cond_3

    #@38
    .line 653
    return v8

    #@39
    .line 651
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@3b
    add-int/lit8 v1, v1, -0x1

    #@3d
    goto :goto_0

    #@3e
    .line 654
    :cond_4
    return v9
.end method

.method public abstract get()D
.end method

.method public abstract get(I)D
.end method

.method public get([D)Ljava/nio/DoubleBuffer;
    .locals 2
    .param p1, "dst"    # [D

    #@0
    .prologue
    .line 357
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/DoubleBuffer;->get([DII)Ljava/nio/DoubleBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public get([DII)Ljava/nio/DoubleBuffer;
    .locals 4
    .param p1, "dst"    # [D
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 333
    array-length v2, p1

    #@1
    invoke-static {p2, p3, v2}, Ljava/nio/DoubleBuffer;->checkBounds(III)V

    #@4
    .line 334
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    #@7
    move-result v2

    #@8
    if-le p3, v2, :cond_0

    #@a
    .line 335
    new-instance v2, Ljava/nio/BufferUnderflowException;

    #@c
    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@f
    throw v2

    #@10
    .line 336
    :cond_0
    add-int v0, p2, p3

    #@12
    .line 337
    .local v0, "end":I
    move v1, p2

    #@13
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@15
    .line 338
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->get()D

    #@18
    move-result-wide v2

    #@19
    aput-wide v2, p1, v1

    #@1b
    .line 337
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 339
    :cond_1
    return-object p0
.end method

.method public final hasArray()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 490
    iget-object v1, p0, Ljava/nio/DoubleBuffer;->hb:[D

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-boolean v1, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    #@0
    .prologue
    .line 604
    const/4 v0, 0x1

    #@1
    .line 605
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->position()I

    #@4
    move-result v2

    #@5
    .line 606
    .local v2, "p":I
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->limit()I

    #@8
    move-result v3

    #@9
    add-int/lit8 v1, v3, -0x1

    #@b
    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    #@d
    .line 607
    mul-int/lit8 v3, v0, 0x1f

    #@f
    invoke-virtual {p0, v1}, Ljava/nio/DoubleBuffer;->get(I)D

    #@12
    move-result-wide v4

    #@13
    double-to-int v4, v4

    #@14
    add-int v0, v3, v4

    #@16
    .line 606
    add-int/lit8 v1, v1, -0x1

    #@18
    goto :goto_0

    #@19
    .line 608
    :cond_0
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method public abstract put(D)Ljava/nio/DoubleBuffer;
.end method

.method public abstract put(ID)Ljava/nio/DoubleBuffer;
.end method

.method public put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;
    .locals 4
    .param p1, "src"    # Ljava/nio/DoubleBuffer;

    #@0
    .prologue
    .line 397
    if-ne p1, p0, :cond_0

    #@2
    .line 398
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v2

    #@8
    .line 399
    :cond_0
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    #@b
    move-result v1

    #@c
    .line 400
    .local v1, "n":I
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    #@f
    move-result v2

    #@10
    if-le v1, v2, :cond_1

    #@12
    .line 401
    new-instance v2, Ljava/nio/BufferOverflowException;

    #@14
    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    #@17
    throw v2

    #@18
    .line 402
    :cond_1
    const/4 v0, 0x0

    #@19
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@1b
    .line 403
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->get()D

    #@1e
    move-result-wide v2

    #@1f
    invoke-virtual {p0, v2, v3}, Ljava/nio/DoubleBuffer;->put(D)Ljava/nio/DoubleBuffer;

    #@22
    .line 402
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 404
    :cond_2
    return-object p0
.end method

.method public final put([D)Ljava/nio/DoubleBuffer;
    .locals 2
    .param p1, "src"    # [D

    #@0
    .prologue
    .line 472
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/DoubleBuffer;->put([DII)Ljava/nio/DoubleBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public put([DII)Ljava/nio/DoubleBuffer;
    .locals 4
    .param p1, "src"    # [D
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 447
    array-length v2, p1

    #@1
    invoke-static {p2, p3, v2}, Ljava/nio/DoubleBuffer;->checkBounds(III)V

    #@4
    .line 448
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    #@7
    move-result v2

    #@8
    if-le p3, v2, :cond_0

    #@a
    .line 449
    new-instance v2, Ljava/nio/BufferOverflowException;

    #@c
    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    #@f
    throw v2

    #@10
    .line 450
    :cond_0
    add-int v0, p2, p3

    #@12
    .line 451
    .local v0, "end":I
    move v1, p2

    #@13
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@15
    .line 452
    aget-wide v2, p1, v1

    #@17
    invoke-virtual {p0, v2, v3}, Ljava/nio/DoubleBuffer;->put(D)Ljava/nio/DoubleBuffer;

    #@1a
    .line 451
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 453
    :cond_1
    return-object p0
.end method

.method public abstract slice()Ljava/nio/DoubleBuffer;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 577
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 578
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@10
    .line 579
    const-string/jumbo v1, "[pos="

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@16
    .line 580
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->position()I

    #@19
    move-result v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@1d
    .line 581
    const-string/jumbo v1, " lim="

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    .line 582
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->limit()I

    #@26
    move-result v1

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@2a
    .line 583
    const-string/jumbo v1, " cap="

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@30
    .line 584
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->capacity()I

    #@33
    move-result v1

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@37
    .line 585
    const-string/jumbo v1, "]"

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3d
    .line 586
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    return-object v1
.end method
