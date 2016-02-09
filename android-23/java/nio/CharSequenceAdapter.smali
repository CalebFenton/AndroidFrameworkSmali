.class final Ljava/nio/CharSequenceAdapter;
.super Ljava/nio/CharBuffer;
.source "CharSequenceAdapter.java"


# instance fields
.field final sequence:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "chseq"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 45
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    const-wide/16 v2, 0x0

    #@6
    invoke-direct {p0, v0, v2, v3}, Ljava/nio/CharBuffer;-><init>(IJ)V

    #@9
    .line 46
    iput-object p1, p0, Ljava/nio/CharSequenceAdapter;->sequence:Ljava/lang/CharSequence;

    #@b
    .line 44
    return-void
.end method

.method static copy(Ljava/nio/CharSequenceAdapter;)Ljava/nio/CharSequenceAdapter;
    .locals 2
    .param p0, "other"    # Ljava/nio/CharSequenceAdapter;

    #@0
    .prologue
    .line 35
    new-instance v0, Ljava/nio/CharSequenceAdapter;

    #@2
    iget-object v1, p0, Ljava/nio/CharSequenceAdapter;->sequence:Ljava/lang/CharSequence;

    #@4
    invoke-direct {v0, v1}, Ljava/nio/CharSequenceAdapter;-><init>(Ljava/lang/CharSequence;)V

    #@7
    .line 36
    .local v0, "buf":Ljava/nio/CharSequenceAdapter;
    iget v1, p0, Ljava/nio/CharSequenceAdapter;->limit:I

    #@9
    iput v1, v0, Ljava/nio/CharSequenceAdapter;->limit:I

    #@b
    .line 37
    iget v1, p0, Ljava/nio/CharSequenceAdapter;->position:I

    #@d
    iput v1, v0, Ljava/nio/CharSequenceAdapter;->position:I

    #@f
    .line 38
    iget v1, p0, Ljava/nio/CharSequenceAdapter;->mark:I

    #@11
    iput v1, v0, Ljava/nio/CharSequenceAdapter;->mark:I

    #@13
    .line 39
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/CharBuffer;
    .locals 1

    #@0
    .prologue
    .line 51
    invoke-virtual {p0}, Ljava/nio/CharSequenceAdapter;->duplicate()Ljava/nio/CharBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public compact()Ljava/nio/CharBuffer;
    .locals 1

    #@0
    .prologue
    .line 56
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@2
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@5
    throw v0
.end method

.method public duplicate()Ljava/nio/CharBuffer;
    .locals 1

    #@0
    .prologue
    .line 61
    invoke-static {p0}, Ljava/nio/CharSequenceAdapter;->copy(Ljava/nio/CharSequenceAdapter;)Ljava/nio/CharSequenceAdapter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public get()C
    .locals 3

    #@0
    .prologue
    .line 66
    iget v0, p0, Ljava/nio/CharSequenceAdapter;->position:I

    #@2
    iget v1, p0, Ljava/nio/CharSequenceAdapter;->limit:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 67
    new-instance v0, Ljava/nio/BufferUnderflowException;

    #@8
    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@b
    throw v0

    #@c
    .line 69
    :cond_0
    iget-object v0, p0, Ljava/nio/CharSequenceAdapter;->sequence:Ljava/lang/CharSequence;

    #@e
    iget v1, p0, Ljava/nio/CharSequenceAdapter;->position:I

    #@10
    add-int/lit8 v2, v1, 0x1

    #@12
    iput v2, p0, Ljava/nio/CharSequenceAdapter;->position:I

    #@14
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@17
    move-result v0

    #@18
    return v0
.end method

.method public get(I)C
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 74
    invoke-virtual {p0, p1}, Ljava/nio/CharSequenceAdapter;->checkIndex(I)V

    #@3
    .line 75
    iget-object v0, p0, Ljava/nio/CharSequenceAdapter;->sequence:Ljava/lang/CharSequence;

    #@5
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public final get([CII)Ljava/nio/CharBuffer;
    .locals 3
    .param p1, "dst"    # [C
    .param p2, "dstOffset"    # I
    .param p3, "charCount"    # I

    #@0
    .prologue
    .line 80
    array-length v1, p1

    #@1
    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 81
    invoke-virtual {p0}, Ljava/nio/CharSequenceAdapter;->remaining()I

    #@7
    move-result v1

    #@8
    if-le p3, v1, :cond_0

    #@a
    .line 82
    new-instance v1, Ljava/nio/BufferUnderflowException;

    #@c
    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@f
    throw v1

    #@10
    .line 84
    :cond_0
    iget v1, p0, Ljava/nio/CharSequenceAdapter;->position:I

    #@12
    add-int v0, v1, p3

    #@14
    .line 85
    .local v0, "newPosition":I
    iget-object v1, p0, Ljava/nio/CharSequenceAdapter;->sequence:Ljava/lang/CharSequence;

    #@16
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    iget v2, p0, Ljava/nio/CharSequenceAdapter;->position:I

    #@1c
    invoke-virtual {v1, v2, v0, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    #@1f
    .line 86
    iput v0, p0, Ljava/nio/CharSequenceAdapter;->position:I

    #@21
    .line 87
    return-object p0
.end method

.method public isDirect()Z
    .locals 1

    #@0
    .prologue
    .line 92
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    #@0
    .prologue
    .line 97
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    #@0
    .prologue
    .line 102
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protectedArray()[C
    .locals 1

    #@0
    .prologue
    .line 106
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method protectedArrayOffset()I
    .locals 1

    #@0
    .prologue
    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method protectedHasArray()Z
    .locals 1

    #@0
    .prologue
    .line 114
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public put(C)Ljava/nio/CharBuffer;
    .locals 1
    .param p1, "c"    # C

    #@0
    .prologue
    .line 119
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@2
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@5
    throw v0
.end method

.method public put(IC)Ljava/nio/CharBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "c"    # C

    #@0
    .prologue
    .line 124
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@2
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@5
    throw v0
.end method

.method public put(Ljava/lang/String;II)Ljava/nio/CharBuffer;
    .locals 1
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 134
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@2
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@5
    throw v0
.end method

.method public final put([CII)Ljava/nio/CharBuffer;
    .locals 1
    .param p1, "src"    # [C
    .param p2, "srcOffset"    # I
    .param p3, "charCount"    # I

    #@0
    .prologue
    .line 129
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@2
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@5
    throw v0
.end method

.method public slice()Ljava/nio/CharBuffer;
    .locals 4

    #@0
    .prologue
    .line 139
    new-instance v0, Ljava/nio/CharSequenceAdapter;

    #@2
    iget-object v1, p0, Ljava/nio/CharSequenceAdapter;->sequence:Ljava/lang/CharSequence;

    #@4
    iget v2, p0, Ljava/nio/CharSequenceAdapter;->position:I

    #@6
    iget v3, p0, Ljava/nio/CharSequenceAdapter;->limit:I

    #@8
    invoke-interface {v1, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, v1}, Ljava/nio/CharSequenceAdapter;-><init>(Ljava/lang/CharSequence;)V

    #@f
    return-object v0
.end method

.method public subSequence(II)Ljava/nio/CharBuffer;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 143
    invoke-virtual {p0, p1, p2}, Ljava/nio/CharSequenceAdapter;->checkStartEndRemaining(II)V

    #@3
    .line 144
    invoke-static {p0}, Ljava/nio/CharSequenceAdapter;->copy(Ljava/nio/CharSequenceAdapter;)Ljava/nio/CharSequenceAdapter;

    #@6
    move-result-object v0

    #@7
    .line 145
    .local v0, "result":Ljava/nio/CharSequenceAdapter;
    iget v1, p0, Ljava/nio/CharSequenceAdapter;->position:I

    #@9
    add-int/2addr v1, p1

    #@a
    iput v1, v0, Ljava/nio/CharSequenceAdapter;->position:I

    #@c
    .line 146
    iget v1, p0, Ljava/nio/CharSequenceAdapter;->position:I

    #@e
    add-int/2addr v1, p2

    #@f
    iput v1, v0, Ljava/nio/CharSequenceAdapter;->limit:I

    #@11
    .line 147
    return-object v0
.end method
