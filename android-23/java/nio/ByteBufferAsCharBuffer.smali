.class final Ljava/nio/ByteBufferAsCharBuffer;
.super Ljava/nio/CharBuffer;
.source "ByteBufferAsCharBuffer.java"


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 45
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    #@3
    move-result v0

    #@4
    div-int/lit8 v0, v0, 0x2

    #@6
    iget-wide v2, p1, Ljava/nio/ByteBuffer;->effectiveDirectAddress:J

    #@8
    invoke-direct {p0, v0, v2, v3}, Ljava/nio/CharBuffer;-><init>(IJ)V

    #@b
    .line 46
    iput-object p1, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@d
    .line 47
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@f
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@12
    .line 44
    return-void
.end method

.method static asCharBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    .locals 2
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 39
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    #@3
    move-result-object v0

    #@4
    .line 40
    .local v0, "slice":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@b
    .line 41
    new-instance v1, Ljava/nio/ByteBufferAsCharBuffer;

    #@d
    invoke-direct {v1, v0}, Ljava/nio/ByteBufferAsCharBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    #@10
    return-object v1
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/CharBuffer;
    .locals 3

    #@0
    .prologue
    .line 52
    new-instance v0, Ljava/nio/ByteBufferAsCharBuffer;

    #@2
    iget-object v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/nio/ByteBufferAsCharBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    #@b
    .line 53
    .local v0, "buf":Ljava/nio/ByteBufferAsCharBuffer;
    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->limit:I

    #@d
    iput v1, v0, Ljava/nio/ByteBufferAsCharBuffer;->limit:I

    #@f
    .line 54
    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    #@11
    iput v1, v0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    #@13
    .line 55
    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->mark:I

    #@15
    iput v1, v0, Ljava/nio/ByteBufferAsCharBuffer;->mark:I

    #@17
    .line 56
    iget-object v1, v0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@19
    iget-object v2, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@1b
    iget-object v2, v2, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    #@1d
    iput-object v2, v1, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    #@1f
    .line 57
    return-object v0
.end method

.method public compact()Ljava/nio/CharBuffer;
    .locals 2

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 63
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@a
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@d
    throw v0

    #@e
    .line 65
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@10
    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->limit:I

    #@12
    mul-int/lit8 v1, v1, 0x2

    #@14
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@17
    .line 66
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@19
    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    #@1b
    mul-int/lit8 v1, v1, 0x2

    #@1d
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@20
    .line 67
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@22
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    #@25
    .line 68
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@2a
    .line 69
    iget v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->limit:I

    #@2c
    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    #@2e
    sub-int/2addr v0, v1

    #@2f
    iput v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    #@31
    .line 70
    iget v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->capacity:I

    #@33
    iput v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->limit:I

    #@35
    .line 71
    const/4 v0, -0x1

    #@36
    iput v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->mark:I

    #@38
    .line 72
    return-object p0
.end method

.method public duplicate()Ljava/nio/CharBuffer;
    .locals 4

    #@0
    .prologue
    .line 77
    iget-object v2, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@5
    move-result-object v2

    #@6
    iget-object v3, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@8
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@f
    move-result-object v0

    #@10
    .line 78
    .local v0, "bb":Ljava/nio/ByteBuffer;
    new-instance v1, Ljava/nio/ByteBufferAsCharBuffer;

    #@12
    invoke-direct {v1, v0}, Ljava/nio/ByteBufferAsCharBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    #@15
    .line 79
    .local v1, "buf":Ljava/nio/ByteBufferAsCharBuffer;
    iget v2, p0, Ljava/nio/ByteBufferAsCharBuffer;->limit:I

    #@17
    iput v2, v1, Ljava/nio/ByteBufferAsCharBuffer;->limit:I

    #@19
    .line 80
    iget v2, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    #@1b
    iput v2, v1, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    #@1d
    .line 81
    iget v2, p0, Ljava/nio/ByteBufferAsCharBuffer;->mark:I

    #@1f
    iput v2, v1, Ljava/nio/ByteBufferAsCharBuffer;->mark:I

    #@21
    .line 82
    return-object v1
.end method

.method public get()C
    .locals 3

    #@0
    .prologue
    .line 87
    iget v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    #@2
    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->limit:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 88
    new-instance v0, Ljava/nio/BufferUnderflowException;

    #@8
    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@b
    throw v0

    #@c
    .line 90
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@e
    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    #@10
    add-int/lit8 v2, v1, 0x1

    #@12
    iput v2, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    #@14
    mul-int/lit8 v1, v1, 0x2

    #@16
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getChar(I)C

    #@19
    move-result v0

    #@1a
    return v0
.end method

.method public get(I)C
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 95
    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsCharBuffer;->checkIndex(I)V

    #@3
    .line 96
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@5
    mul-int/lit8 v1, p1, 0x2

    #@7
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getChar(I)C

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public get([CII)Ljava/nio/CharBuffer;
    .locals 2
    .param p1, "dst"    # [C
    .param p2, "dstOffset"    # I
    .param p3, "charCount"    # I

    #@0
    .prologue
    .line 101
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@2
    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->limit:I

    #@4
    mul-int/lit8 v1, v1, 0x2

    #@6
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@9
    .line 102
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@b
    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    #@d
    mul-int/lit8 v1, v1, 0x2

    #@f
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@12
    .line 103
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@14
    instance-of v0, v0, Ljava/nio/DirectByteBuffer;

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 104
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@1a
    check-cast v0, Ljava/nio/DirectByteBuffer;

    #@1c
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/DirectByteBuffer;->get([CII)V

    #@1f
    .line 108
    :goto_0
    iget v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    #@21
    add-int/2addr v0, p3

    #@22
    iput v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    #@24
    .line 109
    return-object p0

    #@25
    .line 106
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@27
    check-cast v0, Ljava/nio/ByteArrayBuffer;

    #@29
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteArrayBuffer;->get([CII)V

    #@2c
    goto :goto_0
.end method

.method public isDirect()Z
    .locals 1

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    #@0
    .prologue
    .line 124
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protectedArray()[C
    .locals 1

    #@0
    .prologue
    .line 128
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
    .line 132
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
    .line 136
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public put(C)Ljava/nio/CharBuffer;
    .locals 3
    .param p1, "c"    # C

    #@0
    .prologue
    .line 141
    iget v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    #@2
    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->limit:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 142
    new-instance v0, Ljava/nio/BufferOverflowException;

    #@8
    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    #@b
    throw v0

    #@c
    .line 144
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@e
    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    #@10
    add-int/lit8 v2, v1, 0x1

    #@12
    iput v2, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    #@14
    mul-int/lit8 v1, v1, 0x2

    #@16
    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putChar(IC)Ljava/nio/ByteBuffer;

    #@19
    .line 145
    return-object p0
.end method

.method public put(IC)Ljava/nio/CharBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "c"    # C

    #@0
    .prologue
    .line 150
    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsCharBuffer;->checkIndex(I)V

    #@3
    .line 151
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@5
    mul-int/lit8 v1, p1, 0x2

    #@7
    invoke-virtual {v0, v1, p2}, Ljava/nio/ByteBuffer;->putChar(IC)Ljava/nio/ByteBuffer;

    #@a
    .line 152
    return-object p0
.end method

.method public put([CII)Ljava/nio/CharBuffer;
    .locals 2
    .param p1, "src"    # [C
    .param p2, "srcOffset"    # I
    .param p3, "charCount"    # I

    #@0
    .prologue
    .line 157
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@2
    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->limit:I

    #@4
    mul-int/lit8 v1, v1, 0x2

    #@6
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@9
    .line 158
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@b
    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    #@d
    mul-int/lit8 v1, v1, 0x2

    #@f
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@12
    .line 159
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@14
    instance-of v0, v0, Ljava/nio/DirectByteBuffer;

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 160
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@1a
    check-cast v0, Ljava/nio/DirectByteBuffer;

    #@1c
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/DirectByteBuffer;->put([CII)V

    #@1f
    .line 164
    :goto_0
    iget v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    #@21
    add-int/2addr v0, p3

    #@22
    iput v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    #@24
    .line 165
    return-object p0

    #@25
    .line 162
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@27
    check-cast v0, Ljava/nio/ByteArrayBuffer;

    #@29
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteArrayBuffer;->put([CII)V

    #@2c
    goto :goto_0
.end method

.method public slice()Ljava/nio/CharBuffer;
    .locals 4

    #@0
    .prologue
    .line 170
    iget-object v2, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@2
    iget v3, p0, Ljava/nio/ByteBufferAsCharBuffer;->limit:I

    #@4
    mul-int/lit8 v3, v3, 0x2

    #@6
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@9
    .line 171
    iget-object v2, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@b
    iget v3, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    #@d
    mul-int/lit8 v3, v3, 0x2

    #@f
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@12
    .line 172
    iget-object v2, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@14
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    #@17
    move-result-object v2

    #@18
    iget-object v3, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@1a
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@21
    move-result-object v0

    #@22
    .line 173
    .local v0, "bb":Ljava/nio/ByteBuffer;
    new-instance v1, Ljava/nio/ByteBufferAsCharBuffer;

    #@24
    invoke-direct {v1, v0}, Ljava/nio/ByteBufferAsCharBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    #@27
    .line 174
    .local v1, "result":Ljava/nio/CharBuffer;
    iget-object v2, p0, Ljava/nio/ByteBufferAsCharBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@29
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@2c
    .line 175
    return-object v1
.end method

.method public subSequence(II)Ljava/nio/CharBuffer;
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 179
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBufferAsCharBuffer;->checkStartEndRemaining(II)V

    #@3
    .line 180
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsCharBuffer;->duplicate()Ljava/nio/CharBuffer;

    #@6
    move-result-object v0

    #@7
    .line 181
    .local v0, "result":Ljava/nio/CharBuffer;
    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    #@9
    add-int/2addr v1, p2

    #@a
    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    #@d
    .line 182
    iget v1, p0, Ljava/nio/ByteBufferAsCharBuffer;->position:I

    #@f
    add-int/2addr v1, p1

    #@10
    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    #@13
    .line 183
    return-object v0
.end method
