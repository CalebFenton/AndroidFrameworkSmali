.class public abstract Ljava/nio/ShortBuffer;
.super Ljava/nio/Buffer;
.source "ShortBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/ShortBuffer;",
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
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, v0, p1, p2, p3}, Ljava/nio/Buffer;-><init>(IIJ)V

    #@4
    .line 94
    return-void
.end method

.method public static allocate(I)Ljava/nio/ShortBuffer;
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
    new-instance v0, Ljava/nio/ShortArrayBuffer;

    #@1e
    new-array v1, p0, [S

    #@20
    invoke-direct {v0, v1}, Ljava/nio/ShortArrayBuffer;-><init>([S)V

    #@23
    return-object v0
.end method

.method public static wrap([S)Ljava/nio/ShortBuffer;
    .locals 2
    .param p0, "array"    # [S

    #@0
    .prologue
    .line 65
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0}, Ljava/nio/ShortBuffer;->wrap([SII)Ljava/nio/ShortBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static wrap([SII)Ljava/nio/ShortBuffer;
    .locals 2
    .param p0, "array"    # [S
    .param p1, "start"    # I
    .param p2, "shortCount"    # I

    #@0
    .prologue
    .line 87
    array-length v1, p0

    #@1
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 88
    new-instance v0, Ljava/nio/ShortArrayBuffer;

    #@6
    invoke-direct {v0, p0}, Ljava/nio/ShortArrayBuffer;-><init>([S)V

    #@9
    .line 89
    .local v0, "buf":Ljava/nio/ShortBuffer;
    iput p1, v0, Ljava/nio/ShortBuffer;->position:I

    #@b
    .line 90
    add-int v1, p1, p2

    #@d
    iput v1, v0, Ljava/nio/ShortBuffer;->limit:I

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
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->array()[S

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final array()[S
    .locals 1

    #@0
    .prologue
    .line 99
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->protectedArray()[S

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
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->protectedArrayOffset()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/ShortBuffer;
.end method

.method public abstract compact()Ljava/nio/ShortBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "otherBuffer"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 146
    check-cast p1, Ljava/nio/ShortBuffer;

    #@2
    .end local p1    # "otherBuffer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/nio/ShortBuffer;->compareTo(Ljava/nio/ShortBuffer;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Ljava/nio/ShortBuffer;)I
    .locals 7
    .param p1, "otherBuffer"    # Ljava/nio/ShortBuffer;

    #@0
    .prologue
    .line 147
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    #@3
    move-result v5

    #@4
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    #@7
    move-result v6

    #@8
    if-ge v5, v6, :cond_0

    #@a
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    #@d
    move-result v0

    #@e
    .line 149
    .local v0, "compareRemaining":I
    :goto_0
    iget v4, p0, Ljava/nio/ShortBuffer;->position:I

    #@10
    .line 150
    .local v4, "thisPos":I
    iget v2, p1, Ljava/nio/ShortBuffer;->position:I

    #@12
    .line 152
    .local v2, "otherPos":I
    :goto_1
    if-lez v0, :cond_3

    #@14
    .line 153
    invoke-virtual {p0, v4}, Ljava/nio/ShortBuffer;->get(I)S

    #@17
    move-result v3

    #@18
    .line 154
    .local v3, "thisByte":S
    invoke-virtual {p1, v2}, Ljava/nio/ShortBuffer;->get(I)S

    #@1b
    move-result v1

    #@1c
    .line 155
    .local v1, "otherByte":S
    if-eq v3, v1, :cond_2

    #@1e
    .line 156
    if-ge v3, v1, :cond_1

    #@20
    const/4 v5, -0x1

    #@21
    :goto_2
    return v5

    #@22
    .line 148
    .end local v0    # "compareRemaining":I
    .end local v1    # "otherByte":S
    .end local v2    # "otherPos":I
    .end local v3    # "thisByte":S
    .end local v4    # "thisPos":I
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    #@25
    move-result v0

    #@26
    .restart local v0    # "compareRemaining":I
    goto :goto_0

    #@27
    .line 156
    .restart local v1    # "otherByte":S
    .restart local v2    # "otherPos":I
    .restart local v3    # "thisByte":S
    .restart local v4    # "thisPos":I
    :cond_1
    const/4 v5, 0x1

    #@28
    goto :goto_2

    #@29
    .line 158
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@2b
    .line 159
    add-int/lit8 v2, v2, 0x1

    #@2d
    .line 160
    add-int/lit8 v0, v0, -0x1

    #@2f
    goto :goto_1

    #@30
    .line 162
    .end local v1    # "otherByte":S
    .end local v3    # "thisByte":S
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    #@33
    move-result v5

    #@34
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    #@37
    move-result v6

    #@38
    sub-int/2addr v5, v6

    #@39
    return v5
.end method

.method public abstract duplicate()Ljava/nio/ShortBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 192
    instance-of v6, p1, Ljava/nio/ShortBuffer;

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
    check-cast v3, Ljava/nio/ShortBuffer;

    #@9
    .line 197
    .local v3, "otherBuffer":Ljava/nio/ShortBuffer;
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    #@c
    move-result v6

    #@d
    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->remaining()I

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
    iget v1, p0, Ljava/nio/ShortBuffer;->position:I

    #@16
    .line 202
    .local v1, "myPosition":I
    iget v4, v3, Ljava/nio/ShortBuffer;->position:I

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
    iget v6, p0, Ljava/nio/ShortBuffer;->limit:I

    #@1f
    if-ge v2, v6, :cond_3

    #@21
    .line 205
    add-int/lit8 v1, v2, 0x1

    #@23
    .end local v2    # "myPosition":I
    .restart local v1    # "myPosition":I
    invoke-virtual {p0, v2}, Ljava/nio/ShortBuffer;->get(I)S

    #@26
    move-result v6

    #@27
    add-int/lit8 v4, v5, 0x1

    #@29
    .end local v5    # "otherPosition":I
    .restart local v4    # "otherPosition":I
    invoke-virtual {v3, v5}, Ljava/nio/ShortBuffer;->get(I)S

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
    .line 208
    .end local v1    # "myPosition":I
    .end local v4    # "otherPosition":I
    .restart local v2    # "myPosition":I
    .restart local v5    # "otherPosition":I
    :cond_3
    return v0
.end method

.method public get([S)Ljava/nio/ShortBuffer;
    .locals 2
    .param p1, "dst"    # [S

    #@0
    .prologue
    .line 235
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public get([SII)Ljava/nio/ShortBuffer;
    .locals 2
    .param p1, "dst"    # [S
    .param p2, "dstOffset"    # I
    .param p3, "shortCount"    # I

    #@0
    .prologue
    .line 258
    array-length v1, p1

    #@1
    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 259
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    #@7
    move-result v1

    #@8
    if-le p3, v1, :cond_0

    #@a
    .line 260
    new-instance v1, Ljava/nio/BufferUnderflowException;

    #@c
    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@f
    throw v1

    #@10
    .line 262
    :cond_0
    move v0, p2

    #@11
    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    #@13
    if-ge v0, v1, :cond_1

    #@15
    .line 263
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->get()S

    #@18
    move-result v1

    #@19
    aput-short v1, p1, v0

    #@1b
    .line 262
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 265
    :cond_1
    return-object p0
.end method

.method public abstract get()S
.end method

.method public abstract get(I)S
.end method

.method public final hasArray()Z
    .locals 1

    #@0
    .prologue
    .line 280
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->protectedHasArray()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 291
    iget v1, p0, Ljava/nio/ShortBuffer;->position:I

    #@2
    .line 292
    .local v1, "myPosition":I
    const/4 v0, 0x0

    #@3
    .line 293
    .local v0, "hash":I
    :goto_0
    iget v3, p0, Ljava/nio/ShortBuffer;->limit:I

    #@5
    if-ge v1, v3, :cond_0

    #@7
    .line 294
    add-int/lit8 v2, v1, 0x1

    #@9
    .end local v1    # "myPosition":I
    .local v2, "myPosition":I
    invoke-virtual {p0, v1}, Ljava/nio/ShortBuffer;->get(I)S

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
    .line 296
    :cond_0
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method abstract protectedArray()[S
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(IS)Ljava/nio/ShortBuffer;
.end method

.method public put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;
    .locals 3
    .param p1, "src"    # Ljava/nio/ShortBuffer;

    #@0
    .prologue
    .line 426
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->isReadOnly()Z

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
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    #@1a
    move-result v1

    #@1b
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

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
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    #@2a
    move-result v1

    #@2b
    new-array v0, v1, [S

    #@2d
    .line 436
    .local v0, "contents":[S
    invoke-virtual {p1, v0}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    #@30
    .line 437
    invoke-virtual {p0, v0}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    #@33
    .line 438
    return-object p0
.end method

.method public abstract put(S)Ljava/nio/ShortBuffer;
.end method

.method public final put([S)Ljava/nio/ShortBuffer;
    .locals 2
    .param p1, "src"    # [S

    #@0
    .prologue
    .line 374
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public put([SII)Ljava/nio/ShortBuffer;
    .locals 2
    .param p1, "src"    # [S
    .param p2, "srcOffset"    # I
    .param p3, "shortCount"    # I

    #@0
    .prologue
    .line 399
    array-length v1, p1

    #@1
    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 400
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->remaining()I

    #@7
    move-result v1

    #@8
    if-le p3, v1, :cond_0

    #@a
    .line 401
    new-instance v1, Ljava/nio/BufferOverflowException;

    #@c
    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    #@f
    throw v1

    #@10
    .line 403
    :cond_0
    move v0, p2

    #@11
    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    #@13
    if-ge v0, v1, :cond_1

    #@15
    .line 404
    aget-short v1, p1, v0

    #@17
    invoke-virtual {p0, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    #@1a
    .line 403
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 406
    :cond_1
    return-object p0
.end method

.method public abstract slice()Ljava/nio/ShortBuffer;
.end method
