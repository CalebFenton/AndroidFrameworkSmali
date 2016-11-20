.class Ljava/nio/HeapCharBuffer;
.super Ljava/nio/CharBuffer;
.source "HeapCharBuffer.java"


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
    invoke-direct {p0, p1, p2, v0}, Ljava/nio/HeapCharBuffer;-><init>(IIZ)V

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
    new-array v5, p1, [C

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
    invoke-direct/range {v0 .. v6}, Ljava/nio/CharBuffer;-><init>(IIII[CI)V

    #@b
    .line 50
    iput-boolean p3, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    #@d
    .line 48
    return-void
.end method

.method constructor <init>([CII)V
    .locals 1
    .param p1, "buf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 54
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/HeapCharBuffer;-><init>([CIIZ)V

    #@4
    .line 53
    return-void
.end method

.method protected constructor <init>([CIIIII)V
    .locals 8
    .param p1, "buf"    # [C
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
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapCharBuffer;-><init>([CIIIIIZ)V

    #@b
    .line 64
    return-void
.end method

.method protected constructor <init>([CIIIIIZ)V
    .locals 7
    .param p1, "buf"    # [C
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
    invoke-direct/range {v0 .. v6}, Ljava/nio/CharBuffer;-><init>(IIII[CI)V

    #@a
    .line 72
    iput-boolean p7, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    #@c
    .line 70
    return-void
.end method

.method constructor <init>([CIIZ)V
    .locals 7
    .param p1, "buf"    # [C
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
    invoke-direct/range {v0 .. v6}, Ljava/nio/CharBuffer;-><init>(IIII[CI)V

    #@b
    .line 59
    iput-boolean p4, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    #@d
    .line 57
    return-void
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/CharBuffer;
    .locals 8

    #@0
    .prologue
    .line 97
    new-instance v0, Ljava/nio/HeapCharBuffer;

    #@2
    iget-object v1, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    #@4
    .line 98
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->markValue()I

    #@7
    move-result v2

    #@8
    .line 99
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    #@b
    move-result v3

    #@c
    .line 100
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->limit()I

    #@f
    move-result v4

    #@10
    .line 101
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->capacity()I

    #@13
    move-result v5

    #@14
    .line 102
    iget v6, p0, Ljava/nio/HeapCharBuffer;->offset:I

    #@16
    .line 103
    const/4 v7, 0x1

    #@17
    .line 97
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapCharBuffer;-><init>([CIIIIIZ)V

    #@1a
    return-object v0
.end method

.method public compact()Ljava/nio/CharBuffer;
    .locals 5

    #@0
    .prologue
    .line 195
    iget-boolean v0, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 196
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 198
    :cond_0
    iget-object v0, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    #@c
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    #@f
    move-result v1

    #@10
    invoke-virtual {p0, v1}, Ljava/nio/HeapCharBuffer;->ix(I)I

    #@13
    move-result v1

    #@14
    iget-object v2, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    #@16
    const/4 v3, 0x0

    #@17
    invoke-virtual {p0, v3}, Ljava/nio/HeapCharBuffer;->ix(I)I

    #@1a
    move-result v3

    #@1b
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->remaining()I

    #@1e
    move-result v4

    #@1f
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@22
    .line 199
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->remaining()I

    #@25
    move-result v0

    #@26
    invoke-virtual {p0, v0}, Ljava/nio/HeapCharBuffer;->position(I)Ljava/nio/Buffer;

    #@29
    .line 200
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->capacity()I

    #@2c
    move-result v0

    #@2d
    invoke-virtual {p0, v0}, Ljava/nio/HeapCharBuffer;->limit(I)Ljava/nio/Buffer;

    #@30
    .line 201
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->discardMark()V

    #@33
    .line 202
    return-object p0
.end method

.method public duplicate()Ljava/nio/CharBuffer;
    .locals 8

    #@0
    .prologue
    .line 86
    new-instance v0, Ljava/nio/HeapCharBuffer;

    #@2
    iget-object v1, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    #@4
    .line 87
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->markValue()I

    #@7
    move-result v2

    #@8
    .line 88
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    #@b
    move-result v3

    #@c
    .line 89
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->limit()I

    #@f
    move-result v4

    #@10
    .line 90
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->capacity()I

    #@13
    move-result v5

    #@14
    .line 91
    iget v6, p0, Ljava/nio/HeapCharBuffer;->offset:I

    #@16
    .line 92
    iget-boolean v7, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    #@18
    .line 86
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapCharBuffer;-><init>([CIIIIIZ)V

    #@1b
    return-object v0
.end method

.method public get()C
    .locals 2

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    #@2
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->nextGetIndex()I

    #@5
    move-result v1

    #@6
    invoke-virtual {p0, v1}, Ljava/nio/HeapCharBuffer;->ix(I)I

    #@9
    move-result v1

    #@a
    aget-char v0, v0, v1

    #@c
    return v0
.end method

.method public get(I)C
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 115
    iget-object v0, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    #@2
    invoke-virtual {p0, p1}, Ljava/nio/HeapCharBuffer;->checkIndex(I)I

    #@5
    move-result v1

    #@6
    invoke-virtual {p0, v1}, Ljava/nio/HeapCharBuffer;->ix(I)I

    #@9
    move-result v1

    #@a
    aget-char v0, v0, v1

    #@c
    return v0
.end method

.method public get([CII)Ljava/nio/CharBuffer;
    .locals 2
    .param p1, "dst"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 123
    array-length v0, p1

    #@1
    invoke-static {p2, p3, v0}, Ljava/nio/HeapCharBuffer;->checkBounds(III)V

    #@4
    .line 124
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->remaining()I

    #@7
    move-result v0

    #@8
    if-le p3, v0, :cond_0

    #@a
    .line 125
    new-instance v0, Ljava/nio/BufferUnderflowException;

    #@c
    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@f
    throw v0

    #@10
    .line 126
    :cond_0
    iget-object v0, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    #@12
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    #@15
    move-result v1

    #@16
    invoke-virtual {p0, v1}, Ljava/nio/HeapCharBuffer;->ix(I)I

    #@19
    move-result v1

    #@1a
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@1d
    .line 127
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    #@20
    move-result v0

    #@21
    add-int/2addr v0, p3

    #@22
    invoke-virtual {p0, v0}, Ljava/nio/HeapCharBuffer;->position(I)Ljava/nio/Buffer;

    #@25
    .line 128
    return-object p0
.end method

.method getUnchecked(I)C
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 119
    iget-object v0, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    #@2
    invoke-virtual {p0, p1}, Ljava/nio/HeapCharBuffer;->ix(I)I

    #@5
    move-result v1

    #@6
    aget-char v0, v0, v1

    #@8
    return v0
.end method

.method public isDirect()Z
    .locals 1

    #@0
    .prologue
    .line 132
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    #@0
    .prologue
    .line 136
    iget-boolean v0, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    #@2
    return v0
.end method

.method protected ix(I)I
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 107
    iget v0, p0, Ljava/nio/HeapCharBuffer;->offset:I

    #@2
    add-int/2addr v0, p1

    #@3
    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    #@0
    .prologue
    .line 228
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public put(C)Ljava/nio/CharBuffer;
    .locals 2
    .param p1, "x"    # C

    #@0
    .prologue
    .line 140
    iget-boolean v0, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

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
    iget-object v0, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    #@c
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->nextPutIndex()I

    #@f
    move-result v1

    #@10
    invoke-virtual {p0, v1}, Ljava/nio/HeapCharBuffer;->ix(I)I

    #@13
    move-result v1

    #@14
    aput-char p1, v0, v1

    #@16
    .line 144
    return-object p0
.end method

.method public put(IC)Ljava/nio/CharBuffer;
    .locals 2
    .param p1, "i"    # I
    .param p2, "x"    # C

    #@0
    .prologue
    .line 148
    iget-boolean v0, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

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
    iget-object v0, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    #@c
    invoke-virtual {p0, p1}, Ljava/nio/HeapCharBuffer;->checkIndex(I)I

    #@f
    move-result v1

    #@10
    invoke-virtual {p0, v1}, Ljava/nio/HeapCharBuffer;->ix(I)I

    #@13
    move-result v1

    #@14
    aput-char p2, v0, v1

    #@16
    .line 152
    return-object p0
.end method

.method public put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;
    .locals 6
    .param p1, "src"    # Ljava/nio/CharBuffer;

    #@0
    .prologue
    .line 168
    iget-boolean v2, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 169
    new-instance v2, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v2}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v2

    #@a
    .line 171
    :cond_0
    instance-of v2, p1, Ljava/nio/HeapCharBuffer;

    #@c
    if-eqz v2, :cond_3

    #@e
    .line 172
    if-ne p1, p0, :cond_1

    #@10
    .line 173
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@12
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@15
    throw v2

    #@16
    :cond_1
    move-object v1, p1

    #@17
    .line 174
    check-cast v1, Ljava/nio/HeapCharBuffer;

    #@19
    .line 175
    .local v1, "sb":Ljava/nio/HeapCharBuffer;
    invoke-virtual {v1}, Ljava/nio/HeapCharBuffer;->remaining()I

    #@1c
    move-result v0

    #@1d
    .line 176
    .local v0, "n":I
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->remaining()I

    #@20
    move-result v2

    #@21
    if-le v0, v2, :cond_2

    #@23
    .line 177
    new-instance v2, Ljava/nio/BufferOverflowException;

    #@25
    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    #@28
    throw v2

    #@29
    .line 178
    :cond_2
    iget-object v2, v1, Ljava/nio/HeapCharBuffer;->hb:[C

    #@2b
    invoke-virtual {v1}, Ljava/nio/HeapCharBuffer;->position()I

    #@2e
    move-result v3

    #@2f
    invoke-virtual {v1, v3}, Ljava/nio/HeapCharBuffer;->ix(I)I

    #@32
    move-result v3

    #@33
    .line 179
    iget-object v4, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    #@35
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    #@38
    move-result v5

    #@39
    invoke-virtual {p0, v5}, Ljava/nio/HeapCharBuffer;->ix(I)I

    #@3c
    move-result v5

    #@3d
    .line 178
    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@40
    .line 180
    invoke-virtual {v1}, Ljava/nio/HeapCharBuffer;->position()I

    #@43
    move-result v2

    #@44
    add-int/2addr v2, v0

    #@45
    invoke-virtual {v1, v2}, Ljava/nio/HeapCharBuffer;->position(I)Ljava/nio/Buffer;

    #@48
    .line 181
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    #@4b
    move-result v2

    #@4c
    add-int/2addr v2, v0

    #@4d
    invoke-virtual {p0, v2}, Ljava/nio/HeapCharBuffer;->position(I)Ljava/nio/Buffer;

    #@50
    .line 191
    .end local v0    # "n":I
    .end local v1    # "sb":Ljava/nio/HeapCharBuffer;
    :goto_0
    return-object p0

    #@51
    .line 182
    :cond_3
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->isDirect()Z

    #@54
    move-result v2

    #@55
    if-eqz v2, :cond_5

    #@57
    .line 183
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    #@5a
    move-result v0

    #@5b
    .line 184
    .restart local v0    # "n":I
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->remaining()I

    #@5e
    move-result v2

    #@5f
    if-le v0, v2, :cond_4

    #@61
    .line 185
    new-instance v2, Ljava/nio/BufferOverflowException;

    #@63
    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    #@66
    throw v2

    #@67
    .line 186
    :cond_4
    iget-object v2, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    #@69
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    #@6c
    move-result v3

    #@6d
    invoke-virtual {p0, v3}, Ljava/nio/HeapCharBuffer;->ix(I)I

    #@70
    move-result v3

    #@71
    invoke-virtual {p1, v2, v3, v0}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    #@74
    .line 187
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    #@77
    move-result v2

    #@78
    add-int/2addr v2, v0

    #@79
    invoke-virtual {p0, v2}, Ljava/nio/HeapCharBuffer;->position(I)Ljava/nio/Buffer;

    #@7c
    goto :goto_0

    #@7d
    .line 189
    .end local v0    # "n":I
    :cond_5
    invoke-super {p0, p1}, Ljava/nio/CharBuffer;->put(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    #@80
    goto :goto_0
.end method

.method public put([CII)Ljava/nio/CharBuffer;
    .locals 2
    .param p1, "src"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    #@0
    .prologue
    .line 156
    iget-boolean v0, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 157
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    #@6
    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@9
    throw v0

    #@a
    .line 159
    :cond_0
    array-length v0, p1

    #@b
    invoke-static {p2, p3, v0}, Ljava/nio/HeapCharBuffer;->checkBounds(III)V

    #@e
    .line 160
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->remaining()I

    #@11
    move-result v0

    #@12
    if-le p3, v0, :cond_1

    #@14
    .line 161
    new-instance v0, Ljava/nio/BufferOverflowException;

    #@16
    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    #@19
    throw v0

    #@1a
    .line 162
    :cond_1
    iget-object v0, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    #@1c
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    #@1f
    move-result v1

    #@20
    invoke-virtual {p0, v1}, Ljava/nio/HeapCharBuffer;->ix(I)I

    #@23
    move-result v1

    #@24
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@27
    .line 163
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    #@2a
    move-result v0

    #@2b
    add-int/2addr v0, p3

    #@2c
    invoke-virtual {p0, v0}, Ljava/nio/HeapCharBuffer;->position(I)Ljava/nio/Buffer;

    #@2f
    .line 164
    return-object p0
.end method

.method public slice()Ljava/nio/CharBuffer;
    .locals 8

    #@0
    .prologue
    .line 76
    new-instance v0, Ljava/nio/HeapCharBuffer;

    #@2
    iget-object v1, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    #@4
    .line 79
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->remaining()I

    #@7
    move-result v4

    #@8
    .line 80
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->remaining()I

    #@b
    move-result v5

    #@c
    .line 81
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    #@f
    move-result v2

    #@10
    iget v3, p0, Ljava/nio/HeapCharBuffer;->offset:I

    #@12
    add-int v6, v2, v3

    #@14
    .line 82
    iget-boolean v7, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    #@16
    .line 77
    const/4 v2, -0x1

    #@17
    .line 78
    const/4 v3, 0x0

    #@18
    .line 76
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapCharBuffer;-><init>([CIIIIIZ)V

    #@1b
    return-object v0
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 213
    invoke-virtual {p0, p1, p2}, Ljava/nio/HeapCharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public subSequence(II)Ljava/nio/CharBuffer;
    .locals 9
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 214
    if-ltz p1, :cond_0

    #@2
    .line 215
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->length()I

    #@5
    move-result v0

    #@6
    if-le p2, v0, :cond_1

    #@8
    .line 217
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@a
    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@d
    throw v0

    #@e
    .line 216
    :cond_1
    if-gt p1, p2, :cond_0

    #@10
    .line 218
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->position()I

    #@13
    move-result v8

    #@14
    .line 219
    .local v8, "pos":I
    new-instance v0, Ljava/nio/HeapCharBuffer;

    #@16
    iget-object v1, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    #@18
    .line 221
    add-int v3, v8, p1

    #@1a
    .line 222
    add-int v4, v8, p2

    #@1c
    .line 223
    invoke-virtual {p0}, Ljava/nio/HeapCharBuffer;->capacity()I

    #@1f
    move-result v5

    #@20
    .line 224
    iget v6, p0, Ljava/nio/HeapCharBuffer;->offset:I

    #@22
    iget-boolean v7, p0, Ljava/nio/HeapCharBuffer;->isReadOnly:Z

    #@24
    .line 220
    const/4 v2, -0x1

    #@25
    .line 219
    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapCharBuffer;-><init>([CIIIIIZ)V

    #@28
    return-object v0
.end method

.method toString(II)Ljava/lang/String;
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 207
    :try_start_0
    new-instance v1, Ljava/lang/String;

    #@2
    iget-object v2, p0, Ljava/nio/HeapCharBuffer;->hb:[C

    #@4
    iget v3, p0, Ljava/nio/HeapCharBuffer;->offset:I

    #@6
    add-int/2addr v3, p1

    #@7
    sub-int v4, p2, p1

    #@9
    invoke-direct {v1, v2, v3, v4}, Ljava/lang/String;-><init>([CII)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    return-object v1

    #@d
    .line 208
    :catch_0
    move-exception v0

    #@e
    .line 209
    .local v0, "x":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@10
    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    #@13
    throw v1
.end method
