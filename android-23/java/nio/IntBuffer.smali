.class public abstract Ljava/nio/IntBuffer;
.super Ljava/nio/Buffer;
.source "IntBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/IntBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(IJ)V
    .locals 2
    .param p1, "capacity"    # I
    .param p2, "effectiveDirectAddress"    # J

    #@0
    .prologue
    .line 93
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0, p1, p2, p3}, Ljava/nio/Buffer;-><init>(IIJ)V

    #@4
    .line 92
    return-void
.end method

.method public static allocate(I)Ljava/nio/IntBuffer;
    .locals 3
    .param p0, "capacity"    # I

    #@0
    .prologue
    .line 46
    if-gez p0, :cond_0

    #@2
    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "capacity < 0: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 49
    :cond_0
    new-instance v0, Ljava/nio/IntArrayBuffer;

    #@1e
    new-array v1, p0, [I

    #@20
    invoke-direct {v0, v1}, Ljava/nio/IntArrayBuffer;-><init>([I)V

    #@23
    return-object v0
.end method

.method public static wrap([I)Ljava/nio/IntBuffer;
    .locals 2
    .param p0, "array"    # [I

    #@0
    .prologue
    .line 63
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0}, Ljava/nio/IntBuffer;->wrap([III)Ljava/nio/IntBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static wrap([III)Ljava/nio/IntBuffer;
    .locals 2
    .param p0, "array"    # [I
    .param p1, "start"    # I
    .param p2, "intCount"    # I

    #@0
    .prologue
    .line 85
    array-length v1, p0

    #@1
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 86
    new-instance v0, Ljava/nio/IntArrayBuffer;

    #@6
    invoke-direct {v0, p0}, Ljava/nio/IntArrayBuffer;-><init>([I)V

    #@9
    .line 87
    .local v0, "buf":Ljava/nio/IntBuffer;
    iput p1, v0, Ljava/nio/IntBuffer;->position:I

    #@b
    .line 88
    add-int v1, p1, p2

    #@d
    iput v1, v0, Ljava/nio/IntBuffer;->limit:I

    #@f
    .line 89
    return-object v0
.end method


# virtual methods
.method public bridge synthetic array()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 96
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->array()[I

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final array()[I
    .locals 1

    #@0
    .prologue
    .line 97
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->protectedArray()[I

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final arrayOffset()I
    .locals 1

    #@0
    .prologue
    .line 101
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->protectedArrayOffset()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/IntBuffer;
.end method

.method public abstract compact()Ljava/nio/IntBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "otherBuffer"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 144
    check-cast p1, Ljava/nio/IntBuffer;

    #@2
    .end local p1    # "otherBuffer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/nio/IntBuffer;->compareTo(Ljava/nio/IntBuffer;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Ljava/nio/IntBuffer;)I
    .locals 7
    .param p1, "otherBuffer"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 145
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    #@3
    move-result v5

    #@4
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    #@7
    move-result v6

    #@8
    if-ge v5, v6, :cond_0

    #@a
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    #@d
    move-result v0

    #@e
    .line 147
    .local v0, "compareRemaining":I
    :goto_0
    iget v4, p0, Ljava/nio/IntBuffer;->position:I

    #@10
    .line 148
    .local v4, "thisPos":I
    iget v2, p1, Ljava/nio/IntBuffer;->position:I

    #@12
    .line 150
    .local v2, "otherPos":I
    :goto_1
    if-lez v0, :cond_3

    #@14
    .line 151
    invoke-virtual {p0, v4}, Ljava/nio/IntBuffer;->get(I)I

    #@17
    move-result v3

    #@18
    .line 152
    .local v3, "thisInt":I
    invoke-virtual {p1, v2}, Ljava/nio/IntBuffer;->get(I)I

    #@1b
    move-result v1

    #@1c
    .line 153
    .local v1, "otherInt":I
    if-eq v3, v1, :cond_2

    #@1e
    .line 154
    if-ge v3, v1, :cond_1

    #@20
    const/4 v5, -0x1

    #@21
    :goto_2
    return v5

    #@22
    .line 146
    .end local v0    # "compareRemaining":I
    .end local v1    # "otherInt":I
    .end local v2    # "otherPos":I
    .end local v3    # "thisInt":I
    .end local v4    # "thisPos":I
    :cond_0
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    #@25
    move-result v0

    #@26
    .restart local v0    # "compareRemaining":I
    goto :goto_0

    #@27
    .line 154
    .restart local v1    # "otherInt":I
    .restart local v2    # "otherPos":I
    .restart local v3    # "thisInt":I
    .restart local v4    # "thisPos":I
    :cond_1
    const/4 v5, 0x1

    #@28
    goto :goto_2

    #@29
    .line 156
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@2b
    .line 157
    add-int/lit8 v2, v2, 0x1

    #@2d
    .line 158
    add-int/lit8 v0, v0, -0x1

    #@2f
    goto :goto_1

    #@30
    .line 160
    .end local v1    # "otherInt":I
    .end local v3    # "thisInt":I
    :cond_3
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    #@33
    move-result v5

    #@34
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    #@37
    move-result v6

    #@38
    sub-int/2addr v5, v6

    #@39
    return v5
.end method

.method public abstract duplicate()Ljava/nio/IntBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 190
    instance-of v6, p1, Ljava/nio/IntBuffer;

    #@3
    if-nez v6, :cond_0

    #@5
    .line 191
    return v8

    #@6
    :cond_0
    move-object v3, p1

    #@7
    .line 193
    check-cast v3, Ljava/nio/IntBuffer;

    #@9
    .line 195
    .local v3, "otherBuffer":Ljava/nio/IntBuffer;
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    #@c
    move-result v6

    #@d
    invoke-virtual {v3}, Ljava/nio/IntBuffer;->remaining()I

    #@10
    move-result v7

    #@11
    if-eq v6, v7, :cond_1

    #@13
    .line 196
    return v8

    #@14
    .line 199
    :cond_1
    iget v1, p0, Ljava/nio/IntBuffer;->position:I

    #@16
    .line 200
    .local v1, "myPosition":I
    iget v4, v3, Ljava/nio/IntBuffer;->position:I

    #@18
    .line 201
    .local v4, "otherPosition":I
    const/4 v0, 0x1

    #@19
    .local v0, "equalSoFar":Z
    move v5, v4

    #@1a
    .end local v4    # "otherPosition":I
    .local v5, "otherPosition":I
    move v2, v1

    #@1b
    .line 202
    .end local v1    # "myPosition":I
    .local v2, "myPosition":I
    :goto_0
    if-eqz v0, :cond_3

    #@1d
    iget v6, p0, Ljava/nio/IntBuffer;->limit:I

    #@1f
    if-ge v2, v6, :cond_3

    #@21
    .line 203
    add-int/lit8 v1, v2, 0x1

    #@23
    .end local v2    # "myPosition":I
    .restart local v1    # "myPosition":I
    invoke-virtual {p0, v2}, Ljava/nio/IntBuffer;->get(I)I

    #@26
    move-result v6

    #@27
    add-int/lit8 v4, v5, 0x1

    #@29
    .end local v5    # "otherPosition":I
    .restart local v4    # "otherPosition":I
    invoke-virtual {v3, v5}, Ljava/nio/IntBuffer;->get(I)I

    #@2c
    move-result v7

    #@2d
    if-ne v6, v7, :cond_2

    #@2f
    const/4 v0, 0x1

    #@30
    :goto_1
    move v5, v4

    #@31
    .end local v4    # "otherPosition":I
    .restart local v5    # "otherPosition":I
    move v2, v1

    #@32
    .end local v1    # "myPosition":I
    .restart local v2    # "myPosition":I
    goto :goto_0

    #@33
    .end local v2    # "myPosition":I
    .end local v5    # "otherPosition":I
    .restart local v1    # "myPosition":I
    .restart local v4    # "otherPosition":I
    :cond_2
    const/4 v0, 0x0

    #@34
    goto :goto_1

    #@35
    .line 206
    .end local v1    # "myPosition":I
    .end local v4    # "otherPosition":I
    .restart local v2    # "myPosition":I
    .restart local v5    # "otherPosition":I
    :cond_3
    return v0
.end method

.method public abstract get()I
.end method

.method public abstract get(I)I
.end method

.method public get([I)Ljava/nio/IntBuffer;
    .locals 2
    .param p1, "dst"    # [I

    #@0
    .prologue
    .line 232
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/IntBuffer;->get([III)Ljava/nio/IntBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public get([III)Ljava/nio/IntBuffer;
    .locals 2
    .param p1, "dst"    # [I
    .param p2, "dstOffset"    # I
    .param p3, "intCount"    # I

    #@0
    .prologue
    .line 255
    array-length v1, p1

    #@1
    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 256
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    #@7
    move-result v1

    #@8
    if-le p3, v1, :cond_0

    #@a
    .line 257
    new-instance v1, Ljava/nio/BufferUnderflowException;

    #@c
    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@f
    throw v1

    #@10
    .line 259
    :cond_0
    move v0, p2

    #@11
    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    #@13
    if-ge v0, v1, :cond_1

    #@15
    .line 260
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->get()I

    #@18
    move-result v1

    #@19
    aput v1, p1, v0

    #@1b
    .line 259
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 262
    :cond_1
    return-object p0
.end method

.method public final hasArray()Z
    .locals 1

    #@0
    .prologue
    .line 277
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->protectedHasArray()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 288
    iget v1, p0, Ljava/nio/IntBuffer;->position:I

    #@2
    .line 289
    .local v1, "myPosition":I
    const/4 v0, 0x0

    #@3
    .line 290
    .local v0, "hash":I
    :goto_0
    iget v3, p0, Ljava/nio/IntBuffer;->limit:I

    #@5
    if-ge v1, v3, :cond_0

    #@7
    .line 291
    add-int/lit8 v2, v1, 0x1

    #@9
    .end local v1    # "myPosition":I
    .local v2, "myPosition":I
    invoke-virtual {p0, v1}, Ljava/nio/IntBuffer;->get(I)I

    #@c
    move-result v3

    #@d
    add-int/2addr v0, v3

    #@e
    move v1, v2

    #@f
    .end local v2    # "myPosition":I
    .restart local v1    # "myPosition":I
    goto :goto_0

    #@10
    .line 293
    :cond_0
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method abstract protectedArray()[I
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(I)Ljava/nio/IntBuffer;
.end method

.method public abstract put(II)Ljava/nio/IntBuffer;
.end method

.method public put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;
    .locals 3
    .param p1, "src"    # Ljava/nio/IntBuffer;

    #@0
    .prologue
    .line 426
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->isReadOnly()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 427
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    #@8
    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@b
    throw v1

    #@c
    .line 429
    :cond_0
    if-ne p1, p0, :cond_1

    #@e
    .line 430
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v2, "src == this"

    #@13
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 432
    :cond_1
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    #@1a
    move-result v1

    #@1b
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    #@1e
    move-result v2

    #@1f
    if-le v1, v2, :cond_2

    #@21
    .line 433
    new-instance v1, Ljava/nio/BufferOverflowException;

    #@23
    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    #@26
    throw v1

    #@27
    .line 435
    :cond_2
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->remaining()I

    #@2a
    move-result v1

    #@2b
    new-array v0, v1, [I

    #@2d
    .line 436
    .local v0, "contents":[I
    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    #@30
    .line 437
    invoke-virtual {p0, v0}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    #@33
    .line 438
    return-object p0
.end method

.method public final put([I)Ljava/nio/IntBuffer;
    .locals 2
    .param p1, "src"    # [I

    #@0
    .prologue
    .line 371
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public put([III)Ljava/nio/IntBuffer;
    .locals 2
    .param p1, "src"    # [I
    .param p2, "srcOffset"    # I
    .param p3, "intCount"    # I

    #@0
    .prologue
    .line 396
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->isReadOnly()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 397
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    #@8
    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@b
    throw v1

    #@c
    .line 399
    :cond_0
    array-length v1, p1

    #@d
    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@10
    .line 400
    invoke-virtual {p0}, Ljava/nio/IntBuffer;->remaining()I

    #@13
    move-result v1

    #@14
    if-le p3, v1, :cond_1

    #@16
    .line 401
    new-instance v1, Ljava/nio/BufferOverflowException;

    #@18
    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    #@1b
    throw v1

    #@1c
    .line 403
    :cond_1
    move v0, p2

    #@1d
    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    #@1f
    if-ge v0, v1, :cond_2

    #@21
    .line 404
    aget v1, p1, v0

    #@23
    invoke-virtual {p0, v1}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    #@26
    .line 403
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 406
    :cond_2
    return-object p0
.end method

.method public abstract slice()Ljava/nio/IntBuffer;
.end method
