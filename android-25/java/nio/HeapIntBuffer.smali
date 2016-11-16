.class Ljava/nio/HeapIntBuffer;
.super Ljava/nio/IntBuffer;
.source "HeapIntBuffer.java"


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
    invoke-direct {p0, p1, p2, v0}, Ljava/nio/HeapIntBuffer;-><init>(IIZ)V

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
    new-array v5, p1, [I

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
    invoke-direct/range {v0 .. v6}, Ljava/nio/IntBuffer;-><init>(IIII[II)V

    #@b
    .line 50
    iput-boolean p3, p0, Ljava/nio/HeapIntBuffer;->isReadOnly:Z

    #@d
    .line 48
    return-void
.end method

.method constructor <init>([III)V
    .locals 1
    .param p1, "buf"    # [I
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 54
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/HeapIntBuffer;-><init>([IIIZ)V

    #@4
    .line 53
    return-void
.end method

.method protected constructor <init>([IIIIII)V
    .locals 8
    .param p1, "buf"    # [I
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
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapIntBuffer;-><init>([IIIIIIZ)V

    #@b
    .line 64
    return-void
.end method

.method protected constructor <init>([IIIIIIZ)V
    .locals 7
    .param p1, "buf"    # [I
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
    invoke-direct/range {v0 .. v6}, Ljava/nio/IntBuffer;-><init>(IIII[II)V

    #@a
    .line 72
    iput-boolean p7, p0, Ljava/nio/HeapIntBuffer;->isReadOnly:Z

    #@c
    .line 70
    return-void
.end method

.method constructor <init>([IIIZ)V
    .locals 7
    .param p1, "buf"    # [I
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
    invoke-direct/range {v0 .. v6}, Ljava/nio/IntBuffer;-><init>(IIII[II)V

    #@b
    .line 59
    iput-boolean p4, p0, Ljava/nio/HeapIntBuffer;->isReadOnly:Z

    #@d
    .line 57
    return-void
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/IntBuffer;
    .locals 8

    #@0
    .prologue
    .line 97
    new-instance v0, Ljava/nio/HeapIntBuffer;

    #@2
    iget-object v1, p0, Ljava/nio/HeapIntBuffer;->hb:[I

    #@4
    .line 98
    invoke-virtual {p0}, Ljava/nio/HeapIntBuffer;->markValue()I

    #@7
    move-result v2

    #@8
    .line 99
    invoke-virtual {p0}, Ljava/nio/HeapIntBuffer;->position()I

    #@b
    move-result v3

    #@c
    .line 100
    invoke-virtual {p0}, Ljava/nio/HeapIntBuffer;->limit()I

    #@f
    move-result v4

    #@10
    .line 101
    invoke-virtual {p0}, Ljava/nio/HeapIntBuffer;->capacity()I

    #@13
    move-result v5

    #@14
    .line 102
    iget v6, p0, Ljava/nio/HeapIntBuffer;->offset:I

    #@16
    const/4 v7, 0x1

    #@17
    .line 97
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapIntBuffer;-><init>([IIIIIIZ)V

    #@1a
    return-object v0
.end method

.method public compact()Ljava/nio/IntBuffer;
    .locals 5

    #@0
    .prologue
    .line 190
    iget-boolean v0, p0, Ljava/nio/HeapIntBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 191
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 193
    :cond_0
    iget-object v0, p0, Ljava/nio/HeapIntBuffer;->hb:[I

    #@c
    invoke-virtual {p0}, Ljava/nio/HeapIntBuffer;->position()I

    #@f
    move-result v1

    #@10
    invoke-virtual {p0, v1}, Ljava/nio/HeapIntBuffer;->ix(I)I

    #@13
    move-result v1

    #@14
    iget-object v2, p0, Ljava/nio/HeapIntBuffer;->hb:[I

    #@16
    const/4 v3, 0x0

    #@17
    invoke-virtual {p0, v3}, Ljava/nio/HeapIntBuffer;->ix(I)I

    #@1a
    move-result v3

    #@1b
    invoke-virtual {p0}, Ljava/nio/HeapIntBuffer;->remaining()I

    #@1e
    move-result v4

    #@1f
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    #@22
    .line 194
    invoke-virtual {p0}, Ljava/nio/HeapIntBuffer;->remaining()I

    #@25
    move-result v0

    #@26
    invoke-virtual {p0, v0}, Ljava/nio/HeapIntBuffer;->position(I)Ljava/nio/Buffer;

    #@29
    .line 195
    invoke-virtual {p0}, Ljava/nio/HeapIntBuffer;->capacity()I

    #@2c
    move-result v0

    #@2d
    invoke-virtual {p0, v0}, Ljava/nio/HeapIntBuffer;->limit(I)Ljava/nio/Buffer;

    #@30
    .line 196
    invoke-virtual {p0}, Ljava/nio/HeapIntBuffer;->discardMark()V

    #@33
    .line 197
    return-object p0
.end method

.method public duplicate()Ljava/nio/IntBuffer;
    .locals 8

    #@0
    .prologue
    .line 86
    new-instance v0, Ljava/nio/HeapIntBuffer;

    #@2
    iget-object v1, p0, Ljava/nio/HeapIntBuffer;->hb:[I

    #@4
    .line 87
    invoke-virtual {p0}, Ljava/nio/HeapIntBuffer;->markValue()I

    #@7
    move-result v2

    #@8
    .line 88
    invoke-virtual {p0}, Ljava/nio/HeapIntBuffer;->position()I

    #@b
    move-result v3

    #@c
    .line 89
    invoke-virtual {p0}, Ljava/nio/HeapIntBuffer;->limit()I

    #@f
    move-result v4

    #@10
    .line 90
    invoke-virtual {p0}, Ljava/nio/HeapIntBuffer;->capacity()I

    #@13
    move-result v5

    #@14
    .line 91
    iget v6, p0, Ljava/nio/HeapIntBuffer;->offset:I

    #@16
    .line 92
    iget-boolean v7, p0, Ljava/nio/HeapIntBuffer;->isReadOnly:Z

    #@18
    .line 86
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapIntBuffer;-><init>([IIIIIIZ)V

    #@1b
    return-object v0
.end method

.method public get()I
    .locals 2

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Ljava/nio/HeapIntBuffer;->hb:[I

    #@2
    invoke-virtual {p0}, Ljava/nio/HeapIntBuffer;->nextGetIndex()I

    #@5
    move-result v1

    #@6
    invoke-virtual {p0, v1}, Ljava/nio/HeapIntBuffer;->ix(I)I

    #@9
    move-result v1

    #@a
    aget v0, v0, v1

    #@c
    return v0
.end method

.method public get(I)I
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Ljava/nio/HeapIntBuffer;->hb:[I

    #@2
    invoke-virtual {p0, p1}, Ljava/nio/HeapIntBuffer;->checkIndex(I)I

    #@5
    move-result v1

    #@6
    invoke-virtual {p0, v1}, Ljava/nio/HeapIntBuffer;->ix(I)I

    #@9
    move-result v1

    #@a
    aget v0, v0, v1

    #@c
    return v0
.end method

.method public get([III)Ljava/nio/IntBuffer;
    .locals 2
    .param p1, "dst"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 118
    array-length v0, p1

    #@1
    invoke-static {p2, p3, v0}, Ljava/nio/HeapIntBuffer;->checkBounds(III)V

    #@4
    .line 119
    invoke-virtual {p0}, Ljava/nio/HeapIntBuffer;->remaining()I

    #@7
    move-result v0

    #@8
    if-le p3, v0, :cond_0

    #@a
    .line 120
    new-instance v0, Ljava/nio/BufferUnderflowException;

    #@c
    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@f
    throw v0

    #@10
    .line 121
    :cond_0
    iget-object v0, p0, Ljava/nio/HeapIntBuffer;->hb:[I

    #@12
    invoke-virtual {p0}, Ljava/nio/HeapIntBuffer;->position()I

    #@15
    move-result v1

    #@16
    invoke-virtual {p0, v1}, Ljava/nio/HeapIntBuffer;->ix(I)I

    #@19
    move-result v1

    #@1a
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([II[III)V

    #@1d
    .line 122
    invoke-virtual {p0}, Ljava/nio/HeapIntBuffer;->position()I

    #@20
    move-result v0

    #@21
    add-int/2addr v0, p3

    #@22
    invoke-virtual {p0, v0}, Ljava/nio/HeapIntBuffer;->position(I)Ljava/nio/Buffer;

    #@25
    .line 123
    return-object p0
.end method

.method public isDirect()Z
    .locals 1

    #@0
    .prologue
    .line 127
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    #@0
    .prologue
    .line 131
    iget-boolean v0, p0, Ljava/nio/HeapIntBuffer;->isReadOnly:Z

    #@2
    return v0
.end method

.method protected ix(I)I
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 106
    iget v0, p0, Ljava/nio/HeapIntBuffer;->offset:I

    #@2
    add-int/2addr v0, p1

    #@3
    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    #@0
    .prologue
    .line 201
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public put(I)Ljava/nio/IntBuffer;
    .locals 2
    .param p1, "x"    # I

    #@0
    .prologue
    .line 135
    iget-boolean v0, p0, Ljava/nio/HeapIntBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 136
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 138
    :cond_0
    iget-object v0, p0, Ljava/nio/HeapIntBuffer;->hb:[I

    #@c
    invoke-virtual {p0}, Ljava/nio/HeapIntBuffer;->nextPutIndex()I

    #@f
    move-result v1

    #@10
    invoke-virtual {p0, v1}, Ljava/nio/HeapIntBuffer;->ix(I)I

    #@13
    move-result v1

    #@14
    aput p1, v0, v1

    #@16
    .line 139
    return-object p0
.end method

.method public put(II)Ljava/nio/IntBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # I

    #@0
    .prologue
    .line 143
    iget-boolean v0, p0, Ljava/nio/HeapIntBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 144
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 146
    :cond_0
    iget-object v0, p0, Ljava/nio/HeapIntBuffer;->hb:[I

    #@c
    invoke-virtual {p0, p1}, Ljava/nio/HeapIntBuffer;->checkIndex(I)I

    #@f
    move-result v1

    #@10
    invoke-virtual {p0, v1}, Ljava/nio/HeapIntBuffer;->ix(I)I

    #@13
    move-result v1

    #@14
    aput p2, v0, v1

    #@16
    .line 147
    return-object p0
.end method

.method public put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;
    .locals 6
    .param p1, "src"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 163
    iget-boolean v2, p0, Ljava/nio/HeapIntBuffer;->isReadOnly:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 164
    new-instance v2, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v2}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v2

    #@a
    .line 166
    :cond_0
    instance-of v2, p1, Ljava/nio/HeapIntBuffer;

    #@c
    if-eqz v2, :cond_3

    #@e
    .line 167
    if-ne p1, p0, :cond_1

    #@10
    .line 168
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@12
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@15
    throw v2

    #@16
    :cond_1
    move-object v1, p1

    #@17
    .line 169
    check-cast v1, Ljava/nio/HeapIntBuffer;

    #@19
    .line 170
    .local v1, "sb":Ljava/nio/HeapIntBuffer;
    invoke-virtual {v1}, Ljava/nio/HeapIntBuffer;->remaining()I

    #@1c
    move-result v0

    #@1d
    .line 171
    .local v0, "n":I
    invoke-virtual {p0}, Ljava/nio/HeapIntBuffer;->remaining()I

    #@20
    move-result v2

    #@21
    if-le v0, v2, :cond_2

    #@23
    .line 172
    new-instance v2, Ljava/nio/BufferOverflowException;

    #@25
    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    #@28
    throw v2

    #@29
    .line 173
    :cond_2
    iget-object v2, v1, Ljava/nio/HeapIntBuffer;->hb:[I

    #@2b
    invoke-virtual {v1}, Ljava/nio/HeapIntBuffer;->position()I

    #@2e
    move-result v3

    #@2f
    invoke-virtual {v1, v3}, Ljava/nio/HeapIntBuffer;->ix(I)I

    #@32
    move-result v3

    #@33
    .line 174
    iget-object v4, p0, Ljava/nio/HeapIntBuffer;->hb:[I

    #@35
    invoke-virtual {p0}, Ljava/nio/HeapIntBuffer;->position()I

    #@38
    move-result v5

    #@39
    invoke-virtual {p0, v5}, Ljava/nio/HeapIntBuffer;->ix(I)I

    #@3c
    move-result v5

    #@3d
    .line 173
    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy([II[III)V

    #@40
    .line 175
    invoke-virtual {v1}, Ljava/nio/HeapIntBuffer;->position()I

    #@43
    move-result v2

    #@44
    add-int/2addr v2, v0

    #@45
    invoke-virtual {v1, v2}, Ljava/nio/HeapIntBuffer;->position(I)Ljava/nio/Buffer;

    #@48
    .line 176
    invoke-virtual {p0}, Ljava/nio/HeapIntBuffer;->position()I

    #@4b
    move-result v2

    #@4c
    add-int/2addr v2, v0

    #@4d
    invoke-virtual {p0, v2}, Ljava/nio/HeapIntBuffer;->position(I)Ljava/nio/Buffer;

    #@50
    .line 186
    .end local v0    # "n":I
    .end local v1    # "sb":Ljava/nio/HeapIntBuffer;
    :goto_0
    return-object p0

    #@51
    .line 177
    :cond_3
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->isDirect()Z

    #@54
    move-result v2

    #@55
    if-eqz v2, :cond_5

    #@57
    .line 178
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    #@5a
    move-result v0

    #@5b
    .line 179
    .restart local v0    # "n":I
    invoke-virtual {p0}, Ljava/nio/HeapIntBuffer;->remaining()I

    #@5e
    move-result v2

    #@5f
    if-le v0, v2, :cond_4

    #@61
    .line 180
    new-instance v2, Ljava/nio/BufferOverflowException;

    #@63
    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    #@66
    throw v2

    #@67
    .line 181
    :cond_4
    iget-object v2, p0, Ljava/nio/HeapIntBuffer;->hb:[I

    #@69
    invoke-virtual {p0}, Ljava/nio/HeapIntBuffer;->position()I

    #@6c
    move-result v3

    #@6d
    invoke-virtual {p0, v3}, Ljava/nio/HeapIntBuffer;->ix(I)I

    #@70
    move-result v3

    #@71
    invoke-virtual {p1, v2, v3, v0}, Ljava/nio/IntBuffer;->get([III)Ljava/nio/IntBuffer;

    #@74
    .line 182
    invoke-virtual {p0}, Ljava/nio/HeapIntBuffer;->position()I

    #@77
    move-result v2

    #@78
    add-int/2addr v2, v0

    #@79
    invoke-virtual {p0, v2}, Ljava/nio/HeapIntBuffer;->position(I)Ljava/nio/Buffer;

    #@7c
    goto :goto_0

    #@7d
    .line 184
    .end local v0    # "n":I
    :cond_5
    invoke-super {p0, p1}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    #@80
    goto :goto_0
.end method

.method public put([III)Ljava/nio/IntBuffer;
    .locals 2
    .param p1, "src"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 151
    iget-boolean v0, p0, Ljava/nio/HeapIntBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 152
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 154
    :cond_0
    array-length v0, p1

    #@b
    invoke-static {p2, p3, v0}, Ljava/nio/HeapIntBuffer;->checkBounds(III)V

    #@e
    .line 155
    invoke-virtual {p0}, Ljava/nio/HeapIntBuffer;->remaining()I

    #@11
    move-result v0

    #@12
    if-le p3, v0, :cond_1

    #@14
    .line 156
    new-instance v0, Ljava/nio/BufferOverflowException;

    #@16
    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    #@19
    throw v0

    #@1a
    .line 157
    :cond_1
    iget-object v0, p0, Ljava/nio/HeapIntBuffer;->hb:[I

    #@1c
    invoke-virtual {p0}, Ljava/nio/HeapIntBuffer;->position()I

    #@1f
    move-result v1

    #@20
    invoke-virtual {p0, v1}, Ljava/nio/HeapIntBuffer;->ix(I)I

    #@23
    move-result v1

    #@24
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([II[III)V

    #@27
    .line 158
    invoke-virtual {p0}, Ljava/nio/HeapIntBuffer;->position()I

    #@2a
    move-result v0

    #@2b
    add-int/2addr v0, p3

    #@2c
    invoke-virtual {p0, v0}, Ljava/nio/HeapIntBuffer;->position(I)Ljava/nio/Buffer;

    #@2f
    .line 159
    return-object p0
.end method

.method public slice()Ljava/nio/IntBuffer;
    .locals 8

    #@0
    .prologue
    .line 76
    new-instance v0, Ljava/nio/HeapIntBuffer;

    #@2
    iget-object v1, p0, Ljava/nio/HeapIntBuffer;->hb:[I

    #@4
    .line 79
    invoke-virtual {p0}, Ljava/nio/HeapIntBuffer;->remaining()I

    #@7
    move-result v4

    #@8
    .line 80
    invoke-virtual {p0}, Ljava/nio/HeapIntBuffer;->remaining()I

    #@b
    move-result v5

    #@c
    .line 81
    invoke-virtual {p0}, Ljava/nio/HeapIntBuffer;->position()I

    #@f
    move-result v2

    #@10
    iget v3, p0, Ljava/nio/HeapIntBuffer;->offset:I

    #@12
    add-int v6, v2, v3

    #@14
    .line 82
    iget-boolean v7, p0, Ljava/nio/HeapIntBuffer;->isReadOnly:Z

    #@16
    .line 77
    const/4 v2, -0x1

    #@17
    .line 78
    const/4 v3, 0x0

    #@18
    .line 76
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapIntBuffer;-><init>([IIIIIIZ)V

    #@1b
    return-object v0
.end method
