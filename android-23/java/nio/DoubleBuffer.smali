.class public abstract Ljava/nio/DoubleBuffer;
.super Ljava/nio/Buffer;
.source "DoubleBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/DoubleBuffer;",
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
    .line 96
    const/4 v0, 0x3

    #@1
    invoke-direct {p0, v0, p1, p2, p3}, Ljava/nio/Buffer;-><init>(IIJ)V

    #@4
    .line 95
    return-void
.end method

.method public static allocate(I)Ljava/nio/DoubleBuffer;
    .locals 3
    .param p0, "capacity"    # I

    #@0
    .prologue
    .line 49
    if-gez p0, :cond_0

    #@2
    .line 50
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
    .line 52
    :cond_0
    new-instance v0, Ljava/nio/DoubleArrayBuffer;

    #@1e
    new-array v1, p0, [D

    #@20
    invoke-direct {v0, v1}, Ljava/nio/DoubleArrayBuffer;-><init>([D)V

    #@23
    return-object v0
.end method

.method public static wrap([D)Ljava/nio/DoubleBuffer;
    .locals 2
    .param p0, "array"    # [D

    #@0
    .prologue
    .line 66
    array-length v0, p0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-static {p0, v1, v0}, Ljava/nio/DoubleBuffer;->wrap([DII)Ljava/nio/DoubleBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static wrap([DII)Ljava/nio/DoubleBuffer;
    .locals 2
    .param p0, "array"    # [D
    .param p1, "start"    # I
    .param p2, "doubleCount"    # I

    #@0
    .prologue
    .line 88
    array-length v1, p0

    #@1
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 89
    new-instance v0, Ljava/nio/DoubleArrayBuffer;

    #@6
    invoke-direct {v0, p0}, Ljava/nio/DoubleArrayBuffer;-><init>([D)V

    #@9
    .line 90
    .local v0, "buf":Ljava/nio/DoubleBuffer;
    iput p1, v0, Ljava/nio/DoubleBuffer;->position:I

    #@b
    .line 91
    add-int v1, p1, p2

    #@d
    iput v1, v0, Ljava/nio/DoubleBuffer;->limit:I

    #@f
    .line 92
    return-object v0
.end method


# virtual methods
.method public bridge synthetic array()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 99
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->array()[D

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final array()[D
    .locals 1

    #@0
    .prologue
    .line 100
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->protectedArray()[D

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final arrayOffset()I
    .locals 1

    #@0
    .prologue
    .line 104
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->protectedArrayOffset()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/DoubleBuffer;
.end method

.method public abstract compact()Ljava/nio/DoubleBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "otherBuffer"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 147
    check-cast p1, Ljava/nio/DoubleBuffer;

    #@2
    .end local p1    # "otherBuffer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/nio/DoubleBuffer;->compareTo(Ljava/nio/DoubleBuffer;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Ljava/nio/DoubleBuffer;)I
    .locals 9
    .param p1, "otherBuffer"    # Ljava/nio/DoubleBuffer;

    #@0
    .prologue
    .line 148
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    #@3
    move-result v7

    #@4
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    #@7
    move-result v8

    #@8
    if-ge v7, v8, :cond_1

    #@a
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    #@d
    move-result v0

    #@e
    .line 150
    .local v0, "compareRemaining":I
    :goto_0
    iget v6, p0, Ljava/nio/DoubleBuffer;->position:I

    #@10
    .line 151
    .local v6, "thisPos":I
    iget v1, p1, Ljava/nio/DoubleBuffer;->position:I

    #@12
    .line 153
    .local v1, "otherPos":I
    :goto_1
    if-lez v0, :cond_4

    #@14
    .line 154
    invoke-virtual {p0, v6}, Ljava/nio/DoubleBuffer;->get(I)D

    #@17
    move-result-wide v4

    #@18
    .line 155
    .local v4, "thisDouble":D
    invoke-virtual {p1, v1}, Ljava/nio/DoubleBuffer;->get(I)D

    #@1b
    move-result-wide v2

    #@1c
    .line 157
    .local v2, "otherDouble":D
    cmpl-double v7, v4, v2

    #@1e
    if-eqz v7, :cond_3

    #@20
    .line 158
    cmpl-double v7, v4, v4

    #@22
    if-eqz v7, :cond_0

    #@24
    cmpl-double v7, v2, v2

    #@26
    if-nez v7, :cond_3

    #@28
    .line 159
    :cond_0
    cmpg-double v7, v4, v2

    #@2a
    if-gez v7, :cond_2

    #@2c
    const/4 v7, -0x1

    #@2d
    :goto_2
    return v7

    #@2e
    .line 149
    .end local v0    # "compareRemaining":I
    .end local v1    # "otherPos":I
    .end local v2    # "otherDouble":D
    .end local v4    # "thisDouble":D
    .end local v6    # "thisPos":I
    :cond_1
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    #@31
    move-result v0

    #@32
    .restart local v0    # "compareRemaining":I
    goto :goto_0

    #@33
    .line 159
    .restart local v1    # "otherPos":I
    .restart local v2    # "otherDouble":D
    .restart local v4    # "thisDouble":D
    .restart local v6    # "thisPos":I
    :cond_2
    const/4 v7, 0x1

    #@34
    goto :goto_2

    #@35
    .line 161
    :cond_3
    add-int/lit8 v6, v6, 0x1

    #@37
    .line 162
    add-int/lit8 v1, v1, 0x1

    #@39
    .line 163
    add-int/lit8 v0, v0, -0x1

    #@3b
    goto :goto_1

    #@3c
    .line 165
    .end local v2    # "otherDouble":D
    .end local v4    # "thisDouble":D
    :cond_4
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    #@3f
    move-result v7

    #@40
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    #@43
    move-result v8

    #@44
    sub-int/2addr v7, v8

    #@45
    return v7
.end method

.method public abstract duplicate()Ljava/nio/DoubleBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 13
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 200
    instance-of v10, p1, Ljava/nio/DoubleBuffer;

    #@3
    if-nez v10, :cond_0

    #@5
    .line 201
    return v12

    #@6
    :cond_0
    move-object v7, p1

    #@7
    .line 203
    check-cast v7, Ljava/nio/DoubleBuffer;

    #@9
    .line 205
    .local v7, "otherBuffer":Ljava/nio/DoubleBuffer;
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    #@c
    move-result v10

    #@d
    invoke-virtual {v7}, Ljava/nio/DoubleBuffer;->remaining()I

    #@10
    move-result v11

    #@11
    if-eq v10, v11, :cond_1

    #@13
    .line 206
    return v12

    #@14
    .line 209
    :cond_1
    iget v5, p0, Ljava/nio/DoubleBuffer;->position:I

    #@16
    .line 210
    .local v5, "myPosition":I
    iget v8, v7, Ljava/nio/DoubleBuffer;->position:I

    #@18
    .line 211
    .local v8, "otherPosition":I
    const/4 v4, 0x1

    #@19
    .local v4, "equalSoFar":Z
    move v9, v8

    #@1a
    .end local v8    # "otherPosition":I
    .local v9, "otherPosition":I
    move v6, v5

    #@1b
    .line 212
    .end local v5    # "myPosition":I
    .local v6, "myPosition":I
    :goto_0
    if-eqz v4, :cond_4

    #@1d
    iget v10, p0, Ljava/nio/DoubleBuffer;->limit:I

    #@1f
    if-ge v6, v10, :cond_4

    #@21
    .line 213
    add-int/lit8 v5, v6, 0x1

    #@23
    .end local v6    # "myPosition":I
    .restart local v5    # "myPosition":I
    invoke-virtual {p0, v6}, Ljava/nio/DoubleBuffer;->get(I)D

    #@26
    move-result-wide v0

    #@27
    .line 214
    .local v0, "a":D
    add-int/lit8 v8, v9, 0x1

    #@29
    .end local v9    # "otherPosition":I
    .restart local v8    # "otherPosition":I
    invoke-virtual {v7, v9}, Ljava/nio/DoubleBuffer;->get(I)D

    #@2c
    move-result-wide v2

    #@2d
    .line 215
    .local v2, "b":D
    cmpl-double v10, v0, v2

    #@2f
    if-eqz v10, :cond_2

    #@31
    cmpl-double v10, v0, v0

    #@33
    if-eqz v10, :cond_3

    #@35
    cmpl-double v10, v2, v2

    #@37
    if-eqz v10, :cond_3

    #@39
    :cond_2
    const/4 v4, 0x1

    #@3a
    :goto_1
    move v9, v8

    #@3b
    .end local v8    # "otherPosition":I
    .restart local v9    # "otherPosition":I
    move v6, v5

    #@3c
    .end local v5    # "myPosition":I
    .restart local v6    # "myPosition":I
    goto :goto_0

    #@3d
    .end local v6    # "myPosition":I
    .end local v9    # "otherPosition":I
    .restart local v5    # "myPosition":I
    .restart local v8    # "otherPosition":I
    :cond_3
    const/4 v4, 0x0

    #@3e
    goto :goto_1

    #@3f
    .line 218
    .end local v0    # "a":D
    .end local v2    # "b":D
    .end local v5    # "myPosition":I
    .end local v8    # "otherPosition":I
    .restart local v6    # "myPosition":I
    .restart local v9    # "otherPosition":I
    :cond_4
    return v4
.end method

.method public abstract get()D
.end method

.method public abstract get(I)D
.end method

.method public get([D)Ljava/nio/DoubleBuffer;
    .locals 2
    .param p1, "dst"    # [D

    #@0
    .prologue
    .line 245
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/DoubleBuffer;->get([DII)Ljava/nio/DoubleBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public get([DII)Ljava/nio/DoubleBuffer;
    .locals 4
    .param p1, "dst"    # [D
    .param p2, "dstOffset"    # I
    .param p3, "doubleCount"    # I

    #@0
    .prologue
    .line 268
    array-length v1, p1

    #@1
    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 269
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    #@7
    move-result v1

    #@8
    if-le p3, v1, :cond_0

    #@a
    .line 270
    new-instance v1, Ljava/nio/BufferUnderflowException;

    #@c
    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@f
    throw v1

    #@10
    .line 272
    :cond_0
    move v0, p2

    #@11
    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    #@13
    if-ge v0, v1, :cond_1

    #@15
    .line 273
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->get()D

    #@18
    move-result-wide v2

    #@19
    aput-wide v2, p1, v0

    #@1b
    .line 272
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 275
    :cond_1
    return-object p0
.end method

.method public final hasArray()Z
    .locals 1

    #@0
    .prologue
    .line 290
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->protectedHasArray()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public hashCode()I
    .locals 8

    #@0
    .prologue
    .line 301
    iget v1, p0, Ljava/nio/DoubleBuffer;->position:I

    #@2
    .line 302
    .local v1, "myPosition":I
    const/4 v0, 0x0

    #@3
    .line 304
    .local v0, "hash":I
    :goto_0
    iget v5, p0, Ljava/nio/DoubleBuffer;->limit:I

    #@5
    if-ge v1, v5, :cond_0

    #@7
    .line 305
    add-int/lit8 v4, v1, 0x1

    #@9
    .end local v1    # "myPosition":I
    .local v4, "myPosition":I
    invoke-virtual {p0, v1}, Ljava/nio/DoubleBuffer;->get(I)D

    #@c
    move-result-wide v6

    #@d
    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    #@10
    move-result-wide v2

    #@11
    .line 306
    .local v2, "l":J
    long-to-int v5, v2

    #@12
    add-int/2addr v5, v0

    #@13
    const/16 v6, 0x20

    #@15
    shr-long v6, v2, v6

    #@17
    long-to-int v6, v6

    #@18
    xor-int v0, v5, v6

    #@1a
    move v1, v4

    #@1b
    .end local v4    # "myPosition":I
    .restart local v1    # "myPosition":I
    goto :goto_0

    #@1c
    .line 308
    .end local v2    # "l":J
    :cond_0
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method abstract protectedArray()[D
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(D)Ljava/nio/DoubleBuffer;
.end method

.method public abstract put(ID)Ljava/nio/DoubleBuffer;
.end method

.method public put(Ljava/nio/DoubleBuffer;)Ljava/nio/DoubleBuffer;
    .locals 3
    .param p1, "src"    # Ljava/nio/DoubleBuffer;

    #@0
    .prologue
    .line 438
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->isReadOnly()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 439
    new-instance v1, Ljava/nio/ReadOnlyBufferException;

    #@8
    invoke-direct {v1}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@b
    throw v1

    #@c
    .line 441
    :cond_0
    if-ne p1, p0, :cond_1

    #@e
    .line 442
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v2, "src == this"

    #@13
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v1

    #@17
    .line 444
    :cond_1
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    #@1a
    move-result v1

    #@1b
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    #@1e
    move-result v2

    #@1f
    if-le v1, v2, :cond_2

    #@21
    .line 445
    new-instance v1, Ljava/nio/BufferOverflowException;

    #@23
    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    #@26
    throw v1

    #@27
    .line 447
    :cond_2
    invoke-virtual {p1}, Ljava/nio/DoubleBuffer;->remaining()I

    #@2a
    move-result v1

    #@2b
    new-array v0, v1, [D

    #@2d
    .line 448
    .local v0, "doubles":[D
    invoke-virtual {p1, v0}, Ljava/nio/DoubleBuffer;->get([D)Ljava/nio/DoubleBuffer;

    #@30
    .line 449
    invoke-virtual {p0, v0}, Ljava/nio/DoubleBuffer;->put([D)Ljava/nio/DoubleBuffer;

    #@33
    .line 450
    return-object p0
.end method

.method public final put([D)Ljava/nio/DoubleBuffer;
    .locals 2
    .param p1, "src"    # [D

    #@0
    .prologue
    .line 386
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/DoubleBuffer;->put([DII)Ljava/nio/DoubleBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public put([DII)Ljava/nio/DoubleBuffer;
    .locals 4
    .param p1, "src"    # [D
    .param p2, "srcOffset"    # I
    .param p3, "doubleCount"    # I

    #@0
    .prologue
    .line 411
    array-length v1, p1

    #@1
    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 412
    invoke-virtual {p0}, Ljava/nio/DoubleBuffer;->remaining()I

    #@7
    move-result v1

    #@8
    if-le p3, v1, :cond_0

    #@a
    .line 413
    new-instance v1, Ljava/nio/BufferOverflowException;

    #@c
    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    #@f
    throw v1

    #@10
    .line 415
    :cond_0
    move v0, p2

    #@11
    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    #@13
    if-ge v0, v1, :cond_1

    #@15
    .line 416
    aget-wide v2, p1, v0

    #@17
    invoke-virtual {p0, v2, v3}, Ljava/nio/DoubleBuffer;->put(D)Ljava/nio/DoubleBuffer;

    #@1a
    .line 415
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 418
    :cond_1
    return-object p0
.end method

.method public abstract slice()Ljava/nio/DoubleBuffer;
.end method
