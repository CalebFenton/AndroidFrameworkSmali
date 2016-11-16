.class public abstract Ljava/nio/CharBuffer;
.super Ljava/nio/Buffer;
.source "CharBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Readable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/CharBuffer$-java_util_stream_IntStream_chars__LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/CharBuffer;",
        ">;",
        "Ljava/lang/Appendable;",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Readable;"
    }
.end annotation


# instance fields
.field final hb:[C

.field isReadOnly:Z

.field final offset:I


# direct methods
.method static synthetic -java_nio_CharBuffer_lambda$1(Ljava/nio/CharBuffer;)Ljava/util/Spliterator$OfInt;
    .locals 1
    .param p0, "self"    # Ljava/nio/CharBuffer;

    #@0
    .prologue
    .line 1069
    new-instance v0, Ljava/nio/CharBufferSpliterator;

    #@2
    invoke-direct {v0, p0}, Ljava/nio/CharBufferSpliterator;-><init>(Ljava/nio/CharBuffer;)V

    #@5
    return-object v0
.end method

.method constructor <init>(IIII)V
    .locals 7
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I

    #@0
    .prologue
    .line 132
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
    invoke-direct/range {v0 .. v6}, Ljava/nio/CharBuffer;-><init>(IIII[CI)V

    #@a
    .line 131
    return-void
.end method

.method constructor <init>(IIII[CI)V
    .locals 6
    .param p1, "mark"    # I
    .param p2, "pos"    # I
    .param p3, "lim"    # I
    .param p4, "cap"    # I
    .param p5, "hb"    # [C
    .param p6, "offset"    # I

    #@0
    .prologue
    .line 124
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
    .line 125
    iput-object p5, p0, Ljava/nio/CharBuffer;->hb:[C

    #@b
    .line 126
    iput p6, p0, Ljava/nio/CharBuffer;->offset:I

    #@d
    .line 123
    return-void
.end method

.method public static allocate(I)Ljava/nio/CharBuffer;
    .locals 1
    .param p0, "capacity"    # I

    #@0
    .prologue
    .line 150
    if-gez p0, :cond_0

    #@2
    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v0

    #@8
    .line 152
    :cond_0
    new-instance v0, Ljava/nio/HeapCharBuffer;

    #@a
    invoke-direct {v0, p0, p0}, Ljava/nio/HeapCharBuffer;-><init>(II)V

    #@d
    return-object v0
.end method

.method private static compare(CC)I
    .locals 1
    .param p0, "x"    # C
    .param p1, "y"    # C

    #@0
    .prologue
    .line 884
    invoke-static {p0, p1}, Ljava/lang/Character;->compare(CC)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method private static equals(CC)Z
    .locals 1
    .param p0, "x"    # C
    .param p1, "y"    # C

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

.method public static wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;
    .locals 2
    .param p0, "csq"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 284
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {p0, v1, v0}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static wrap(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;
    .locals 2
    .param p0, "csq"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 265
    :try_start_0
    new-instance v1, Ljava/nio/StringCharBuffer;

    #@2
    invoke-direct {v1, p0, p1, p2}, Ljava/nio/StringCharBuffer;-><init>(Ljava/lang/CharSequence;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    return-object v1

    #@6
    .line 266
    :catch_0
    move-exception v0

    #@7
    .line 267
    .local v0, "x":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@9
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@c
    throw v1
.end method

.method public static wrap([C)Ljava/nio/CharBuffer;
    .locals 2
    .param p0, "array"    # [C

    #@0
    .prologue
    .line 203
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static wrap([CII)Ljava/nio/CharBuffer;
    .locals 2
    .param p0, "array"    # [C
    .param p1, "offset"    # I
    .param p2, "length"    # I

    #@0
    .prologue
    .line 182
    :try_start_0
    new-instance v1, Ljava/nio/HeapCharBuffer;

    #@2
    invoke-direct {v1, p0, p1, p2}, Ljava/nio/HeapCharBuffer;-><init>([CII)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    return-object v1

    #@6
    .line 183
    :catch_0
    move-exception v0

    #@7
    .line 184
    .local v0, "x":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@9
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@c
    throw v1
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1044
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->append(C)Ljava/nio/CharBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 991
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1023
    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/CharBuffer;->append(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public append(C)Ljava/nio/CharBuffer;
    .locals 1
    .param p1, "c"    # C

    #@0
    .prologue
    .line 1045
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;
    .locals 1
    .param p1, "csq"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 992
    if-nez p1, :cond_0

    #@2
    .line 993
    const-string/jumbo v0, "null"

    #@5
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    #@8
    move-result-object v0

    #@9
    return-object v0

    #@a
    .line 995
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/nio/CharBuffer;
    .locals 2
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 1024
    if-nez p1, :cond_0

    #@2
    const-string/jumbo v0, "null"

    #@5
    .line 1025
    .local v0, "cs":Ljava/lang/CharSequence;
    :goto_0
    invoke-interface {v0, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@8
    move-result-object v1

    #@9
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;)Ljava/nio/CharBuffer;

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_0
    move-object v0, p1

    #@13
    .line 1024
    goto :goto_0
.end method

.method public bridge synthetic array()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 711
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->array()[C

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final array()[C
    .locals 1

    #@0
    .prologue
    .line 712
    iget-object v0, p0, Ljava/nio/CharBuffer;->hb:[C

    #@2
    if-nez v0, :cond_0

    #@4
    .line 713
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@6
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@9
    throw v0

    #@a
    .line 714
    :cond_0
    iget-boolean v0, p0, Ljava/nio/CharBuffer;->isReadOnly:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 715
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@10
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@13
    throw v0

    #@14
    .line 716
    :cond_1
    iget-object v0, p0, Ljava/nio/CharBuffer;->hb:[C

    #@16
    return-object v0
.end method

.method public final arrayOffset()I
    .locals 1

    #@0
    .prologue
    .line 736
    iget-object v0, p0, Ljava/nio/CharBuffer;->hb:[C

    #@2
    if-nez v0, :cond_0

    #@4
    .line 737
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@6
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@9
    throw v0

    #@a
    .line 738
    :cond_0
    iget-boolean v0, p0, Ljava/nio/CharBuffer;->isReadOnly:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 739
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@10
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@13
    throw v0

    #@14
    .line 740
    :cond_1
    iget v0, p0, Ljava/nio/CharBuffer;->offset:I

    #@16
    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/CharBuffer;
.end method

.method public final charAt(I)C
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 935
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    invoke-virtual {p0, p1, v1}, Ljava/nio/CharBuffer;->checkIndex(II)I

    #@8
    move-result v1

    #@9
    add-int/2addr v0, v1

    #@a
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->get(I)C

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public chars()Ljava/util/stream/IntStream;
    .locals 4

    #@0
    .prologue
    .line 1068
    move-object v0, p0

    #@1
    .line 1069
    .local v0, "self":Ljava/nio/CharBuffer;
    new-instance v1, Ljava/nio/CharBuffer$-java_util_stream_IntStream_chars__LambdaImpl0;

    #@3
    invoke-direct {v1, p0}, Ljava/nio/CharBuffer$-java_util_stream_IntStream_chars__LambdaImpl0;-><init>(Ljava/nio/CharBuffer;)V

    #@6
    .line 1070
    const/16 v2, 0x4050

    #@8
    const/4 v3, 0x0

    #@9
    .line 1069
    invoke-static {v1, v2, v3}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/function/Supplier;IZ)Ljava/util/stream/IntStream;

    #@c
    move-result-object v1

    #@d
    return-object v1
.end method

.method public abstract compact()Ljava/nio/CharBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 871
    check-cast p1, Ljava/nio/CharBuffer;

    #@2
    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/nio/CharBuffer;->compareTo(Ljava/nio/CharBuffer;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Ljava/nio/CharBuffer;)I
    .locals 7
    .param p1, "that"    # Ljava/nio/CharBuffer;

    #@0
    .prologue
    .line 872
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    #@3
    move-result v4

    #@4
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    #@7
    move-result v5

    #@8
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

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
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    #@15
    move-result v1

    #@16
    .local v1, "i":I
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    #@19
    move-result v2

    #@1a
    .local v2, "j":I
    :goto_0
    if-ge v1, v3, :cond_1

    #@1c
    .line 874
    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->get(I)C

    #@1f
    move-result v4

    #@20
    invoke-virtual {p1, v2}, Ljava/nio/CharBuffer;->get(I)C

    #@23
    move-result v5

    #@24
    invoke-static {v4, v5}, Ljava/nio/CharBuffer;->compare(CC)I

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
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    #@33
    move-result v4

    #@34
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    #@37
    move-result v5

    #@38
    sub-int/2addr v4, v5

    #@39
    return v4
.end method

.method public abstract duplicate()Ljava/nio/CharBuffer;
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
    instance-of v4, p1, Ljava/nio/CharBuffer;

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
    check-cast v3, Ljava/nio/CharBuffer;

    #@d
    .line 832
    .local v3, "that":Ljava/nio/CharBuffer;
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    #@10
    move-result v4

    #@11
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->remaining()I

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
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    #@1b
    move-result v2

    #@1c
    .line 835
    .local v2, "p":I
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->limit()I

    #@1f
    move-result v4

    #@20
    add-int/lit8 v0, v4, -0x1

    #@22
    .local v0, "i":I
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->limit()I

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
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->get(I)C

    #@2d
    move-result v4

    #@2e
    invoke-virtual {v3, v1}, Ljava/nio/CharBuffer;->get(I)C

    #@31
    move-result v5

    #@32
    invoke-static {v4, v5}, Ljava/nio/CharBuffer;->equals(CC)Z

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

.method public abstract get()C
.end method

.method public abstract get(I)C
.end method

.method public get([C)Ljava/nio/CharBuffer;
    .locals 2
    .param p1, "dst"    # [C

    #@0
    .prologue
    .line 476
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public get([CII)Ljava/nio/CharBuffer;
    .locals 3
    .param p1, "dst"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 452
    array-length v2, p1

    #@1
    invoke-static {p2, p3, v2}, Ljava/nio/CharBuffer;->checkBounds(III)V

    #@4
    .line 453
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    #@7
    move-result v2

    #@8
    if-le p3, v2, :cond_0

    #@a
    .line 454
    new-instance v2, Ljava/nio/BufferUnderflowException;

    #@c
    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@f
    throw v2

    #@10
    .line 455
    :cond_0
    add-int v0, p2, p3

    #@12
    .line 456
    .local v0, "end":I
    move v1, p2

    #@13
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@15
    .line 457
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->get()C

    #@18
    move-result v2

    #@19
    aput-char v2, p1, v1

    #@1b
    .line 456
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 458
    :cond_1
    return-object p0
.end method

.method abstract getUnchecked(I)C
.end method

.method public final hasArray()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 693
    iget-object v1, p0, Ljava/nio/CharBuffer;->hb:[C

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-boolean v1, p0, Ljava/nio/CharBuffer;->isReadOnly:Z

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
    .line 788
    const/4 v0, 0x1

    #@1
    .line 789
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    #@4
    move-result v2

    #@5
    .line 790
    .local v2, "p":I
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->limit()I

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
    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->get(I)C

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

.method public abstract isDirect()Z
.end method

.method public final length()I
    .locals 1

    #@0
    .prologue
    .line 921
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method public abstract put(C)Ljava/nio/CharBuffer;
.end method

.method public abstract put(IC)Ljava/nio/CharBuffer;
.end method

.method public final put(Ljava/lang/String;)Ljava/nio/CharBuffer;
    .locals 2
    .param p1, "src"    # Ljava/lang/String;

    #@0
    .prologue
    .line 675
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/CharBuffer;->put(Ljava/lang/String;II)Ljava/nio/CharBuffer;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public put(Ljava/lang/String;II)Ljava/nio/CharBuffer;
    .locals 3
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 637
    sub-int v1, p3, p2

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    invoke-static {p2, v1, v2}, Ljava/nio/CharBuffer;->checkBounds(III)V

    #@9
    .line 641
    if-ne p2, p3, :cond_0

    #@b
    .line 642
    return-object p0

    #@c
    .line 646
    :cond_0
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->isReadOnly()Z

    #@f
    move-result v1

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 647
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    #@14
    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@17
    throw v1

    #@18
    .line 651
    :cond_1
    sub-int v1, p3, p2

    #@1a
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    #@1d
    move-result v2

    #@1e
    if-le v1, v2, :cond_2

    #@20
    .line 652
    new-instance v1, Ljava/nio/BufferOverflowException;

    #@22
    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    #@25
    throw v1

    #@26
    .line 655
    :cond_2
    move v0, p2

    #@27
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_3

    #@29
    .line 656
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@2c
    move-result v1

    #@2d
    invoke-virtual {p0, v1}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    #@30
    .line 655
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_0

    #@33
    .line 657
    :cond_3
    return-object p0
.end method

.method public put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;
    .locals 3
    .param p1, "src"    # Ljava/nio/CharBuffer;

    #@0
    .prologue
    .line 516
    if-ne p1, p0, :cond_0

    #@2
    .line 517
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@7
    throw v2

    #@8
    .line 518
    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    #@b
    move-result v1

    #@c
    .line 519
    .local v1, "n":I
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    #@f
    move-result v2

    #@10
    if-le v1, v2, :cond_1

    #@12
    .line 520
    new-instance v2, Ljava/nio/BufferOverflowException;

    #@14
    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    #@17
    throw v2

    #@18
    .line 521
    :cond_1
    const/4 v0, 0x0

    #@19
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@1b
    .line 522
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    #@1e
    move-result v2

    #@1f
    invoke-virtual {p0, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    #@22
    .line 521
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 523
    :cond_2
    return-object p0
.end method

.method public final put([C)Ljava/nio/CharBuffer;
    .locals 2
    .param p1, "src"    # [C

    #@0
    .prologue
    .line 591
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public put([CII)Ljava/nio/CharBuffer;
    .locals 3
    .param p1, "src"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 566
    array-length v2, p1

    #@1
    invoke-static {p2, p3, v2}, Ljava/nio/CharBuffer;->checkBounds(III)V

    #@4
    .line 567
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    #@7
    move-result v2

    #@8
    if-le p3, v2, :cond_0

    #@a
    .line 568
    new-instance v2, Ljava/nio/BufferOverflowException;

    #@c
    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    #@f
    throw v2

    #@10
    .line 569
    :cond_0
    add-int v0, p2, p3

    #@12
    .line 570
    .local v0, "end":I
    move v1, p2

    #@13
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@15
    .line 571
    aget-char v2, p1, v1

    #@17
    invoke-virtual {p0, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    #@1a
    .line 570
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 572
    :cond_1
    return-object p0
.end method

.method public read(Ljava/nio/CharBuffer;)I
    .locals 5
    .param p1, "target"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 223
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    #@3
    move-result v3

    #@4
    .line 224
    .local v3, "targetRemaining":I
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->remaining()I

    #@7
    move-result v2

    #@8
    .line 225
    .local v2, "remaining":I
    if-nez v2, :cond_0

    #@a
    .line 226
    const/4 v4, -0x1

    #@b
    return v4

    #@c
    .line 227
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@f
    move-result v1

    #@10
    .line 228
    .local v1, "n":I
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->limit()I

    #@13
    move-result v0

    #@14
    .line 230
    .local v0, "limit":I
    if-ge v3, v2, :cond_1

    #@16
    .line 231
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    #@19
    move-result v4

    #@1a
    add-int/2addr v4, v1

    #@1b
    invoke-virtual {p0, v4}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    #@1e
    .line 233
    :cond_1
    if-lez v1, :cond_2

    #@20
    .line 234
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    .line 236
    :cond_2
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    #@26
    .line 238
    return v1

    #@27
    .line 235
    :catchall_0
    move-exception v4

    #@28
    .line 236
    invoke-virtual {p0, v0}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    #@2b
    .line 235
    throw v4
.end method

.method public abstract slice()Ljava/nio/CharBuffer;
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 962
    invoke-virtual {p0, p1, p2}, Ljava/nio/CharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public abstract subSequence(II)Ljava/nio/CharBuffer;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 902
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->limit()I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0, v0, v1}, Ljava/nio/CharBuffer;->toString(II)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method abstract toString(II)Ljava/lang/String;
.end method
