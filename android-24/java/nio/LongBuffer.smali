.class public abstract Ljava/nio/LongBuffer;
.super Ljava/nio/Buffer;
.source "LongBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/LongBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final hb:[J

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
    .line 106
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
    invoke-direct/range {v0 .. v6}, Ljava/nio/LongBuffer;-><init>(IIII[JI)V

    #@a
    .line 105
    return-void
.end method

.method constructor <init>(IIII[JI)V
    .locals 6
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I
    .param p5, "hb"    # [J
    .param p6, "offset"    # I

    #@0
    .prologue
    .line 98
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
    .line 99
    iput-object p5, p0, Ljava/nio/LongBuffer;->hb:[J

    #@b
    .line 100
    iput p6, p0, Ljava/nio/LongBuffer;->offset:I

    #@d
    .line 97
    return-void
.end method

.method public static allocate(I)Ljava/nio/LongBuffer;
    .locals 1
    .param p0, "capacity"    # I

    #@0
    .prologue
    .line 124
    if-gez p0, :cond_0

    #@2
    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v0

    #@8
    .line 126
    :cond_0
    new-instance v0, Ljava/nio/HeapLongBuffer;

    #@a
    invoke-direct {v0, p0, p0}, Ljava/nio/HeapLongBuffer;-><init>(II)V

    #@d
    return-object v0
.end method

.method private static compare(JJ)I
    .locals 2
    .param p0, "x"    # J
    .param p2, "y"    # J

    #@0
    .prologue
    .line 701
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Long;->compare(JJ)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private static equals(JJ)Z
    .locals 2
    .param p0, "x"    # J
    .param p2, "y"    # J

    #@0
    .prologue
    .line 661
    cmp-long v0, p0, p2

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public static wrap([J)Ljava/nio/LongBuffer;
    .locals 2
    .param p0, "array"    # [J

    #@0
    .prologue
    .line 177
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0}, Ljava/nio/LongBuffer;->wrap([JII)Ljava/nio/LongBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static wrap([JII)Ljava/nio/LongBuffer;
    .locals 2
    .param p0, "array"    # [J
    .param p1, "offset"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 156
    :try_start_0
    new-instance v1, Ljava/nio/HeapLongBuffer;

    #@2
    invoke-direct {v1, p0, p1, p2}, Ljava/nio/HeapLongBuffer;-><init>([JII)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    return-object v1

    #@6
    .line 157
    :catch_0
    move-exception v0

    #@7
    .line 158
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
    .line 509
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->array()[J

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final array()[J
    .locals 1

    #@0
    .prologue
    .line 510
    iget-object v0, p0, Ljava/nio/LongBuffer;->hb:[J

    #@2
    if-nez v0, :cond_0

    #@4
    .line 511
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@6
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@9
    throw v0

    #@a
    .line 512
    :cond_0
    iget-boolean v0, p0, Ljava/nio/LongBuffer;->isReadOnly:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 513
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@10
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@13
    throw v0

    #@14
    .line 514
    :cond_1
    iget-object v0, p0, Ljava/nio/LongBuffer;->hb:[J

    #@16
    return-object v0
.end method

.method public final arrayOffset()I
    .locals 1

    #@0
    .prologue
    .line 534
    iget-object v0, p0, Ljava/nio/LongBuffer;->hb:[J

    #@2
    if-nez v0, :cond_0

    #@4
    .line 535
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@6
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@9
    throw v0

    #@a
    .line 536
    :cond_0
    iget-boolean v0, p0, Ljava/nio/LongBuffer;->isReadOnly:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 537
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@10
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@13
    throw v0

    #@14
    .line 538
    :cond_1
    iget v0, p0, Ljava/nio/LongBuffer;->offset:I

    #@16
    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/LongBuffer;
.end method

.method public abstract compact()Ljava/nio/LongBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 688
    check-cast p1, Ljava/nio/LongBuffer;

    #@2
    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/nio/LongBuffer;->compareTo(Ljava/nio/LongBuffer;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Ljava/nio/LongBuffer;)I
    .locals 8
    .param p1, "that"    # Ljava/nio/LongBuffer;

    #@0
    .prologue
    .line 689
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->position()I

    #@3
    move-result v4

    #@4
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    #@7
    move-result v5

    #@8
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    #@b
    move-result v6

    #@c
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    #@f
    move-result v5

    #@10
    add-int v3, v4, v5

    #@12
    .line 690
    .local v3, "n":I
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->position()I

    #@15
    move-result v1

    #@16
    .local v1, "i":I
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->position()I

    #@19
    move-result v2

    #@1a
    .local v2, "j":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@1c
    .line 691
    invoke-virtual {p0, v1}, Ljava/nio/LongBuffer;->get(I)J

    #@1f
    move-result-wide v4

    #@20
    invoke-virtual {p1, v2}, Ljava/nio/LongBuffer;->get(I)J

    #@23
    move-result-wide v6

    #@24
    invoke-static {v4, v5, v6, v7}, Ljava/nio/LongBuffer;->compare(JJ)I

    #@27
    move-result v0

    #@28
    .line 692
    .local v0, "cmp":I
    if-eqz v0, :cond_0

    #@2a
    .line 693
    return v0

    #@2b
    .line 690
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@2d
    add-int/lit8 v2, v2, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 695
    .end local v0    # "cmp":I
    :cond_1
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    #@33
    move-result v4

    #@34
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    #@37
    move-result v5

    #@38
    sub-int/2addr v4, v5

    #@39
    return v4
.end method

.method public abstract duplicate()Ljava/nio/LongBuffer;
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
    .line 644
    if-ne p0, p1, :cond_0

    #@4
    .line 645
    return v9

    #@5
    .line 646
    :cond_0
    instance-of v4, p1, Ljava/nio/LongBuffer;

    #@7
    if-nez v4, :cond_1

    #@9
    .line 647
    return v8

    #@a
    :cond_1
    move-object v3, p1

    #@b
    .line 648
    check-cast v3, Ljava/nio/LongBuffer;

    #@d
    .line 649
    .local v3, "that":Ljava/nio/LongBuffer;
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    #@10
    move-result v4

    #@11
    invoke-virtual {v3}, Ljava/nio/LongBuffer;->remaining()I

    #@14
    move-result v5

    #@15
    if-eq v4, v5, :cond_2

    #@17
    .line 650
    return v8

    #@18
    .line 651
    :cond_2
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->position()I

    #@1b
    move-result v2

    #@1c
    .line 652
    .local v2, "p":I
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->limit()I

    #@1f
    move-result v4

    #@20
    add-int/lit8 v0, v4, -0x1

    #@22
    .local v0, "i":I
    invoke-virtual {v3}, Ljava/nio/LongBuffer;->limit()I

    #@25
    move-result v4

    #@26
    add-int/lit8 v1, v4, -0x1

    #@28
    .local v1, "j":I
    :goto_0
    if-lt v0, v2, :cond_4

    #@2a
    .line 653
    invoke-virtual {p0, v0}, Ljava/nio/LongBuffer;->get(I)J

    #@2d
    move-result-wide v4

    #@2e
    invoke-virtual {v3, v1}, Ljava/nio/LongBuffer;->get(I)J

    #@31
    move-result-wide v6

    #@32
    invoke-static {v4, v5, v6, v7}, Ljava/nio/LongBuffer;->equals(JJ)Z

    #@35
    move-result v4

    #@36
    if-nez v4, :cond_3

    #@38
    .line 654
    return v8

    #@39
    .line 652
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@3b
    add-int/lit8 v1, v1, -0x1

    #@3d
    goto :goto_0

    #@3e
    .line 655
    :cond_4
    return v9
.end method

.method public abstract get()J
.end method

.method public abstract get(I)J
.end method

.method public get([J)Ljava/nio/LongBuffer;
    .locals 2
    .param p1, "dst"    # [J

    #@0
    .prologue
    .line 358
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/LongBuffer;->get([JII)Ljava/nio/LongBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public get([JII)Ljava/nio/LongBuffer;
    .locals 4
    .param p1, "dst"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 334
    array-length v2, p1

    #@1
    invoke-static {p2, p3, v2}, Ljava/nio/LongBuffer;->checkBounds(III)V

    #@4
    .line 335
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    #@7
    move-result v2

    #@8
    if-le p3, v2, :cond_0

    #@a
    .line 336
    new-instance v2, Ljava/nio/BufferUnderflowException;

    #@c
    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@f
    throw v2

    #@10
    .line 337
    :cond_0
    add-int v0, p2, p3

    #@12
    .line 338
    .local v0, "end":I
    move v1, p2

    #@13
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@15
    .line 339
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->get()J

    #@18
    move-result-wide v2

    #@19
    aput-wide v2, p1, v1

    #@1b
    .line 338
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 340
    :cond_1
    return-object p0
.end method

.method public final hasArray()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 491
    iget-object v1, p0, Ljava/nio/LongBuffer;->hb:[J

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-boolean v1, p0, Ljava/nio/LongBuffer;->isReadOnly:Z

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
    .line 605
    const/4 v0, 0x1

    #@1
    .line 606
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->position()I

    #@4
    move-result v2

    #@5
    .line 607
    .local v2, "p":I
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->limit()I

    #@8
    move-result v3

    #@9
    add-int/lit8 v1, v3, -0x1

    #@b
    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    #@d
    .line 608
    mul-int/lit8 v3, v0, 0x1f

    #@f
    invoke-virtual {p0, v1}, Ljava/nio/LongBuffer;->get(I)J

    #@12
    move-result-wide v4

    #@13
    long-to-int v4, v4

    #@14
    add-int v0, v3, v4

    #@16
    .line 607
    add-int/lit8 v1, v1, -0x1

    #@18
    goto :goto_0

    #@19
    .line 609
    :cond_0
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method public abstract put(IJ)Ljava/nio/LongBuffer;
.end method

.method public abstract put(J)Ljava/nio/LongBuffer;
.end method

.method public put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;
    .locals 4
    .param p1, "src"    # Ljava/nio/LongBuffer;

    #@0
    .prologue
    .line 398
    if-ne p1, p0, :cond_0

    #@2
    .line 399
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v2

    #@8
    .line 400
    :cond_0
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    #@b
    move-result v1

    #@c
    .line 401
    .local v1, "n":I
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    #@f
    move-result v2

    #@10
    if-le v1, v2, :cond_1

    #@12
    .line 402
    new-instance v2, Ljava/nio/BufferOverflowException;

    #@14
    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    #@17
    throw v2

    #@18
    .line 403
    :cond_1
    const/4 v0, 0x0

    #@19
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@1b
    .line 404
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->get()J

    #@1e
    move-result-wide v2

    #@1f
    invoke-virtual {p0, v2, v3}, Ljava/nio/LongBuffer;->put(J)Ljava/nio/LongBuffer;

    #@22
    .line 403
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 405
    :cond_2
    return-object p0
.end method

.method public final put([J)Ljava/nio/LongBuffer;
    .locals 2
    .param p1, "src"    # [J

    #@0
    .prologue
    .line 473
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/LongBuffer;->put([JII)Ljava/nio/LongBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public put([JII)Ljava/nio/LongBuffer;
    .locals 4
    .param p1, "src"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 448
    array-length v2, p1

    #@1
    invoke-static {p2, p3, v2}, Ljava/nio/LongBuffer;->checkBounds(III)V

    #@4
    .line 449
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    #@7
    move-result v2

    #@8
    if-le p3, v2, :cond_0

    #@a
    .line 450
    new-instance v2, Ljava/nio/BufferOverflowException;

    #@c
    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    #@f
    throw v2

    #@10
    .line 451
    :cond_0
    add-int v0, p2, p3

    #@12
    .line 452
    .local v0, "end":I
    move v1, p2

    #@13
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@15
    .line 453
    aget-wide v2, p1, v1

    #@17
    invoke-virtual {p0, v2, v3}, Ljava/nio/LongBuffer;->put(J)Ljava/nio/LongBuffer;

    #@1a
    .line 452
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 454
    :cond_1
    return-object p0
.end method

.method public abstract slice()Ljava/nio/LongBuffer;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 578
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 579
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@10
    .line 580
    const-string/jumbo v1, "[pos="

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@16
    .line 581
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->position()I

    #@19
    move-result v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@1d
    .line 582
    const-string/jumbo v1, " lim="

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    .line 583
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->limit()I

    #@26
    move-result v1

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@2a
    .line 584
    const-string/jumbo v1, " cap="

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@30
    .line 585
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->capacity()I

    #@33
    move-result v1

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@37
    .line 586
    const-string/jumbo v1, "]"

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3d
    .line 587
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    return-object v1
.end method
