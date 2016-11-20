.class Ljava/nio/HeapFloatBuffer;
.super Ljava/nio/FloatBuffer;
.source "HeapFloatBuffer.java"


# direct methods
.method constructor <init>(II)V
    .locals 1
    .param p1, "cap"    # I
    .param p2, "lim"    # I

    #@0
    .prologue
    .line 45
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/nio/HeapFloatBuffer;-><init>(IIZ)V

    #@4
    .line 44
    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 7
    .param p1, "cap"    # I
    .param p2, "lim"    # I
    .param p3, "isReadOnly"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 49
    new-array v5, p1, [F

    #@3
    const/4 v1, -0x1

    #@4
    move-object v0, p0

    #@5
    move v3, p2

    #@6
    move v4, p1

    #@7
    move v6, v2

    #@8
    invoke-direct/range {v0 .. v6}, Ljava/nio/FloatBuffer;-><init>(IIII[FI)V

    #@b
    .line 50
    iput-boolean p3, p0, Ljava/nio/FloatBuffer;->isReadOnly:Z

    #@d
    .line 48
    return-void
.end method

.method constructor <init>([FII)V
    .locals 1
    .param p1, "buf"    # [F
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 54
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/HeapFloatBuffer;-><init>([FIIZ)V

    #@4
    .line 53
    return-void
.end method

.method protected constructor <init>([FIIIII)V
    .locals 8
    .param p1, "buf"    # [F
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I

    #@0
    .prologue
    .line 65
    const/4 v7, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    move v6, p6

    #@8
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapFloatBuffer;-><init>([FIIIIIZ)V

    #@b
    .line 64
    return-void
.end method

.method protected constructor <init>([FIIIIIZ)V
    .locals 7
    .param p1, "buf"    # [F
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I
    .param p7, "isReadOnly"    # Z

    #@0
    .prologue
    move-object v0, p0

    #@1
    move v1, p2

    #@2
    move v2, p3

    #@3
    move v3, p4

    #@4
    move v4, p5

    #@5
    move-object v5, p1

    #@6
    move v6, p6

    #@7
    .line 71
    invoke-direct/range {v0 .. v6}, Ljava/nio/FloatBuffer;-><init>(IIII[FI)V

    #@a
    .line 72
    iput-boolean p7, p0, Ljava/nio/FloatBuffer;->isReadOnly:Z

    #@c
    .line 70
    return-void
.end method

.method constructor <init>([FIIZ)V
    .locals 7
    .param p1, "buf"    # [F
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "isReadOnly"    # Z

    #@0
    .prologue
    .line 58
    add-int v3, p2, p3

    #@2
    array-length v4, p1

    #@3
    const/4 v1, -0x1

    #@4
    const/4 v6, 0x0

    #@5
    move-object v0, p0

    #@6
    move v2, p2

    #@7
    move-object v5, p1

    #@8
    invoke-direct/range {v0 .. v6}, Ljava/nio/FloatBuffer;-><init>(IIII[FI)V

    #@b
    .line 59
    iput-boolean p4, p0, Ljava/nio/FloatBuffer;->isReadOnly:Z

    #@d
    .line 57
    return-void
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/FloatBuffer;
    .locals 8

    #@0
    .prologue
    .line 96
    new-instance v0, Ljava/nio/HeapFloatBuffer;

    #@2
    iget-object v1, p0, Ljava/nio/FloatBuffer;->hb:[F

    #@4
    .line 97
    invoke-virtual {p0}, Ljava/nio/Buffer;->markValue()I

    #@7
    move-result v2

    #@8
    .line 98
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@b
    move-result v3

    #@c
    .line 99
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    #@f
    move-result v4

    #@10
    .line 100
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    #@13
    move-result v5

    #@14
    .line 101
    iget v6, p0, Ljava/nio/FloatBuffer;->offset:I

    #@16
    const/4 v7, 0x1

    #@17
    .line 96
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapFloatBuffer;-><init>([FIIIIIZ)V

    #@1a
    return-object v0
.end method

.method public compact()Ljava/nio/FloatBuffer;
    .locals 5

    #@0
    .prologue
    .line 189
    iget-boolean v0, p0, Ljava/nio/FloatBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 190
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 192
    :cond_0
    iget-object v0, p0, Ljava/nio/FloatBuffer;->hb:[F

    #@c
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@f
    move-result v1

    #@10
    invoke-virtual {p0, v1}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    #@13
    move-result v1

    #@14
    iget-object v2, p0, Ljava/nio/FloatBuffer;->hb:[F

    #@16
    const/4 v3, 0x0

    #@17
    invoke-virtual {p0, v3}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    #@1a
    move-result v3

    #@1b
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    #@1e
    move-result v4

    #@1f
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@22
    .line 193
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    #@25
    move-result v0

    #@26
    invoke-virtual {p0, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@29
    .line 194
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    #@2c
    move-result v0

    #@2d
    invoke-virtual {p0, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@30
    .line 195
    invoke-virtual {p0}, Ljava/nio/Buffer;->discardMark()V

    #@33
    .line 196
    return-object p0
.end method

.method public duplicate()Ljava/nio/FloatBuffer;
    .locals 8

    #@0
    .prologue
    .line 86
    new-instance v0, Ljava/nio/HeapFloatBuffer;

    #@2
    iget-object v1, p0, Ljava/nio/FloatBuffer;->hb:[F

    #@4
    .line 87
    invoke-virtual {p0}, Ljava/nio/Buffer;->markValue()I

    #@7
    move-result v2

    #@8
    .line 88
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@b
    move-result v3

    #@c
    .line 89
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    #@f
    move-result v4

    #@10
    .line 90
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    #@13
    move-result v5

    #@14
    .line 91
    iget v6, p0, Ljava/nio/FloatBuffer;->offset:I

    #@16
    .line 92
    iget-boolean v7, p0, Ljava/nio/FloatBuffer;->isReadOnly:Z

    #@18
    .line 86
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapFloatBuffer;-><init>([FIIIIIZ)V

    #@1b
    return-object v0
.end method

.method public get()F
    .locals 2

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Ljava/nio/FloatBuffer;->hb:[F

    #@2
    invoke-virtual {p0}, Ljava/nio/Buffer;->nextGetIndex()I

    #@5
    move-result v1

    #@6
    invoke-virtual {p0, v1}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    #@9
    move-result v1

    #@a
    aget v0, v0, v1

    #@c
    return v0
.end method

.method public get(I)F
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 113
    iget-object v0, p0, Ljava/nio/FloatBuffer;->hb:[F

    #@2
    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->checkIndex(I)I

    #@5
    move-result v1

    #@6
    invoke-virtual {p0, v1}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    #@9
    move-result v1

    #@a
    aget v0, v0, v1

    #@c
    return v0
.end method

.method public get([FII)Ljava/nio/FloatBuffer;
    .locals 2
    .param p1, "dst"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 117
    array-length v0, p1

    #@1
    invoke-static {p2, p3, v0}, Ljava/nio/HeapFloatBuffer;->checkBounds(III)V

    #@4
    .line 118
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    #@7
    move-result v0

    #@8
    if-le p3, v0, :cond_0

    #@a
    .line 119
    new-instance v0, Ljava/nio/BufferUnderflowException;

    #@c
    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@f
    throw v0

    #@10
    .line 120
    :cond_0
    iget-object v0, p0, Ljava/nio/FloatBuffer;->hb:[F

    #@12
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@15
    move-result v1

    #@16
    invoke-virtual {p0, v1}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    #@19
    move-result v1

    #@1a
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@1d
    .line 121
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@20
    move-result v0

    #@21
    add-int/2addr v0, p3

    #@22
    invoke-virtual {p0, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@25
    .line 122
    return-object p0
.end method

.method public isDirect()Z
    .locals 1

    #@0
    .prologue
    .line 126
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    #@0
    .prologue
    .line 130
    iget-boolean v0, p0, Ljava/nio/FloatBuffer;->isReadOnly:Z

    #@2
    return v0
.end method

.method protected ix(I)I
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 105
    iget v0, p0, Ljava/nio/FloatBuffer;->offset:I

    #@2
    add-int/2addr v0, p1

    #@3
    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    #@0
    .prologue
    .line 200
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public put(F)Ljava/nio/FloatBuffer;
    .locals 2
    .param p1, "x"    # F

    #@0
    .prologue
    .line 134
    iget-boolean v0, p0, Ljava/nio/FloatBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 135
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 137
    :cond_0
    iget-object v0, p0, Ljava/nio/FloatBuffer;->hb:[F

    #@c
    invoke-virtual {p0}, Ljava/nio/Buffer;->nextPutIndex()I

    #@f
    move-result v1

    #@10
    invoke-virtual {p0, v1}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    #@13
    move-result v1

    #@14
    aput p1, v0, v1

    #@16
    .line 138
    return-object p0
.end method

.method public put(IF)Ljava/nio/FloatBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # F

    #@0
    .prologue
    .line 142
    iget-boolean v0, p0, Ljava/nio/FloatBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 143
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 145
    :cond_0
    iget-object v0, p0, Ljava/nio/FloatBuffer;->hb:[F

    #@c
    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->checkIndex(I)I

    #@f
    move-result v1

    #@10
    invoke-virtual {p0, v1}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    #@13
    move-result v1

    #@14
    aput p2, v0, v1

    #@16
    .line 146
    return-object p0
.end method

.method public put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 6
    .param p1, "src"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 162
    iget-boolean v2, p0, Ljava/nio/FloatBuffer;->isReadOnly:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 163
    new-instance v2, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v2}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v2

    #@a
    .line 165
    :cond_0
    instance-of v2, p1, Ljava/nio/HeapFloatBuffer;

    #@c
    if-eqz v2, :cond_3

    #@e
    .line 166
    if-ne p1, p0, :cond_1

    #@10
    .line 167
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@12
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@15
    throw v2

    #@16
    :cond_1
    move-object v1, p1

    #@17
    .line 168
    nop

    #@18
    nop

    #@19
    .line 169
    .local v1, "sb":Ljava/nio/HeapFloatBuffer;
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    #@1c
    move-result v0

    #@1d
    .line 170
    .local v0, "n":I
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    #@20
    move-result v2

    #@21
    if-le v0, v2, :cond_2

    #@23
    .line 171
    new-instance v2, Ljava/nio/BufferOverflowException;

    #@25
    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    #@28
    throw v2

    #@29
    .line 172
    :cond_2
    iget-object v2, v1, Ljava/nio/FloatBuffer;->hb:[F

    #@2b
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    #@2e
    move-result v3

    #@2f
    invoke-virtual {v1, v3}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    #@32
    move-result v3

    #@33
    .line 173
    iget-object v4, p0, Ljava/nio/FloatBuffer;->hb:[F

    #@35
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@38
    move-result v5

    #@39
    invoke-virtual {p0, v5}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    #@3c
    move-result v5

    #@3d
    .line 172
    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@40
    .line 174
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    #@43
    move-result v2

    #@44
    add-int/2addr v2, v0

    #@45
    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@48
    .line 175
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@4b
    move-result v2

    #@4c
    add-int/2addr v2, v0

    #@4d
    invoke-virtual {p0, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@50
    .line 185
    .end local v0    # "n":I
    .end local v1    # "sb":Ljava/nio/HeapFloatBuffer;
    :goto_0
    return-object p0

    #@51
    .line 176
    :cond_3
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->isDirect()Z

    #@54
    move-result v2

    #@55
    if-eqz v2, :cond_5

    #@57
    .line 177
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    #@5a
    move-result v0

    #@5b
    .line 178
    .restart local v0    # "n":I
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    #@5e
    move-result v2

    #@5f
    if-le v0, v2, :cond_4

    #@61
    .line 179
    new-instance v2, Ljava/nio/BufferOverflowException;

    #@63
    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    #@66
    throw v2

    #@67
    .line 180
    :cond_4
    iget-object v2, p0, Ljava/nio/FloatBuffer;->hb:[F

    #@69
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@6c
    move-result v3

    #@6d
    invoke-virtual {p0, v3}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    #@70
    move-result v3

    #@71
    invoke-virtual {p1, v2, v3, v0}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    #@74
    .line 181
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@77
    move-result v2

    #@78
    add-int/2addr v2, v0

    #@79
    invoke-virtual {p0, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@7c
    goto :goto_0

    #@7d
    .line 183
    .end local v0    # "n":I
    :cond_5
    invoke-super {p0, p1}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    #@80
    goto :goto_0
.end method

.method public put([FII)Ljava/nio/FloatBuffer;
    .locals 2
    .param p1, "src"    # [F
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 150
    iget-boolean v0, p0, Ljava/nio/FloatBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 151
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 153
    :cond_0
    array-length v0, p1

    #@b
    invoke-static {p2, p3, v0}, Ljava/nio/HeapFloatBuffer;->checkBounds(III)V

    #@e
    .line 154
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    #@11
    move-result v0

    #@12
    if-le p3, v0, :cond_1

    #@14
    .line 155
    new-instance v0, Ljava/nio/BufferOverflowException;

    #@16
    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    #@19
    throw v0

    #@1a
    .line 156
    :cond_1
    iget-object v0, p0, Ljava/nio/FloatBuffer;->hb:[F

    #@1c
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@1f
    move-result v1

    #@20
    invoke-virtual {p0, v1}, Ljava/nio/HeapFloatBuffer;->ix(I)I

    #@23
    move-result v1

    #@24
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@27
    .line 157
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@2a
    move-result v0

    #@2b
    add-int/2addr v0, p3

    #@2c
    invoke-virtual {p0, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@2f
    .line 158
    return-object p0
.end method

.method public slice()Ljava/nio/FloatBuffer;
    .locals 8

    #@0
    .prologue
    .line 76
    new-instance v0, Ljava/nio/HeapFloatBuffer;

    #@2
    iget-object v1, p0, Ljava/nio/FloatBuffer;->hb:[F

    #@4
    .line 79
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    #@7
    move-result v4

    #@8
    .line 80
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    #@b
    move-result v5

    #@c
    .line 81
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@f
    move-result v2

    #@10
    iget v3, p0, Ljava/nio/FloatBuffer;->offset:I

    #@12
    add-int v6, v2, v3

    #@14
    .line 82
    iget-boolean v7, p0, Ljava/nio/FloatBuffer;->isReadOnly:Z

    #@16
    .line 77
    const/4 v2, -0x1

    #@17
    .line 78
    const/4 v3, 0x0

    #@18
    .line 76
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapFloatBuffer;-><init>([FIIIIIZ)V

    #@1b
    return-object v0
.end method
