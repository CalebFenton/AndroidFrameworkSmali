.class public abstract Ljava/nio/FloatBuffer;
.super Ljava/nio/Buffer;
.source "FloatBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/FloatBuffer;",
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
    .line 97
    const/4 v0, 0x2

    #@1
    invoke-direct {p0, v0, p1, p2, p3}, Ljava/nio/Buffer;-><init>(IIJ)V

    #@4
    .line 96
    return-void
.end method

.method public static allocate(I)Ljava/nio/FloatBuffer;
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
    new-instance v0, Ljava/nio/FloatArrayBuffer;

    #@1e
    new-array v1, p0, [F

    #@20
    invoke-direct {v0, v1}, Ljava/nio/FloatArrayBuffer;-><init>([F)V

    #@23
    return-object v0
.end method

.method public static wrap([F)Ljava/nio/FloatBuffer;
    .locals 2
    .param p0, "array"    # [F

    #@0
    .prologue
    .line 65
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0}, Ljava/nio/FloatBuffer;->wrap([FII)Ljava/nio/FloatBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static wrap([FII)Ljava/nio/FloatBuffer;
    .locals 2
    .param p0, "array"    # [F
    .param p1, "start"    # I
    .param p2, "floatCount"    # I

    #@0
    .prologue
    .line 89
    array-length v1, p0

    #@1
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 90
    new-instance v0, Ljava/nio/FloatArrayBuffer;

    #@6
    invoke-direct {v0, p0}, Ljava/nio/FloatArrayBuffer;-><init>([F)V

    #@9
    .line 91
    .local v0, "buf":Ljava/nio/FloatBuffer;
    iput p1, v0, Ljava/nio/FloatBuffer;->position:I

    #@b
    .line 92
    add-int v1, p1, p2

    #@d
    iput v1, v0, Ljava/nio/FloatBuffer;->limit:I

    #@f
    .line 93
    return-object v0
.end method


# virtual methods
.method public bridge synthetic array()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 100
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->array()[F

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final array()[F
    .locals 1

    #@0
    .prologue
    .line 101
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->protectedArray()[F

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final arrayOffset()I
    .locals 1

    #@0
    .prologue
    .line 105
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->protectedArrayOffset()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/FloatBuffer;
.end method

.method public abstract compact()Ljava/nio/FloatBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "otherBuffer"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 148
    check-cast p1, Ljava/nio/FloatBuffer;

    #@2
    .end local p1    # "otherBuffer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/nio/FloatBuffer;->compareTo(Ljava/nio/FloatBuffer;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Ljava/nio/FloatBuffer;)I
    .locals 7
    .param p1, "otherBuffer"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 149
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    #@3
    move-result v5

    #@4
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    #@7
    move-result v6

    #@8
    if-ge v5, v6, :cond_1

    #@a
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    #@d
    move-result v0

    #@e
    .line 151
    .local v0, "compareRemaining":I
    :goto_0
    iget v4, p0, Ljava/nio/FloatBuffer;->position:I

    #@10
    .line 152
    .local v4, "thisPos":I
    iget v2, p1, Ljava/nio/FloatBuffer;->position:I

    #@12
    .line 154
    .local v2, "otherPos":I
    :goto_1
    if-lez v0, :cond_4

    #@14
    .line 155
    invoke-virtual {p0, v4}, Ljava/nio/FloatBuffer;->get(I)F

    #@17
    move-result v3

    #@18
    .line 156
    .local v3, "thisFloat":F
    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->get(I)F

    #@1b
    move-result v1

    #@1c
    .line 158
    .local v1, "otherFloat":F
    cmpl-float v5, v3, v1

    #@1e
    if-eqz v5, :cond_3

    #@20
    .line 159
    cmpl-float v5, v3, v3

    #@22
    if-eqz v5, :cond_0

    #@24
    cmpl-float v5, v1, v1

    #@26
    if-nez v5, :cond_3

    #@28
    .line 160
    :cond_0
    cmpg-float v5, v3, v1

    #@2a
    if-gez v5, :cond_2

    #@2c
    const/4 v5, -0x1

    #@2d
    :goto_2
    return v5

    #@2e
    .line 150
    .end local v0    # "compareRemaining":I
    .end local v1    # "otherFloat":F
    .end local v2    # "otherPos":I
    .end local v3    # "thisFloat":F
    .end local v4    # "thisPos":I
    :cond_1
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    #@31
    move-result v0

    #@32
    .restart local v0    # "compareRemaining":I
    goto :goto_0

    #@33
    .line 160
    .restart local v1    # "otherFloat":F
    .restart local v2    # "otherPos":I
    .restart local v3    # "thisFloat":F
    .restart local v4    # "thisPos":I
    :cond_2
    const/4 v5, 0x1

    #@34
    goto :goto_2

    #@35
    .line 162
    :cond_3
    add-int/lit8 v4, v4, 0x1

    #@37
    .line 163
    add-int/lit8 v2, v2, 0x1

    #@39
    .line 164
    add-int/lit8 v0, v0, -0x1

    #@3b
    goto :goto_1

    #@3c
    .line 166
    .end local v1    # "otherFloat":F
    .end local v3    # "thisFloat":F
    :cond_4
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    #@3f
    move-result v5

    #@40
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    #@43
    move-result v6

    #@44
    sub-int/2addr v5, v6

    #@45
    return v5
.end method

.method public abstract duplicate()Ljava/nio/FloatBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 201
    instance-of v8, p1, Ljava/nio/FloatBuffer;

    #@3
    if-nez v8, :cond_0

    #@5
    .line 202
    return v10

    #@6
    :cond_0
    move-object v5, p1

    #@7
    .line 204
    check-cast v5, Ljava/nio/FloatBuffer;

    #@9
    .line 206
    .local v5, "otherBuffer":Ljava/nio/FloatBuffer;
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    #@c
    move-result v8

    #@d
    invoke-virtual {v5}, Ljava/nio/FloatBuffer;->remaining()I

    #@10
    move-result v9

    #@11
    if-eq v8, v9, :cond_1

    #@13
    .line 207
    return v10

    #@14
    .line 210
    :cond_1
    iget v3, p0, Ljava/nio/FloatBuffer;->position:I

    #@16
    .line 211
    .local v3, "myPosition":I
    iget v6, v5, Ljava/nio/FloatBuffer;->position:I

    #@18
    .line 212
    .local v6, "otherPosition":I
    const/4 v2, 0x1

    #@19
    .local v2, "equalSoFar":Z
    move v7, v6

    #@1a
    .end local v6    # "otherPosition":I
    .local v7, "otherPosition":I
    move v4, v3

    #@1b
    .line 213
    .end local v3    # "myPosition":I
    .local v4, "myPosition":I
    :goto_0
    if-eqz v2, :cond_4

    #@1d
    iget v8, p0, Ljava/nio/FloatBuffer;->limit:I

    #@1f
    if-ge v4, v8, :cond_4

    #@21
    .line 214
    add-int/lit8 v3, v4, 0x1

    #@23
    .end local v4    # "myPosition":I
    .restart local v3    # "myPosition":I
    invoke-virtual {p0, v4}, Ljava/nio/FloatBuffer;->get(I)F

    #@26
    move-result v0

    #@27
    .line 215
    .local v0, "a":F
    add-int/lit8 v6, v7, 0x1

    #@29
    .end local v7    # "otherPosition":I
    .restart local v6    # "otherPosition":I
    invoke-virtual {v5, v7}, Ljava/nio/FloatBuffer;->get(I)F

    #@2c
    move-result v1

    #@2d
    .line 216
    .local v1, "b":F
    cmpl-float v8, v0, v1

    #@2f
    if-eqz v8, :cond_2

    #@31
    cmpl-float v8, v0, v0

    #@33
    if-eqz v8, :cond_3

    #@35
    cmpl-float v8, v1, v1

    #@37
    if-eqz v8, :cond_3

    #@39
    :cond_2
    const/4 v2, 0x1

    #@3a
    :goto_1
    move v7, v6

    #@3b
    .end local v6    # "otherPosition":I
    .restart local v7    # "otherPosition":I
    move v4, v3

    #@3c
    .end local v3    # "myPosition":I
    .restart local v4    # "myPosition":I
    goto :goto_0

    #@3d
    .end local v4    # "myPosition":I
    .end local v7    # "otherPosition":I
    .restart local v3    # "myPosition":I
    .restart local v6    # "otherPosition":I
    :cond_3
    const/4 v2, 0x0

    #@3e
    goto :goto_1

    #@3f
    .line 219
    .end local v0    # "a":F
    .end local v1    # "b":F
    .end local v3    # "myPosition":I
    .end local v6    # "otherPosition":I
    .restart local v4    # "myPosition":I
    .restart local v7    # "otherPosition":I
    :cond_4
    return v2
.end method

.method public abstract get()F
.end method

.method public abstract get(I)F
.end method

.method public get([F)Ljava/nio/FloatBuffer;
    .locals 2
    .param p1, "dst"    # [F

    #@0
    .prologue
    .line 246
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public get([FII)Ljava/nio/FloatBuffer;
    .locals 2
    .param p1, "dst"    # [F
    .param p2, "dstOffset"    # I
    .param p3, "floatCount"    # I

    #@0
    .prologue
    .line 269
    array-length v1, p1

    #@1
    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 270
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    #@7
    move-result v1

    #@8
    if-le p3, v1, :cond_0

    #@a
    .line 271
    new-instance v1, Ljava/nio/BufferUnderflowException;

    #@c
    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@f
    throw v1

    #@10
    .line 273
    :cond_0
    move v0, p2

    #@11
    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    #@13
    if-ge v0, v1, :cond_1

    #@15
    .line 274
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->get()F

    #@18
    move-result v1

    #@19
    aput v1, p1, v0

    #@1b
    .line 273
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 276
    :cond_1
    return-object p0
.end method

.method public final hasArray()Z
    .locals 1

    #@0
    .prologue
    .line 291
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->protectedHasArray()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 302
    iget v1, p0, Ljava/nio/FloatBuffer;->position:I

    #@2
    .line 303
    .local v1, "myPosition":I
    const/4 v0, 0x0

    #@3
    .line 304
    .local v0, "hash":I
    :goto_0
    iget v3, p0, Ljava/nio/FloatBuffer;->limit:I

    #@5
    if-ge v1, v3, :cond_0

    #@7
    .line 305
    add-int/lit8 v2, v1, 0x1

    #@9
    .end local v1    # "myPosition":I
    .local v2, "myPosition":I
    invoke-virtual {p0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    #@c
    move-result v3

    #@d
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    #@10
    move-result v3

    #@11
    add-int/2addr v0, v3

    #@12
    move v1, v2

    #@13
    .end local v2    # "myPosition":I
    .restart local v1    # "myPosition":I
    goto :goto_0

    #@14
    .line 307
    :cond_0
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method abstract protectedArray()[F
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(F)Ljava/nio/FloatBuffer;
.end method

.method public abstract put(IF)Ljava/nio/FloatBuffer;
.end method

.method public put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 3
    .param p1, "src"    # Ljava/nio/FloatBuffer;

    #@0
    .prologue
    .line 437
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->isReadOnly()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 438
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    #@8
    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@b
    throw v1

    #@c
    .line 440
    :cond_0
    if-ne p1, p0, :cond_1

    #@e
    .line 441
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v2, "src == this"

    #@13
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 443
    :cond_1
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    #@1a
    move-result v1

    #@1b
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    #@1e
    move-result v2

    #@1f
    if-le v1, v2, :cond_2

    #@21
    .line 444
    new-instance v1, Ljava/nio/BufferOverflowException;

    #@23
    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    #@26
    throw v1

    #@27
    .line 446
    :cond_2
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->remaining()I

    #@2a
    move-result v1

    #@2b
    new-array v0, v1, [F

    #@2d
    .line 447
    .local v0, "contents":[F
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    #@30
    .line 448
    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    #@33
    .line 449
    return-object p0
.end method

.method public final put([F)Ljava/nio/FloatBuffer;
    .locals 2
    .param p1, "src"    # [F

    #@0
    .prologue
    .line 385
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public put([FII)Ljava/nio/FloatBuffer;
    .locals 2
    .param p1, "src"    # [F
    .param p2, "srcOffset"    # I
    .param p3, "floatCount"    # I

    #@0
    .prologue
    .line 410
    array-length v1, p1

    #@1
    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 411
    invoke-virtual {p0}, Ljava/nio/FloatBuffer;->remaining()I

    #@7
    move-result v1

    #@8
    if-le p3, v1, :cond_0

    #@a
    .line 412
    new-instance v1, Ljava/nio/BufferOverflowException;

    #@c
    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    #@f
    throw v1

    #@10
    .line 414
    :cond_0
    move v0, p2

    #@11
    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    #@13
    if-ge v0, v1, :cond_1

    #@15
    .line 415
    aget v1, p1, v0

    #@17
    invoke-virtual {p0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    #@1a
    .line 414
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 417
    :cond_1
    return-object p0
.end method

.method public abstract slice()Ljava/nio/FloatBuffer;
.end method
