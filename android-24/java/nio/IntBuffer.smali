.class public abstract Ljava/nio/IntBuffer;
.super Ljava/nio/Buffer;
.source "IntBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/IntBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final hb:[I

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
    .line 108
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
    invoke-direct/range {v0 .. v6}, Ljava/nio/IntBuffer;-><init>(IIII[II)V

    #@a
    .line 107
    return-void
.end method

.method constructor <init>(IIII[II)V
    .locals 6
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I
    .param p5, "hb"    # [I
    .param p6, "offset"    # I

    #@0
    .prologue
    .line 100
    const/4 v5, 0x2

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
    .line 101
    iput-object p5, p0, Ljava/nio/IntBuffer;->hb:[I

    #@b
    .line 102
    iput p6, p0, Ljava/nio/IntBuffer;->offset:I

    #@d
    .line 99
    return-void
.end method

.method public static allocate(I)Ljava/nio/IntBuffer;
    .locals 1
    .param p0, "capacity"    # I

    #@0
    .prologue
    .line 126
    if-gez p0, :cond_0

    #@2
    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v0

    #@8
    .line 128
    :cond_0
    new-instance v0, Ljava/nio/HeapIntBuffer;

    #@a
    invoke-direct {v0, p0, p0}, Ljava/nio/HeapIntBuffer;-><init>(II)V

    #@d
    return-object v0
.end method

.method private static compare(II)I
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    #@0
    .prologue
    .line 703
    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private static equals(II)Z
    .locals 1
    .param p0, "x"    # I
    .param p1, "y"    # I

    #@0
    .prologue
    .line 663
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

.method public static wrap([I)Ljava/nio/IntBuffer;
    .locals 2
    .param p0, "array"    # [I

    #@0
    .prologue
    .line 179
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0}, Ljava/nio/IntBuffer;->wrap([III)Ljava/nio/IntBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static wrap([III)Ljava/nio/IntBuffer;
    .locals 2
    .param p0, "array"    # [I
    .param p1, "offset"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 158
    :try_start_0
    new-instance v1, Ljava/nio/HeapIntBuffer;

    #@2
    invoke-direct {v1, p0, p1, p2}, Ljava/nio/HeapIntBuffer;-><init>([III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    return-object v1

    #@6
    .line 159
    :catch_0
    move-exception v0

    #@7
    .line 160
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
    .line 511
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->array()[I

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final array()[I
    .locals 1

    #@0
    .prologue
    .line 512
    iget-object v0, p0, Ljava/nio/IntBuffer;->hb:[I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 513
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@6
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@9
    throw v0

    #@a
    .line 514
    :cond_0
    iget-boolean v0, p0, Ljava/nio/IntBuffer;->isReadOnly:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 515
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@10
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@13
    throw v0

    #@14
    .line 516
    :cond_1
    iget-object v0, p0, Ljava/nio/IntBuffer;->hb:[I

    #@16
    return-object v0
.end method

.method public final arrayOffset()I
    .locals 1

    #@0
    .prologue
    .line 536
    iget-object v0, p0, Ljava/nio/IntBuffer;->hb:[I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 537
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@6
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@9
    throw v0

    #@a
    .line 538
    :cond_0
    iget-boolean v0, p0, Ljava/nio/IntBuffer;->isReadOnly:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 539
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@10
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@13
    throw v0

    #@14
    .line 540
    :cond_1
    iget v0, p0, Ljava/nio/IntBuffer;->offset:I

    #@16
    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/IntBuffer;
.end method

.method public abstract compact()Ljava/nio/IntBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 690
    check-cast p1, Ljava/nio/IntBuffer;

    #@2
    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/nio/IntBuffer;->compareTo(Ljava/nio/IntBuffer;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Ljava/nio/IntBuffer;)I
    .locals 7
    .param p1, "that"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 691
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    #@3
    move-result v4

    #@4
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    #@7
    move-result v5

    #@8
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    #@b
    move-result v6

    #@c
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    #@f
    move-result v5

    #@10
    add-int v3, v4, v5

    #@12
    .line 692
    .local v3, "n":I
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    #@15
    move-result v1

    #@16
    .local v1, "i":I
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->position()I

    #@19
    move-result v2

    #@1a
    .local v2, "j":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@1c
    .line 693
    invoke-virtual {p0, v1}, Ljava/nio/IntBuffer;->get(I)I

    #@1f
    move-result v4

    #@20
    invoke-virtual {p1, v2}, Ljava/nio/IntBuffer;->get(I)I

    #@23
    move-result v5

    #@24
    invoke-static {v4, v5}, Ljava/nio/IntBuffer;->compare(II)I

    #@27
    move-result v0

    #@28
    .line 694
    .local v0, "cmp":I
    if-eqz v0, :cond_0

    #@2a
    .line 695
    return v0

    #@2b
    .line 692
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@2d
    add-int/lit8 v2, v2, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 697
    .end local v0    # "cmp":I
    :cond_1
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    #@33
    move-result v4

    #@34
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    #@37
    move-result v5

    #@38
    sub-int/2addr v4, v5

    #@39
    return v4
.end method

.method public abstract duplicate()Ljava/nio/IntBuffer;
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
    .line 646
    if-ne p0, p1, :cond_0

    #@4
    .line 647
    return v7

    #@5
    .line 648
    :cond_0
    instance-of v4, p1, Ljava/nio/IntBuffer;

    #@7
    if-nez v4, :cond_1

    #@9
    .line 649
    return v6

    #@a
    :cond_1
    move-object v3, p1

    #@b
    .line 650
    check-cast v3, Ljava/nio/IntBuffer;

    #@d
    .line 651
    .local v3, "that":Ljava/nio/IntBuffer;
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    #@10
    move-result v4

    #@11
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->remaining()I

    #@14
    move-result v5

    #@15
    if-eq v4, v5, :cond_2

    #@17
    .line 652
    return v6

    #@18
    .line 653
    :cond_2
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    #@1b
    move-result v2

    #@1c
    .line 654
    .local v2, "p":I
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->limit()I

    #@1f
    move-result v4

    #@20
    add-int/lit8 v0, v4, -0x1

    #@22
    .local v0, "i":I
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->limit()I

    #@25
    move-result v4

    #@26
    add-int/lit8 v1, v4, -0x1

    #@28
    .local v1, "j":I
    :goto_0
    if-lt v0, v2, :cond_4

    #@2a
    .line 655
    invoke-virtual {p0, v0}, Ljava/nio/IntBuffer;->get(I)I

    #@2d
    move-result v4

    #@2e
    invoke-virtual {v3, v1}, Ljava/nio/IntBuffer;->get(I)I

    #@31
    move-result v5

    #@32
    invoke-static {v4, v5}, Ljava/nio/IntBuffer;->equals(II)Z

    #@35
    move-result v4

    #@36
    if-nez v4, :cond_3

    #@38
    .line 656
    return v6

    #@39
    .line 654
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@3b
    add-int/lit8 v1, v1, -0x1

    #@3d
    goto :goto_0

    #@3e
    .line 657
    :cond_4
    return v7
.end method

.method public abstract get()I
.end method

.method public abstract get(I)I
.end method

.method public get([I)Ljava/nio/IntBuffer;
    .locals 2
    .param p1, "dst"    # [I

    #@0
    .prologue
    .line 360
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/IntBuffer;->get([III)Ljava/nio/IntBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public get([III)Ljava/nio/IntBuffer;
    .locals 3
    .param p1, "dst"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 336
    array-length v2, p1

    #@1
    invoke-static {p2, p3, v2}, Ljava/nio/IntBuffer;->checkBounds(III)V

    #@4
    .line 337
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    #@7
    move-result v2

    #@8
    if-le p3, v2, :cond_0

    #@a
    .line 338
    new-instance v2, Ljava/nio/BufferUnderflowException;

    #@c
    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@f
    throw v2

    #@10
    .line 339
    :cond_0
    add-int v0, p2, p3

    #@12
    .line 340
    .local v0, "end":I
    move v1, p2

    #@13
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@15
    .line 341
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->get()I

    #@18
    move-result v2

    #@19
    aput v2, p1, v1

    #@1b
    .line 340
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 342
    :cond_1
    return-object p0
.end method

.method public final hasArray()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 493
    iget-object v1, p0, Ljava/nio/IntBuffer;->hb:[I

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-boolean v1, p0, Ljava/nio/IntBuffer;->isReadOnly:Z

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
    .locals 5

    #@0
    .prologue
    .line 607
    const/4 v0, 0x1

    #@1
    .line 608
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    #@4
    move-result v2

    #@5
    .line 609
    .local v2, "p":I
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->limit()I

    #@8
    move-result v3

    #@9
    add-int/lit8 v1, v3, -0x1

    #@b
    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    #@d
    .line 610
    mul-int/lit8 v3, v0, 0x1f

    #@f
    invoke-virtual {p0, v1}, Ljava/nio/IntBuffer;->get(I)I

    #@12
    move-result v4

    #@13
    add-int v0, v3, v4

    #@15
    .line 609
    add-int/lit8 v1, v1, -0x1

    #@17
    goto :goto_0

    #@18
    .line 611
    :cond_0
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method public abstract put(I)Ljava/nio/IntBuffer;
.end method

.method public abstract put(II)Ljava/nio/IntBuffer;
.end method

.method public put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;
    .locals 3
    .param p1, "src"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 400
    if-ne p1, p0, :cond_0

    #@2
    .line 401
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v2

    #@8
    .line 402
    :cond_0
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    #@b
    move-result v1

    #@c
    .line 403
    .local v1, "n":I
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    #@f
    move-result v2

    #@10
    if-le v1, v2, :cond_1

    #@12
    .line 404
    new-instance v2, Ljava/nio/BufferOverflowException;

    #@14
    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    #@17
    throw v2

    #@18
    .line 405
    :cond_1
    const/4 v0, 0x0

    #@19
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@1b
    .line 406
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->get()I

    #@1e
    move-result v2

    #@1f
    invoke-virtual {p0, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    #@22
    .line 405
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 407
    :cond_2
    return-object p0
.end method

.method public final put([I)Ljava/nio/IntBuffer;
    .locals 2
    .param p1, "src"    # [I

    #@0
    .prologue
    .line 475
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public put([III)Ljava/nio/IntBuffer;
    .locals 3
    .param p1, "src"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 450
    array-length v2, p1

    #@1
    invoke-static {p2, p3, v2}, Ljava/nio/IntBuffer;->checkBounds(III)V

    #@4
    .line 451
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    #@7
    move-result v2

    #@8
    if-le p3, v2, :cond_0

    #@a
    .line 452
    new-instance v2, Ljava/nio/BufferOverflowException;

    #@c
    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    #@f
    throw v2

    #@10
    .line 453
    :cond_0
    add-int v0, p2, p3

    #@12
    .line 454
    .local v0, "end":I
    move v1, p2

    #@13
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@15
    .line 455
    aget v2, p1, v1

    #@17
    invoke-virtual {p0, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    #@1a
    .line 454
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 456
    :cond_1
    return-object p0
.end method

.method public abstract slice()Ljava/nio/IntBuffer;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 580
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 581
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@10
    .line 582
    const-string/jumbo v1, "[pos="

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@16
    .line 583
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->position()I

    #@19
    move-result v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@1d
    .line 584
    const-string/jumbo v1, " lim="

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    .line 585
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->limit()I

    #@26
    move-result v1

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@2a
    .line 586
    const-string/jumbo v1, " cap="

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@30
    .line 587
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->capacity()I

    #@33
    move-result v1

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@37
    .line 588
    const-string/jumbo v1, "]"

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3d
    .line 589
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    return-object v1
.end method
