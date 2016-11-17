.class Ljava/nio/HeapLongBuffer;
.super Ljava/nio/LongBuffer;
.source "HeapLongBuffer.java"


# direct methods
.method constructor <init>(II)V
    .locals 1
    .param p1, "cap"    # I
    .param p2, "lim"    # I

    #@0
    .prologue
    .line 46
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/nio/HeapLongBuffer;-><init>(IIZ)V

    #@4
    .line 45
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
    .line 50
    new-array v5, p1, [J

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
    invoke-direct/range {v0 .. v6}, Ljava/nio/LongBuffer;-><init>(IIII[JI)V

    #@b
    .line 51
    iput-boolean p3, p0, Ljava/nio/LongBuffer;->isReadOnly:Z

    #@d
    .line 49
    return-void
.end method

.method constructor <init>([JII)V
    .locals 1
    .param p1, "buf"    # [J
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 55
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/HeapLongBuffer;-><init>([JIIZ)V

    #@4
    .line 54
    return-void
.end method

.method protected constructor <init>([JIIIII)V
    .locals 8
    .param p1, "buf"    # [J
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I

    #@0
    .prologue
    .line 66
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
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapLongBuffer;-><init>([JIIIIIZ)V

    #@b
    .line 65
    return-void
.end method

.method protected constructor <init>([JIIIIIZ)V
    .locals 7
    .param p1, "buf"    # [J
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
    .line 72
    invoke-direct/range {v0 .. v6}, Ljava/nio/LongBuffer;-><init>(IIII[JI)V

    #@a
    .line 73
    iput-boolean p7, p0, Ljava/nio/LongBuffer;->isReadOnly:Z

    #@c
    .line 71
    return-void
.end method

.method constructor <init>([JIIZ)V
    .locals 7
    .param p1, "buf"    # [J
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "isReadOnly"    # Z

    #@0
    .prologue
    .line 59
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
    invoke-direct/range {v0 .. v6}, Ljava/nio/LongBuffer;-><init>(IIII[JI)V

    #@b
    .line 60
    iput-boolean p4, p0, Ljava/nio/LongBuffer;->isReadOnly:Z

    #@d
    .line 58
    return-void
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/LongBuffer;
    .locals 8

    #@0
    .prologue
    .line 97
    new-instance v0, Ljava/nio/HeapLongBuffer;

    #@2
    iget-object v1, p0, Ljava/nio/LongBuffer;->hb:[J

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
    iget v6, p0, Ljava/nio/LongBuffer;->offset:I

    #@16
    const/4 v7, 0x1

    #@17
    .line 97
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapLongBuffer;-><init>([JIIIIIZ)V

    #@1a
    return-object v0
.end method

.method public compact()Ljava/nio/LongBuffer;
    .locals 5

    #@0
    .prologue
    .line 191
    iget-boolean v0, p0, Ljava/nio/LongBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 192
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 194
    :cond_0
    iget-object v0, p0, Ljava/nio/LongBuffer;->hb:[J

    #@c
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@f
    move-result v1

    #@10
    invoke-virtual {p0, v1}, Ljava/nio/HeapLongBuffer;->ix(I)I

    #@13
    move-result v1

    #@14
    iget-object v2, p0, Ljava/nio/LongBuffer;->hb:[J

    #@16
    const/4 v3, 0x0

    #@17
    invoke-virtual {p0, v3}, Ljava/nio/HeapLongBuffer;->ix(I)I

    #@1a
    move-result v3

    #@1b
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    #@1e
    move-result v4

    #@1f
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@22
    .line 195
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    #@25
    move-result v0

    #@26
    invoke-virtual {p0, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@29
    .line 196
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    #@2c
    move-result v0

    #@2d
    invoke-virtual {p0, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    #@30
    .line 197
    invoke-virtual {p0}, Ljava/nio/Buffer;->discardMark()V

    #@33
    .line 198
    return-object p0
.end method

.method public duplicate()Ljava/nio/LongBuffer;
    .locals 8

    #@0
    .prologue
    .line 87
    new-instance v0, Ljava/nio/HeapLongBuffer;

    #@2
    iget-object v1, p0, Ljava/nio/LongBuffer;->hb:[J

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
    iget v6, p0, Ljava/nio/LongBuffer;->offset:I

    #@16
    .line 93
    iget-boolean v7, p0, Ljava/nio/LongBuffer;->isReadOnly:Z

    #@18
    .line 87
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapLongBuffer;-><init>([JIIIIIZ)V

    #@1b
    return-object v0
.end method

.method public get()J
    .locals 2

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Ljava/nio/LongBuffer;->hb:[J

    #@2
    invoke-virtual {p0}, Ljava/nio/Buffer;->nextGetIndex()I

    #@5
    move-result v1

    #@6
    invoke-virtual {p0, v1}, Ljava/nio/HeapLongBuffer;->ix(I)I

    #@9
    move-result v1

    #@a
    aget-wide v0, v0, v1

    #@c
    return-wide v0
.end method

.method public get(I)J
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Ljava/nio/LongBuffer;->hb:[J

    #@2
    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->checkIndex(I)I

    #@5
    move-result v1

    #@6
    invoke-virtual {p0, v1}, Ljava/nio/HeapLongBuffer;->ix(I)I

    #@9
    move-result v1

    #@a
    aget-wide v0, v0, v1

    #@c
    return-wide v0
.end method

.method public get([JII)Ljava/nio/LongBuffer;
    .locals 2
    .param p1, "dst"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 119
    array-length v0, p1

    #@1
    invoke-static {p2, p3, v0}, Ljava/nio/HeapLongBuffer;->checkBounds(III)V

    #@4
    .line 120
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    #@7
    move-result v0

    #@8
    if-le p3, v0, :cond_0

    #@a
    .line 121
    new-instance v0, Ljava/nio/BufferUnderflowException;

    #@c
    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@f
    throw v0

    #@10
    .line 122
    :cond_0
    iget-object v0, p0, Ljava/nio/LongBuffer;->hb:[J

    #@12
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@15
    move-result v1

    #@16
    invoke-virtual {p0, v1}, Ljava/nio/HeapLongBuffer;->ix(I)I

    #@19
    move-result v1

    #@1a
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@1d
    .line 123
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@20
    move-result v0

    #@21
    add-int/2addr v0, p3

    #@22
    invoke-virtual {p0, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@25
    .line 124
    return-object p0
.end method

.method public isDirect()Z
    .locals 1

    #@0
    .prologue
    .line 128
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    #@0
    .prologue
    .line 132
    iget-boolean v0, p0, Ljava/nio/LongBuffer;->isReadOnly:Z

    #@2
    return v0
.end method

.method protected ix(I)I
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 107
    iget v0, p0, Ljava/nio/LongBuffer;->offset:I

    #@2
    add-int/2addr v0, p1

    #@3
    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    #@0
    .prologue
    .line 202
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public put(IJ)Ljava/nio/LongBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # J

    #@0
    .prologue
    .line 144
    iget-boolean v0, p0, Ljava/nio/LongBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 145
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 147
    :cond_0
    iget-object v0, p0, Ljava/nio/LongBuffer;->hb:[J

    #@c
    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->checkIndex(I)I

    #@f
    move-result v1

    #@10
    invoke-virtual {p0, v1}, Ljava/nio/HeapLongBuffer;->ix(I)I

    #@13
    move-result v1

    #@14
    aput-wide p2, v0, v1

    #@16
    .line 148
    return-object p0
.end method

.method public put(J)Ljava/nio/LongBuffer;
    .locals 3
    .param p1, "x"    # J

    #@0
    .prologue
    .line 136
    iget-boolean v0, p0, Ljava/nio/LongBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 137
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 139
    :cond_0
    iget-object v0, p0, Ljava/nio/LongBuffer;->hb:[J

    #@c
    invoke-virtual {p0}, Ljava/nio/Buffer;->nextPutIndex()I

    #@f
    move-result v1

    #@10
    invoke-virtual {p0, v1}, Ljava/nio/HeapLongBuffer;->ix(I)I

    #@13
    move-result v1

    #@14
    aput-wide p1, v0, v1

    #@16
    .line 140
    return-object p0
.end method

.method public put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;
    .locals 6
    .param p1, "src"    # Ljava/nio/LongBuffer;

    #@0
    .prologue
    .line 164
    iget-boolean v2, p0, Ljava/nio/LongBuffer;->isReadOnly:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 165
    new-instance v2, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v2}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v2

    #@a
    .line 167
    :cond_0
    instance-of v2, p1, Ljava/nio/HeapLongBuffer;

    #@c
    if-eqz v2, :cond_3

    #@e
    .line 168
    if-ne p1, p0, :cond_1

    #@10
    .line 169
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@12
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@15
    throw v2

    #@16
    :cond_1
    move-object v1, p1

    #@17
    .line 170
    nop

    #@18
    nop

    #@19
    .line 171
    .local v1, "sb":Ljava/nio/HeapLongBuffer;
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    #@1c
    move-result v0

    #@1d
    .line 172
    .local v0, "n":I
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    #@20
    move-result v2

    #@21
    if-le v0, v2, :cond_2

    #@23
    .line 173
    new-instance v2, Ljava/nio/BufferOverflowException;

    #@25
    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    #@28
    throw v2

    #@29
    .line 174
    :cond_2
    iget-object v2, v1, Ljava/nio/LongBuffer;->hb:[J

    #@2b
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    #@2e
    move-result v3

    #@2f
    invoke-virtual {v1, v3}, Ljava/nio/HeapLongBuffer;->ix(I)I

    #@32
    move-result v3

    #@33
    .line 175
    iget-object v4, p0, Ljava/nio/LongBuffer;->hb:[J

    #@35
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@38
    move-result v5

    #@39
    invoke-virtual {p0, v5}, Ljava/nio/HeapLongBuffer;->ix(I)I

    #@3c
    move-result v5

    #@3d
    .line 174
    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@40
    .line 176
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    #@43
    move-result v2

    #@44
    add-int/2addr v2, v0

    #@45
    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@48
    .line 177
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@4b
    move-result v2

    #@4c
    add-int/2addr v2, v0

    #@4d
    invoke-virtual {p0, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@50
    .line 187
    .end local v0    # "n":I
    .end local v1    # "sb":Ljava/nio/HeapLongBuffer;
    :goto_0
    return-object p0

    #@51
    .line 178
    :cond_3
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->isDirect()Z

    #@54
    move-result v2

    #@55
    if-eqz v2, :cond_5

    #@57
    .line 179
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    #@5a
    move-result v0

    #@5b
    .line 180
    .restart local v0    # "n":I
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    #@5e
    move-result v2

    #@5f
    if-le v0, v2, :cond_4

    #@61
    .line 181
    new-instance v2, Ljava/nio/BufferOverflowException;

    #@63
    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    #@66
    throw v2

    #@67
    .line 182
    :cond_4
    iget-object v2, p0, Ljava/nio/LongBuffer;->hb:[J

    #@69
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@6c
    move-result v3

    #@6d
    invoke-virtual {p0, v3}, Ljava/nio/HeapLongBuffer;->ix(I)I

    #@70
    move-result v3

    #@71
    invoke-virtual {p1, v2, v3, v0}, Ljava/nio/LongBuffer;->get([JII)Ljava/nio/LongBuffer;

    #@74
    .line 183
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
    .line 185
    .end local v0    # "n":I
    :cond_5
    invoke-super {p0, p1}, Ljava/nio/LongBuffer;->put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;

    #@80
    goto :goto_0
.end method

.method public put([JII)Ljava/nio/LongBuffer;
    .locals 2
    .param p1, "src"    # [J
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 152
    iget-boolean v0, p0, Ljava/nio/LongBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 153
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 155
    :cond_0
    array-length v0, p1

    #@b
    invoke-static {p2, p3, v0}, Ljava/nio/HeapLongBuffer;->checkBounds(III)V

    #@e
    .line 156
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    #@11
    move-result v0

    #@12
    if-le p3, v0, :cond_1

    #@14
    .line 157
    new-instance v0, Ljava/nio/BufferOverflowException;

    #@16
    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    #@19
    throw v0

    #@1a
    .line 158
    :cond_1
    iget-object v0, p0, Ljava/nio/LongBuffer;->hb:[J

    #@1c
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@1f
    move-result v1

    #@20
    invoke-virtual {p0, v1}, Ljava/nio/HeapLongBuffer;->ix(I)I

    #@23
    move-result v1

    #@24
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@27
    .line 159
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    #@2a
    move-result v0

    #@2b
    add-int/2addr v0, p3

    #@2c
    invoke-virtual {p0, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    #@2f
    .line 160
    return-object p0
.end method

.method public slice()Ljava/nio/LongBuffer;
    .locals 8

    #@0
    .prologue
    .line 77
    new-instance v0, Ljava/nio/HeapLongBuffer;

    #@2
    iget-object v1, p0, Ljava/nio/LongBuffer;->hb:[J

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
    iget v3, p0, Ljava/nio/LongBuffer;->offset:I

    #@12
    add-int v6, v2, v3

    #@14
    .line 83
    iget-boolean v7, p0, Ljava/nio/LongBuffer;->isReadOnly:Z

    #@16
    .line 78
    const/4 v2, -0x1

    #@17
    .line 79
    const/4 v3, 0x0

    #@18
    .line 77
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapLongBuffer;-><init>([JIIIIIZ)V

    #@1b
    return-object v0
.end method
