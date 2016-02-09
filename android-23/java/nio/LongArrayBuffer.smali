.class final Ljava/nio/LongArrayBuffer;
.super Ljava/nio/LongBuffer;
.source "LongArrayBuffer.java"


# instance fields
.field private final arrayOffset:I

.field private final backingArray:[J

.field private final isReadOnly:Z


# direct methods
.method private constructor <init>(I[JIZ)V
    .locals 2
    .param p1, "capacity"    # I
    .param p2, "backingArray"    # [J
    .param p3, "arrayOffset"    # I
    .param p4, "isReadOnly"    # Z

    #@0
    .prologue
    .line 36
    const-wide/16 v0, 0x0

    #@2
    invoke-direct {p0, p1, v0, v1}, Ljava/nio/LongBuffer;-><init>(IJ)V

    #@5
    .line 37
    iput-object p2, p0, Ljava/nio/LongArrayBuffer;->backingArray:[J

    #@7
    .line 38
    iput p3, p0, Ljava/nio/LongArrayBuffer;->arrayOffset:I

    #@9
    .line 39
    iput-boolean p4, p0, Ljava/nio/LongArrayBuffer;->isReadOnly:Z

    #@b
    .line 35
    return-void
.end method

.method constructor <init>([J)V
    .locals 2
    .param p1, "array"    # [J

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 32
    array-length v0, p1

    #@2
    invoke-direct {p0, v0, p1, v1, v1}, Ljava/nio/LongArrayBuffer;-><init>(I[JIZ)V

    #@5
    .line 31
    return-void
.end method

.method private static copy(Ljava/nio/LongArrayBuffer;IZ)Ljava/nio/LongArrayBuffer;
    .locals 4
    .param p0, "other"    # Ljava/nio/LongArrayBuffer;
    .param p1, "markOfOther"    # I
    .param p2, "isReadOnly"    # Z

    #@0
    .prologue
    .line 43
    new-instance v0, Ljava/nio/LongArrayBuffer;

    #@2
    invoke-virtual {p0}, Ljava/nio/LongArrayBuffer;->capacity()I

    #@5
    move-result v1

    #@6
    iget-object v2, p0, Ljava/nio/LongArrayBuffer;->backingArray:[J

    #@8
    iget v3, p0, Ljava/nio/LongArrayBuffer;->arrayOffset:I

    #@a
    invoke-direct {v0, v1, v2, v3, p2}, Ljava/nio/LongArrayBuffer;-><init>(I[JIZ)V

    #@d
    .line 44
    .local v0, "buf":Ljava/nio/LongArrayBuffer;
    iget v1, p0, Ljava/nio/LongArrayBuffer;->limit:I

    #@f
    iput v1, v0, Ljava/nio/LongArrayBuffer;->limit:I

    #@11
    .line 45
    invoke-virtual {p0}, Ljava/nio/LongArrayBuffer;->position()I

    #@14
    move-result v1

    #@15
    iput v1, v0, Ljava/nio/LongArrayBuffer;->position:I

    #@17
    .line 46
    iput p1, v0, Ljava/nio/LongArrayBuffer;->mark:I

    #@19
    .line 47
    return-object v0
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/LongBuffer;
    .locals 2

    #@0
    .prologue
    .line 51
    iget v0, p0, Ljava/nio/LongArrayBuffer;->mark:I

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {p0, v0, v1}, Ljava/nio/LongArrayBuffer;->copy(Ljava/nio/LongArrayBuffer;IZ)Ljava/nio/LongArrayBuffer;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public compact()Ljava/nio/LongBuffer;
    .locals 5

    #@0
    .prologue
    .line 55
    iget-boolean v0, p0, Ljava/nio/LongArrayBuffer;->isReadOnly:Z

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
    iget-object v0, p0, Ljava/nio/LongArrayBuffer;->backingArray:[J

    #@c
    iget v1, p0, Ljava/nio/LongArrayBuffer;->position:I

    #@e
    iget v2, p0, Ljava/nio/LongArrayBuffer;->arrayOffset:I

    #@10
    add-int/2addr v1, v2

    #@11
    iget-object v2, p0, Ljava/nio/LongArrayBuffer;->backingArray:[J

    #@13
    iget v3, p0, Ljava/nio/LongArrayBuffer;->arrayOffset:I

    #@15
    invoke-virtual {p0}, Ljava/nio/LongArrayBuffer;->remaining()I

    #@18
    move-result v4

    #@19
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@1c
    .line 59
    iget v0, p0, Ljava/nio/LongArrayBuffer;->limit:I

    #@1e
    iget v1, p0, Ljava/nio/LongArrayBuffer;->position:I

    #@20
    sub-int/2addr v0, v1

    #@21
    iput v0, p0, Ljava/nio/LongArrayBuffer;->position:I

    #@23
    .line 60
    iget v0, p0, Ljava/nio/LongArrayBuffer;->capacity:I

    #@25
    iput v0, p0, Ljava/nio/LongArrayBuffer;->limit:I

    #@27
    .line 61
    const/4 v0, -0x1

    #@28
    iput v0, p0, Ljava/nio/LongArrayBuffer;->mark:I

    #@2a
    .line 62
    return-object p0
.end method

.method public duplicate()Ljava/nio/LongBuffer;
    .locals 2

    #@0
    .prologue
    .line 66
    iget v0, p0, Ljava/nio/LongArrayBuffer;->mark:I

    #@2
    iget-boolean v1, p0, Ljava/nio/LongArrayBuffer;->isReadOnly:Z

    #@4
    invoke-static {p0, v0, v1}, Ljava/nio/LongArrayBuffer;->copy(Ljava/nio/LongArrayBuffer;IZ)Ljava/nio/LongArrayBuffer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final get()J
    .locals 4

    #@0
    .prologue
    .line 99
    iget v0, p0, Ljava/nio/LongArrayBuffer;->position:I

    #@2
    iget v1, p0, Ljava/nio/LongArrayBuffer;->limit:I

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
    iget-object v0, p0, Ljava/nio/LongArrayBuffer;->backingArray:[J

    #@e
    iget v1, p0, Ljava/nio/LongArrayBuffer;->arrayOffset:I

    #@10
    iget v2, p0, Ljava/nio/LongArrayBuffer;->position:I

    #@12
    add-int/lit8 v3, v2, 0x1

    #@14
    iput v3, p0, Ljava/nio/LongArrayBuffer;->position:I

    #@16
    add-int/2addr v1, v2

    #@17
    aget-wide v0, v0, v1

    #@19
    return-wide v0
.end method

.method public final get(I)J
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 106
    invoke-virtual {p0, p1}, Ljava/nio/LongArrayBuffer;->checkIndex(I)V

    #@3
    .line 107
    iget-object v0, p0, Ljava/nio/LongArrayBuffer;->backingArray:[J

    #@5
    iget v1, p0, Ljava/nio/LongArrayBuffer;->arrayOffset:I

    #@7
    add-int/2addr v1, p1

    #@8
    aget-wide v0, v0, v1

    #@a
    return-wide v0
.end method

.method public final get([JII)Ljava/nio/LongBuffer;
    .locals 3
    .param p1, "dst"    # [J
    .param p2, "dstOffset"    # I
    .param p3, "longCount"    # I

    #@0
    .prologue
    .line 111
    invoke-virtual {p0}, Ljava/nio/LongArrayBuffer;->remaining()I

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
    iget-object v0, p0, Ljava/nio/LongArrayBuffer;->backingArray:[J

    #@e
    iget v1, p0, Ljava/nio/LongArrayBuffer;->arrayOffset:I

    #@10
    iget v2, p0, Ljava/nio/LongArrayBuffer;->position:I

    #@12
    add-int/2addr v1, v2

    #@13
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@16
    .line 115
    iget v0, p0, Ljava/nio/LongArrayBuffer;->position:I

    #@18
    add-int/2addr v0, p3

    #@19
    iput v0, p0, Ljava/nio/LongArrayBuffer;->position:I

    #@1b
    .line 116
    return-object p0
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
    iget-boolean v0, p0, Ljava/nio/LongArrayBuffer;->isReadOnly:Z

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

.method protectedArray()[J
    .locals 1

    #@0
    .prologue
    .line 78
    iget-boolean v0, p0, Ljava/nio/LongArrayBuffer;->isReadOnly:Z

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
    iget-object v0, p0, Ljava/nio/LongArrayBuffer;->backingArray:[J

    #@c
    return-object v0
.end method

.method protectedArrayOffset()I
    .locals 1

    #@0
    .prologue
    .line 85
    iget-boolean v0, p0, Ljava/nio/LongArrayBuffer;->isReadOnly:Z

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
    iget v0, p0, Ljava/nio/LongArrayBuffer;->arrayOffset:I

    #@c
    return v0
.end method

.method protectedHasArray()Z
    .locals 1

    #@0
    .prologue
    .line 92
    iget-boolean v0, p0, Ljava/nio/LongArrayBuffer;->isReadOnly:Z

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

.method public put(IJ)Ljava/nio/LongBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "c"    # J

    #@0
    .prologue
    .line 139
    iget-boolean v0, p0, Ljava/nio/LongArrayBuffer;->isReadOnly:Z

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
    invoke-virtual {p0, p1}, Ljava/nio/LongArrayBuffer;->checkIndex(I)V

    #@d
    .line 143
    iget-object v0, p0, Ljava/nio/LongArrayBuffer;->backingArray:[J

    #@f
    iget v1, p0, Ljava/nio/LongArrayBuffer;->arrayOffset:I

    #@11
    add-int/2addr v1, p1

    #@12
    aput-wide p2, v0, v1

    #@14
    .line 144
    return-object p0
.end method

.method public put(J)Ljava/nio/LongBuffer;
    .locals 5
    .param p1, "c"    # J

    #@0
    .prologue
    .line 128
    iget-boolean v0, p0, Ljava/nio/LongArrayBuffer;->isReadOnly:Z

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
    iget v0, p0, Ljava/nio/LongArrayBuffer;->position:I

    #@c
    iget v1, p0, Ljava/nio/LongArrayBuffer;->limit:I

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
    iget-object v0, p0, Ljava/nio/LongArrayBuffer;->backingArray:[J

    #@18
    iget v1, p0, Ljava/nio/LongArrayBuffer;->arrayOffset:I

    #@1a
    iget v2, p0, Ljava/nio/LongArrayBuffer;->position:I

    #@1c
    add-int/lit8 v3, v2, 0x1

    #@1e
    iput v3, p0, Ljava/nio/LongArrayBuffer;->position:I

    #@20
    add-int/2addr v1, v2

    #@21
    aput-wide p1, v0, v1

    #@23
    .line 135
    return-object p0
.end method

.method public put([JII)Ljava/nio/LongBuffer;
    .locals 3
    .param p1, "src"    # [J
    .param p2, "srcOffset"    # I
    .param p3, "longCount"    # I

    #@0
    .prologue
    .line 148
    iget-boolean v0, p0, Ljava/nio/LongArrayBuffer;->isReadOnly:Z

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
    invoke-virtual {p0}, Ljava/nio/LongArrayBuffer;->remaining()I

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
    iget-object v0, p0, Ljava/nio/LongArrayBuffer;->backingArray:[J

    #@18
    iget v1, p0, Ljava/nio/LongArrayBuffer;->arrayOffset:I

    #@1a
    iget v2, p0, Ljava/nio/LongArrayBuffer;->position:I

    #@1c
    add-int/2addr v1, v2

    #@1d
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@20
    .line 155
    iget v0, p0, Ljava/nio/LongArrayBuffer;->position:I

    #@22
    add-int/2addr v0, p3

    #@23
    iput v0, p0, Ljava/nio/LongArrayBuffer;->position:I

    #@25
    .line 156
    return-object p0
.end method

.method public slice()Ljava/nio/LongBuffer;
    .locals 5

    #@0
    .prologue
    .line 70
    new-instance v0, Ljava/nio/LongArrayBuffer;

    #@2
    invoke-virtual {p0}, Ljava/nio/LongArrayBuffer;->remaining()I

    #@5
    move-result v1

    #@6
    iget-object v2, p0, Ljava/nio/LongArrayBuffer;->backingArray:[J

    #@8
    iget v3, p0, Ljava/nio/LongArrayBuffer;->arrayOffset:I

    #@a
    iget v4, p0, Ljava/nio/LongArrayBuffer;->position:I

    #@c
    add-int/2addr v3, v4

    #@d
    iget-boolean v4, p0, Ljava/nio/LongArrayBuffer;->isReadOnly:Z

    #@f
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/nio/LongArrayBuffer;-><init>(I[JIZ)V

    #@12
    return-object v0
.end method
