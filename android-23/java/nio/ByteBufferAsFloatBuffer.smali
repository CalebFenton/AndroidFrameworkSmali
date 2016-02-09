.class final Ljava/nio/ByteBufferAsFloatBuffer;
.super Ljava/nio/FloatBuffer;
.source "ByteBufferAsFloatBuffer.java"


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 44
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    #@3
    move-result v0

    #@4
    div-int/lit8 v0, v0, 0x4

    #@6
    iget-wide v2, p1, Ljava/nio/ByteBuffer;->effectiveDirectAddress:J

    #@8
    invoke-direct {p0, v0, v2, v3}, Ljava/nio/FloatBuffer;-><init>(IJ)V

    #@b
    .line 45
    iput-object p1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@d
    .line 46
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@f
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@12
    .line 43
    return-void
.end method

.method static asFloatBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/FloatBuffer;
    .locals 2
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 38
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    #@3
    move-result-object v0

    #@4
    .line 39
    .local v0, "slice":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@b
    .line 40
    new-instance v1, Ljava/nio/ByteBufferAsFloatBuffer;

    #@d
    invoke-direct {v1, v0}, Ljava/nio/ByteBufferAsFloatBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    #@10
    return-object v1
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/FloatBuffer;
    .locals 3

    #@0
    .prologue
    .line 51
    new-instance v0, Ljava/nio/ByteBufferAsFloatBuffer;

    #@2
    iget-object v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Ljava/nio/ByteBufferAsFloatBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    #@b
    .line 52
    .local v0, "buf":Ljava/nio/ByteBufferAsFloatBuffer;
    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->limit:I

    #@d
    iput v1, v0, Ljava/nio/ByteBufferAsFloatBuffer;->limit:I

    #@f
    .line 53
    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    #@11
    iput v1, v0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    #@13
    .line 54
    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->mark:I

    #@15
    iput v1, v0, Ljava/nio/ByteBufferAsFloatBuffer;->mark:I

    #@17
    .line 55
    iget-object v1, v0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@19
    iget-object v2, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@1b
    iget-object v2, v2, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    #@1d
    iput-object v2, v1, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    #@1f
    .line 56
    return-object v0
.end method

.method public compact()Ljava/nio/FloatBuffer;
    .locals 2

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 62
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@a
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@d
    throw v0

    #@e
    .line 64
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@10
    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->limit:I

    #@12
    mul-int/lit8 v1, v1, 0x4

    #@14
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@17
    .line 65
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@19
    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    #@1b
    mul-int/lit8 v1, v1, 0x4

    #@1d
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@20
    .line 66
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@22
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    #@25
    .line 67
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@27
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@2a
    .line 68
    iget v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->limit:I

    #@2c
    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    #@2e
    sub-int/2addr v0, v1

    #@2f
    iput v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    #@31
    .line 69
    iget v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->capacity:I

    #@33
    iput v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->limit:I

    #@35
    .line 70
    const/4 v0, -0x1

    #@36
    iput v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->mark:I

    #@38
    .line 71
    return-object p0
.end method

.method public duplicate()Ljava/nio/FloatBuffer;
    .locals 4

    #@0
    .prologue
    .line 76
    iget-object v2, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    #@5
    move-result-object v2

    #@6
    iget-object v3, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@8
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@f
    move-result-object v0

    #@10
    .line 77
    .local v0, "bb":Ljava/nio/ByteBuffer;
    new-instance v1, Ljava/nio/ByteBufferAsFloatBuffer;

    #@12
    invoke-direct {v1, v0}, Ljava/nio/ByteBufferAsFloatBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    #@15
    .line 78
    .local v1, "buf":Ljava/nio/ByteBufferAsFloatBuffer;
    iget v2, p0, Ljava/nio/ByteBufferAsFloatBuffer;->limit:I

    #@17
    iput v2, v1, Ljava/nio/ByteBufferAsFloatBuffer;->limit:I

    #@19
    .line 79
    iget v2, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    #@1b
    iput v2, v1, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    #@1d
    .line 80
    iget v2, p0, Ljava/nio/ByteBufferAsFloatBuffer;->mark:I

    #@1f
    iput v2, v1, Ljava/nio/ByteBufferAsFloatBuffer;->mark:I

    #@21
    .line 81
    return-object v1
.end method

.method public get()F
    .locals 3

    #@0
    .prologue
    .line 86
    iget v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    #@2
    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->limit:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 87
    new-instance v0, Ljava/nio/BufferUnderflowException;

    #@8
    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@b
    throw v0

    #@c
    .line 89
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@e
    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    #@10
    add-int/lit8 v2, v1, 0x1

    #@12
    iput v2, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    #@14
    mul-int/lit8 v1, v1, 0x4

    #@16
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    #@19
    move-result v0

    #@1a
    return v0
.end method

.method public get(I)F
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 94
    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsFloatBuffer;->checkIndex(I)V

    #@3
    .line 95
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@5
    mul-int/lit8 v1, p1, 0x4

    #@7
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getFloat(I)F

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public get([FII)Ljava/nio/FloatBuffer;
    .locals 2
    .param p1, "dst"    # [F
    .param p2, "dstOffset"    # I
    .param p3, "floatCount"    # I

    #@0
    .prologue
    .line 100
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@2
    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->limit:I

    #@4
    mul-int/lit8 v1, v1, 0x4

    #@6
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@9
    .line 101
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@b
    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    #@d
    mul-int/lit8 v1, v1, 0x4

    #@f
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@12
    .line 102
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@14
    instance-of v0, v0, Ljava/nio/DirectByteBuffer;

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 103
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@1a
    check-cast v0, Ljava/nio/DirectByteBuffer;

    #@1c
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/DirectByteBuffer;->get([FII)V

    #@1f
    .line 107
    :goto_0
    iget v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    #@21
    add-int/2addr v0, p3

    #@22
    iput v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    #@24
    .line 108
    return-object p0

    #@25
    .line 105
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@27
    check-cast v0, Ljava/nio/ByteArrayBuffer;

    #@29
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteArrayBuffer;->get([FII)V

    #@2c
    goto :goto_0
.end method

.method public isDirect()Z
    .locals 1

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

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
    .line 118
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

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
    .line 123
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protectedArray()[F
    .locals 1

    #@0
    .prologue
    .line 127
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
    .line 131
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
    .line 135
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public put(F)Ljava/nio/FloatBuffer;
    .locals 3
    .param p1, "c"    # F

    #@0
    .prologue
    .line 140
    iget v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    #@2
    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->limit:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 141
    new-instance v0, Ljava/nio/BufferOverflowException;

    #@8
    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    #@b
    throw v0

    #@c
    .line 143
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@e
    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    #@10
    add-int/lit8 v2, v1, 0x1

    #@12
    iput v2, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    #@14
    mul-int/lit8 v1, v1, 0x4

    #@16
    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    #@19
    .line 144
    return-object p0
.end method

.method public put(IF)Ljava/nio/FloatBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "c"    # F

    #@0
    .prologue
    .line 149
    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsFloatBuffer;->checkIndex(I)V

    #@3
    .line 150
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@5
    mul-int/lit8 v1, p1, 0x4

    #@7
    invoke-virtual {v0, v1, p2}, Ljava/nio/ByteBuffer;->putFloat(IF)Ljava/nio/ByteBuffer;

    #@a
    .line 151
    return-object p0
.end method

.method public put([FII)Ljava/nio/FloatBuffer;
    .locals 2
    .param p1, "src"    # [F
    .param p2, "srcOffset"    # I
    .param p3, "floatCount"    # I

    #@0
    .prologue
    .line 156
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@2
    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->limit:I

    #@4
    mul-int/lit8 v1, v1, 0x4

    #@6
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@9
    .line 157
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@b
    iget v1, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    #@d
    mul-int/lit8 v1, v1, 0x4

    #@f
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@12
    .line 158
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@14
    instance-of v0, v0, Ljava/nio/DirectByteBuffer;

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 159
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@1a
    check-cast v0, Ljava/nio/DirectByteBuffer;

    #@1c
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/DirectByteBuffer;->put([FII)V

    #@1f
    .line 163
    :goto_0
    iget v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    #@21
    add-int/2addr v0, p3

    #@22
    iput v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    #@24
    .line 164
    return-object p0

    #@25
    .line 161
    :cond_0
    iget-object v0, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@27
    check-cast v0, Ljava/nio/ByteArrayBuffer;

    #@29
    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteArrayBuffer;->put([FII)V

    #@2c
    goto :goto_0
.end method

.method public slice()Ljava/nio/FloatBuffer;
    .locals 4

    #@0
    .prologue
    .line 169
    iget-object v2, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@2
    iget v3, p0, Ljava/nio/ByteBufferAsFloatBuffer;->limit:I

    #@4
    mul-int/lit8 v3, v3, 0x4

    #@6
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    #@9
    .line 170
    iget-object v2, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@b
    iget v3, p0, Ljava/nio/ByteBufferAsFloatBuffer;->position:I

    #@d
    mul-int/lit8 v3, v3, 0x4

    #@f
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@12
    .line 171
    iget-object v2, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@14
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    #@17
    move-result-object v2

    #@18
    iget-object v3, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@1a
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@21
    move-result-object v0

    #@22
    .line 172
    .local v0, "bb":Ljava/nio/ByteBuffer;
    new-instance v1, Ljava/nio/ByteBufferAsFloatBuffer;

    #@24
    invoke-direct {v1, v0}, Ljava/nio/ByteBufferAsFloatBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    #@27
    .line 173
    .local v1, "result":Ljava/nio/FloatBuffer;
    iget-object v2, p0, Ljava/nio/ByteBufferAsFloatBuffer;->byteBuffer:Ljava/nio/ByteBuffer;

    #@29
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    #@2c
    .line 174
    return-object v1
.end method
