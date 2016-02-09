.class final Ljava/nio/ByteArrayBuffer;
.super Ljava/nio/ByteBuffer;
.source "ByteArrayBuffer.java"


# instance fields
.field final arrayOffset:I

.field final backingArray:[B

.field private final isReadOnly:Z


# direct methods
.method private constructor <init>(I[BIZ)V
    .locals 3
    .param p1, "capacity"    # I
    .param p2, "backingArray"    # [B
    .param p3, "arrayOffset"    # I
    .param p4, "isReadOnly"    # Z

    #@0
    .prologue
    .line 41
    const-wide/16 v0, 0x0

    #@2
    invoke-direct {p0, p1, v0, v1}, Ljava/nio/ByteBuffer;-><init>(IJ)V

    #@5
    .line 42
    iput-object p2, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@7
    .line 43
    iput p3, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@9
    .line 44
    iput-boolean p4, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    #@b
    .line 45
    add-int v0, p3, p1

    #@d
    array-length v1, p2

    #@e
    if-le v0, v1, :cond_0

    #@10
    .line 46
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@12
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "backingArray.length="

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    array-length v2, p2

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 47
    const-string/jumbo v2, ", capacity="

    #@26
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 47
    const-string/jumbo v2, ", arrayOffset="

    #@31
    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@40
    throw v0

    #@41
    .line 40
    :cond_0
    return-void
.end method

.method constructor <init>([B)V
    .locals 2
    .param p1, "backingArray"    # [B

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 37
    array-length v0, p1

    #@2
    invoke-direct {p0, v0, p1, v1, v1}, Ljava/nio/ByteArrayBuffer;-><init>(I[BIZ)V

    #@5
    .line 36
    return-void
.end method

.method private static copy(Ljava/nio/ByteArrayBuffer;IZ)Ljava/nio/ByteArrayBuffer;
    .locals 4
    .param p0, "other"    # Ljava/nio/ByteArrayBuffer;
    .param p1, "markOfOther"    # I
    .param p2, "isReadOnly"    # Z

    #@0
    .prologue
    .line 52
    new-instance v0, Ljava/nio/ByteArrayBuffer;

    #@2
    invoke-virtual {p0}, Ljava/nio/ByteArrayBuffer;->capacity()I

    #@5
    move-result v1

    #@6
    iget-object v2, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@8
    iget v3, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@a
    invoke-direct {v0, v1, v2, v3, p2}, Ljava/nio/ByteArrayBuffer;-><init>(I[BIZ)V

    #@d
    .line 53
    .local v0, "buf":Ljava/nio/ByteArrayBuffer;
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->limit:I

    #@f
    iput v1, v0, Ljava/nio/ByteArrayBuffer;->limit:I

    #@11
    .line 54
    invoke-virtual {p0}, Ljava/nio/ByteArrayBuffer;->position()I

    #@14
    move-result v1

    #@15
    iput v1, v0, Ljava/nio/ByteArrayBuffer;->position:I

    #@17
    .line 55
    iput p1, v0, Ljava/nio/ByteArrayBuffer;->mark:I

    #@19
    .line 56
    return-object v0
.end method


# virtual methods
.method public final asCharBuffer()Ljava/nio/CharBuffer;
    .locals 1

    #@0
    .prologue
    .line 413
    invoke-static {p0}, Ljava/nio/ByteBufferAsCharBuffer;->asCharBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final asDoubleBuffer()Ljava/nio/DoubleBuffer;
    .locals 1

    #@0
    .prologue
    .line 417
    invoke-static {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->asDoubleBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/DoubleBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final asFloatBuffer()Ljava/nio/FloatBuffer;
    .locals 1

    #@0
    .prologue
    .line 421
    invoke-static {p0}, Ljava/nio/ByteBufferAsFloatBuffer;->asFloatBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final asIntBuffer()Ljava/nio/IntBuffer;
    .locals 1

    #@0
    .prologue
    .line 425
    invoke-static {p0}, Ljava/nio/ByteBufferAsIntBuffer;->asIntBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/IntBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final asLongBuffer()Ljava/nio/LongBuffer;
    .locals 1

    #@0
    .prologue
    .line 429
    invoke-static {p0}, Ljava/nio/ByteBufferAsLongBuffer;->asLongBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/LongBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    #@0
    .prologue
    .line 60
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->mark:I

    #@2
    const/4 v1, 0x1

    #@3
    invoke-static {p0, v0, v1}, Ljava/nio/ByteArrayBuffer;->copy(Ljava/nio/ByteArrayBuffer;IZ)Ljava/nio/ByteArrayBuffer;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public final asShortBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    #@0
    .prologue
    .line 433
    invoke-static {p0}, Ljava/nio/ByteBufferAsShortBuffer;->asShortBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ShortBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public compact()Ljava/nio/ByteBuffer;
    .locals 5

    #@0
    .prologue
    .line 64
    iget-boolean v0, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 65
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 67
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@c
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@e
    iget v2, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@10
    add-int/2addr v1, v2

    #@11
    iget-object v2, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@13
    iget v3, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@15
    invoke-virtual {p0}, Ljava/nio/ByteArrayBuffer;->remaining()I

    #@18
    move-result v4

    #@19
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1c
    .line 68
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->limit:I

    #@1e
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@20
    sub-int/2addr v0, v1

    #@21
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@23
    .line 69
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->capacity:I

    #@25
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->limit:I

    #@27
    .line 70
    const/4 v0, -0x1

    #@28
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->mark:I

    #@2a
    .line 71
    return-object p0
.end method

.method public duplicate()Ljava/nio/ByteBuffer;
    .locals 2

    #@0
    .prologue
    .line 75
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->mark:I

    #@2
    iget-boolean v1, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    #@4
    invoke-static {p0, v0, v1}, Ljava/nio/ByteArrayBuffer;->copy(Ljava/nio/ByteArrayBuffer;IZ)Ljava/nio/ByteArrayBuffer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final get()B
    .locals 4

    #@0
    .prologue
    .line 151
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@2
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->limit:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 152
    new-instance v0, Ljava/nio/BufferUnderflowException;

    #@8
    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@b
    throw v0

    #@c
    .line 154
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@e
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@10
    iget v2, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@12
    add-int/lit8 v3, v2, 0x1

    #@14
    iput v3, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@16
    add-int/2addr v1, v2

    #@17
    aget-byte v0, v0, v1

    #@19
    return v0
.end method

.method public final get(I)B
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 158
    invoke-virtual {p0, p1}, Ljava/nio/ByteArrayBuffer;->checkIndex(I)V

    #@3
    .line 159
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@5
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@7
    add-int/2addr v1, p1

    #@8
    aget-byte v0, v0, v1

    #@a
    return v0
.end method

.method public final get([BII)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "dst"    # [B
    .param p2, "dstOffset"    # I
    .param p3, "byteCount"    # I

    #@0
    .prologue
    .line 108
    array-length v0, p1

    #@1
    const/4 v1, 0x1

    #@2
    invoke-virtual {p0, v1, v0, p2, p3}, Ljava/nio/ByteArrayBuffer;->checkGetBounds(IIII)I

    #@5
    .line 109
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@7
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@9
    iget v2, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@b
    add-int/2addr v1, v2

    #@c
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@f
    .line 110
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@11
    add-int/2addr v0, p3

    #@12
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@14
    .line 111
    return-object p0
.end method

.method final get([CII)V
    .locals 7
    .param p1, "dst"    # [C
    .param p2, "dstOffset"    # I
    .param p3, "charCount"    # I

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    .line 115
    array-length v0, p1

    #@2
    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ByteArrayBuffer;->checkGetBounds(IIII)I

    #@5
    move-result v2

    #@6
    .line 116
    .local v2, "byteCount":I
    iget-object v3, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@8
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@a
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@c
    add-int v4, v0, v1

    #@e
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    #@10
    iget-boolean v6, v0, Ljava/nio/ByteOrder;->needsSwap:Z

    #@12
    move-object v0, p1

    #@13
    move v1, p2

    #@14
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    #@17
    .line 117
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@19
    add-int/2addr v0, v2

    #@1a
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@1c
    .line 114
    return-void
.end method

.method final get([DII)V
    .locals 7
    .param p1, "dst"    # [D
    .param p2, "dstOffset"    # I
    .param p3, "doubleCount"    # I

    #@0
    .prologue
    const/16 v5, 0x8

    #@2
    .line 121
    array-length v0, p1

    #@3
    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ByteArrayBuffer;->checkGetBounds(IIII)I

    #@6
    move-result v2

    #@7
    .line 122
    .local v2, "byteCount":I
    iget-object v3, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@9
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@b
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@d
    add-int v4, v0, v1

    #@f
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    #@11
    iget-boolean v6, v0, Ljava/nio/ByteOrder;->needsSwap:Z

    #@13
    move-object v0, p1

    #@14
    move v1, p2

    #@15
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    #@18
    .line 123
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@1a
    add-int/2addr v0, v2

    #@1b
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@1d
    .line 120
    return-void
.end method

.method final get([FII)V
    .locals 7
    .param p1, "dst"    # [F
    .param p2, "dstOffset"    # I
    .param p3, "floatCount"    # I

    #@0
    .prologue
    const/4 v5, 0x4

    #@1
    .line 127
    array-length v0, p1

    #@2
    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ByteArrayBuffer;->checkGetBounds(IIII)I

    #@5
    move-result v2

    #@6
    .line 128
    .local v2, "byteCount":I
    iget-object v3, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@8
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@a
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@c
    add-int v4, v0, v1

    #@e
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    #@10
    iget-boolean v6, v0, Ljava/nio/ByteOrder;->needsSwap:Z

    #@12
    move-object v0, p1

    #@13
    move v1, p2

    #@14
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    #@17
    .line 129
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@19
    add-int/2addr v0, v2

    #@1a
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@1c
    .line 126
    return-void
.end method

.method final get([III)V
    .locals 7
    .param p1, "dst"    # [I
    .param p2, "dstOffset"    # I
    .param p3, "intCount"    # I

    #@0
    .prologue
    const/4 v5, 0x4

    #@1
    .line 133
    array-length v0, p1

    #@2
    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ByteArrayBuffer;->checkGetBounds(IIII)I

    #@5
    move-result v2

    #@6
    .line 134
    .local v2, "byteCount":I
    iget-object v3, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@8
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@a
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@c
    add-int v4, v0, v1

    #@e
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    #@10
    iget-boolean v6, v0, Ljava/nio/ByteOrder;->needsSwap:Z

    #@12
    move-object v0, p1

    #@13
    move v1, p2

    #@14
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    #@17
    .line 135
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@19
    add-int/2addr v0, v2

    #@1a
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@1c
    .line 132
    return-void
.end method

.method final get([JII)V
    .locals 7
    .param p1, "dst"    # [J
    .param p2, "dstOffset"    # I
    .param p3, "longCount"    # I

    #@0
    .prologue
    const/16 v5, 0x8

    #@2
    .line 139
    array-length v0, p1

    #@3
    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ByteArrayBuffer;->checkGetBounds(IIII)I

    #@6
    move-result v2

    #@7
    .line 140
    .local v2, "byteCount":I
    iget-object v3, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@9
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@b
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@d
    add-int v4, v0, v1

    #@f
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    #@11
    iget-boolean v6, v0, Ljava/nio/ByteOrder;->needsSwap:Z

    #@13
    move-object v0, p1

    #@14
    move v1, p2

    #@15
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    #@18
    .line 141
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@1a
    add-int/2addr v0, v2

    #@1b
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@1d
    .line 138
    return-void
.end method

.method final get([SII)V
    .locals 7
    .param p1, "dst"    # [S
    .param p2, "dstOffset"    # I
    .param p3, "shortCount"    # I

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    .line 145
    array-length v0, p1

    #@2
    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ByteArrayBuffer;->checkGetBounds(IIII)I

    #@5
    move-result v2

    #@6
    .line 146
    .local v2, "byteCount":I
    iget-object v3, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@8
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@a
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@c
    add-int v4, v0, v1

    #@e
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    #@10
    iget-boolean v6, v0, Ljava/nio/ByteOrder;->needsSwap:Z

    #@12
    move-object v0, p1

    #@13
    move v1, p2

    #@14
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkGet(Ljava/lang/Object;II[BIIZ)V

    #@17
    .line 147
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@19
    add-int/2addr v0, v2

    #@1a
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@1c
    .line 144
    return-void
.end method

.method public final getChar()C
    .locals 5

    #@0
    .prologue
    .line 163
    iget v2, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@2
    add-int/lit8 v0, v2, 0x2

    #@4
    .line 164
    .local v0, "newPosition":I
    iget v2, p0, Ljava/nio/ByteArrayBuffer;->limit:I

    #@6
    if-le v0, v2, :cond_0

    #@8
    .line 165
    new-instance v2, Ljava/nio/BufferUnderflowException;

    #@a
    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@d
    throw v2

    #@e
    .line 167
    :cond_0
    iget-object v2, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@10
    iget v3, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@12
    iget v4, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@14
    add-int/2addr v3, v4

    #@15
    iget-object v4, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    #@17
    invoke-static {v2, v3, v4}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    #@1a
    move-result v2

    #@1b
    int-to-char v1, v2

    #@1c
    .line 168
    .local v1, "result":C
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@1e
    .line 169
    return v1
.end method

.method public final getChar(I)C
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 173
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteArrayBuffer;->checkIndex(II)V

    #@4
    .line 174
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@6
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@8
    add-int/2addr v1, p1

    #@9
    iget-object v2, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    #@b
    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    #@e
    move-result v0

    #@f
    int-to-char v0, v0

    #@10
    return v0
.end method

.method public final getDouble()D
    .locals 2

    #@0
    .prologue
    .line 178
    invoke-virtual {p0}, Ljava/nio/ByteArrayBuffer;->getLong()J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public final getDouble(I)D
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 182
    invoke-virtual {p0, p1}, Ljava/nio/ByteArrayBuffer;->getLong(I)J

    #@3
    move-result-wide v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public final getFloat()F
    .locals 1

    #@0
    .prologue
    .line 186
    invoke-virtual {p0}, Ljava/nio/ByteArrayBuffer;->getInt()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final getFloat(I)F
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 190
    invoke-virtual {p0, p1}, Ljava/nio/ByteArrayBuffer;->getInt(I)I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public final getInt()I
    .locals 5

    #@0
    .prologue
    .line 194
    iget v2, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@2
    add-int/lit8 v0, v2, 0x4

    #@4
    .line 195
    .local v0, "newPosition":I
    iget v2, p0, Ljava/nio/ByteArrayBuffer;->limit:I

    #@6
    if-le v0, v2, :cond_0

    #@8
    .line 196
    new-instance v2, Ljava/nio/BufferUnderflowException;

    #@a
    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@d
    throw v2

    #@e
    .line 198
    :cond_0
    iget-object v2, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@10
    iget v3, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@12
    iget v4, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@14
    add-int/2addr v3, v4

    #@15
    iget-object v4, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    #@17
    invoke-static {v2, v3, v4}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    #@1a
    move-result v1

    #@1b
    .line 199
    .local v1, "result":I
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@1d
    .line 200
    return v1
.end method

.method public final getInt(I)I
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 204
    const/4 v0, 0x4

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteArrayBuffer;->checkIndex(II)V

    #@4
    .line 205
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@6
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@8
    add-int/2addr v1, p1

    #@9
    iget-object v2, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    #@b
    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public final getLong()J
    .locals 6

    #@0
    .prologue
    .line 209
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@2
    add-int/lit8 v0, v1, 0x8

    #@4
    .line 210
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->limit:I

    #@6
    if-le v0, v1, :cond_0

    #@8
    .line 211
    new-instance v1, Ljava/nio/BufferUnderflowException;

    #@a
    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@d
    throw v1

    #@e
    .line 213
    :cond_0
    iget-object v1, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@10
    iget v4, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@12
    iget v5, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@14
    add-int/2addr v4, v5

    #@15
    iget-object v5, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    #@17
    invoke-static {v1, v4, v5}, Llibcore/io/Memory;->peekLong([BILjava/nio/ByteOrder;)J

    #@1a
    move-result-wide v2

    #@1b
    .line 214
    .local v2, "result":J
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@1d
    .line 215
    return-wide v2
.end method

.method public final getLong(I)J
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 219
    const/16 v0, 0x8

    #@2
    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteArrayBuffer;->checkIndex(II)V

    #@5
    .line 220
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@7
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@9
    add-int/2addr v1, p1

    #@a
    iget-object v2, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    #@c
    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekLong([BILjava/nio/ByteOrder;)J

    #@f
    move-result-wide v0

    #@10
    return-wide v0
.end method

.method public final getShort()S
    .locals 5

    #@0
    .prologue
    .line 224
    iget v2, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@2
    add-int/lit8 v0, v2, 0x2

    #@4
    .line 225
    .local v0, "newPosition":I
    iget v2, p0, Ljava/nio/ByteArrayBuffer;->limit:I

    #@6
    if-le v0, v2, :cond_0

    #@8
    .line 226
    new-instance v2, Ljava/nio/BufferUnderflowException;

    #@a
    invoke-direct {v2}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@d
    throw v2

    #@e
    .line 228
    :cond_0
    iget-object v2, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@10
    iget v3, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@12
    iget v4, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@14
    add-int/2addr v3, v4

    #@15
    iget-object v4, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    #@17
    invoke-static {v2, v3, v4}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    #@1a
    move-result v1

    #@1b
    .line 229
    .local v1, "result":S
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@1d
    .line 230
    return v1
.end method

.method public final getShort(I)S
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 234
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteArrayBuffer;->checkIndex(II)V

    #@4
    .line 235
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@6
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@8
    add-int/2addr v1, p1

    #@9
    iget-object v2, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    #@b
    invoke-static {v0, v1, v2}, Llibcore/io/Memory;->peekShort([BILjava/nio/ByteOrder;)S

    #@e
    move-result v0

    #@f
    return v0
.end method

.method public final isDirect()Z
    .locals 1

    #@0
    .prologue
    .line 239
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    #@0
    .prologue
    .line 83
    iget-boolean v0, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    #@2
    return v0
.end method

.method protectedArray()[B
    .locals 1

    #@0
    .prologue
    .line 87
    iget-boolean v0, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 88
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 90
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@c
    return-object v0
.end method

.method protectedArrayOffset()I
    .locals 1

    #@0
    .prologue
    .line 94
    iget-boolean v0, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 95
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 97
    :cond_0
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@c
    return v0
.end method

.method protectedHasArray()Z
    .locals 1

    #@0
    .prologue
    .line 101
    iget-boolean v0, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 102
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 104
    :cond_0
    const/4 v0, 0x1

    #@7
    return v0
.end method

.method public put(B)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "b"    # B

    #@0
    .prologue
    .line 243
    iget-boolean v0, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 244
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 246
    :cond_0
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@c
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->limit:I

    #@e
    if-ne v0, v1, :cond_1

    #@10
    .line 247
    new-instance v0, Ljava/nio/BufferOverflowException;

    #@12
    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    #@15
    throw v0

    #@16
    .line 249
    :cond_1
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@18
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@1a
    iget v2, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@1c
    add-int/lit8 v3, v2, 0x1

    #@1e
    iput v3, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@20
    add-int/2addr v1, v2

    #@21
    aput-byte p1, v0, v1

    #@23
    .line 250
    return-object p0
.end method

.method public put(IB)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "b"    # B

    #@0
    .prologue
    .line 254
    iget-boolean v0, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 255
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 257
    :cond_0
    invoke-virtual {p0, p1}, Ljava/nio/ByteArrayBuffer;->checkIndex(I)V

    #@d
    .line 258
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@f
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@11
    add-int/2addr v1, p1

    #@12
    aput-byte p2, v0, v1

    #@14
    .line 259
    return-object p0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "src"    # [B
    .param p2, "srcOffset"    # I
    .param p3, "byteCount"    # I

    #@0
    .prologue
    .line 263
    iget-boolean v0, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 264
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 266
    :cond_0
    array-length v0, p1

    #@b
    const/4 v1, 0x1

    #@c
    invoke-virtual {p0, v1, v0, p2, p3}, Ljava/nio/ByteArrayBuffer;->checkPutBounds(IIII)I

    #@f
    .line 267
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@11
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@13
    iget v2, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@15
    add-int/2addr v1, v2

    #@16
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@19
    .line 268
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@1b
    add-int/2addr v0, p3

    #@1c
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@1e
    .line 269
    return-object p0
.end method

.method final put([CII)V
    .locals 7
    .param p1, "src"    # [C
    .param p2, "srcOffset"    # I
    .param p3, "charCount"    # I

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    .line 273
    array-length v0, p1

    #@2
    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ByteArrayBuffer;->checkPutBounds(IIII)I

    #@5
    move-result v2

    #@6
    .line 274
    .local v2, "byteCount":I
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@8
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@a
    iget v3, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@c
    add-int/2addr v1, v3

    #@d
    iget-object v3, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    #@f
    iget-boolean v6, v3, Ljava/nio/ByteOrder;->needsSwap:Z

    #@11
    move-object v3, p1

    #@12
    move v4, p2

    #@13
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    #@16
    .line 275
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@18
    add-int/2addr v0, v2

    #@19
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@1b
    .line 272
    return-void
.end method

.method final put([DII)V
    .locals 7
    .param p1, "src"    # [D
    .param p2, "srcOffset"    # I
    .param p3, "doubleCount"    # I

    #@0
    .prologue
    const/16 v5, 0x8

    #@2
    .line 279
    array-length v0, p1

    #@3
    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ByteArrayBuffer;->checkPutBounds(IIII)I

    #@6
    move-result v2

    #@7
    .line 280
    .local v2, "byteCount":I
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@9
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@b
    iget v3, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@d
    add-int/2addr v1, v3

    #@e
    iget-object v3, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    #@10
    iget-boolean v6, v3, Ljava/nio/ByteOrder;->needsSwap:Z

    #@12
    move-object v3, p1

    #@13
    move v4, p2

    #@14
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    #@17
    .line 281
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@19
    add-int/2addr v0, v2

    #@1a
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@1c
    .line 278
    return-void
.end method

.method final put([FII)V
    .locals 7
    .param p1, "src"    # [F
    .param p2, "srcOffset"    # I
    .param p3, "floatCount"    # I

    #@0
    .prologue
    const/4 v5, 0x4

    #@1
    .line 285
    array-length v0, p1

    #@2
    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ByteArrayBuffer;->checkPutBounds(IIII)I

    #@5
    move-result v2

    #@6
    .line 286
    .local v2, "byteCount":I
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@8
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@a
    iget v3, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@c
    add-int/2addr v1, v3

    #@d
    iget-object v3, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    #@f
    iget-boolean v6, v3, Ljava/nio/ByteOrder;->needsSwap:Z

    #@11
    move-object v3, p1

    #@12
    move v4, p2

    #@13
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    #@16
    .line 287
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@18
    add-int/2addr v0, v2

    #@19
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@1b
    .line 284
    return-void
.end method

.method final put([III)V
    .locals 7
    .param p1, "src"    # [I
    .param p2, "srcOffset"    # I
    .param p3, "intCount"    # I

    #@0
    .prologue
    const/4 v5, 0x4

    #@1
    .line 291
    array-length v0, p1

    #@2
    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ByteArrayBuffer;->checkPutBounds(IIII)I

    #@5
    move-result v2

    #@6
    .line 292
    .local v2, "byteCount":I
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@8
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@a
    iget v3, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@c
    add-int/2addr v1, v3

    #@d
    iget-object v3, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    #@f
    iget-boolean v6, v3, Ljava/nio/ByteOrder;->needsSwap:Z

    #@11
    move-object v3, p1

    #@12
    move v4, p2

    #@13
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    #@16
    .line 293
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@18
    add-int/2addr v0, v2

    #@19
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@1b
    .line 290
    return-void
.end method

.method final put([JII)V
    .locals 7
    .param p1, "src"    # [J
    .param p2, "srcOffset"    # I
    .param p3, "longCount"    # I

    #@0
    .prologue
    const/16 v5, 0x8

    #@2
    .line 297
    array-length v0, p1

    #@3
    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ByteArrayBuffer;->checkPutBounds(IIII)I

    #@6
    move-result v2

    #@7
    .line 298
    .local v2, "byteCount":I
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@9
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@b
    iget v3, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@d
    add-int/2addr v1, v3

    #@e
    iget-object v3, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    #@10
    iget-boolean v6, v3, Ljava/nio/ByteOrder;->needsSwap:Z

    #@12
    move-object v3, p1

    #@13
    move v4, p2

    #@14
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    #@17
    .line 299
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@19
    add-int/2addr v0, v2

    #@1a
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@1c
    .line 296
    return-void
.end method

.method final put([SII)V
    .locals 7
    .param p1, "src"    # [S
    .param p2, "srcOffset"    # I
    .param p3, "shortCount"    # I

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    .line 303
    array-length v0, p1

    #@2
    invoke-virtual {p0, v5, v0, p2, p3}, Ljava/nio/ByteArrayBuffer;->checkPutBounds(IIII)I

    #@5
    move-result v2

    #@6
    .line 304
    .local v2, "byteCount":I
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@8
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@a
    iget v3, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@c
    add-int/2addr v1, v3

    #@d
    iget-object v3, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    #@f
    iget-boolean v6, v3, Ljava/nio/ByteOrder;->needsSwap:Z

    #@11
    move-object v3, p1

    #@12
    move v4, p2

    #@13
    invoke-static/range {v0 .. v6}, Llibcore/io/Memory;->unsafeBulkPut([BIILjava/lang/Object;IIZ)V

    #@16
    .line 305
    iget v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@18
    add-int/2addr v0, v2

    #@19
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@1b
    .line 302
    return-void
.end method

.method public putChar(C)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "value"    # C

    #@0
    .prologue
    .line 318
    iget-boolean v1, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 319
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v1

    #@a
    .line 321
    :cond_0
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@c
    add-int/lit8 v0, v1, 0x2

    #@e
    .line 322
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->limit:I

    #@10
    if-le v0, v1, :cond_1

    #@12
    .line 323
    new-instance v1, Ljava/nio/BufferOverflowException;

    #@14
    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    #@17
    throw v1

    #@18
    .line 325
    :cond_1
    iget-object v1, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@1a
    iget v2, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@1c
    iget v3, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@1e
    add-int/2addr v2, v3

    #@1f
    int-to-short v3, p1

    #@20
    iget-object v4, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    #@22
    invoke-static {v1, v2, v3, v4}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    #@25
    .line 326
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@27
    .line 327
    return-object p0
.end method

.method public putChar(IC)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # C

    #@0
    .prologue
    .line 309
    iget-boolean v0, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 310
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 312
    :cond_0
    const/4 v0, 0x2

    #@b
    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteArrayBuffer;->checkIndex(II)V

    #@e
    .line 313
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@10
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@12
    add-int/2addr v1, p1

    #@13
    int-to-short v2, p2

    #@14
    iget-object v3, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    #@16
    invoke-static {v0, v1, v2, v3}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    #@19
    .line 314
    return-object p0
.end method

.method public putDouble(D)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "value"    # D

    #@0
    .prologue
    .line 331
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteArrayBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public putDouble(ID)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # D

    #@0
    .prologue
    .line 335
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, p1, v0, v1}, Ljava/nio/ByteArrayBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public putFloat(F)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "value"    # F

    #@0
    .prologue
    .line 339
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Ljava/nio/ByteArrayBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public putFloat(IF)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # F

    #@0
    .prologue
    .line 343
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteArrayBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public putInt(I)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "value"    # I

    #@0
    .prologue
    .line 347
    iget-boolean v1, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 348
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v1

    #@a
    .line 350
    :cond_0
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@c
    add-int/lit8 v0, v1, 0x4

    #@e
    .line 351
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->limit:I

    #@10
    if-le v0, v1, :cond_1

    #@12
    .line 352
    new-instance v1, Ljava/nio/BufferOverflowException;

    #@14
    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    #@17
    throw v1

    #@18
    .line 354
    :cond_1
    iget-object v1, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@1a
    iget v2, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@1c
    iget v3, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@1e
    add-int/2addr v2, v3

    #@1f
    iget-object v3, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    #@21
    invoke-static {v1, v2, p1, v3}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    #@24
    .line 355
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@26
    .line 356
    return-object p0
.end method

.method public putInt(II)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 360
    iget-boolean v0, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 361
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 363
    :cond_0
    const/4 v0, 0x4

    #@b
    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteArrayBuffer;->checkIndex(II)V

    #@e
    .line 364
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@10
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@12
    add-int/2addr v1, p1

    #@13
    iget-object v2, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    #@15
    invoke-static {v0, v1, p2, v2}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    #@18
    .line 365
    return-object p0
.end method

.method public putLong(IJ)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # J

    #@0
    .prologue
    .line 369
    iget-boolean v0, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 370
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 372
    :cond_0
    const/16 v0, 0x8

    #@c
    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteArrayBuffer;->checkIndex(II)V

    #@f
    .line 373
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@11
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@13
    add-int/2addr v1, p1

    #@14
    iget-object v2, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    #@16
    invoke-static {v0, v1, p2, p3, v2}, Llibcore/io/Memory;->pokeLong([BIJLjava/nio/ByteOrder;)V

    #@19
    .line 374
    return-object p0
.end method

.method public putLong(J)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "value"    # J

    #@0
    .prologue
    .line 378
    iget-boolean v1, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 379
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v1

    #@a
    .line 381
    :cond_0
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@c
    add-int/lit8 v0, v1, 0x8

    #@e
    .line 382
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->limit:I

    #@10
    if-le v0, v1, :cond_1

    #@12
    .line 383
    new-instance v1, Ljava/nio/BufferOverflowException;

    #@14
    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    #@17
    throw v1

    #@18
    .line 385
    :cond_1
    iget-object v1, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@1a
    iget v2, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@1c
    iget v3, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@1e
    add-int/2addr v2, v3

    #@1f
    iget-object v3, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    #@21
    invoke-static {v1, v2, p1, p2, v3}, Llibcore/io/Memory;->pokeLong([BIJLjava/nio/ByteOrder;)V

    #@24
    .line 386
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@26
    .line 387
    return-object p0
.end method

.method public putShort(IS)Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # S

    #@0
    .prologue
    .line 391
    iget-boolean v0, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 392
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 394
    :cond_0
    const/4 v0, 0x2

    #@b
    invoke-virtual {p0, p1, v0}, Ljava/nio/ByteArrayBuffer;->checkIndex(II)V

    #@e
    .line 395
    iget-object v0, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@10
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@12
    add-int/2addr v1, p1

    #@13
    iget-object v2, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    #@15
    invoke-static {v0, v1, p2, v2}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    #@18
    .line 396
    return-object p0
.end method

.method public putShort(S)Ljava/nio/ByteBuffer;
    .locals 4
    .param p1, "value"    # S

    #@0
    .prologue
    .line 400
    iget-boolean v1, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 401
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v1

    #@a
    .line 403
    :cond_0
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@c
    add-int/lit8 v0, v1, 0x2

    #@e
    .line 404
    .local v0, "newPosition":I
    iget v1, p0, Ljava/nio/ByteArrayBuffer;->limit:I

    #@10
    if-le v0, v1, :cond_1

    #@12
    .line 405
    new-instance v1, Ljava/nio/BufferOverflowException;

    #@14
    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    #@17
    throw v1

    #@18
    .line 407
    :cond_1
    iget-object v1, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@1a
    iget v2, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@1c
    iget v3, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@1e
    add-int/2addr v2, v3

    #@1f
    iget-object v3, p0, Ljava/nio/ByteArrayBuffer;->order:Ljava/nio/ByteOrder;

    #@21
    invoke-static {v1, v2, p1, v3}, Llibcore/io/Memory;->pokeShort([BISLjava/nio/ByteOrder;)V

    #@24
    .line 408
    iput v0, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@26
    .line 409
    return-object p0
.end method

.method public slice()Ljava/nio/ByteBuffer;
    .locals 5

    #@0
    .prologue
    .line 79
    new-instance v0, Ljava/nio/ByteArrayBuffer;

    #@2
    invoke-virtual {p0}, Ljava/nio/ByteArrayBuffer;->remaining()I

    #@5
    move-result v1

    #@6
    iget-object v2, p0, Ljava/nio/ByteArrayBuffer;->backingArray:[B

    #@8
    iget v3, p0, Ljava/nio/ByteArrayBuffer;->arrayOffset:I

    #@a
    iget v4, p0, Ljava/nio/ByteArrayBuffer;->position:I

    #@c
    add-int/2addr v3, v4

    #@d
    iget-boolean v4, p0, Ljava/nio/ByteArrayBuffer;->isReadOnly:Z

    #@f
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/nio/ByteArrayBuffer;-><init>(I[BIZ)V

    #@12
    return-object v0
.end method
