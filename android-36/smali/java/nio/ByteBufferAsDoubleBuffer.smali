.class Ljava/nio/ByteBufferAsDoubleBuffer;
.super Ljava/nio/DoubleBuffer;
.source "ByteBufferAsDoubleBuffer.java"


# instance fields
.field protected final blacklist bb:Ljava/nio/ByteBuffer;

.field protected final blacklist byteOffset:I

.field private final blacklist order:Ljava/nio/ByteOrder;


# direct methods
.method constructor blacklist <init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V
    .registers 12
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I
    .param p7, "order"    # Ljava/nio/ByteOrder;

    .line 64
    invoke-direct {p0, p2, p3, p4, p5}, Ljava/nio/DoubleBuffer;-><init>(IIII)V

    .line 65
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    .line 66
    iget-boolean v0, p1, Ljava/nio/ByteBuffer;->isReadOnly:Z

    iput-boolean v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->isReadOnly:Z

    .line 74
    instance-of v0, p1, Ljava/nio/DirectByteBuffer;

    if-eqz v0, :cond_17

    .line 75
    iget-wide v0, p1, Ljava/nio/ByteBuffer;->address:J

    int-to-long v2, p6

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->address:J

    .line 77
    :cond_17
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 78
    iput-object p7, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->order:Ljava/nio/ByteOrder;

    .line 79
    iput p6, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteOffset:I

    .line 83
    return-void
.end method

.method private blacklist ix(I)I
    .registers 4
    .param p1, "i"    # I

    .line 147
    shl-int/lit8 v0, p1, 0x3

    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteOffset:I

    add-int/2addr v0, v1

    return v0
.end method

.method private blacklist putUnchecked(I[DII)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "src"    # [D
    .param p3, "off"    # I
    .param p4, "length"    # I

    .line 262
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p4}, Ljava/nio/ByteBuffer;->putUnchecked(I[DII)V

    .line 263
    return-void
.end method

.method private blacklist throwIfReadOnly()V
    .registers 2

    .line 382
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->isReadOnly:Z

    if-nez v0, :cond_5

    .line 385
    return-void

    .line 383
    :cond_5
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api asReadOnlyBuffer()Ljava/nio/DoubleBuffer;
    .registers 9

    .line 129
    new-instance v0, Ljava/nio/ByteBufferAsDoubleBuffer;

    iget-object v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 130
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->markValue()I

    move-result v2

    .line 131
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->position()I

    move-result v3

    .line 132
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->limit()I

    move-result v4

    .line 133
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteOffset:I

    iget-object v7, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->order:Ljava/nio/ByteOrder;

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 129
    return-object v0
.end method

.method blacklist base()Ljava/lang/Object;
    .registers 2

    .line 89
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->base()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api compact()Ljava/nio/DoubleBuffer;
    .registers 15

    .line 287
    invoke-direct {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->throwIfReadOnly()V

    .line 288
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->position()I

    move-result v0

    .line 289
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->limit()I

    move-result v1

    .line 290
    .local v1, "lim":I
    const/4 v2, 0x0

    if-gt v0, v1, :cond_11

    sub-int v3, v1, v0

    goto :goto_12

    :cond_11
    move v3, v2

    .line 300
    .local v3, "rem":I
    :goto_12
    iget-object v4, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    instance-of v4, v4, Ljava/nio/DirectByteBuffer;

    if-nez v4, :cond_33

    .line 301
    iget-object v4, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {p0, v0}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v5

    iget-object v6, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-direct {p0, v2}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v2

    shl-int/lit8 v7, v3, 0x3

    invoke-static {v4, v5, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, p0

    goto :goto_3e

    .line 305
    :cond_33
    shl-int/lit8 v11, v0, 0x3

    shl-int/lit8 v2, v3, 0x3

    int-to-long v12, v2

    const/4 v9, 0x0

    move-object v10, p0

    move-object v8, p0

    invoke-static/range {v8 .. v13}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    .line 307
    :goto_3e
    invoke-virtual {p0, v3}, Ljava/nio/ByteBufferAsDoubleBuffer;->position(I)Ljava/nio/Buffer;

    .line 308
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBufferAsDoubleBuffer;->limit(I)Ljava/nio/Buffer;

    .line 309
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->discardMark()V

    .line 310
    return-object v8
.end method

.method public bridge synthetic whitelist test-api duplicate()Ljava/nio/Buffer;
    .registers 2

    .line 35
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->duplicate()Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api duplicate()Ljava/nio/DoubleBuffer;
    .registers 9

    .line 117
    new-instance v0, Ljava/nio/ByteBufferAsDoubleBuffer;

    iget-object v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    .line 118
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->markValue()I

    move-result v2

    .line 119
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->position()I

    move-result v3

    .line 120
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->limit()I

    move-result v4

    .line 121
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->byteOffset:I

    iget-object v7, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->order:Ljava/nio/ByteOrder;

    invoke-direct/range {v0 .. v7}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 117
    return-object v0
.end method

.method public whitelist test-api get()D
    .registers 3

    .line 163
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->nextGetIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBufferAsDoubleBuffer;->get(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api get(I)D
    .registers 4
    .param p1, "i"    # I

    .line 172
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsDoubleBuffer;->checkIndex(I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getDoubleUnchecked(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api get(I[DII)Ljava/nio/DoubleBuffer;
    .registers 7
    .param p1, "index"    # I
    .param p2, "dst"    # [D
    .param p3, "off"    # I
    .param p4, "length"    # I

    .line 188
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->limit()I

    move-result v0

    invoke-static {p1, p4, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 189
    array-length v0, p2

    invoke-static {p3, p4, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 190
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p4}, Ljava/nio/ByteBuffer;->getUnchecked(I[DII)V

    .line 191
    return-object p0
.end method

.method public whitelist test-api get([DII)Ljava/nio/DoubleBuffer;
    .registers 6
    .param p1, "dst"    # [D
    .param p2, "off"    # I
    .param p3, "length"    # I

    .line 178
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 179
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_1b

    .line 181
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    invoke-direct {p0, v1}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->getUnchecked(I[DII)V

    .line 182
    iget v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    .line 183
    return-object p0

    .line 180
    :cond_1b
    new-instance v0, Ljava/nio/BufferUnderflowException;

    invoke-direct {v0}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method public whitelist test-api isDirect()Z
    .registers 2

    .line 318
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isReadOnly()Z
    .registers 2

    .line 323
    iget-boolean v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->isReadOnly:Z

    return v0
.end method

.method public whitelist test-api order()Ljava/nio/ByteOrder;
    .registers 2

    .line 370
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->order:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public whitelist test-api put(D)Ljava/nio/DoubleBuffer;
    .registers 4
    .param p1, "x"    # D

    .line 212
    invoke-direct {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->throwIfReadOnly()V

    .line 217
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->nextPutIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Ljava/nio/ByteBufferAsDoubleBuffer;->put(ID)Ljava/nio/DoubleBuffer;

    .line 218
    return-object p0
.end method

.method public whitelist test-api put(ID)Ljava/nio/DoubleBuffer;
    .registers 6
    .param p1, "i"    # I
    .param p2, "x"    # D

    .line 228
    invoke-direct {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->throwIfReadOnly()V

    .line 233
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBufferAsDoubleBuffer;->checkIndex(I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Ljava/nio/ByteBuffer;->putDoubleUnchecked(ID)V

    .line 234
    return-object p0
.end method

.method public whitelist test-api put(I[DII)Ljava/nio/DoubleBuffer;
    .registers 6
    .param p1, "index"    # I
    .param p2, "src"    # [D
    .param p3, "off"    # I
    .param p4, "length"    # I

    .line 254
    invoke-direct {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->throwIfReadOnly()V

    .line 255
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->limit()I

    move-result v0

    invoke-static {p1, p4, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 256
    array-length v0, p2

    invoke-static {p3, p4, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 257
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/nio/ByteBufferAsDoubleBuffer;->putUnchecked(I[DII)V

    .line 258
    return-object p0
.end method

.method public whitelist test-api put([DII)Ljava/nio/DoubleBuffer;
    .registers 6
    .param p1, "src"    # [D
    .param p2, "off"    # I
    .param p3, "length"    # I

    .line 243
    invoke-direct {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->throwIfReadOnly()V

    .line 244
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 245
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->remaining()I

    move-result v0

    if-gt p3, v0, :cond_1e

    .line 247
    iget-object v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    iget v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    invoke-direct {p0, v1}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v1

    invoke-virtual {v0, v1, p1, p2, p3}, Ljava/nio/ByteBuffer;->putUnchecked(I[DII)V

    .line 248
    iget v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    add-int/2addr v0, p3

    iput v0, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->position:I

    .line 249
    return-object p0

    .line 246
    :cond_1e
    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v0
.end method

.method blacklist putBuffer(ILjava/nio/DoubleBuffer;II)V
    .registers 11
    .param p1, "pos"    # I
    .param p2, "src"    # Ljava/nio/DoubleBuffer;
    .param p3, "srcPos"    # I
    .param p4, "n"    # I

    .line 267
    iget-object v0, p2, Ljava/nio/DoubleBuffer;->hb:[D

    if-eqz v0, :cond_d

    .line 269
    iget-object v0, p2, Ljava/nio/DoubleBuffer;->hb:[D

    iget v1, p2, Ljava/nio/DoubleBuffer;->offset:I

    add-int/2addr v1, p3

    invoke-direct {p0, p1, v0, v1, p4}, Ljava/nio/ByteBufferAsDoubleBuffer;->putUnchecked(I[DII)V

    .line 270
    return-void

    .line 272
    :cond_d
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/DoubleBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    if-ne v0, v1, :cond_30

    instance-of v0, p2, Ljava/nio/ByteBufferAsDoubleBuffer;

    if-eqz v0, :cond_30

    .line 273
    move-object v0, p2

    check-cast v0, Ljava/nio/ByteBufferAsDoubleBuffer;

    .line 274
    .local v0, "asSrc":Ljava/nio/ByteBufferAsDoubleBuffer;
    iget-object v1, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v2

    iget-object v3, v0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-direct {v0, p3}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v4

    shl-int/lit8 v5, p4, 0x3

    invoke-virtual {v1, v2, v3, v4, v5}, Ljava/nio/ByteBuffer;->putBuffer(ILjava/nio/ByteBuffer;II)V

    .line 275
    return-void

    .line 279
    .end local v0    # "asSrc":Ljava/nio/ByteBufferAsDoubleBuffer;
    :cond_30
    invoke-super {p0, p1, p2, p3, p4}, Ljava/nio/DoubleBuffer;->putBuffer(ILjava/nio/DoubleBuffer;II)V

    .line 280
    return-void
.end method

.method public bridge synthetic whitelist test-api slice()Ljava/nio/Buffer;
    .registers 2

    .line 35
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->slice()Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api slice(II)Ljava/nio/Buffer;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBufferAsDoubleBuffer;->slice(II)Ljava/nio/DoubleBuffer;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api slice()Ljava/nio/DoubleBuffer;
    .registers 12

    .line 94
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->position()I

    move-result v0

    .line 95
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->limit()I

    move-result v1

    .line 96
    .local v1, "lim":I
    if-gt v0, v1, :cond_d

    sub-int v2, v1, v0

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    move v7, v2

    .line 100
    .local v7, "rem":I
    new-instance v3, Ljava/nio/ByteBufferAsDoubleBuffer;

    iget-object v4, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v9

    iget-object v10, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->order:Ljava/nio/ByteOrder;

    const/4 v5, -0x1

    const/4 v6, 0x0

    move v8, v7

    invoke-direct/range {v3 .. v10}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    return-object v3
.end method

.method public whitelist test-api slice(II)Ljava/nio/DoubleBuffer;
    .registers 12
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 105
    invoke-virtual {p0}, Ljava/nio/ByteBufferAsDoubleBuffer;->limit()I

    move-result v0

    invoke-static {p1, p2, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 106
    new-instance v1, Ljava/nio/ByteBufferAsDoubleBuffer;

    iget-object v2, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->bb:Ljava/nio/ByteBuffer;

    .line 112
    invoke-direct {p0, p1}, Ljava/nio/ByteBufferAsDoubleBuffer;->ix(I)I

    move-result v7

    iget-object v8, p0, Ljava/nio/ByteBufferAsDoubleBuffer;->order:Ljava/nio/ByteOrder;

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v6, p2

    move v5, p2

    .end local p2    # "length":I
    .local v5, "length":I
    invoke-direct/range {v1 .. v8}, Ljava/nio/ByteBufferAsDoubleBuffer;-><init>(Ljava/nio/ByteBuffer;IIIIILjava/nio/ByteOrder;)V

    .line 106
    return-object v1
.end method
