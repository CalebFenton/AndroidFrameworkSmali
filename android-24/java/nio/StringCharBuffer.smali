.class Ljava/nio/StringCharBuffer;
.super Ljava/nio/CharBuffer;
.source "StringCharBuffer.java"


# instance fields
.field str:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 36
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v1

    #@4
    const/4 v2, -0x1

    #@5
    invoke-direct {p0, v2, p2, p3, v1}, Ljava/nio/CharBuffer;-><init>(IIII)V

    #@8
    .line 37
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@b
    move-result v0

    #@c
    .line 38
    .local v0, "n":I
    if-ltz p2, :cond_0

    #@e
    if-le p2, v0, :cond_1

    #@10
    .line 39
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@12
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@15
    throw v1

    #@16
    .line 38
    :cond_1
    if-lt p3, p2, :cond_0

    #@18
    if-gt p3, v0, :cond_0

    #@1a
    .line 40
    iput-object p1, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    #@1c
    .line 35
    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;IIIII)V
    .locals 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "limit"    # I
    .param p5, "cap"    # I
    .param p6, "offset"    # I

    #@0
    .prologue
    .line 58
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p2

    #@3
    move v2, p3

    #@4
    move v3, p4

    #@5
    move v4, p5

    #@6
    move v6, p6

    #@7
    invoke-direct/range {v0 .. v6}, Ljava/nio/CharBuffer;-><init>(IIII[CI)V

    #@a
    .line 59
    iput-object p1, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    #@c
    .line 57
    return-void
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/CharBuffer;
    .locals 1

    #@0
    .prologue
    .line 68
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->duplicate()Ljava/nio/CharBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final compact()Ljava/nio/CharBuffer;
    .locals 1

    #@0
    .prologue
    .line 94
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@2
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@5
    throw v0
.end method

.method public duplicate()Ljava/nio/CharBuffer;
    .locals 7

    #@0
    .prologue
    .line 63
    new-instance v0, Ljava/nio/StringCharBuffer;

    #@2
    iget-object v1, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    #@4
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->markValue()I

    #@7
    move-result v2

    #@8
    .line 64
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->position()I

    #@b
    move-result v3

    #@c
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->limit()I

    #@f
    move-result v4

    #@10
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->capacity()I

    #@13
    move-result v5

    #@14
    iget v6, p0, Ljava/nio/StringCharBuffer;->offset:I

    #@16
    .line 63
    invoke-direct/range {v0 .. v6}, Ljava/nio/StringCharBuffer;-><init>(Ljava/lang/CharSequence;IIIII)V

    #@19
    return-object v0
.end method

.method public final get()C
    .locals 3

    #@0
    .prologue
    .line 72
    iget-object v0, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    #@2
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->nextGetIndex()I

    #@5
    move-result v1

    #@6
    iget v2, p0, Ljava/nio/StringCharBuffer;->offset:I

    #@8
    add-int/2addr v1, v2

    #@9
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@c
    move-result v0

    #@d
    return v0
.end method

.method public final get(I)C
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 76
    iget-object v0, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    #@2
    invoke-virtual {p0, p1}, Ljava/nio/StringCharBuffer;->checkIndex(I)I

    #@5
    move-result v1

    #@6
    iget v2, p0, Ljava/nio/StringCharBuffer;->offset:I

    #@8
    add-int/2addr v1, v2

    #@9
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@c
    move-result v0

    #@d
    return v0
.end method

.method getUnchecked(I)C
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    #@2
    iget v1, p0, Ljava/nio/StringCharBuffer;->offset:I

    #@4
    add-int/2addr v1, p1

    #@5
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public isDirect()Z
    .locals 1

    #@0
    .prologue
    .line 120
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final isReadOnly()Z
    .locals 1

    #@0
    .prologue
    .line 98
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    #@0
    .prologue
    .line 124
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final put(C)Ljava/nio/CharBuffer;
    .locals 1
    .param p1, "c"    # C

    #@0
    .prologue
    .line 86
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@2
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@5
    throw v0
.end method

.method public final put(IC)Ljava/nio/CharBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "c"    # C

    #@0
    .prologue
    .line 90
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@2
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@5
    throw v0
.end method

.method public slice()Ljava/nio/CharBuffer;
    .locals 7

    #@0
    .prologue
    .line 44
    new-instance v0, Ljava/nio/StringCharBuffer;

    #@2
    iget-object v1, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    #@4
    .line 47
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->remaining()I

    #@7
    move-result v4

    #@8
    .line 48
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->remaining()I

    #@b
    move-result v5

    #@c
    .line 49
    iget v2, p0, Ljava/nio/StringCharBuffer;->offset:I

    #@e
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->position()I

    #@11
    move-result v3

    #@12
    add-int v6, v2, v3

    #@14
    .line 45
    const/4 v2, -0x1

    #@15
    .line 46
    const/4 v3, 0x0

    #@16
    .line 44
    invoke-direct/range {v0 .. v6}, Ljava/nio/StringCharBuffer;-><init>(Ljava/lang/CharSequence;IIIII)V

    #@19
    return-object v0
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 105
    invoke-virtual {p0, p1, p2}, Ljava/nio/StringCharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final subSequence(II)Ljava/nio/CharBuffer;
    .locals 9
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 107
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->position()I

    #@3
    move-result v7

    #@4
    .line 108
    .local v7, "pos":I
    new-instance v0, Ljava/nio/StringCharBuffer;

    #@6
    iget-object v1, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    #@8
    .line 110
    invoke-virtual {p0, p1, v7}, Ljava/nio/StringCharBuffer;->checkIndex(II)I

    #@b
    move-result v2

    #@c
    add-int v3, v7, v2

    #@e
    .line 111
    invoke-virtual {p0, p2, v7}, Ljava/nio/StringCharBuffer;->checkIndex(II)I

    #@11
    move-result v2

    #@12
    add-int v4, v7, v2

    #@14
    .line 112
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->capacity()I

    #@17
    move-result v5

    #@18
    .line 113
    iget v6, p0, Ljava/nio/StringCharBuffer;->offset:I

    #@1a
    .line 109
    const/4 v2, -0x1

    #@1b
    .line 108
    invoke-direct/range {v0 .. v6}, Ljava/nio/StringCharBuffer;-><init>(Ljava/lang/CharSequence;IIIII)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@1e
    return-object v0

    #@1f
    .line 114
    .end local v7    # "pos":I
    :catch_0
    move-exception v8

    #@20
    .line 115
    .local v8, "x":Ljava/lang/IllegalArgumentException;
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@22
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@25
    throw v0
.end method

.method final toString(II)Ljava/lang/String;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 102
    iget-object v0, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    #@2
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    iget v1, p0, Ljava/nio/StringCharBuffer;->offset:I

    #@8
    add-int/2addr v1, p1

    #@9
    iget v2, p0, Ljava/nio/StringCharBuffer;->offset:I

    #@b
    add-int/2addr v2, p2

    #@c
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method
