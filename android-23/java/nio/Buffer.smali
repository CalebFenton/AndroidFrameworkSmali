.class public abstract Ljava/nio/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"


# static fields
.field static final UNSET_MARK:I = -0x1


# instance fields
.field final _elementSizeShift:I

.field final capacity:I

.field final effectiveDirectAddress:J

.field limit:I

.field mark:I

.field position:I


# direct methods
.method constructor <init>(IIJ)V
    .locals 3
    .param p1, "elementSizeShift"    # I
    .param p2, "capacity"    # I
    .param p3, "effectiveDirectAddress"    # J

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 69
    const/4 v0, -0x1

    #@5
    iput v0, p0, Ljava/nio/Buffer;->mark:I

    #@7
    .line 75
    iput v1, p0, Ljava/nio/Buffer;->position:I

    #@9
    .line 92
    iput p1, p0, Ljava/nio/Buffer;->_elementSizeShift:I

    #@b
    .line 93
    if-gez p2, :cond_0

    #@d
    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "capacity < 0: "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 96
    :cond_0
    iput p2, p0, Ljava/nio/Buffer;->limit:I

    #@29
    iput p2, p0, Ljava/nio/Buffer;->capacity:I

    #@2b
    .line 97
    iput-wide p3, p0, Ljava/nio/Buffer;->effectiveDirectAddress:J

    #@2d
    .line 91
    return-void
.end method


# virtual methods
.method public abstract array()Ljava/lang/Object;
.end method

.method public abstract arrayOffset()I
.end method

.method public final capacity()I
    .locals 1

    #@0
    .prologue
    .line 142
    iget v0, p0, Ljava/nio/Buffer;->capacity:I

    #@2
    return v0
.end method

.method checkGetBounds(IIII)I
    .locals 4
    .param p1, "bytesPerElement"    # I
    .param p2, "length"    # I
    .param p3, "offset"    # I
    .param p4, "count"    # I

    #@0
    .prologue
    .line 165
    mul-int v0, p1, p4

    #@2
    .line 166
    .local v0, "byteCount":I
    or-int v1, p3, p4

    #@4
    if-ltz v1, :cond_0

    #@6
    if-le p3, p2, :cond_1

    #@8
    .line 167
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "offset="

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    .line 168
    const-string/jumbo v3, ", count="

    #@1d
    .line 167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    .line 168
    const-string/jumbo v3, ", length="

    #@28
    .line 167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@37
    throw v1

    #@38
    .line 166
    :cond_1
    sub-int v1, p2, p3

    #@3a
    if-lt v1, p4, :cond_0

    #@3c
    .line 170
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    #@3f
    move-result v1

    #@40
    if-le v0, v1, :cond_2

    #@42
    .line 171
    new-instance v1, Ljava/nio/BufferUnderflowException;

    #@44
    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@47
    throw v1

    #@48
    .line 173
    :cond_2
    return v0
.end method

.method checkIndex(I)V
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 149
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Ljava/nio/Buffer;->limit:I

    #@4
    if-lt p1, v0, :cond_1

    #@6
    .line 150
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "index="

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, ", limit="

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    iget v2, p0, Ljava/nio/Buffer;->limit:I

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v0

    #@2d
    .line 148
    :cond_1
    return-void
.end method

.method checkIndex(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "sizeOfType"    # I

    #@0
    .prologue
    .line 158
    if-ltz p1, :cond_0

    #@2
    iget v0, p0, Ljava/nio/Buffer;->limit:I

    #@4
    sub-int/2addr v0, p2

    #@5
    if-le p1, v0, :cond_1

    #@7
    .line 159
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "index="

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, ", limit="

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    iget v2, p0, Ljava/nio/Buffer;->limit:I

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    .line 160
    const-string/jumbo v2, ", size of type="

    #@29
    .line 159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@38
    throw v0

    #@39
    .line 157
    :cond_1
    return-void
.end method

.method checkPutBounds(IIII)I
    .locals 4
    .param p1, "bytesPerElement"    # I
    .param p2, "length"    # I
    .param p3, "offset"    # I
    .param p4, "count"    # I

    #@0
    .prologue
    .line 177
    mul-int v0, p1, p4

    #@2
    .line 178
    .local v0, "byteCount":I
    or-int v1, p3, p4

    #@4
    if-ltz v1, :cond_0

    #@6
    if-le p3, p2, :cond_1

    #@8
    .line 179
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v3, "offset="

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    .line 180
    const-string/jumbo v3, ", count="

    #@1d
    .line 179
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    .line 180
    const-string/jumbo v3, ", length="

    #@28
    .line 179
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@37
    throw v1

    #@38
    .line 178
    :cond_1
    sub-int v1, p2, p3

    #@3a
    if-lt v1, p4, :cond_0

    #@3c
    .line 182
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    #@3f
    move-result v1

    #@40
    if-le v0, v1, :cond_2

    #@42
    .line 183
    new-instance v1, Ljava/nio/BufferOverflowException;

    #@44
    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    #@47
    throw v1

    #@48
    .line 185
    :cond_2
    invoke-virtual {p0}, Ljava/nio/Buffer;->isReadOnly()Z

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_3

    #@4e
    .line 186
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    #@50
    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@53
    throw v1

    #@54
    .line 188
    :cond_3
    return v0
.end method

.method checkStartEndRemaining(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 192
    if-lt p2, p1, :cond_0

    #@2
    if-gez p1, :cond_1

    #@4
    .line 193
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "start="

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, ", end="

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    .line 194
    const-string/jumbo v2, ", remaining()="

    #@24
    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 194
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    #@2b
    move-result v2

    #@2c
    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0

    #@38
    .line 192
    :cond_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    #@3b
    move-result v0

    #@3c
    if-gt p2, v0, :cond_0

    #@3e
    .line 191
    return-void
.end method

.method final checkWritable()V
    .locals 2

    #@0
    .prologue
    .line 267
    invoke-virtual {p0}, Ljava/nio/Buffer;->isReadOnly()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 268
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Read-only buffer"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 266
    :cond_0
    return-void
.end method

.method public final clear()Ljava/nio/Buffer;
    .locals 1

    #@0
    .prologue
    .line 209
    const/4 v0, 0x0

    #@1
    iput v0, p0, Ljava/nio/Buffer;->position:I

    #@3
    .line 210
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/nio/Buffer;->mark:I

    #@6
    .line 211
    iget v0, p0, Ljava/nio/Buffer;->capacity:I

    #@8
    iput v0, p0, Ljava/nio/Buffer;->limit:I

    #@a
    .line 212
    return-object p0
.end method

.method public final flip()Ljava/nio/Buffer;
    .locals 1

    #@0
    .prologue
    .line 226
    iget v0, p0, Ljava/nio/Buffer;->position:I

    #@2
    iput v0, p0, Ljava/nio/Buffer;->limit:I

    #@4
    .line 227
    const/4 v0, 0x0

    #@5
    iput v0, p0, Ljava/nio/Buffer;->position:I

    #@7
    .line 228
    const/4 v0, -0x1

    #@8
    iput v0, p0, Ljava/nio/Buffer;->mark:I

    #@a
    .line 229
    return-object p0
.end method

.method public final getElementSizeShift()I
    .locals 1

    #@0
    .prologue
    .line 409
    iget v0, p0, Ljava/nio/Buffer;->_elementSizeShift:I

    #@2
    return v0
.end method

.method public abstract hasArray()Z
.end method

.method public final hasRemaining()Z
    .locals 2

    #@0
    .prologue
    .line 249
    iget v0, p0, Ljava/nio/Buffer;->position:I

    #@2
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    #@4
    if-ge v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract isReadOnly()Z
.end method

.method public final limit()I
    .locals 1

    #@0
    .prologue
    .line 278
    iget v0, p0, Ljava/nio/Buffer;->limit:I

    #@2
    return v0
.end method

.method public final limit(I)Ljava/nio/Buffer;
    .locals 3
    .param p1, "newLimit"    # I

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 297
    if-ltz p1, :cond_0

    #@3
    iget v0, p0, Ljava/nio/Buffer;->capacity:I

    #@5
    if-le p1, v0, :cond_1

    #@7
    .line 298
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Bad limit (capacity "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    iget v2, p0, Ljava/nio/Buffer;->capacity:I

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v2, "): "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 301
    :cond_1
    iput p1, p0, Ljava/nio/Buffer;->limit:I

    #@30
    .line 302
    iget v0, p0, Ljava/nio/Buffer;->position:I

    #@32
    if-le v0, p1, :cond_2

    #@34
    .line 303
    iput p1, p0, Ljava/nio/Buffer;->position:I

    #@36
    .line 305
    :cond_2
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    #@38
    if-eq v0, v1, :cond_3

    #@3a
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    #@3c
    if-le v0, p1, :cond_3

    #@3e
    .line 306
    iput v1, p0, Ljava/nio/Buffer;->mark:I

    #@40
    .line 308
    :cond_3
    return-object p0
.end method

.method public final mark()Ljava/nio/Buffer;
    .locals 1

    #@0
    .prologue
    .line 318
    iget v0, p0, Ljava/nio/Buffer;->position:I

    #@2
    iput v0, p0, Ljava/nio/Buffer;->mark:I

    #@4
    .line 319
    return-object p0
.end method

.method public final position()I
    .locals 1

    #@0
    .prologue
    .line 328
    iget v0, p0, Ljava/nio/Buffer;->position:I

    #@2
    return v0
.end method

.method public final position(I)Ljava/nio/Buffer;
    .locals 0
    .param p1, "newPosition"    # I

    #@0
    .prologue
    .line 345
    invoke-virtual {p0, p1}, Ljava/nio/Buffer;->positionImpl(I)V

    #@3
    .line 346
    return-object p0
.end method

.method positionImpl(I)V
    .locals 3
    .param p1, "newPosition"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 350
    if-ltz p1, :cond_0

    #@3
    iget v0, p0, Ljava/nio/Buffer;->limit:I

    #@5
    if-le p1, v0, :cond_1

    #@7
    .line 351
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "Bad position (limit "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    iget v2, p0, Ljava/nio/Buffer;->limit:I

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v2, "): "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v0

    #@2e
    .line 354
    :cond_1
    iput p1, p0, Ljava/nio/Buffer;->position:I

    #@30
    .line 355
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    #@32
    if-eq v0, v2, :cond_2

    #@34
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    #@36
    iget v1, p0, Ljava/nio/Buffer;->position:I

    #@38
    if-le v0, v1, :cond_2

    #@3a
    .line 356
    iput v2, p0, Ljava/nio/Buffer;->mark:I

    #@3c
    .line 349
    :cond_2
    return-void
.end method

.method public final remaining()I
    .locals 2

    #@0
    .prologue
    .line 367
    iget v0, p0, Ljava/nio/Buffer;->limit:I

    #@2
    iget v1, p0, Ljava/nio/Buffer;->position:I

    #@4
    sub-int/2addr v0, v1

    #@5
    return v0
.end method

.method public final reset()Ljava/nio/Buffer;
    .locals 2

    #@0
    .prologue
    .line 378
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 379
    new-instance v0, Ljava/nio/InvalidMarkException;

    #@7
    const-string/jumbo v1, "Mark not set"

    #@a
    invoke-direct {v0, v1}, Ljava/nio/InvalidMarkException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 381
    :cond_0
    iget v0, p0, Ljava/nio/Buffer;->mark:I

    #@10
    iput v0, p0, Ljava/nio/Buffer;->position:I

    #@12
    .line 382
    return-object p0
.end method

.method public final rewind()Ljava/nio/Buffer;
    .locals 1

    #@0
    .prologue
    .line 394
    const/4 v0, 0x0

    #@1
    iput v0, p0, Ljava/nio/Buffer;->position:I

    #@3
    .line 395
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/nio/Buffer;->mark:I

    #@6
    .line 396
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/nio/Buffer;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    .line 404
    const-string/jumbo v1, "[position="

    #@14
    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 404
    iget v1, p0, Ljava/nio/Buffer;->position:I

    #@1a
    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    .line 404
    const-string/jumbo v1, ",limit="

    #@21
    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v0

    #@25
    .line 404
    iget v1, p0, Ljava/nio/Buffer;->limit:I

    #@27
    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    .line 404
    const-string/jumbo v1, ",capacity="

    #@2e
    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    .line 404
    iget v1, p0, Ljava/nio/Buffer;->capacity:I

    #@34
    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    .line 404
    const-string/jumbo v1, "]"

    #@3b
    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v0

    #@43
    return-object v0
.end method
