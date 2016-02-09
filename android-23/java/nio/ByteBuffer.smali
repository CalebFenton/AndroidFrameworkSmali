.class public abstract Ljava/nio/ByteBuffer;
.super Ljava/nio/Buffer;
.source "ByteBuffer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/nio/Buffer;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field order:Ljava/nio/ByteOrder;


# direct methods
.method constructor <init>(IJ)V
    .locals 2
    .param p1, "capacity"    # I
    .param p2, "effectiveDirectAddress"    # J

    #@0
    .prologue
    .line 120
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p1, p2, p3}, Ljava/nio/Buffer;-><init>(IIJ)V

    #@4
    .line 41
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@6
    iput-object v0, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    #@8
    .line 119
    return-void
.end method

.method public static allocate(I)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "capacity"    # I

    #@0
    .prologue
    .line 53
    if-gez p0, :cond_0

    #@2
    .line 54
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
    .line 56
    :cond_0
    new-instance v0, Ljava/nio/ByteArrayBuffer;

    #@1e
    new-array v1, p0, [B

    #@20
    invoke-direct {v0, v1}, Ljava/nio/ByteArrayBuffer;-><init>([B)V

    #@23
    return-object v0
.end method

.method public static allocateDirect(I)Ljava/nio/ByteBuffer;
    .locals 12
    .param p0, "capacity"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 69
    if-gez p0, :cond_0

    #@3
    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "capacity < 0: "

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 73
    :cond_0
    add-int/lit8 v0, p0, 0x7

    #@1f
    invoke-static {v0}, Ljava/nio/MemoryBlock;->allocate(I)Ljava/nio/MemoryBlock;

    #@22
    move-result-object v1

    #@23
    .line 74
    .local v1, "memoryBlock":Ljava/nio/MemoryBlock;
    invoke-virtual {v1}, Ljava/nio/MemoryBlock;->toLong()J

    #@26
    move-result-wide v6

    #@27
    .line 75
    .local v6, "address":J
    const-wide/16 v2, 0x7

    #@29
    add-long/2addr v2, v6

    #@2a
    const-wide/16 v10, -0x8

    #@2c
    and-long v8, v2, v10

    #@2e
    .line 76
    .local v8, "alignedAddress":J
    new-instance v0, Ljava/nio/DirectByteBuffer;

    #@30
    sub-long v2, v8, v6

    #@32
    long-to-int v3, v2

    #@33
    const/4 v5, 0x0

    #@34
    move v2, p0

    #@35
    invoke-direct/range {v0 .. v5}, Ljava/nio/DirectByteBuffer;-><init>(Ljava/nio/MemoryBlock;IIZLjava/nio/channels/FileChannel$MapMode;)V

    #@38
    return-object v0
.end method

.method public static wrap([B)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "array"    # [B

    #@0
    .prologue
    .line 90
    new-instance v0, Ljava/nio/ByteArrayBuffer;

    #@2
    invoke-direct {v0, p0}, Ljava/nio/ByteArrayBuffer;-><init>([B)V

    #@5
    return-object v0
.end method

.method public static wrap([BII)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "array"    # [B
    .param p1, "start"    # I
    .param p2, "byteCount"    # I

    #@0
    .prologue
    .line 112
    array-length v1, p0

    #@1
    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 113
    new-instance v0, Ljava/nio/ByteArrayBuffer;

    #@6
    invoke-direct {v0, p0}, Ljava/nio/ByteArrayBuffer;-><init>([B)V

    #@9
    .line 114
    .local v0, "buf":Ljava/nio/ByteBuffer;
    iput p1, v0, Ljava/nio/ByteBuffer;->position:I

    #@b
    .line 115
    add-int v1, p1, p2

    #@d
    iput v1, v0, Ljava/nio/ByteBuffer;->limit:I

    #@f
    .line 116
    return-object v0
.end method


# virtual methods
.method public bridge synthetic array()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 132
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final array()[B
    .locals 1

    #@0
    .prologue
    .line 133
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->protectedArray()[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public final arrayOffset()I
    .locals 1

    #@0
    .prologue
    .line 150
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->protectedArrayOffset()I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public abstract asCharBuffer()Ljava/nio/CharBuffer;
.end method

.method public abstract asDoubleBuffer()Ljava/nio/DoubleBuffer;
.end method

.method public abstract asFloatBuffer()Ljava/nio/FloatBuffer;
.end method

.method public abstract asIntBuffer()Ljava/nio/IntBuffer;
.end method

.method public abstract asLongBuffer()Ljava/nio/LongBuffer;
.end method

.method public abstract asReadOnlyBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract asShortBuffer()Ljava/nio/ShortBuffer;
.end method

.method public abstract compact()Ljava/nio/ByteBuffer;
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "otherBuffer"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 284
    check-cast p1, Ljava/nio/ByteBuffer;

    #@2
    .end local p1    # "otherBuffer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->compareTo(Ljava/nio/ByteBuffer;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Ljava/nio/ByteBuffer;)I
    .locals 7
    .param p1, "otherBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 285
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@3
    move-result v5

    #@4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@7
    move-result v6

    #@8
    if-ge v5, v6, :cond_0

    #@a
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@d
    move-result v0

    #@e
    .line 287
    .local v0, "compareRemaining":I
    :goto_0
    iget v4, p0, Ljava/nio/ByteBuffer;->position:I

    #@10
    .line 288
    .local v4, "thisPos":I
    iget v2, p1, Ljava/nio/ByteBuffer;->position:I

    #@12
    .line 290
    .local v2, "otherPos":I
    :goto_1
    if-lez v0, :cond_3

    #@14
    .line 291
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    #@17
    move-result v3

    #@18
    .line 292
    .local v3, "thisByte":B
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    #@1b
    move-result v1

    #@1c
    .line 293
    .local v1, "otherByte":B
    if-eq v3, v1, :cond_2

    #@1e
    .line 294
    if-ge v3, v1, :cond_1

    #@20
    const/4 v5, -0x1

    #@21
    :goto_2
    return v5

    #@22
    .line 286
    .end local v0    # "compareRemaining":I
    .end local v1    # "otherByte":B
    .end local v2    # "otherPos":I
    .end local v3    # "thisByte":B
    .end local v4    # "thisPos":I
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@25
    move-result v0

    #@26
    .restart local v0    # "compareRemaining":I
    goto :goto_0

    #@27
    .line 294
    .restart local v1    # "otherByte":B
    .restart local v2    # "otherPos":I
    .restart local v3    # "thisByte":B
    .restart local v4    # "thisPos":I
    :cond_1
    const/4 v5, 0x1

    #@28
    goto :goto_2

    #@29
    .line 296
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@2b
    .line 297
    add-int/lit8 v2, v2, 0x1

    #@2d
    .line 298
    add-int/lit8 v0, v0, -0x1

    #@2f
    goto :goto_1

    #@30
    .line 300
    .end local v1    # "otherByte":B
    .end local v3    # "thisByte":B
    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@33
    move-result v5

    #@34
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@37
    move-result v6

    #@38
    sub-int/2addr v5, v6

    #@39
    return v5
.end method

.method public abstract duplicate()Ljava/nio/ByteBuffer;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 334
    instance-of v6, p1, Ljava/nio/ByteBuffer;

    #@3
    if-nez v6, :cond_0

    #@5
    .line 335
    return v8

    #@6
    :cond_0
    move-object v3, p1

    #@7
    .line 337
    check-cast v3, Ljava/nio/ByteBuffer;

    #@9
    .line 339
    .local v3, "otherBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@c
    move-result v6

    #@d
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    #@10
    move-result v7

    #@11
    if-eq v6, v7, :cond_1

    #@13
    .line 340
    return v8

    #@14
    .line 343
    :cond_1
    iget v1, p0, Ljava/nio/ByteBuffer;->position:I

    #@16
    .line 344
    .local v1, "myPosition":I
    iget v4, v3, Ljava/nio/ByteBuffer;->position:I

    #@18
    .line 345
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
    .line 346
    .end local v1    # "myPosition":I
    .local v2, "myPosition":I
    :goto_0
    if-eqz v0, :cond_3

    #@1d
    iget v6, p0, Ljava/nio/ByteBuffer;->limit:I

    #@1f
    if-ge v2, v6, :cond_3

    #@21
    .line 347
    add-int/lit8 v1, v2, 0x1

    #@23
    .end local v2    # "myPosition":I
    .restart local v1    # "myPosition":I
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    #@26
    move-result v6

    #@27
    add-int/lit8 v4, v5, 0x1

    #@29
    .end local v5    # "otherPosition":I
    .restart local v4    # "otherPosition":I
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->get(I)B

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
    .line 350
    .end local v1    # "myPosition":I
    .end local v4    # "otherPosition":I
    .restart local v2    # "myPosition":I
    .restart local v5    # "otherPosition":I
    :cond_3
    return v0
.end method

.method public abstract get()B
.end method

.method public abstract get(I)B
.end method

.method public get([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "dst"    # [B

    #@0
    .prologue
    .line 376
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public get([BII)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "dst"    # [B
    .param p2, "dstOffset"    # I
    .param p3, "byteCount"    # I

    #@0
    .prologue
    .line 397
    array-length v1, p1

    #@1
    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 398
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@7
    move-result v1

    #@8
    if-le p3, v1, :cond_0

    #@a
    .line 399
    new-instance v1, Ljava/nio/BufferUnderflowException;

    #@c
    invoke-direct {v1}, Ljava/nio/BufferUnderflowException;-><init>()V

    #@f
    throw v1

    #@10
    .line 401
    :cond_0
    move v0, p2

    #@11
    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    #@13
    if-ge v0, v1, :cond_1

    #@15
    .line 402
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    #@18
    move-result v1

    #@19
    aput-byte v1, p1, v0

    #@1b
    .line 401
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 404
    :cond_1
    return-object p0
.end method

.method public abstract getChar()C
.end method

.method public abstract getChar(I)C
.end method

.method public abstract getDouble()D
.end method

.method public abstract getDouble(I)D
.end method

.method public abstract getFloat()F
.end method

.method public abstract getFloat(I)F
.end method

.method public abstract getInt()I
.end method

.method public abstract getInt(I)I
.end method

.method public abstract getLong()J
.end method

.method public abstract getLong(I)J
.end method

.method public abstract getShort()S
.end method

.method public abstract getShort(I)S
.end method

.method public final hasArray()Z
    .locals 1

    #@0
    .prologue
    .line 589
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->protectedHasArray()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 600
    iget v1, p0, Ljava/nio/ByteBuffer;->position:I

    #@2
    .line 601
    .local v1, "myPosition":I
    const/4 v0, 0x0

    #@3
    .line 602
    .local v0, "hash":I
    :goto_0
    iget v3, p0, Ljava/nio/ByteBuffer;->limit:I

    #@5
    if-ge v1, v3, :cond_0

    #@7
    .line 603
    add-int/lit8 v2, v1, 0x1

    #@9
    .end local v1    # "myPosition":I
    .local v2, "myPosition":I
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

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
    .line 605
    :cond_0
    return v0
.end method

.method public isAccessible()Z
    .locals 1

    #@0
    .prologue
    .line 623
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public abstract isDirect()Z
.end method

.method public final order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    .locals 0
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    .line 663
    if-nez p1, :cond_0

    #@2
    .line 664
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@4
    .line 666
    :cond_0
    iput-object p1, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    #@6
    .line 667
    return-object p0
.end method

.method public final order()Ljava/nio/ByteOrder;
    .locals 1

    #@0
    .prologue
    .line 650
    iget-object v0, p0, Ljava/nio/ByteBuffer;->order:Ljava/nio/ByteOrder;

    #@2
    return-object v0
.end method

.method abstract protectedArray()[B
.end method

.method abstract protectedArrayOffset()I
.end method

.method abstract protectedHasArray()Z
.end method

.method public abstract put(B)Ljava/nio/ByteBuffer;
.end method

.method public abstract put(IB)Ljava/nio/ByteBuffer;
.end method

.method public put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 8
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 773
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isAccessible()Z

    #@3
    move-result v4

    #@4
    if-nez v4, :cond_0

    #@6
    .line 774
    new-instance v4, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v5, "buffer is inaccessible"

    #@b
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v4

    #@f
    .line 776
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_1

    #@15
    .line 777
    new-instance v4, Ljava/nio/ReadOnlyBufferException;

    #@17
    invoke-direct {v4}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    #@1a
    throw v4

    #@1b
    .line 779
    :cond_1
    if-ne p1, p0, :cond_2

    #@1d
    .line 780
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string/jumbo v5, "src == this"

    #@22
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v4

    #@26
    .line 782
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isAccessible()Z

    #@29
    move-result v4

    #@2a
    if-nez v4, :cond_3

    #@2c
    .line 783
    new-instance v4, Ljava/lang/IllegalStateException;

    #@2e
    const-string/jumbo v5, "src buffer is inaccessible"

    #@31
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@34
    throw v4

    #@35
    .line 785
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@38
    move-result v7

    #@39
    .line 786
    .local v7, "srcByteCount":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@3c
    move-result v4

    #@3d
    if-le v7, v4, :cond_4

    #@3f
    .line 787
    new-instance v4, Ljava/nio/BufferOverflowException;

    #@41
    invoke-direct {v4}, Ljava/nio/BufferOverflowException;-><init>()V

    #@44
    throw v4

    #@45
    .line 790
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@48
    move-result v4

    #@49
    if-eqz v4, :cond_7

    #@4b
    move-object v2, p1

    #@4c
    .line 791
    .local v2, "srcObject":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@4f
    move-result v3

    #@50
    .line 792
    .local v3, "srcOffset":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@53
    move-result v4

    #@54
    if-nez v4, :cond_5

    #@56
    .line 793
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    #@59
    move-result v4

    #@5a
    add-int/2addr v3, v4

    #@5b
    .line 796
    :cond_5
    move-object v6, p0

    #@5c
    .line 797
    .local v6, "dst":Ljava/nio/ByteBuffer;
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@5f
    move-result v4

    #@60
    if-eqz v4, :cond_8

    #@62
    move-object v0, v6

    #@63
    .line 798
    .local v0, "dstObject":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    #@66
    move-result v1

    #@67
    .line 799
    .local v1, "dstOffset":I
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@6a
    move-result v4

    #@6b
    if-nez v4, :cond_6

    #@6d
    .line 800
    invoke-static {v6}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    #@70
    move-result v4

    #@71
    add-int/2addr v1, v4

    #@72
    .line 803
    :cond_6
    int-to-long v4, v7

    #@73
    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    #@76
    .line 804
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    #@79
    move-result v4

    #@7a
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@7d
    .line 805
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    #@80
    move-result v4

    #@81
    add-int/2addr v4, v7

    #@82
    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@85
    .line 807
    return-object p0

    #@86
    .line 790
    .end local v0    # "dstObject":Ljava/lang/Object;
    .end local v1    # "dstOffset":I
    .end local v2    # "srcObject":Ljava/lang/Object;
    .end local v3    # "srcOffset":I
    .end local v6    # "dst":Ljava/nio/ByteBuffer;
    :cond_7
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    #@89
    move-result-object v2

    #@8a
    .restart local v2    # "srcObject":Ljava/lang/Object;
    goto :goto_0

    #@8b
    .line 797
    .restart local v3    # "srcOffset":I
    .restart local v6    # "dst":Ljava/nio/ByteBuffer;
    :cond_8
    invoke-static {v6}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    #@8e
    move-result-object v0

    #@8f
    .restart local v0    # "dstObject":Ljava/lang/Object;
    goto :goto_1
.end method

.method public final put([B)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "src"    # [B

    #@0
    .prologue
    .line 721
    array-length v0, p1

    #@1
    const/4 v1, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public put([BII)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "src"    # [B
    .param p2, "srcOffset"    # I
    .param p3, "byteCount"    # I

    #@0
    .prologue
    .line 746
    array-length v1, p1

    #@1
    invoke-static {v1, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    #@4
    .line 747
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@7
    move-result v1

    #@8
    if-le p3, v1, :cond_0

    #@a
    .line 748
    new-instance v1, Ljava/nio/BufferOverflowException;

    #@c
    invoke-direct {v1}, Ljava/nio/BufferOverflowException;-><init>()V

    #@f
    throw v1

    #@10
    .line 750
    :cond_0
    move v0, p2

    #@11
    .local v0, "i":I
    :goto_0
    add-int v1, p2, p3

    #@13
    if-ge v0, v1, :cond_1

    #@15
    .line 751
    aget-byte v1, p1, v0

    #@17
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    #@1a
    .line 750
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 753
    :cond_1
    return-object p0
.end method

.method public abstract putChar(C)Ljava/nio/ByteBuffer;
.end method

.method public abstract putChar(IC)Ljava/nio/ByteBuffer;
.end method

.method public abstract putDouble(D)Ljava/nio/ByteBuffer;
.end method

.method public abstract putDouble(ID)Ljava/nio/ByteBuffer;
.end method

.method public abstract putFloat(F)Ljava/nio/ByteBuffer;
.end method

.method public abstract putFloat(IF)Ljava/nio/ByteBuffer;
.end method

.method public abstract putInt(I)Ljava/nio/ByteBuffer;
.end method

.method public abstract putInt(II)Ljava/nio/ByteBuffer;
.end method

.method public abstract putLong(IJ)Ljava/nio/ByteBuffer;
.end method

.method public abstract putLong(J)Ljava/nio/ByteBuffer;
.end method

.method public abstract putShort(IS)Ljava/nio/ByteBuffer;
.end method

.method public abstract putShort(S)Ljava/nio/ByteBuffer;
.end method

.method public setAccessible(Z)V
    .locals 1
    .param p1, "accessible"    # Z

    #@0
    .prologue
    .line 636
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public abstract slice()Ljava/nio/ByteBuffer;
.end method
