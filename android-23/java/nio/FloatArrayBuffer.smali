.class final Ljava/nio/FloatArrayBuffer;
.super Ljava/nio/FloatBuffer;
.source "FloatArrayBuffer.java"


# instance fields
.field private final arrayOffset:I

.field private final backingArray:[F

.field private final isReadOnly:Z


# direct methods
.method private constructor <init>(I[FIZ)V
    .locals 2
    .param p1, "capacity"    # I
    .param p2, "backingArray"    # [F
    .param p3, "arrayOffset"    # I
    .param p4, "isReadOnly"    # Z

    #@0
    .prologue
    .line 36
    const-wide/16 v0, 0x0

    #@2
    invoke-direct {p0, p1, v0, v1}, Ljava/nio/FloatBuffer;-><init>(IJ)V

    #@5
    .line 37
    iput-object p2, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    #@7
    .line 38
    iput p3, p0, Ljava/nio/FloatArrayBuffer;->arrayOffset:I

    #@9
    .line 39
    iput-boolean p4, p0, Ljava/nio/FloatArrayBuffer;->isReadOnly:Z

    #@b
    .line 35
    return-void
.end method

.method constructor <init>([F)V
    .locals 2
    .param p1, "array"    # [F

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 32
    array-length v0, p1

    #@2
    invoke-direct {p0, v0, p1, v1, v1}, Ljava/nio/FloatArrayBuffer;-><init>(I[FIZ)V

    #@5
    .line 31
    return-void
.end method

.method private static copy(Ljava/nio/FloatArrayBuffer;IZ)Ljava/nio/FloatArrayBuffer;
    .locals 4
    .param p0, "other"    # Ljava/nio/FloatArrayBuffer;
    .param p1, "markOfOther"    # I
    .param p2, "isReadOnly"    # Z

    #@0
    .prologue
    .line 43
    new-instance v0, Ljava/nio/FloatArrayBuffer;

    #@2
    invoke-virtual {p0}, Ljava/nio/FloatArrayBuffer;->capacity()I

    #@5
    move-result v1

    #@6
    iget-object v2, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    #@8
    iget v3, p0, Ljava/nio/FloatArrayBuffer;->arrayOffset:I

    #@a
    invoke-direct {v0, v1, v2, v3, p2}, Ljava/nio/FloatArrayBuffer;-><init>(I[FIZ)V

    #@d
    .line 44
    .local v0, "buf":Ljava/nio/FloatArrayBuffer;
    iget v1, p0, Ljava/nio/FloatArrayBuffer;->limit:I

    #@f
    iput v1, v0, Ljava/nio/FloatArrayBuffer;->limit:I

    #@11
    .line 45
    invoke-virtual {p0}, Ljava/nio/FloatArrayBuffer;->position()I

    #@14
    move-result v1

    #@15
    iput v1, v0, Ljava/nio/FloatArrayBuffer;->position:I

    #@17
    .line 46
    iput p1, v0, Ljava/nio/FloatArrayBuffer;->mark:I

    #@19
    .line 47
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/FloatBuffer;
    .locals 2

    #@0
    .prologue
    .line 51
    iget v0, p0, Ljava/nio/FloatArrayBuffer;->mark:I

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {p0, v0, v1}, Ljava/nio/FloatArrayBuffer;->copy(Ljava/nio/FloatArrayBuffer;IZ)Ljava/nio/FloatArrayBuffer;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public compact()Ljava/nio/FloatBuffer;
    .locals 5

    #@0
    .prologue
    .line 56
    iget-boolean v0, p0, Ljava/nio/FloatArrayBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 57
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 59
    :cond_0
    iget-object v0, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    #@c
    iget v1, p0, Ljava/nio/FloatArrayBuffer;->position:I

    #@e
    iget v2, p0, Ljava/nio/FloatArrayBuffer;->arrayOffset:I

    #@10
    add-int/2addr v1, v2

    #@11
    iget-object v2, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    #@13
    iget v3, p0, Ljava/nio/FloatArrayBuffer;->arrayOffset:I

    #@15
    invoke-virtual {p0}, Ljava/nio/FloatArrayBuffer;->remaining()I

    #@18
    move-result v4

    #@19
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@1c
    .line 60
    iget v0, p0, Ljava/nio/FloatArrayBuffer;->limit:I

    #@1e
    iget v1, p0, Ljava/nio/FloatArrayBuffer;->position:I

    #@20
    sub-int/2addr v0, v1

    #@21
    iput v0, p0, Ljava/nio/FloatArrayBuffer;->position:I

    #@23
    .line 61
    iget v0, p0, Ljava/nio/FloatArrayBuffer;->capacity:I

    #@25
    iput v0, p0, Ljava/nio/FloatArrayBuffer;->limit:I

    #@27
    .line 62
    const/4 v0, -0x1

    #@28
    iput v0, p0, Ljava/nio/FloatArrayBuffer;->mark:I

    #@2a
    .line 63
    return-object p0
.end method

.method public duplicate()Ljava/nio/FloatBuffer;
    .locals 2

    #@0
    .prologue
    .line 67
    iget v0, p0, Ljava/nio/FloatArrayBuffer;->mark:I

    #@2
    iget-boolean v1, p0, Ljava/nio/FloatArrayBuffer;->isReadOnly:Z

    #@4
    invoke-static {p0, v0, v1}, Ljava/nio/FloatArrayBuffer;->copy(Ljava/nio/FloatArrayBuffer;IZ)Ljava/nio/FloatArrayBuffer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final get()F
    .locals 4

    #@0
    .prologue
    .line 100
    iget v0, p0, Ljava/nio/FloatArrayBuffer;->position:I

    #@2
    iget v1, p0, Ljava/nio/FloatArrayBuffer;->limit:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 101
    new-instance v0, Ljava/nio/BufferUnderflowException;

    #@8
    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@b
    throw v0

    #@c
    .line 103
    :cond_0
    iget-object v0, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    #@e
    iget v1, p0, Ljava/nio/FloatArrayBuffer;->arrayOffset:I

    #@10
    iget v2, p0, Ljava/nio/FloatArrayBuffer;->position:I

    #@12
    add-int/lit8 v3, v2, 0x1

    #@14
    iput v3, p0, Ljava/nio/FloatArrayBuffer;->position:I

    #@16
    add-int/2addr v1, v2

    #@17
    aget v0, v0, v1

    #@19
    return v0
.end method

.method public final get(I)F
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 107
    invoke-virtual {p0, p1}, Ljava/nio/FloatArrayBuffer;->checkIndex(I)V

    #@3
    .line 108
    iget-object v0, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    #@5
    iget v1, p0, Ljava/nio/FloatArrayBuffer;->arrayOffset:I

    #@7
    add-int/2addr v1, p1

    #@8
    aget v0, v0, v1

    #@a
    return v0
.end method

.method public final get([FII)Ljava/nio/FloatBuffer;
    .locals 3
    .param p1, "dst"    # [F
    .param p2, "dstOffset"    # I
    .param p3, "floatCount"    # I

    #@0
    .prologue
    .line 112
    invoke-virtual {p0}, Ljava/nio/FloatArrayBuffer;->remaining()I

    #@3
    move-result v0

    #@4
    if-le p3, v0, :cond_0

    #@6
    .line 113
    new-instance v0, Ljava/nio/BufferUnderflowException;

    #@8
    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@b
    throw v0

    #@c
    .line 115
    :cond_0
    iget-object v0, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    #@e
    iget v1, p0, Ljava/nio/FloatArrayBuffer;->arrayOffset:I

    #@10
    iget v2, p0, Ljava/nio/FloatArrayBuffer;->position:I

    #@12
    add-int/2addr v1, v2

    #@13
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@16
    .line 116
    iget v0, p0, Ljava/nio/FloatArrayBuffer;->position:I

    #@18
    add-int/2addr v0, p3

    #@19
    iput v0, p0, Ljava/nio/FloatArrayBuffer;->position:I

    #@1b
    .line 117
    return-object p0
.end method

.method public final isDirect()Z
    .locals 1

    #@0
    .prologue
    .line 121
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    #@0
    .prologue
    .line 75
    iget-boolean v0, p0, Ljava/nio/FloatArrayBuffer;->isReadOnly:Z

    #@2
    return v0
.end method

.method public final order()Ljava/nio/ByteOrder;
    .locals 1

    #@0
    .prologue
    .line 125
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protectedArray()[F
    .locals 1

    #@0
    .prologue
    .line 79
    iget-boolean v0, p0, Ljava/nio/FloatArrayBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 80
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 82
    :cond_0
    iget-object v0, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    #@c
    return-object v0
.end method

.method protectedArrayOffset()I
    .locals 1

    #@0
    .prologue
    .line 86
    iget-boolean v0, p0, Ljava/nio/FloatArrayBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 87
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 89
    :cond_0
    iget v0, p0, Ljava/nio/FloatArrayBuffer;->arrayOffset:I

    #@c
    return v0
.end method

.method protectedHasArray()Z
    .locals 1

    #@0
    .prologue
    .line 93
    iget-boolean v0, p0, Ljava/nio/FloatArrayBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 94
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 96
    :cond_0
    const/4 v0, 0x1

    #@7
    return v0
.end method

.method public put(F)Ljava/nio/FloatBuffer;
    .locals 4
    .param p1, "c"    # F

    #@0
    .prologue
    .line 129
    iget-boolean v0, p0, Ljava/nio/FloatArrayBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 130
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 132
    :cond_0
    iget v0, p0, Ljava/nio/FloatArrayBuffer;->position:I

    #@c
    iget v1, p0, Ljava/nio/FloatArrayBuffer;->limit:I

    #@e
    if-ne v0, v1, :cond_1

    #@10
    .line 133
    new-instance v0, Ljava/nio/BufferOverflowException;

    #@12
    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    #@15
    throw v0

    #@16
    .line 135
    :cond_1
    iget-object v0, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    #@18
    iget v1, p0, Ljava/nio/FloatArrayBuffer;->arrayOffset:I

    #@1a
    iget v2, p0, Ljava/nio/FloatArrayBuffer;->position:I

    #@1c
    add-int/lit8 v3, v2, 0x1

    #@1e
    iput v3, p0, Ljava/nio/FloatArrayBuffer;->position:I

    #@20
    add-int/2addr v1, v2

    #@21
    aput p1, v0, v1

    #@23
    .line 136
    return-object p0
.end method

.method public put(IF)Ljava/nio/FloatBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "c"    # F

    #@0
    .prologue
    .line 140
    iget-boolean v0, p0, Ljava/nio/FloatArrayBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 141
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 143
    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/FloatArrayBuffer;->checkIndex(I)V

    #@d
    .line 144
    iget-object v0, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    #@f
    iget v1, p0, Ljava/nio/FloatArrayBuffer;->arrayOffset:I

    #@11
    add-int/2addr v1, p1

    #@12
    aput p2, v0, v1

    #@14
    .line 145
    return-object p0
.end method

.method public put([FII)Ljava/nio/FloatBuffer;
    .locals 3
    .param p1, "src"    # [F
    .param p2, "srcOffset"    # I
    .param p3, "floatCount"    # I

    #@0
    .prologue
    .line 149
    iget-boolean v0, p0, Ljava/nio/FloatArrayBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 150
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 152
    :cond_0
    invoke-virtual {p0}, Ljava/nio/FloatArrayBuffer;->remaining()I

    #@d
    move-result v0

    #@e
    if-le p3, v0, :cond_1

    #@10
    .line 153
    new-instance v0, Ljava/nio/BufferOverflowException;

    #@12
    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    #@15
    throw v0

    #@16
    .line 155
    :cond_1
    iget-object v0, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    #@18
    iget v1, p0, Ljava/nio/FloatArrayBuffer;->arrayOffset:I

    #@1a
    iget v2, p0, Ljava/nio/FloatArrayBuffer;->position:I

    #@1c
    add-int/2addr v1, v2

    #@1d
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@20
    .line 156
    iget v0, p0, Ljava/nio/FloatArrayBuffer;->position:I

    #@22
    add-int/2addr v0, p3

    #@23
    iput v0, p0, Ljava/nio/FloatArrayBuffer;->position:I

    #@25
    .line 157
    return-object p0
.end method

.method public slice()Ljava/nio/FloatBuffer;
    .locals 5

    #@0
    .prologue
    .line 71
    new-instance v0, Ljava/nio/FloatArrayBuffer;

    #@2
    invoke-virtual {p0}, Ljava/nio/FloatArrayBuffer;->remaining()I

    #@5
    move-result v1

    #@6
    iget-object v2, p0, Ljava/nio/FloatArrayBuffer;->backingArray:[F

    #@8
    iget v3, p0, Ljava/nio/FloatArrayBuffer;->arrayOffset:I

    #@a
    iget v4, p0, Ljava/nio/FloatArrayBuffer;->position:I

    #@c
    add-int/2addr v3, v4

    #@d
    iget-boolean v4, p0, Ljava/nio/FloatArrayBuffer;->isReadOnly:Z

    #@f
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/nio/FloatArrayBuffer;-><init>(I[FIZ)V

    #@12
    return-object v0
.end method
