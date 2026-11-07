.class final Ljava/nio/HeapDoubleBuffer;
.super Ljava/nio/DoubleBuffer;
.source "HeapDoubleBuffer.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 46
    return-void
.end method

.method constructor blacklist <init>(II)V
    .registers 4
    .param p1, "cap"    # I
    .param p2, "lim"    # I

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/nio/HeapDoubleBuffer;-><init>(IIZ)V

    .line 82
    return-void
.end method

.method private constructor blacklist <init>(IIZ)V
    .registers 11
    .param p1, "cap"    # I
    .param p2, "lim"    # I
    .param p3, "isReadOnly"    # Z

    .line 87
    new-array v5, p1, [D

    const/4 v6, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move-object v0, p0

    move v4, p1

    move v3, p2

    .end local p1    # "cap":I
    .end local p2    # "lim":I
    .local v3, "lim":I
    .local v4, "cap":I
    invoke-direct/range {v0 .. v6}, Ljava/nio/DoubleBuffer;-><init>(IIII[DI)V

    .line 88
    iput-boolean p3, v0, Ljava/nio/HeapDoubleBuffer;->isReadOnly:Z

    .line 89
    return-void
.end method

.method constructor blacklist <init>([DII)V
    .registers 5
    .param p1, "buf"    # [D
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/nio/HeapDoubleBuffer;-><init>([DIIZ)V

    .line 108
    return-void
.end method

.method private constructor blacklist <init>([DIIIIIZ)V
    .registers 15
    .param p1, "buf"    # [D
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "lim"    # I
    .param p5, "cap"    # I
    .param p6, "off"    # I
    .param p7, "isReadOnly"    # Z

    .line 126
    move-object v0, p0

    move-object v5, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v6, p6

    .end local p1    # "buf":[D
    .end local p2    # "mark":I
    .end local p3    # "pos":I
    .end local p4    # "lim":I
    .end local p5    # "cap":I
    .end local p6    # "off":I
    .local v1, "mark":I
    .local v2, "pos":I
    .local v3, "lim":I
    .local v4, "cap":I
    .local v5, "buf":[D
    .local v6, "off":I
    invoke-direct/range {v0 .. v6}, Ljava/nio/DoubleBuffer;-><init>(IIII[DI)V

    .line 128
    iput-boolean p7, v0, Ljava/nio/HeapDoubleBuffer;->isReadOnly:Z

    .line 139
    return-void
.end method

.method private constructor blacklist <init>([DIIZ)V
    .registers 12
    .param p1, "buf"    # [D
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "isReadOnly"    # Z

    .line 113
    add-int v3, p2, p3

    array-length v4, p1

    const/4 v6, 0x0

    const/4 v1, -0x1

    move-object v0, p0

    move-object v5, p1

    move v2, p2

    .end local p1    # "buf":[D
    .end local p2    # "off":I
    .local v2, "off":I
    .local v5, "buf":[D
    invoke-direct/range {v0 .. v6}, Ljava/nio/DoubleBuffer;-><init>(IIII[DI)V

    .line 114
    iput-boolean p4, v0, Ljava/nio/HeapDoubleBuffer;->isReadOnly:Z

    .line 115
    return-void
.end method

.method private blacklist ix(I)I
    .registers 3
    .param p1, "i"    # I

    .line 210
    iget v0, p0, Ljava/nio/HeapDoubleBuffer;->offset:I

    add-int/2addr v0, p1

    return v0
.end method

.method private blacklist throwIfReadOnly()V
    .registers 2

    .line 1220
    iget-boolean v0, p0, Ljava/nio/HeapDoubleBuffer;->isReadOnly:Z

    if-nez v0, :cond_5

    .line 1223
    return-void

    .line 1221
    :cond_5
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api asReadOnlyBuffer()Ljava/nio/DoubleBuffer;
    .registers 9

    .line 194
    new-instance v0, Ljava/nio/HeapDoubleBuffer;

    iget-object v1, p0, Ljava/nio/HeapDoubleBuffer;->hb:[D

    .line 195
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->markValue()I

    move-result v2

    .line 196
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->position()I

    move-result v3

    .line 197
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->limit()I

    move-result v4

    .line 198
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/HeapDoubleBuffer;->offset:I

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapDoubleBuffer;-><init>([DIIIIIZ)V

    .line 194
    return-object v0
.end method

.method public whitelist test-api compact()Ljava/nio/DoubleBuffer;
    .registers 8

    .line 405
    invoke-direct {p0}, Ljava/nio/HeapDoubleBuffer;->throwIfReadOnly()V

    .line 406
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->position()I

    move-result v0

    .line 407
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->limit()I

    move-result v1

    .line 408
    .local v1, "lim":I
    nop

    .line 409
    const/4 v2, 0x0

    if-gt v0, v1, :cond_12

    sub-int v3, v1, v0

    goto :goto_13

    :cond_12
    move v3, v2

    .line 410
    .local v3, "rem":I
    :goto_13
    iget-object v4, p0, Ljava/nio/HeapDoubleBuffer;->hb:[D

    invoke-direct {p0, v0}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v5

    iget-object v6, p0, Ljava/nio/HeapDoubleBuffer;->hb:[D

    invoke-direct {p0, v2}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v2

    invoke-static {v4, v5, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 411
    invoke-virtual {p0, v3}, Ljava/nio/HeapDoubleBuffer;->position(I)Ljava/nio/Buffer;

    .line 412
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/HeapDoubleBuffer;->limit(I)Ljava/nio/Buffer;

    .line 413
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->discardMark()V

    .line 414
    return-object p0
.end method

.method public bridge synthetic whitelist test-api duplicate()Ljava/nio/Buffer;
    .registers 2

    .line 46
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->duplicate()Ljava/nio/DoubleBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api duplicate()Ljava/nio/DoubleBuffer;
    .registers 9

    .line 171
    new-instance v0, Ljava/nio/HeapDoubleBuffer;

    iget-object v1, p0, Ljava/nio/HeapDoubleBuffer;->hb:[D

    .line 172
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->markValue()I

    move-result v2

    .line 173
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->position()I

    move-result v3

    .line 174
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->limit()I

    move-result v4

    .line 175
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/HeapDoubleBuffer;->offset:I

    iget-boolean v7, p0, Ljava/nio/HeapDoubleBuffer;->isReadOnly:Z

    invoke-direct/range {v0 .. v7}, Ljava/nio/HeapDoubleBuffer;-><init>([DIIIIIZ)V

    .line 171
    return-object v0
.end method

.method public whitelist test-api get()D
    .registers 3

    .line 221
    iget-object v0, p0, Ljava/nio/HeapDoubleBuffer;->hb:[D

    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->nextGetIndex()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public whitelist test-api get(I)D
    .registers 4
    .param p1, "i"    # I

    .line 226
    iget-object v0, p0, Ljava/nio/HeapDoubleBuffer;->hb:[D

    invoke-virtual {p0, p1}, Ljava/nio/HeapDoubleBuffer;->checkIndex(I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public whitelist test-api get(I[DII)Ljava/nio/DoubleBuffer;
    .registers 7
    .param p1, "index"    # I
    .param p2, "dst"    # [D
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 250
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->checkScope()V

    .line 251
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->limit()I

    move-result v0

    invoke-static {p1, p4, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 252
    array-length v0, p2

    invoke-static {p3, p4, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 253
    iget-object v0, p0, Ljava/nio/HeapDoubleBuffer;->hb:[D

    invoke-direct {p0, p1}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v1

    invoke-static {v0, v1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 254
    return-object p0
.end method

.method public whitelist test-api get([DII)Ljava/nio/DoubleBuffer;
    .registers 7
    .param p1, "dst"    # [D
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 238
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->checkScope()V

    .line 239
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 240
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->position()I

    move-result v0

    .line 241
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, v0

    if-gt p3, v1, :cond_21

    .line 243
    iget-object v1, p0, Ljava/nio/HeapDoubleBuffer;->hb:[D

    invoke-direct {p0, v0}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v2

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 244
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Ljava/nio/HeapDoubleBuffer;->position(I)Ljava/nio/Buffer;

    .line 245
    return-object p0

    .line 242
    :cond_21
    new-instance v1, Ljava/nio/BufferUnderflowException;

    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v1
.end method

.method public whitelist test-api isDirect()Z
    .registers 2

    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isReadOnly()Z
    .registers 2

    .line 266
    iget-boolean v0, p0, Ljava/nio/HeapDoubleBuffer;->isReadOnly:Z

    return v0
.end method

.method public whitelist test-api order()Ljava/nio/ByteOrder;
    .registers 2

    .line 1208
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api put(D)Ljava/nio/DoubleBuffer;
    .registers 5
    .param p1, "x"    # D

    .line 273
    invoke-direct {p0}, Ljava/nio/HeapDoubleBuffer;->throwIfReadOnly()V

    .line 274
    iget-object v0, p0, Ljava/nio/HeapDoubleBuffer;->hb:[D

    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->nextPutIndex()I

    move-result v1

    invoke-direct {p0, v1}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v1

    aput-wide p1, v0, v1

    .line 275
    return-object p0
.end method

.method public whitelist test-api put(ID)Ljava/nio/DoubleBuffer;
    .registers 6
    .param p1, "i"    # I
    .param p2, "x"    # D

    .line 285
    invoke-direct {p0}, Ljava/nio/HeapDoubleBuffer;->throwIfReadOnly()V

    .line 286
    iget-object v0, p0, Ljava/nio/HeapDoubleBuffer;->hb:[D

    invoke-virtual {p0, p1}, Ljava/nio/HeapDoubleBuffer;->checkIndex(I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v1

    aput-wide p2, v0, v1

    .line 287
    return-object p0
.end method

.method public whitelist test-api put(ILjava/nio/DoubleBuffer;II)Ljava/nio/DoubleBuffer;
    .registers 5
    .param p1, "index"    # I
    .param p2, "src"    # Ljava/nio/DoubleBuffer;
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 353
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->checkScope()V

    .line 354
    invoke-super {p0, p1, p2, p3, p4}, Ljava/nio/DoubleBuffer;->put(ILjava/nio/DoubleBuffer;II)Ljava/nio/DoubleBuffer;

    .line 355
    return-object p0
.end method

.method public whitelist test-api put(I[DII)Ljava/nio/DoubleBuffer;
    .registers 7
    .param p1, "index"    # I
    .param p2, "src"    # [D
    .param p3, "offset"    # I
    .param p4, "length"    # I

    .line 364
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->checkScope()V

    .line 365
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->limit()I

    move-result v0

    invoke-static {p1, p4, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 366
    array-length v0, p2

    invoke-static {p3, p4, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 368
    invoke-direct {p0}, Ljava/nio/HeapDoubleBuffer;->throwIfReadOnly()V

    .line 369
    iget-object v0, p0, Ljava/nio/HeapDoubleBuffer;->hb:[D

    invoke-direct {p0, p1}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v1

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 370
    return-object p0
.end method

.method public whitelist test-api put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;
    .registers 8
    .param p1, "src"    # Ljava/nio/DoubleBuffer;

    .line 314
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->checkScope()V

    .line 321
    if-eq p1, p0, :cond_77

    .line 325
    invoke-direct {p0}, Ljava/nio/HeapDoubleBuffer;->throwIfReadOnly()V

    .line 326
    instance-of v0, p1, Ljava/nio/HeapDoubleBuffer;

    if-eqz v0, :cond_47

    move-object v0, p1

    check-cast v0, Ljava/nio/HeapDoubleBuffer;

    .line 327
    .local v0, "sb":Ljava/nio/HeapDoubleBuffer;
    invoke-virtual {v0}, Ljava/nio/HeapDoubleBuffer;->remaining()I

    move-result v1

    .line 328
    .local v1, "n":I
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->remaining()I

    move-result v2

    if-gt v1, v2, :cond_41

    .line 330
    iget-object v2, v0, Ljava/nio/HeapDoubleBuffer;->hb:[D

    invoke-virtual {v0}, Ljava/nio/HeapDoubleBuffer;->position()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v3

    iget-object v4, p0, Ljava/nio/HeapDoubleBuffer;->hb:[D

    .line 331
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->position()I

    move-result v5

    invoke-direct {p0, v5}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v5

    .line 330
    invoke-static {v2, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 332
    invoke-virtual {v0}, Ljava/nio/HeapDoubleBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/HeapDoubleBuffer;->position(I)Ljava/nio/Buffer;

    .line 333
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ljava/nio/HeapDoubleBuffer;->position(I)Ljava/nio/Buffer;

    .line 334
    .end local v1    # "n":I
    goto :goto_76

    .line 329
    .restart local v1    # "n":I
    :cond_41
    new-instance v2, Ljava/nio/BufferOverflowException;

    invoke-direct {v2}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v2

    .line 334
    .end local v0    # "sb":Ljava/nio/HeapDoubleBuffer;
    .end local v1    # "n":I
    :cond_47
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 335
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    move-result v0

    .line 336
    .local v0, "n":I
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_6d

    .line 338
    iget-object v1, p0, Ljava/nio/HeapDoubleBuffer;->hb:[D

    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->position()I

    move-result v2

    invoke-direct {p0, v2}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v2

    invoke-virtual {p1, v1, v2, v0}, Ljava/nio/DoubleBuffer;->get([DII)Ljava/nio/DoubleBuffer;

    .line 339
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/nio/HeapDoubleBuffer;->position(I)Ljava/nio/Buffer;

    .line 340
    .end local v0    # "n":I
    goto :goto_76

    .line 337
    .restart local v0    # "n":I
    :cond_6d
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1

    .line 341
    .end local v0    # "n":I
    :cond_73
    invoke-super {p0, p1}, Ljava/nio/DoubleBuffer;->put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;

    .line 344
    :goto_76
    return-object p0

    .line 322
    :cond_77
    invoke-static {}, Ljava/nio/HeapDoubleBuffer;->createSameBufferException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api put([DII)Ljava/nio/DoubleBuffer;
    .registers 7
    .param p1, "src"    # [D
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 297
    invoke-direct {p0}, Ljava/nio/HeapDoubleBuffer;->throwIfReadOnly()V

    .line 298
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->checkScope()V

    .line 299
    array-length v0, p1

    invoke-static {p2, p3, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 300
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->position()I

    move-result v0

    .line 301
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, v0

    if-gt p3, v1, :cond_24

    .line 303
    iget-object v1, p0, Ljava/nio/HeapDoubleBuffer;->hb:[D

    invoke-direct {p0, v0}, Ljava/nio/HeapDoubleBuffer;->ix(I)I

    move-result v2

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    add-int v1, v0, p3

    invoke-virtual {p0, v1}, Ljava/nio/HeapDoubleBuffer;->position(I)Ljava/nio/Buffer;

    .line 305
    return-object p0

    .line 302
    :cond_24
    new-instance v1, Ljava/nio/BufferOverflowException;

    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    throw v1
.end method

.method public bridge synthetic whitelist test-api slice()Ljava/nio/Buffer;
    .registers 2

    .line 46
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->slice()Ljava/nio/DoubleBuffer;

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

    .line 46
    invoke-virtual {p0, p1, p2}, Ljava/nio/HeapDoubleBuffer;->slice(II)Ljava/nio/DoubleBuffer;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api slice()Ljava/nio/DoubleBuffer;
    .registers 12

    .line 142
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->position()I

    move-result v0

    .line 143
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->limit()I

    move-result v1

    .line 144
    .local v1, "lim":I
    if-gt v0, v1, :cond_d

    sub-int v2, v1, v0

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    move v7, v2

    .line 145
    .local v7, "rem":I
    new-instance v3, Ljava/nio/HeapDoubleBuffer;

    iget-object v4, p0, Ljava/nio/HeapDoubleBuffer;->hb:[D

    iget v2, p0, Ljava/nio/HeapDoubleBuffer;->offset:I

    add-int v9, v0, v2

    iget-boolean v10, p0, Ljava/nio/HeapDoubleBuffer;->isReadOnly:Z

    const/4 v5, -0x1

    const/4 v6, 0x0

    move v8, v7

    invoke-direct/range {v3 .. v10}, Ljava/nio/HeapDoubleBuffer;-><init>([DIIIIIZ)V

    return-object v3
.end method

.method public whitelist test-api slice(II)Ljava/nio/DoubleBuffer;
    .registers 12
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 158
    invoke-virtual {p0}, Ljava/nio/HeapDoubleBuffer;->limit()I

    move-result v0

    invoke-static {p1, p2, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 159
    new-instance v1, Ljava/nio/HeapDoubleBuffer;

    iget-object v2, p0, Ljava/nio/HeapDoubleBuffer;->hb:[D

    iget v0, p0, Ljava/nio/HeapDoubleBuffer;->offset:I

    add-int v7, p1, v0

    iget-boolean v8, p0, Ljava/nio/HeapDoubleBuffer;->isReadOnly:Z

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v6, p2

    move v5, p2

    .end local p2    # "length":I
    .local v5, "length":I
    invoke-direct/range {v1 .. v8}, Ljava/nio/HeapDoubleBuffer;-><init>([DIIIIIZ)V

    return-object v1
.end method
