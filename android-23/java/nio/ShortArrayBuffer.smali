.class final Ljava/nio/ShortArrayBuffer;
.super Ljava/nio/ShortBuffer;
.source "ShortArrayBuffer.java"


# instance fields
.field private final arrayOffset:I

.field private final backingArray:[S

.field private final isReadOnly:Z


# direct methods
.method private constructor <init>(I[SIZ)V
    .locals 2
    .param p1, "capacity"    # I
    .param p2, "backingArray"    # [S
    .param p3, "arrayOffset"    # I
    .param p4, "isReadOnly"    # Z

    #@0
    .prologue
    .line 36
    const-wide/16 v0, 0x0

    #@2
    invoke-direct {p0, p1, v0, v1}, Ljava/nio/ShortBuffer;-><init>(IJ)V

    #@5
    .line 37
    iput-object p2, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    #@7
    .line 38
    iput p3, p0, Ljava/nio/ShortArrayBuffer;->arrayOffset:I

    #@9
    .line 39
    iput-boolean p4, p0, Ljava/nio/ShortArrayBuffer;->isReadOnly:Z

    #@b
    .line 35
    return-void
.end method

.method constructor <init>([S)V
    .locals 2
    .param p1, "array"    # [S

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 32
    array-length v0, p1

    #@2
    invoke-direct {p0, v0, p1, v1, v1}, Ljava/nio/ShortArrayBuffer;-><init>(I[SIZ)V

    #@5
    .line 31
    return-void
.end method

.method private static copy(Ljava/nio/ShortArrayBuffer;IZ)Ljava/nio/ShortArrayBuffer;
    .locals 4
    .param p0, "other"    # Ljava/nio/ShortArrayBuffer;
    .param p1, "markOfOther"    # I
    .param p2, "isReadOnly"    # Z

    #@0
    .prologue
    .line 43
    new-instance v0, Ljava/nio/ShortArrayBuffer;

    #@2
    invoke-virtual {p0}, Ljava/nio/ShortArrayBuffer;->capacity()I

    #@5
    move-result v1

    #@6
    iget-object v2, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    #@8
    iget v3, p0, Ljava/nio/ShortArrayBuffer;->arrayOffset:I

    #@a
    invoke-direct {v0, v1, v2, v3, p2}, Ljava/nio/ShortArrayBuffer;-><init>(I[SIZ)V

    #@d
    .line 44
    .local v0, "buf":Ljava/nio/ShortArrayBuffer;
    iget v1, p0, Ljava/nio/ShortArrayBuffer;->limit:I

    #@f
    iput v1, v0, Ljava/nio/ShortArrayBuffer;->limit:I

    #@11
    .line 45
    invoke-virtual {p0}, Ljava/nio/ShortArrayBuffer;->position()I

    #@14
    move-result v1

    #@15
    iput v1, v0, Ljava/nio/ShortArrayBuffer;->position:I

    #@17
    .line 46
    iput p1, v0, Ljava/nio/ShortArrayBuffer;->mark:I

    #@19
    .line 47
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/ShortBuffer;
    .locals 2

    #@0
    .prologue
    .line 51
    iget v0, p0, Ljava/nio/ShortArrayBuffer;->mark:I

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {p0, v0, v1}, Ljava/nio/ShortArrayBuffer;->copy(Ljava/nio/ShortArrayBuffer;IZ)Ljava/nio/ShortArrayBuffer;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public compact()Ljava/nio/ShortBuffer;
    .locals 5

    #@0
    .prologue
    .line 55
    iget-boolean v0, p0, Ljava/nio/ShortArrayBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 56
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 58
    :cond_0
    iget-object v0, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    #@c
    iget v1, p0, Ljava/nio/ShortArrayBuffer;->position:I

    #@e
    iget v2, p0, Ljava/nio/ShortArrayBuffer;->arrayOffset:I

    #@10
    add-int/2addr v1, v2

    #@11
    iget-object v2, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    #@13
    iget v3, p0, Ljava/nio/ShortArrayBuffer;->arrayOffset:I

    #@15
    invoke-virtual {p0}, Ljava/nio/ShortArrayBuffer;->remaining()I

    #@18
    move-result v4

    #@19
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([SI[SII)V

    #@1c
    .line 59
    iget v0, p0, Ljava/nio/ShortArrayBuffer;->limit:I

    #@1e
    iget v1, p0, Ljava/nio/ShortArrayBuffer;->position:I

    #@20
    sub-int/2addr v0, v1

    #@21
    iput v0, p0, Ljava/nio/ShortArrayBuffer;->position:I

    #@23
    .line 60
    iget v0, p0, Ljava/nio/ShortArrayBuffer;->capacity:I

    #@25
    iput v0, p0, Ljava/nio/ShortArrayBuffer;->limit:I

    #@27
    .line 61
    const/4 v0, -0x1

    #@28
    iput v0, p0, Ljava/nio/ShortArrayBuffer;->mark:I

    #@2a
    .line 62
    return-object p0
.end method

.method public duplicate()Ljava/nio/ShortBuffer;
    .locals 2

    #@0
    .prologue
    .line 66
    iget v0, p0, Ljava/nio/ShortArrayBuffer;->mark:I

    #@2
    iget-boolean v1, p0, Ljava/nio/ShortArrayBuffer;->isReadOnly:Z

    #@4
    invoke-static {p0, v0, v1}, Ljava/nio/ShortArrayBuffer;->copy(Ljava/nio/ShortArrayBuffer;IZ)Ljava/nio/ShortArrayBuffer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final get([SII)Ljava/nio/ShortBuffer;
    .locals 3
    .param p1, "dst"    # [S
    .param p2, "dstOffset"    # I
    .param p3, "shortCount"    # I

    #@0
    .prologue
    .line 111
    invoke-virtual {p0}, Ljava/nio/ShortArrayBuffer;->remaining()I

    #@3
    move-result v0

    #@4
    if-le p3, v0, :cond_0

    #@6
    .line 112
    new-instance v0, Ljava/nio/BufferUnderflowException;

    #@8
    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@b
    throw v0

    #@c
    .line 114
    :cond_0
    iget-object v0, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    #@e
    iget v1, p0, Ljava/nio/ShortArrayBuffer;->arrayOffset:I

    #@10
    iget v2, p0, Ljava/nio/ShortArrayBuffer;->position:I

    #@12
    add-int/2addr v1, v2

    #@13
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([SI[SII)V

    #@16
    .line 115
    iget v0, p0, Ljava/nio/ShortArrayBuffer;->position:I

    #@18
    add-int/2addr v0, p3

    #@19
    iput v0, p0, Ljava/nio/ShortArrayBuffer;->position:I

    #@1b
    .line 116
    return-object p0
.end method

.method public final get()S
    .locals 4

    #@0
    .prologue
    .line 99
    iget v0, p0, Ljava/nio/ShortArrayBuffer;->position:I

    #@2
    iget v1, p0, Ljava/nio/ShortArrayBuffer;->limit:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 100
    new-instance v0, Ljava/nio/BufferUnderflowException;

    #@8
    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@b
    throw v0

    #@c
    .line 102
    :cond_0
    iget-object v0, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    #@e
    iget v1, p0, Ljava/nio/ShortArrayBuffer;->arrayOffset:I

    #@10
    iget v2, p0, Ljava/nio/ShortArrayBuffer;->position:I

    #@12
    add-int/lit8 v3, v2, 0x1

    #@14
    iput v3, p0, Ljava/nio/ShortArrayBuffer;->position:I

    #@16
    add-int/2addr v1, v2

    #@17
    aget-short v0, v0, v1

    #@19
    return v0
.end method

.method public final get(I)S
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 106
    invoke-virtual {p0, p1}, Ljava/nio/ShortArrayBuffer;->checkIndex(I)V

    #@3
    .line 107
    iget-object v0, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    #@5
    iget v1, p0, Ljava/nio/ShortArrayBuffer;->arrayOffset:I

    #@7
    add-int/2addr v1, p1

    #@8
    aget-short v0, v0, v1

    #@a
    return v0
.end method

.method public final isDirect()Z
    .locals 1

    #@0
    .prologue
    .line 120
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    #@0
    .prologue
    .line 74
    iget-boolean v0, p0, Ljava/nio/ShortArrayBuffer;->isReadOnly:Z

    #@2
    return v0
.end method

.method public final order()Ljava/nio/ByteOrder;
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

.method protectedArray()[S
    .locals 1

    #@0
    .prologue
    .line 78
    iget-boolean v0, p0, Ljava/nio/ShortArrayBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 79
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 81
    :cond_0
    iget-object v0, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    #@c
    return-object v0
.end method

.method protectedArrayOffset()I
    .locals 1

    #@0
    .prologue
    .line 85
    iget-boolean v0, p0, Ljava/nio/ShortArrayBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 86
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 88
    :cond_0
    iget v0, p0, Ljava/nio/ShortArrayBuffer;->arrayOffset:I

    #@c
    return v0
.end method

.method protectedHasArray()Z
    .locals 1

    #@0
    .prologue
    .line 92
    iget-boolean v0, p0, Ljava/nio/ShortArrayBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 93
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 95
    :cond_0
    const/4 v0, 0x1

    #@7
    return v0
.end method

.method public put(IS)Ljava/nio/ShortBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "c"    # S

    #@0
    .prologue
    .line 139
    iget-boolean v0, p0, Ljava/nio/ShortArrayBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 140
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 142
    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/ShortArrayBuffer;->checkIndex(I)V

    #@d
    .line 143
    iget-object v0, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    #@f
    iget v1, p0, Ljava/nio/ShortArrayBuffer;->arrayOffset:I

    #@11
    add-int/2addr v1, p1

    #@12
    aput-short p2, v0, v1

    #@14
    .line 144
    return-object p0
.end method

.method public put(S)Ljava/nio/ShortBuffer;
    .locals 4
    .param p1, "c"    # S

    #@0
    .prologue
    .line 128
    iget-boolean v0, p0, Ljava/nio/ShortArrayBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 129
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 131
    :cond_0
    iget v0, p0, Ljava/nio/ShortArrayBuffer;->position:I

    #@c
    iget v1, p0, Ljava/nio/ShortArrayBuffer;->limit:I

    #@e
    if-ne v0, v1, :cond_1

    #@10
    .line 132
    new-instance v0, Ljava/nio/BufferOverflowException;

    #@12
    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    #@15
    throw v0

    #@16
    .line 134
    :cond_1
    iget-object v0, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    #@18
    iget v1, p0, Ljava/nio/ShortArrayBuffer;->arrayOffset:I

    #@1a
    iget v2, p0, Ljava/nio/ShortArrayBuffer;->position:I

    #@1c
    add-int/lit8 v3, v2, 0x1

    #@1e
    iput v3, p0, Ljava/nio/ShortArrayBuffer;->position:I

    #@20
    add-int/2addr v1, v2

    #@21
    aput-short p1, v0, v1

    #@23
    .line 135
    return-object p0
.end method

.method public put([SII)Ljava/nio/ShortBuffer;
    .locals 3
    .param p1, "src"    # [S
    .param p2, "srcOffset"    # I
    .param p3, "shortCount"    # I

    #@0
    .prologue
    .line 148
    iget-boolean v0, p0, Ljava/nio/ShortArrayBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 149
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 151
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ShortArrayBuffer;->remaining()I

    #@d
    move-result v0

    #@e
    if-le p3, v0, :cond_1

    #@10
    .line 152
    new-instance v0, Ljava/nio/BufferOverflowException;

    #@12
    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    #@15
    throw v0

    #@16
    .line 154
    :cond_1
    iget-object v0, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    #@18
    iget v1, p0, Ljava/nio/ShortArrayBuffer;->arrayOffset:I

    #@1a
    iget v2, p0, Ljava/nio/ShortArrayBuffer;->position:I

    #@1c
    add-int/2addr v1, v2

    #@1d
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([SI[SII)V

    #@20
    .line 155
    iget v0, p0, Ljava/nio/ShortArrayBuffer;->position:I

    #@22
    add-int/2addr v0, p3

    #@23
    iput v0, p0, Ljava/nio/ShortArrayBuffer;->position:I

    #@25
    .line 156
    return-object p0
.end method

.method public slice()Ljava/nio/ShortBuffer;
    .locals 5

    #@0
    .prologue
    .line 70
    new-instance v0, Ljava/nio/ShortArrayBuffer;

    #@2
    invoke-virtual {p0}, Ljava/nio/ShortArrayBuffer;->remaining()I

    #@5
    move-result v1

    #@6
    iget-object v2, p0, Ljava/nio/ShortArrayBuffer;->backingArray:[S

    #@8
    iget v3, p0, Ljava/nio/ShortArrayBuffer;->arrayOffset:I

    #@a
    iget v4, p0, Ljava/nio/ShortArrayBuffer;->position:I

    #@c
    add-int/2addr v3, v4

    #@d
    iget-boolean v4, p0, Ljava/nio/ShortArrayBuffer;->isReadOnly:Z

    #@f
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/nio/ShortArrayBuffer;-><init>(I[SIZ)V

    #@12
    return-object v0
.end method
