.class Ljava/nio/StringCharBuffer;
.super Ljava/nio/CharBuffer;
.source "StringCharBuffer.java"


# instance fields
.field blacklist str:Ljava/lang/CharSequence;


# direct methods
.method constructor blacklist <init>(Ljava/lang/CharSequence;II)V
    .registers 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 40
    const/4 v0, -0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, v0, p2, p3, v1}, Ljava/nio/CharBuffer;-><init>(IIII)V

    .line 41
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 42
    .local v0, "n":I
    invoke-static {p2, p3, v0}, Ljava/util/Objects;->checkFromToIndex(III)I

    .line 43
    iput-object p1, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/nio/StringCharBuffer;->isReadOnly:Z

    .line 45
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/CharSequence;IIIII)V
    .registers 14
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "mark"    # I
    .param p3, "pos"    # I
    .param p4, "limit"    # I
    .param p5, "cap"    # I
    .param p6, "offset"    # I

    .line 78
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v6, p6

    .end local p2    # "mark":I
    .end local p3    # "pos":I
    .end local p4    # "limit":I
    .end local p5    # "cap":I
    .end local p6    # "offset":I
    .local v1, "mark":I
    .local v2, "pos":I
    .local v3, "limit":I
    .local v4, "cap":I
    .local v6, "offset":I
    invoke-direct/range {v0 .. v6}, Ljava/nio/CharBuffer;-><init>(IIII[CI)V

    .line 79
    iput-object p1, v0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    .line 80
    const/4 p2, 0x1

    iput-boolean p2, v0, Ljava/nio/StringCharBuffer;->isReadOnly:Z

    .line 81
    return-void
.end method


# virtual methods
.method public whitelist test-api asReadOnlyBuffer()Ljava/nio/CharBuffer;
    .registers 2

    .line 89
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->duplicate()Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method blacklist charRegionOrder()Ljava/nio/ByteOrder;
    .registers 2

    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist test-api compact()Ljava/nio/CharBuffer;
    .registers 2

    .line 115
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 32
    check-cast p1, Ljava/nio/CharBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/StringCharBuffer;->compareTo(Ljava/nio/CharBuffer;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/nio/CharBuffer;)I
    .registers 10
    .param p1, "that"    # Ljava/nio/CharBuffer;

    .line 173
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->position()I

    move-result v0

    .line 174
    .local v0, "thisPos":I
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->limit()I

    move-result v1

    sub-int/2addr v1, v0

    .line 175
    .local v1, "thisRem":I
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result v2

    .line 176
    .local v2, "thatPos":I
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->limit()I

    move-result v3

    sub-int/2addr v3, v2

    .line 177
    .local v3, "thatRem":I
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 178
    .local v4, "length":I
    if-gez v4, :cond_1a

    .line 179
    const/4 v5, -0x1

    return v5

    .line 180
    :cond_1a
    invoke-static {p0, v0, p1, v2, v4}, Ljava/nio/BufferMismatch;->mismatch(Ljava/nio/CharBuffer;ILjava/nio/CharBuffer;II)I

    move-result v5

    .line 183
    .local v5, "i":I
    if-ltz v5, :cond_31

    .line 184
    add-int v6, v0, v5

    invoke-virtual {p0, v6}, Ljava/nio/StringCharBuffer;->get(I)C

    move-result v6

    add-int v7, v2, v5

    invoke-virtual {p1, v7}, Ljava/nio/CharBuffer;->get(I)C

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Character;->compare(CC)I

    move-result v6

    return v6

    .line 186
    :cond_31
    sub-int v6, v1, v3

    return v6
.end method

.method public bridge synthetic whitelist test-api duplicate()Ljava/nio/Buffer;
    .registers 2

    .line 32
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->duplicate()Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api duplicate()Ljava/nio/CharBuffer;
    .registers 8

    .line 84
    new-instance v0, Ljava/nio/StringCharBuffer;

    iget-object v1, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->markValue()I

    move-result v2

    .line 85
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->position()I

    move-result v3

    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->limit()I

    move-result v4

    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->capacity()I

    move-result v5

    iget v6, p0, Ljava/nio/StringCharBuffer;->offset:I

    invoke-direct/range {v0 .. v6}, Ljava/nio/StringCharBuffer;-><init>(Ljava/lang/CharSequence;IIIII)V

    .line 84
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "ob"    # Ljava/lang/Object;

    .line 157
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 158
    return v0

    .line 159
    :cond_4
    instance-of v1, p1, Ljava/nio/CharBuffer;

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    move-object v1, p1

    check-cast v1, Ljava/nio/CharBuffer;

    .line 161
    .local v1, "that":Ljava/nio/CharBuffer;
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->position()I

    move-result v3

    .line 162
    .local v3, "thisPos":I
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->limit()I

    move-result v4

    sub-int/2addr v4, v3

    .line 163
    .local v4, "thisRem":I
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    move-result v5

    .line 164
    .local v5, "thatPos":I
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->limit()I

    move-result v6

    sub-int/2addr v6, v5

    .line 165
    .local v6, "thatRem":I
    if-ltz v4, :cond_2c

    if-eq v4, v6, :cond_23

    goto :goto_2c

    .line 167
    :cond_23
    invoke-static {p0, v3, v1, v5, v4}, Ljava/nio/BufferMismatch;->mismatch(Ljava/nio/CharBuffer;ILjava/nio/CharBuffer;II)I

    move-result v7

    if-gez v7, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v2

    :goto_2b
    return v0

    .line 166
    :cond_2c
    :goto_2c
    return v2

    .line 160
    .end local v1    # "that":Ljava/nio/CharBuffer;
    .end local v3    # "thisPos":I
    .end local v4    # "thisRem":I
    .end local v5    # "thatPos":I
    .end local v6    # "thatRem":I
    :cond_2d
    return v2
.end method

.method public final whitelist test-api get()C
    .registers 4

    .line 93
    iget-object v0, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->nextGetIndex()I

    move-result v1

    iget v2, p0, Ljava/nio/StringCharBuffer;->offset:I

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final whitelist test-api get(I)C
    .registers 5
    .param p1, "index"    # I

    .line 97
    iget-object v0, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/nio/StringCharBuffer;->checkIndex(I)I

    move-result v1

    iget v2, p0, Ljava/nio/StringCharBuffer;->offset:I

    add-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method blacklist getUnchecked(I)C
    .registers 4
    .param p1, "index"    # I

    .line 101
    iget-object v0, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    iget v1, p0, Ljava/nio/StringCharBuffer;->offset:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method blacklist isAddressable()Z
    .registers 2

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isDirect()Z
    .registers 2

    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist test-api isReadOnly()Z
    .registers 2

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api order()Ljava/nio/ByteOrder;
    .registers 2

    .line 145
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api put(C)Ljava/nio/CharBuffer;
    .registers 3
    .param p1, "c"    # C

    .line 107
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api put(IC)Ljava/nio/CharBuffer;
    .registers 4
    .param p1, "index"    # I
    .param p2, "c"    # C

    .line 111
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api slice()Ljava/nio/Buffer;
    .registers 2

    .line 32
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->slice()Ljava/nio/CharBuffer;

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

    .line 32
    invoke-virtual {p0, p1, p2}, Ljava/nio/StringCharBuffer;->slice(II)Ljava/nio/CharBuffer;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api slice()Ljava/nio/CharBuffer;
    .registers 11

    .line 48
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->position()I

    move-result v0

    .line 49
    .local v0, "pos":I
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->limit()I

    move-result v1

    .line 50
    .local v1, "lim":I
    if-gt v0, v1, :cond_d

    sub-int v2, v1, v0

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    move v7, v2

    .line 51
    .local v7, "rem":I
    new-instance v3, Ljava/nio/StringCharBuffer;

    iget-object v4, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    iget v2, p0, Ljava/nio/StringCharBuffer;->offset:I

    add-int v9, v2, v0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move v8, v7

    invoke-direct/range {v3 .. v9}, Ljava/nio/StringCharBuffer;-><init>(Ljava/lang/CharSequence;IIIII)V

    return-object v3
.end method

.method public whitelist test-api slice(II)Ljava/nio/CharBuffer;
    .registers 11
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 61
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->limit()I

    move-result v0

    invoke-static {p1, p2, v0}, Ljava/util/Objects;->checkFromIndexSize(III)I

    .line 62
    new-instance v1, Ljava/nio/StringCharBuffer;

    iget-object v2, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    iget v0, p0, Ljava/nio/StringCharBuffer;->offset:I

    add-int v7, v0, p1

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v6, p2

    move v5, p2

    .end local p2    # "length":I
    .local v5, "length":I
    invoke-direct/range {v1 .. v7}, Ljava/nio/StringCharBuffer;-><init>(Ljava/lang/CharSequence;IIIII)V

    return-object v1
.end method

.method public bridge synthetic whitelist test-api subSequence(II)Ljava/lang/CharSequence;
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

    .line 32
    invoke-virtual {p0, p1, p2}, Ljava/nio/StringCharBuffer;->subSequence(II)Ljava/nio/CharBuffer;

    move-result-object p1

    return-object p1
.end method

.method public final whitelist test-api subSequence(II)Ljava/nio/CharBuffer;
    .registers 11
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 128
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->position()I

    move-result v0

    .line 129
    .local v0, "pos":I
    new-instance v1, Ljava/nio/StringCharBuffer;

    iget-object v2, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    .line 131
    invoke-virtual {p0, p1, v0}, Ljava/nio/StringCharBuffer;->checkIndex(II)I

    move-result v3

    add-int v4, v0, v3

    .line 132
    invoke-virtual {p0, p2, v0}, Ljava/nio/StringCharBuffer;->checkIndex(II)I

    move-result v3

    add-int v5, v0, v3

    .line 133
    invoke-virtual {p0}, Ljava/nio/StringCharBuffer;->capacity()I

    move-result v6

    iget v7, p0, Ljava/nio/StringCharBuffer;->offset:I

    const/4 v3, -0x1

    invoke-direct/range {v1 .. v7}, Ljava/nio/StringCharBuffer;-><init>(Ljava/lang/CharSequence;IIIII)V
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 129
    return-object v1

    .line 135
    .end local v0    # "pos":I
    :catch_1f
    move-exception v0

    .line 136
    .local v0, "x":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method final blacklist toString(II)Ljava/lang/String;
    .registers 6
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 123
    iget-object v0, p0, Ljava/nio/StringCharBuffer;->str:Ljava/lang/CharSequence;

    iget v1, p0, Ljava/nio/StringCharBuffer;->offset:I

    add-int/2addr v1, p1

    iget v2, p0, Ljava/nio/StringCharBuffer;->offset:I

    add-int/2addr v2, p2

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
