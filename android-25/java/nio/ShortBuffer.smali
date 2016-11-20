.class public abstract Ljava/nio/ShortBuffer;
.super Ljava/nio/Buffer;
.source "ShortBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/ShortBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final hb:[S

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
    .line 107
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
    invoke-direct/range {v0 .. v6}, Ljava/nio/ShortBuffer;-><init>(IIII[SI)V

    #@a
    .line 106
    return-void
.end method

.method constructor <init>(IIII[SI)V
    .locals 6
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I
    .param p5, "hb"    # [S
    .param p6, "offset"    # I

    #@0
    .prologue
    .line 99
    const/4 v5, 0x1

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
    .line 100
    iput-object p5, p0, Ljava/nio/ShortBuffer;->hb:[S

    #@b
    .line 101
    iput p6, p0, Ljava/nio/ShortBuffer;->offset:I

    #@d
    .line 98
    return-void
.end method

.method public static allocate(I)Ljava/nio/ShortBuffer;
    .locals 1
    .param p0, "capacity"    # I

    #@0
    .prologue
    .line 125
    if-gez p0, :cond_0

    #@2
    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v0

    #@8
    .line 127
    :cond_0
    new-instance v0, Ljava/nio/HeapShortBuffer;

    #@a
    invoke-direct {v0, p0, p0}, Ljava/nio/HeapShortBuffer;-><init>(II)V

    #@d
    return-object v0
.end method

.method private static compare(SS)I
    .locals 1
    .param p0, "x"    # S
    .param p1, "y"    # S

    #@0
    .prologue
    .line 702
    invoke-static {p0, p1}, Ljava/lang/Short;->compare(SS)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private static equals(SS)Z
    .locals 1
    .param p0, "x"    # S
    .param p1, "y"    # S

    #@0
    .prologue
    .line 662
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

.method public static wrap([S)Ljava/nio/ShortBuffer;
    .locals 2
    .param p0, "array"    # [S

    #@0
    .prologue
    .line 178
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0}, Ljava/nio/ShortBuffer;->wrap([SII)Ljava/nio/ShortBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static wrap([SII)Ljava/nio/ShortBuffer;
    .locals 2
    .param p0, "array"    # [S
    .param p1, "offset"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 157
    :try_start_0
    new-instance v1, Ljava/nio/HeapShortBuffer;

    #@2
    invoke-direct {v1, p0, p1, p2}, Ljava/nio/HeapShortBuffer;-><init>([SII)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    return-object v1

    #@6
    .line 158
    :catch_0
    move-exception v0

    #@7
    .line 159
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
    .line 510
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->array()[S

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final array()[S
    .locals 1

    #@0
    .prologue
    .line 511
    iget-object v0, p0, Ljava/nio/ShortBuffer;->hb:[S

    #@2
    if-nez v0, :cond_0

    #@4
    .line 512
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@6
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@9
    throw v0

    #@a
    .line 513
    :cond_0
    iget-boolean v0, p0, Ljava/nio/ShortBuffer;->isReadOnly:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 514
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@10
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@13
    throw v0

    #@14
    .line 515
    :cond_1
    iget-object v0, p0, Ljava/nio/ShortBuffer;->hb:[S

    #@16
    return-object v0
.end method

.method public final arrayOffset()I
    .locals 1

    #@0
    .prologue
    .line 535
    iget-object v0, p0, Ljava/nio/ShortBuffer;->hb:[S

    #@2
    if-nez v0, :cond_0

    #@4
    .line 536
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@6
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@9
    throw v0

    #@a
    .line 537
    :cond_0
    iget-boolean v0, p0, Ljava/nio/ShortBuffer;->isReadOnly:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 538
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@10
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@13
    throw v0

    #@14
    .line 539
    :cond_1
    iget v0, p0, Ljava/nio/ShortBuffer;->offset:I

    #@16
    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/ShortBuffer;
.end method

.method public abstract compact()Ljava/nio/ShortBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 689
    check-cast p1, Ljava/nio/ShortBuffer;

    #@2
    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/nio/ShortBuffer;->compareTo(Ljava/nio/ShortBuffer;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Ljava/nio/ShortBuffer;)I
    .locals 7
    .param p1, "that"    # Ljava/nio/ShortBuffer;

    #@0
    .prologue
    .line 690
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->position()I

    #@3
    move-result v4

    #@4
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    #@7
    move-result v5

    #@8
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    #@b
    move-result v6

    #@c
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    #@f
    move-result v5

    #@10
    add-int v3, v4, v5

    #@12
    .line 691
    .local v3, "n":I
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->position()I

    #@15
    move-result v1

    #@16
    .local v1, "i":I
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->position()I

    #@19
    move-result v2

    #@1a
    .local v2, "j":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@1c
    .line 692
    invoke-virtual {p0, v1}, Ljava/nio/ShortBuffer;->get(I)S

    #@1f
    move-result v4

    #@20
    invoke-virtual {p1, v2}, Ljava/nio/ShortBuffer;->get(I)S

    #@23
    move-result v5

    #@24
    invoke-static {v4, v5}, Ljava/nio/ShortBuffer;->compare(SS)I

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
    .line 691
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
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    #@33
    move-result v4

    #@34
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    #@37
    move-result v5

    #@38
    sub-int/2addr v4, v5

    #@39
    return v4
.end method

.method public abstract duplicate()Ljava/nio/ShortBuffer;
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
    .line 645
    if-ne p0, p1, :cond_0

    #@4
    .line 646
    return v7

    #@5
    .line 647
    :cond_0
    instance-of v4, p1, Ljava/nio/ShortBuffer;

    #@7
    if-nez v4, :cond_1

    #@9
    .line 648
    return v6

    #@a
    :cond_1
    move-object v3, p1

    #@b
    .line 649
    check-cast v3, Ljava/nio/ShortBuffer;

    #@d
    .line 650
    .local v3, "that":Ljava/nio/ShortBuffer;
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    #@10
    move-result v4

    #@11
    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->remaining()I

    #@14
    move-result v5

    #@15
    if-eq v4, v5, :cond_2

    #@17
    .line 651
    return v6

    #@18
    .line 652
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->position()I

    #@1b
    move-result v2

    #@1c
    .line 653
    .local v2, "p":I
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->limit()I

    #@1f
    move-result v4

    #@20
    add-int/lit8 v0, v4, -0x1

    #@22
    .local v0, "i":I
    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->limit()I

    #@25
    move-result v4

    #@26
    add-int/lit8 v1, v4, -0x1

    #@28
    .local v1, "j":I
    :goto_0
    if-lt v0, v2, :cond_4

    #@2a
    .line 654
    invoke-virtual {p0, v0}, Ljava/nio/ShortBuffer;->get(I)S

    #@2d
    move-result v4

    #@2e
    invoke-virtual {v3, v1}, Ljava/nio/ShortBuffer;->get(I)S

    #@31
    move-result v5

    #@32
    invoke-static {v4, v5}, Ljava/nio/ShortBuffer;->equals(SS)Z

    #@35
    move-result v4

    #@36
    if-nez v4, :cond_3

    #@38
    .line 655
    return v6

    #@39
    .line 653
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@3b
    add-int/lit8 v1, v1, -0x1

    #@3d
    goto :goto_0

    #@3e
    .line 656
    :cond_4
    return v7
.end method

.method public get([S)Ljava/nio/ShortBuffer;
    .locals 2
    .param p1, "dst"    # [S

    #@0
    .prologue
    .line 359
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public get([SII)Ljava/nio/ShortBuffer;
    .locals 3
    .param p1, "dst"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 335
    array-length v2, p1

    #@1
    invoke-static {p2, p3, v2}, Ljava/nio/ShortBuffer;->checkBounds(III)V

    #@4
    .line 336
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    #@7
    move-result v2

    #@8
    if-le p3, v2, :cond_0

    #@a
    .line 337
    new-instance v2, Ljava/nio/BufferUnderflowException;

    #@c
    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@f
    throw v2

    #@10
    .line 338
    :cond_0
    add-int v0, p2, p3

    #@12
    .line 339
    .local v0, "end":I
    move v1, p2

    #@13
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@15
    .line 340
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->get()S

    #@18
    move-result v2

    #@19
    aput-short v2, p1, v1

    #@1b
    .line 339
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 341
    :cond_1
    return-object p0
.end method

.method public abstract get()S
.end method

.method public abstract get(I)S
.end method

.method public final hasArray()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 492
    iget-object v1, p0, Ljava/nio/ShortBuffer;->hb:[S

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-boolean v1, p0, Ljava/nio/ShortBuffer;->isReadOnly:Z

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
    .line 606
    const/4 v0, 0x1

    #@1
    .line 607
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->position()I

    #@4
    move-result v2

    #@5
    .line 608
    .local v2, "p":I
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->limit()I

    #@8
    move-result v3

    #@9
    add-int/lit8 v1, v3, -0x1

    #@b
    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    #@d
    .line 609
    mul-int/lit8 v3, v0, 0x1f

    #@f
    invoke-virtual {p0, v1}, Ljava/nio/ShortBuffer;->get(I)S

    #@12
    move-result v4

    #@13
    add-int v0, v3, v4

    #@15
    .line 608
    add-int/lit8 v1, v1, -0x1

    #@17
    goto :goto_0

    #@18
    .line 610
    :cond_0
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method public abstract put(IS)Ljava/nio/ShortBuffer;
.end method

.method public put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;
    .locals 3
    .param p1, "src"    # Ljava/nio/ShortBuffer;

    #@0
    .prologue
    .line 399
    if-ne p1, p0, :cond_0

    #@2
    .line 400
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v2

    #@8
    .line 401
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    #@b
    move-result v1

    #@c
    .line 402
    .local v1, "n":I
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    #@f
    move-result v2

    #@10
    if-le v1, v2, :cond_1

    #@12
    .line 403
    new-instance v2, Ljava/nio/BufferOverflowException;

    #@14
    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    #@17
    throw v2

    #@18
    .line 404
    :cond_1
    const/4 v0, 0x0

    #@19
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@1b
    .line 405
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->get()S

    #@1e
    move-result v2

    #@1f
    invoke-virtual {p0, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    #@22
    .line 404
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 406
    :cond_2
    return-object p0
.end method

.method public abstract put(S)Ljava/nio/ShortBuffer;
.end method

.method public final put([S)Ljava/nio/ShortBuffer;
    .locals 2
    .param p1, "src"    # [S

    #@0
    .prologue
    .line 474
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public put([SII)Ljava/nio/ShortBuffer;
    .locals 3
    .param p1, "src"    # [S
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 449
    array-length v2, p1

    #@1
    invoke-static {p2, p3, v2}, Ljava/nio/ShortBuffer;->checkBounds(III)V

    #@4
    .line 450
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    #@7
    move-result v2

    #@8
    if-le p3, v2, :cond_0

    #@a
    .line 451
    new-instance v2, Ljava/nio/BufferOverflowException;

    #@c
    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    #@f
    throw v2

    #@10
    .line 452
    :cond_0
    add-int v0, p2, p3

    #@12
    .line 453
    .local v0, "end":I
    move v1, p2

    #@13
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@15
    .line 454
    aget-short v2, p1, v1

    #@17
    invoke-virtual {p0, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    #@1a
    .line 453
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 455
    :cond_1
    return-object p0
.end method

.method public abstract slice()Ljava/nio/ShortBuffer;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 579
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 580
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@10
    .line 581
    const-string/jumbo v1, "[pos="

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@16
    .line 582
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->position()I

    #@19
    move-result v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@1d
    .line 583
    const-string/jumbo v1, " lim="

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@23
    .line 584
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->limit()I

    #@26
    move-result v1

    #@27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@2a
    .line 585
    const-string/jumbo v1, " cap="

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@30
    .line 586
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->capacity()I

    #@33
    move-result v1

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@37
    .line 587
    const-string/jumbo v1, "]"

    #@3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@3d
    .line 588
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    return-object v1
.end method
