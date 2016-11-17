.class Ljava/nio/HeapDoubleBuffer;
.super Ljava/nio/DoubleBuffer;
.source "HeapDoubleBuffer.java"


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
    invoke-direct {p0, p1, p2, v0}, Ljava/nio/HeapDoubleBuffer;-><init>(IIZ)V

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
    .line 59
    new-array v5, p1, [D

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
    invoke-direct/range {v0 .. v6}, Ljava/nio/DoubleBuffer;-><init>(IIII[DI)V

    #@b
    .line 60
    iput-boolean p3, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

    #@d
    .line 58
    return-void
.end method

.method constructor <init>([DII)V
    .locals 1
    .param p1, "buf"    # [D
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 49
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/HeapDoubleBuffer;-><init>([DIIZ)V

    #@4
    .line 48
    return-void
.end method

.method protected constructor <init>([DIIIII)V
    .locals 8
    .param p1, "buf"    # [D
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I

    #@0
    .prologue
    .line 55
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
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapDoubleBuffer;-><init>([DIIIIIZ)V

    #@b
    .line 54
    return-void
.end method

.method protected constructor <init>([DIIIIIZ)V
    .locals 7
    .param p1, "buf"    # [D
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
    invoke-direct/range {v0 .. v6}, Ljava/nio/DoubleBuffer;-><init>(IIII[DI)V

    #@a
    .line 72
    iput-boolean p7, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

    #@c
    .line 70
    return-void
.end method

.method constructor <init>([DIIZ)V
    .locals 7
    .param p1, "buf"    # [D
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "isReadOnly"    # Z

    #@0
    .prologue
    .line 64
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
    invoke-direct/range {v0 .. v6}, Ljava/nio/DoubleBuffer;-><init>(IIII[DI)V

    #@b
    .line 65
    iput-boolean p4, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

    #@d
    .line 63
    return-void
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/DoubleBuffer;
    .locals 8

    #@0
    .prologue
    .line 97
    new-instance v0, Ljava/nio/HeapDoubleBuffer;

    #@2
    iget-object v1, p0, Ljava/nio/DoubleBuffer;->hb:[D

    #@4
    .line 98
    invoke-virtual {p0}, Ljava/nio/Buffer;->markValue()I

    #@7
    move-result v2

    #@8
    .line 99
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@b
    move-result v3

    #@c
    .line 100
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    #@f
    move-result v4

    #@10
    .line 101
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    #@13
    move-result v5

    #@14
    .line 102
    iget v6, p0, Ljava/nio/DoubleBuffer;->offset:I

    #@16
    const/4 v7, 0x1

    #@17
    .line 97
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapDoubleBuffer;-><init>([DIIIIIZ)V

    #@1a
    return-object v0
.end method

.method public compact()Ljava/nio/DoubleBuffer;
    .locals 5

    #@0
    .prologue
    .line 190
    iget-boolean v0, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

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
    iget-object v0, p0, Ljava/nio/DoubleBuffer;->hb:[D

    #@c
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@f
    move-result v1

    #@10
    invoke-virtual {p0, v1}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    #@13
    move-result v1

    #@14
    iget-object v2, p0, Ljava/nio/DoubleBuffer;->hb:[D

    #@16
    const/4 v3, 0x0

    #@17
    invoke-virtual {p0, v3}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    #@1a
    move-result v3

    #@1b
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    #@1e
    move-result v4

    #@1f
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([DI[DII)V

    #@22
    .line 194
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    #@25
    move-result v0

    #@26
    invoke-virtual {p0, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@29
    .line 195
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    #@2c
    move-result v0

    #@2d
    invoke-virtual {p0, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@30
    .line 196
    invoke-virtual {p0}, Ljava/nio/Buffer;->discardMark()V

    #@33
    .line 197
    return-object p0
.end method

.method public duplicate()Ljava/nio/DoubleBuffer;
    .locals 8

    #@0
    .prologue
    .line 87
    new-instance v0, Ljava/nio/HeapDoubleBuffer;

    #@2
    iget-object v1, p0, Ljava/nio/DoubleBuffer;->hb:[D

    #@4
    .line 88
    invoke-virtual {p0}, Ljava/nio/Buffer;->markValue()I

    #@7
    move-result v2

    #@8
    .line 89
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@b
    move-result v3

    #@c
    .line 90
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    #@f
    move-result v4

    #@10
    .line 91
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    #@13
    move-result v5

    #@14
    .line 92
    iget v6, p0, Ljava/nio/DoubleBuffer;->offset:I

    #@16
    .line 93
    iget-boolean v7, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

    #@18
    .line 87
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapDoubleBuffer;-><init>([DIIIIIZ)V

    #@1b
    return-object v0
.end method

.method public get()D
    .locals 2

    #@0
    .prologue
    .line 110
    iget-object v0, p0, Ljava/nio/DoubleBuffer;->hb:[D

    #@2
    invoke-virtual {p0}, Ljava/nio/Buffer;->nextGetIndex()I

    #@5
    move-result v1

    #@6
    invoke-virtual {p0, v1}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    #@9
    move-result v1

    #@a
    aget-wide v0, v0, v1

    #@c
    return-wide v0
.end method

.method public get(I)D
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Ljava/nio/DoubleBuffer;->hb:[D

    #@2
    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->checkIndex(I)I

    #@5
    move-result v1

    #@6
    invoke-virtual {p0, v1}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    #@9
    move-result v1

    #@a
    aget-wide v0, v0, v1

    #@c
    return-wide v0
.end method

.method public get([DII)Ljava/nio/DoubleBuffer;
    .locals 2
    .param p1, "dst"    # [D
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 118
    array-length v0, p1

    #@1
    invoke-static {p2, p3, v0}, Ljava/nio/HeapDoubleBuffer;->checkBounds(III)V

    #@4
    .line 119
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

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
    iget-object v0, p0, Ljava/nio/DoubleBuffer;->hb:[D

    #@12
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@15
    move-result v1

    #@16
    invoke-virtual {p0, v1}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    #@19
    move-result v1

    #@1a
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([DI[DII)V

    #@1d
    .line 122
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@20
    move-result v0

    #@21
    add-int/2addr v0, p3

    #@22
    invoke-virtual {p0, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

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
    iget-boolean v0, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

    #@2
    return v0
.end method

.method protected ix(I)I
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 106
    iget v0, p0, Ljava/nio/DoubleBuffer;->offset:I

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

.method public put(D)Ljava/nio/DoubleBuffer;
    .locals 3
    .param p1, "x"    # D

    #@0
    .prologue
    .line 135
    iget-boolean v0, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

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
    iget-object v0, p0, Ljava/nio/DoubleBuffer;->hb:[D

    #@c
    invoke-virtual {p0}, Ljava/nio/Buffer;->nextPutIndex()I

    #@f
    move-result v1

    #@10
    invoke-virtual {p0, v1}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    #@13
    move-result v1

    #@14
    aput-wide p1, v0, v1

    #@16
    .line 139
    return-object p0
.end method

.method public put(ID)Ljava/nio/DoubleBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # D

    #@0
    .prologue
    .line 143
    iget-boolean v0, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

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
    iget-object v0, p0, Ljava/nio/DoubleBuffer;->hb:[D

    #@c
    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->checkIndex(I)I

    #@f
    move-result v1

    #@10
    invoke-virtual {p0, v1}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    #@13
    move-result v1

    #@14
    aput-wide p2, v0, v1

    #@16
    .line 147
    return-object p0
.end method

.method public put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;
    .locals 6
    .param p1, "src"    # Ljava/nio/DoubleBuffer;

    #@0
    .prologue
    .line 163
    iget-boolean v2, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

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
    instance-of v2, p1, Ljava/nio/HeapDoubleBuffer;

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
    nop

    #@18
    nop

    #@19
    .line 170
    .local v1, "sb":Ljava/nio/HeapDoubleBuffer;
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    #@1c
    move-result v0

    #@1d
    .line 171
    .local v0, "n":I
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

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
    iget-object v2, v1, Ljava/nio/DoubleBuffer;->hb:[D

    #@2b
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    #@2e
    move-result v3

    #@2f
    invoke-virtual {v1, v3}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    #@32
    move-result v3

    #@33
    .line 174
    iget-object v4, p0, Ljava/nio/DoubleBuffer;->hb:[D

    #@35
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@38
    move-result v5

    #@39
    invoke-virtual {p0, v5}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    #@3c
    move-result v5

    #@3d
    .line 173
    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy([DI[DII)V

    #@40
    .line 175
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    #@43
    move-result v2

    #@44
    add-int/2addr v2, v0

    #@45
    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@48
    .line 176
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@4b
    move-result v2

    #@4c
    add-int/2addr v2, v0

    #@4d
    invoke-virtual {p0, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@50
    .line 186
    .end local v0    # "n":I
    .end local v1    # "sb":Ljava/nio/HeapDoubleBuffer;
    :goto_0
    return-object p0

    #@51
    .line 177
    :cond_3
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->isDirect()Z

    #@54
    move-result v2

    #@55
    if-eqz v2, :cond_5

    #@57
    .line 178
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    #@5a
    move-result v0

    #@5b
    .line 179
    .restart local v0    # "n":I
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

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
    iget-object v2, p0, Ljava/nio/DoubleBuffer;->hb:[D

    #@69
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@6c
    move-result v3

    #@6d
    invoke-virtual {p0, v3}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    #@70
    move-result v3

    #@71
    invoke-virtual {p1, v2, v3, v0}, Ljava/nio/DoubleBuffer;->get([DII)Ljava/nio/DoubleBuffer;

    #@74
    .line 182
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
    .line 184
    .end local v0    # "n":I
    :cond_5
    invoke-super {p0, p1}, Ljava/nio/DoubleBuffer;->put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;

    #@80
    goto :goto_0
.end method

.method public put([DII)Ljava/nio/DoubleBuffer;
    .locals 2
    .param p1, "src"    # [D
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 151
    iget-boolean v0, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

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
    invoke-static {p2, p3, v0}, Ljava/nio/HeapDoubleBuffer;->checkBounds(III)V

    #@e
    .line 155
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

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
    iget-object v0, p0, Ljava/nio/DoubleBuffer;->hb:[D

    #@1c
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@1f
    move-result v1

    #@20
    invoke-virtual {p0, v1}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    #@23
    move-result v1

    #@24
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([DI[DII)V

    #@27
    .line 158
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@2a
    move-result v0

    #@2b
    add-int/2addr v0, p3

    #@2c
    invoke-virtual {p0, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@2f
    .line 159
    return-object p0
.end method

.method public slice()Ljava/nio/DoubleBuffer;
    .locals 8

    #@0
    .prologue
    .line 77
    new-instance v0, Ljava/nio/HeapDoubleBuffer;

    #@2
    iget-object v1, p0, Ljava/nio/DoubleBuffer;->hb:[D

    #@4
    .line 80
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    #@7
    move-result v4

    #@8
    .line 81
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    #@b
    move-result v5

    #@c
    .line 82
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@f
    move-result v2

    #@10
    iget v3, p0, Ljava/nio/DoubleBuffer;->offset:I

    #@12
    add-int v6, v2, v3

    #@14
    .line 83
    iget-boolean v7, p0, Ljava/nio/DoubleBuffer;->isReadOnly:Z

    #@16
    .line 78
    const/4 v2, -0x1

    #@17
    .line 79
    const/4 v3, 0x0

    #@18
    .line 77
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapDoubleBuffer;-><init>([DIIIIIZ)V

    #@1b
    return-object v0
.end method
