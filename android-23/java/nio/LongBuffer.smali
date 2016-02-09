.class public abstract Ljava/nio/LongBuffer;
.super Ljava/nio/Buffer;
.source "LongBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/LongBuffer;",
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
    .line 95
    const/4 v0, 0x3

    #@1
    invoke-direct {p0, v0, p1, p2, p3}, Ljava/nio/Buffer;-><init>(IIJ)V

    #@4
    .line 94
    return-void
.end method

.method public static allocate(I)Ljava/nio/LongBuffer;
    .locals 3
    .param p0, "capacity"    # I

    #@0
    .prologue
    .line 48
    if-gez p0, :cond_0

    #@2
    .line 49
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
    .line 51
    :cond_0
    new-instance v0, Ljava/nio/LongArrayBuffer;

    #@1e
    new-array v1, p0, [J

    #@20
    invoke-direct {v0, v1}, Ljava/nio/LongArrayBuffer;-><init>([J)V

    #@23
    return-object v0
.end method

.method public static wrap([J)Ljava/nio/LongBuffer;
    .locals 2
    .param p0, "array"    # [J

    #@0
    .prologue
    .line 65
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0}, Ljava/nio/LongBuffer;->wrap([JII)Ljava/nio/LongBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static wrap([JII)Ljava/nio/LongBuffer;
    .locals 2
    .param p0, "array"    # [J
    .param p1, "start"    # I
    .param p2, "longCount"    # I

    #@0
    .prologue
    .line 87
    array-length v1, p0

    #@1
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 88
    new-instance v0, Ljava/nio/LongArrayBuffer;

    #@6
    invoke-direct {v0, p0}, Ljava/nio/LongArrayBuffer;-><init>([J)V

    #@9
    .line 89
    .local v0, "buf":Ljava/nio/LongBuffer;
    iput p1, v0, Ljava/nio/LongBuffer;->position:I

    #@b
    .line 90
    add-int v1, p1, p2

    #@d
    iput v1, v0, Ljava/nio/LongBuffer;->limit:I

    #@f
    .line 91
    return-object v0
.end method


# virtual methods
.method public bridge synthetic array()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 98
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->array()[J

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final array()[J
    .locals 1

    #@0
    .prologue
    .line 99
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->protectedArray()[J

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final arrayOffset()I
    .locals 1

    #@0
    .prologue
    .line 103
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->protectedArrayOffset()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/LongBuffer;
.end method

.method public abstract compact()Ljava/nio/LongBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "otherBuffer"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 146
    check-cast p1, Ljava/nio/LongBuffer;

    #@2
    .end local p1    # "otherBuffer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/nio/LongBuffer;->compareTo(Ljava/nio/LongBuffer;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Ljava/nio/LongBuffer;)I
    .locals 9
    .param p1, "otherBuffer"    # Ljava/nio/LongBuffer;

    #@0
    .prologue
    .line 147
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    #@3
    move-result v7

    #@4
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    #@7
    move-result v8

    #@8
    if-ge v7, v8, :cond_0

    #@a
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    #@d
    move-result v0

    #@e
    .line 149
    .local v0, "compareRemaining":I
    :goto_0
    iget v6, p0, Ljava/nio/LongBuffer;->position:I

    #@10
    .line 150
    .local v6, "thisPos":I
    iget v1, p1, Ljava/nio/LongBuffer;->position:I

    #@12
    .line 152
    .local v1, "otherPos":I
    :goto_1
    if-lez v0, :cond_3

    #@14
    .line 153
    invoke-virtual {p0, v6}, Ljava/nio/LongBuffer;->get(I)J

    #@17
    move-result-wide v4

    #@18
    .line 154
    .local v4, "thisLong":J
    invoke-virtual {p1, v1}, Ljava/nio/LongBuffer;->get(I)J

    #@1b
    move-result-wide v2

    #@1c
    .line 155
    .local v2, "otherLong":J
    cmp-long v7, v4, v2

    #@1e
    if-eqz v7, :cond_2

    #@20
    .line 156
    cmp-long v7, v4, v2

    #@22
    if-gez v7, :cond_1

    #@24
    const/4 v7, -0x1

    #@25
    :goto_2
    return v7

    #@26
    .line 148
    .end local v0    # "compareRemaining":I
    .end local v1    # "otherPos":I
    .end local v2    # "otherLong":J
    .end local v4    # "thisLong":J
    .end local v6    # "thisPos":I
    :cond_0
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    #@29
    move-result v0

    #@2a
    .restart local v0    # "compareRemaining":I
    goto :goto_0

    #@2b
    .line 156
    .restart local v1    # "otherPos":I
    .restart local v2    # "otherLong":J
    .restart local v4    # "thisLong":J
    .restart local v6    # "thisPos":I
    :cond_1
    const/4 v7, 0x1

    #@2c
    goto :goto_2

    #@2d
    .line 158
    :cond_2
    add-int/lit8 v6, v6, 0x1

    #@2f
    .line 159
    add-int/lit8 v1, v1, 0x1

    #@31
    .line 160
    add-int/lit8 v0, v0, -0x1

    #@33
    goto :goto_1

    #@34
    .line 162
    .end local v2    # "otherLong":J
    .end local v4    # "thisLong":J
    :cond_3
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    #@37
    move-result v7

    #@38
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    #@3b
    move-result v8

    #@3c
    sub-int/2addr v7, v8

    #@3d
    return v7
.end method

.method public abstract duplicate()Ljava/nio/LongBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 192
    instance-of v6, p1, Ljava/nio/LongBuffer;

    #@3
    if-nez v6, :cond_0

    #@5
    .line 193
    return v8

    #@6
    :cond_0
    move-object v3, p1

    #@7
    .line 195
    check-cast v3, Ljava/nio/LongBuffer;

    #@9
    .line 197
    .local v3, "otherBuffer":Ljava/nio/LongBuffer;
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    #@c
    move-result v6

    #@d
    invoke-virtual {v3}, Ljava/nio/LongBuffer;->remaining()I

    #@10
    move-result v7

    #@11
    if-eq v6, v7, :cond_1

    #@13
    .line 198
    return v8

    #@14
    .line 201
    :cond_1
    iget v1, p0, Ljava/nio/LongBuffer;->position:I

    #@16
    .line 202
    .local v1, "myPosition":I
    iget v4, v3, Ljava/nio/LongBuffer;->position:I

    #@18
    .line 203
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
    .line 204
    .end local v1    # "myPosition":I
    .local v2, "myPosition":I
    :goto_0
    if-eqz v0, :cond_3

    #@1d
    iget v6, p0, Ljava/nio/LongBuffer;->limit:I

    #@1f
    if-ge v2, v6, :cond_3

    #@21
    .line 205
    add-int/lit8 v1, v2, 0x1

    #@23
    .end local v2    # "myPosition":I
    .restart local v1    # "myPosition":I
    invoke-virtual {p0, v2}, Ljava/nio/LongBuffer;->get(I)J

    #@26
    move-result-wide v6

    #@27
    add-int/lit8 v4, v5, 0x1

    #@29
    .end local v5    # "otherPosition":I
    .restart local v4    # "otherPosition":I
    invoke-virtual {v3, v5}, Ljava/nio/LongBuffer;->get(I)J

    #@2c
    move-result-wide v8

    #@2d
    cmp-long v6, v6, v8

    #@2f
    if-nez v6, :cond_2

    #@31
    const/4 v0, 0x1

    #@32
    :goto_1
    move v5, v4

    #@33
    .end local v4    # "otherPosition":I
    .restart local v5    # "otherPosition":I
    move v2, v1

    #@34
    .end local v1    # "myPosition":I
    .restart local v2    # "myPosition":I
    goto :goto_0

    #@35
    .end local v2    # "myPosition":I
    .end local v5    # "otherPosition":I
    .restart local v1    # "myPosition":I
    .restart local v4    # "otherPosition":I
    :cond_2
    const/4 v0, 0x0

    #@36
    goto :goto_1

    #@37
    .line 208
    .end local v1    # "myPosition":I
    .end local v4    # "otherPosition":I
    .restart local v2    # "myPosition":I
    .restart local v5    # "otherPosition":I
    :cond_3
    return v0
.end method

.method public abstract get()J
.end method

.method public abstract get(I)J
.end method

.method public get([J)Ljava/nio/LongBuffer;
    .locals 2
    .param p1, "dst"    # [J

    #@0
    .prologue
    .line 234
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/LongBuffer;->get([JII)Ljava/nio/LongBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public get([JII)Ljava/nio/LongBuffer;
    .locals 4
    .param p1, "dst"    # [J
    .param p2, "dstOffset"    # I
    .param p3, "longCount"    # I

    #@0
    .prologue
    .line 257
    array-length v1, p1

    #@1
    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 258
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    #@7
    move-result v1

    #@8
    if-le p3, v1, :cond_0

    #@a
    .line 259
    new-instance v1, Ljava/nio/BufferUnderflowException;

    #@c
    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@f
    throw v1

    #@10
    .line 261
    :cond_0
    move v0, p2

    #@11
    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    #@13
    if-ge v0, v1, :cond_1

    #@15
    .line 262
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->get()J

    #@18
    move-result-wide v2

    #@19
    aput-wide v2, p1, v0

    #@1b
    .line 261
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 264
    :cond_1
    return-object p0
.end method

.method public final hasArray()Z
    .locals 1

    #@0
    .prologue
    .line 279
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->protectedHasArray()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public hashCode()I
    .locals 8

    #@0
    .prologue
    .line 290
    iget v1, p0, Ljava/nio/LongBuffer;->position:I

    #@2
    .line 291
    .local v1, "myPosition":I
    const/4 v0, 0x0

    #@3
    .line 293
    .local v0, "hash":I
    :goto_0
    iget v5, p0, Ljava/nio/LongBuffer;->limit:I

    #@5
    if-ge v1, v5, :cond_0

    #@7
    .line 294
    add-int/lit8 v4, v1, 0x1

    #@9
    .end local v1    # "myPosition":I
    .local v4, "myPosition":I
    invoke-virtual {p0, v1}, Ljava/nio/LongBuffer;->get(I)J

    #@c
    move-result-wide v2

    #@d
    .line 295
    .local v2, "l":J
    long-to-int v5, v2

    #@e
    add-int/2addr v5, v0

    #@f
    const/16 v6, 0x20

    #@11
    shr-long v6, v2, v6

    #@13
    long-to-int v6, v6

    #@14
    xor-int v0, v5, v6

    #@16
    move v1, v4

    #@17
    .end local v4    # "myPosition":I
    .restart local v1    # "myPosition":I
    goto :goto_0

    #@18
    .line 297
    .end local v2    # "l":J
    :cond_0
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method abstract protectedArray()[J
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(IJ)Ljava/nio/LongBuffer;
.end method

.method public abstract put(J)Ljava/nio/LongBuffer;
.end method

.method public put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;
    .locals 3
    .param p1, "src"    # Ljava/nio/LongBuffer;

    #@0
    .prologue
    .line 427
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->isReadOnly()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 428
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    #@8
    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@b
    throw v1

    #@c
    .line 430
    :cond_0
    if-ne p1, p0, :cond_1

    #@e
    .line 431
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v2, "src == this"

    #@13
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 433
    :cond_1
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    #@1a
    move-result v1

    #@1b
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    #@1e
    move-result v2

    #@1f
    if-le v1, v2, :cond_2

    #@21
    .line 434
    new-instance v1, Ljava/nio/BufferOverflowException;

    #@23
    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    #@26
    throw v1

    #@27
    .line 436
    :cond_2
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    #@2a
    move-result v1

    #@2b
    new-array v0, v1, [J

    #@2d
    .line 437
    .local v0, "contents":[J
    invoke-virtual {p1, v0}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    #@30
    .line 438
    invoke-virtual {p0, v0}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    #@33
    .line 439
    return-object p0
.end method

.method public final put([J)Ljava/nio/LongBuffer;
    .locals 2
    .param p1, "src"    # [J

    #@0
    .prologue
    .line 375
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/LongBuffer;->put([JII)Ljava/nio/LongBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public put([JII)Ljava/nio/LongBuffer;
    .locals 4
    .param p1, "src"    # [J
    .param p2, "srcOffset"    # I
    .param p3, "longCount"    # I

    #@0
    .prologue
    .line 400
    array-length v1, p1

    #@1
    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 401
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    #@7
    move-result v1

    #@8
    if-le p3, v1, :cond_0

    #@a
    .line 402
    new-instance v1, Ljava/nio/BufferOverflowException;

    #@c
    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    #@f
    throw v1

    #@10
    .line 404
    :cond_0
    move v0, p2

    #@11
    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    #@13
    if-ge v0, v1, :cond_1

    #@15
    .line 405
    aget-wide v2, p1, v0

    #@17
    invoke-virtual {p0, v2, v3}, Ljava/nio/LongBuffer;->put(J)Ljava/nio/LongBuffer;

    #@1a
    .line 404
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 407
    :cond_1
    return-object p0
.end method

.method public abstract slice()Ljava/nio/LongBuffer;
.end method
