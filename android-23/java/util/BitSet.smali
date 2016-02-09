.class public Ljava/util/BitSet;
.super Ljava/lang/Object;
.source "BitSet.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final ALL_ONES:J = -0x1L

.field private static final serialVersionUID:J = 0x6efd887e3934ab21L


# instance fields
.field private bits:[J

.field private transient longCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 77
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [J

    #@3
    invoke-direct {p0, v0}, Ljava/util/BitSet;-><init>([J)V

    #@6
    .line 76
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "bitCount"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 87
    if-gez p1, :cond_0

    #@6
    .line 88
    new-instance v0, Ljava/lang/NegativeArraySizeException;

    #@8
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-direct {v0, v1}, Ljava/lang/NegativeArraySizeException;-><init>(Ljava/lang/String;)V

    #@f
    throw v0

    #@10
    .line 90
    :cond_0
    invoke-static {p1}, Ljava/util/BitSet;->arrayForBits(I)[J

    #@13
    move-result-object v0

    #@14
    iput-object v0, p0, Ljava/util/BitSet;->bits:[J

    #@16
    .line 91
    iput v1, p0, Ljava/util/BitSet;->longCount:I

    #@18
    .line 86
    return-void
.end method

.method private constructor <init>([J)V
    .locals 1
    .param p1, "bits"    # [J

    #@0
    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 95
    iput-object p1, p0, Ljava/util/BitSet;->bits:[J

    #@5
    .line 96
    array-length v0, p1

    #@6
    iput v0, p0, Ljava/util/BitSet;->longCount:I

    #@8
    .line 97
    invoke-direct {p0}, Ljava/util/BitSet;->shrinkSize()V

    #@b
    .line 94
    return-void
.end method

.method private static arrayForBits(I)[J
    .locals 1
    .param p0, "bitCount"    # I

    #@0
    .prologue
    .line 101
    add-int/lit8 v0, p0, 0x3f

    #@2
    div-int/lit8 v0, v0, 0x40

    #@4
    new-array v0, v0, [J

    #@6
    return-object v0
.end method

.method private checkIndex(I)V
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 227
    if-gez p1, :cond_0

    #@2
    .line 228
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "index < 0: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 226
    :cond_0
    return-void
.end method

.method private checkRange(II)V
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    .line 233
    or-int v0, p1, p2

    #@2
    if-ltz v0, :cond_0

    #@4
    if-ge p2, p1, :cond_1

    #@6
    .line 234
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "fromIndex="

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    const-string/jumbo v2, " toIndex="

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 232
    :cond_1
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 5
    .param p1, "desiredLongCount"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 138
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    #@3
    array-length v2, v2

    #@4
    if-gt p1, v2, :cond_0

    #@6
    .line 139
    return-void

    #@7
    .line 141
    :cond_0
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    #@9
    array-length v2, v2

    #@a
    mul-int/lit8 v2, v2, 0x2

    #@c
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    #@f
    move-result v1

    #@10
    .line 142
    .local v1, "newLength":I
    new-array v0, v1, [J

    #@12
    .line 143
    .local v0, "newBits":[J
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    #@14
    iget v3, p0, Ljava/util/BitSet;->longCount:I

    #@16
    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@19
    .line 144
    iput-object v0, p0, Ljava/util/BitSet;->bits:[J

    #@1b
    .line 137
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 748
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 750
    iget-object v0, p0, Ljava/util/BitSet;->bits:[J

    #@5
    array-length v0, v0

    #@6
    iput v0, p0, Ljava/util/BitSet;->longCount:I

    #@8
    .line 751
    invoke-direct {p0}, Ljava/util/BitSet;->shrinkSize()V

    #@b
    .line 747
    return-void
.end method

.method private shrinkSize()V
    .locals 6

    #@0
    .prologue
    .line 66
    iget v1, p0, Ljava/util/BitSet;->longCount:I

    #@2
    add-int/lit8 v0, v1, -0x1

    #@4
    .line 67
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    #@6
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    #@8
    aget-wide v2, v1, v0

    #@a
    const-wide/16 v4, 0x0

    #@c
    cmp-long v1, v2, v4

    #@e
    if-nez v1, :cond_0

    #@10
    .line 68
    add-int/lit8 v0, v0, -0x1

    #@12
    goto :goto_0

    #@13
    .line 70
    :cond_0
    add-int/lit8 v1, v0, 0x1

    #@15
    iput v1, p0, Ljava/util/BitSet;->longCount:I

    #@17
    .line 65
    return-void
.end method

.method public static valueOf(Ljava/nio/ByteBuffer;)Ljava/util/BitSet;
    .locals 10
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/16 v6, 0x8

    #@2
    .line 708
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    #@5
    move-result-object v4

    #@6
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    #@8
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@b
    move-result-object p0

    #@c
    .line 709
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@f
    move-result v4

    #@10
    mul-int/lit8 v4, v4, 0x8

    #@12
    invoke-static {v4}, Ljava/util/BitSet;->arrayForBits(I)[J

    #@15
    move-result-object v3

    #@16
    .line 710
    .local v3, "longs":[J
    const/4 v0, 0x0

    #@17
    .line 711
    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    #@1a
    move-result v4

    #@1b
    if-lt v4, v6, :cond_0

    #@1d
    .line 712
    add-int/lit8 v1, v0, 0x1

    #@1f
    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    #@22
    move-result-wide v4

    #@23
    aput-wide v4, v3, v0

    #@25
    move v0, v1

    #@26
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    #@27
    .line 714
    :cond_0
    const/4 v2, 0x0

    #@28
    .local v2, "j":I
    :goto_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_1

    #@2e
    .line 715
    aget-wide v4, v3, v0

    #@30
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    #@33
    move-result v6

    #@34
    int-to-long v6, v6

    #@35
    const-wide/16 v8, 0xff

    #@37
    and-long/2addr v6, v8

    #@38
    mul-int/lit8 v8, v2, 0x8

    #@3a
    shl-long/2addr v6, v8

    #@3b
    or-long/2addr v4, v6

    #@3c
    aput-wide v4, v3, v0

    #@3e
    .line 714
    add-int/lit8 v2, v2, 0x1

    #@40
    goto :goto_1

    #@41
    .line 717
    :cond_1
    invoke-static {v3}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    #@44
    move-result-object v4

    #@45
    return-object v4
.end method

.method public static valueOf(Ljava/nio/LongBuffer;)Ljava/util/BitSet;
    .locals 4
    .param p0, "longBuffer"    # Ljava/nio/LongBuffer;

    #@0
    .prologue
    .line 687
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->remaining()I

    #@3
    move-result v2

    #@4
    new-array v1, v2, [J

    #@6
    .line 688
    .local v1, "longs":[J
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    array-length v2, v1

    #@8
    if-ge v0, v2, :cond_0

    #@a
    .line 689
    invoke-virtual {p0}, Ljava/nio/LongBuffer;->position()I

    #@d
    move-result v2

    #@e
    add-int/2addr v2, v0

    #@f
    invoke-virtual {p0, v2}, Ljava/nio/LongBuffer;->get(I)J

    #@12
    move-result-wide v2

    #@13
    aput-wide v2, v1, v0

    #@15
    .line 688
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 691
    :cond_0
    invoke-static {v1}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    #@1b
    move-result-object v2

    #@1c
    return-object v2
.end method

.method public static valueOf([B)Ljava/util/BitSet;
    .locals 1
    .param p0, "bytes"    # [B

    #@0
    .prologue
    .line 699
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/BitSet;->valueOf(Ljava/nio/ByteBuffer;)Ljava/util/BitSet;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static valueOf([J)Ljava/util/BitSet;
    .locals 2
    .param p0, "longs"    # [J

    #@0
    .prologue
    .line 675
    new-instance v1, Ljava/util/BitSet;

    #@2
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [J

    #@8
    invoke-direct {v1, v0}, Ljava/util/BitSet;-><init>([J)V

    #@b
    return-object v1
.end method


# virtual methods
.method public and(Ljava/util/BitSet;)V
    .locals 8
    .param p1, "bs"    # Ljava/util/BitSet;

    #@0
    .prologue
    .line 464
    iget v2, p0, Ljava/util/BitSet;->longCount:I

    #@2
    iget v3, p1, Ljava/util/BitSet;->longCount:I

    #@4
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@7
    move-result v1

    #@8
    .line 465
    .local v1, "minSize":I
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@b
    .line 466
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    #@d
    aget-wide v4, v2, v0

    #@f
    iget-object v3, p1, Ljava/util/BitSet;->bits:[J

    #@11
    aget-wide v6, v3, v0

    #@13
    and-long/2addr v4, v6

    #@14
    aput-wide v4, v2, v0

    #@16
    .line 465
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 468
    :cond_0
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    #@1b
    iget v3, p0, Ljava/util/BitSet;->longCount:I

    #@1d
    const-wide/16 v4, 0x0

    #@1f
    invoke-static {v2, v1, v3, v4, v5}, Ljava/util/Arrays;->fill([JIIJ)V

    #@22
    .line 469
    invoke-direct {p0}, Ljava/util/BitSet;->shrinkSize()V

    #@25
    .line 463
    return-void
.end method

.method public andNot(Ljava/util/BitSet;)V
    .locals 8
    .param p1, "bs"    # Ljava/util/BitSet;

    #@0
    .prologue
    .line 476
    iget v2, p0, Ljava/util/BitSet;->longCount:I

    #@2
    iget v3, p1, Ljava/util/BitSet;->longCount:I

    #@4
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    #@7
    move-result v1

    #@8
    .line 477
    .local v1, "minSize":I
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@b
    .line 478
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    #@d
    aget-wide v4, v2, v0

    #@f
    iget-object v3, p1, Ljava/util/BitSet;->bits:[J

    #@11
    aget-wide v6, v3, v0

    #@13
    not-long v6, v6

    #@14
    and-long/2addr v4, v6

    #@15
    aput-wide v4, v2, v0

    #@17
    .line 477
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 480
    :cond_0
    invoke-direct {p0}, Ljava/util/BitSet;->shrinkSize()V

    #@1d
    .line 475
    return-void
.end method

.method public cardinality()I
    .locals 4

    #@0
    .prologue
    .line 661
    const/4 v1, 0x0

    #@1
    .line 662
    .local v1, "result":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget v2, p0, Ljava/util/BitSet;->longCount:I

    #@4
    if-ge v0, v2, :cond_0

    #@6
    .line 663
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    #@8
    aget-wide v2, v2, v0

    #@a
    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    #@d
    move-result v2

    #@e
    add-int/2addr v1, v2

    #@f
    .line 662
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 665
    :cond_0
    return v1
.end method

.method public clear()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 338
    iget-object v0, p0, Ljava/util/BitSet;->bits:[J

    #@3
    iget v1, p0, Ljava/util/BitSet;->longCount:I

    #@5
    const-wide/16 v2, 0x0

    #@7
    invoke-static {v0, v4, v1, v2, v3}, Ljava/util/Arrays;->fill([JIIJ)V

    #@a
    .line 339
    iput v4, p0, Ljava/util/BitSet;->longCount:I

    #@c
    .line 337
    return-void
.end method

.method public clear(I)V
    .locals 6
    .param p1, "index"    # I

    #@0
    .prologue
    .line 197
    if-gez p1, :cond_0

    #@2
    .line 198
    invoke-direct {p0, p1}, Ljava/util/BitSet;->checkIndex(I)V

    #@5
    .line 200
    :cond_0
    div-int/lit8 v0, p1, 0x40

    #@7
    .line 201
    .local v0, "arrayIndex":I
    iget v1, p0, Ljava/util/BitSet;->longCount:I

    #@9
    if-lt v0, v1, :cond_1

    #@b
    .line 202
    return-void

    #@c
    .line 204
    :cond_1
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    #@e
    aget-wide v2, v1, v0

    #@10
    const-wide/16 v4, 0x1

    #@12
    shl-long/2addr v4, p1

    #@13
    not-long v4, v4

    #@14
    and-long/2addr v2, v4

    #@15
    aput-wide v2, v1, v0

    #@17
    .line 205
    invoke-direct {p0}, Ljava/util/BitSet;->shrinkSize()V

    #@1a
    .line 196
    return-void
.end method

.method public clear(II)V
    .locals 16
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    .line 383
    invoke-direct/range {p0 .. p2}, Ljava/util/BitSet;->checkRange(II)V

    #@3
    .line 384
    move/from16 v0, p1

    #@5
    move/from16 v1, p2

    #@7
    if-eq v0, v1, :cond_0

    #@9
    move-object/from16 v0, p0

    #@b
    iget v9, v0, Ljava/util/BitSet;->longCount:I

    #@d
    if-nez v9, :cond_1

    #@f
    .line 385
    :cond_0
    return-void

    #@10
    .line 387
    :cond_1
    move-object/from16 v0, p0

    #@12
    iget v9, v0, Ljava/util/BitSet;->longCount:I

    #@14
    mul-int/lit8 v7, v9, 0x40

    #@16
    .line 388
    .local v7, "last":I
    move/from16 v0, p1

    #@18
    if-lt v0, v7, :cond_2

    #@1a
    .line 389
    return-void

    #@1b
    .line 391
    :cond_2
    move/from16 v0, p2

    #@1d
    if-le v0, v7, :cond_3

    #@1f
    .line 392
    move/from16 p2, v7

    #@21
    .line 394
    :cond_3
    div-int/lit8 v2, p1, 0x40

    #@23
    .line 395
    .local v2, "firstArrayIndex":I
    add-int/lit8 v9, p2, -0x1

    #@25
    div-int/lit8 v8, v9, 0x40

    #@27
    .line 397
    .local v8, "lastArrayIndex":I
    const-wide/16 v12, -0x1

    #@29
    shl-long v10, v12, p1

    #@2b
    .line 398
    .local v10, "lowMask":J
    move/from16 v0, p2

    #@2d
    neg-int v9, v0

    #@2e
    const-wide/16 v12, -0x1

    #@30
    ushr-long v4, v12, v9

    #@32
    .line 399
    .local v4, "highMask":J
    if-ne v2, v8, :cond_4

    #@34
    .line 400
    move-object/from16 v0, p0

    #@36
    iget-object v9, v0, Ljava/util/BitSet;->bits:[J

    #@38
    aget-wide v12, v9, v2

    #@3a
    and-long v14, v10, v4

    #@3c
    not-long v14, v14

    #@3d
    and-long/2addr v12, v14

    #@3e
    aput-wide v12, v9, v2

    #@40
    .line 409
    :goto_0
    invoke-direct/range {p0 .. p0}, Ljava/util/BitSet;->shrinkSize()V

    #@43
    .line 382
    return-void

    #@44
    .line 402
    :cond_4
    move v3, v2

    #@45
    .line 403
    .local v3, "i":I
    move-object/from16 v0, p0

    #@47
    iget-object v9, v0, Ljava/util/BitSet;->bits:[J

    #@49
    add-int/lit8 v6, v3, 0x1

    #@4b
    .end local v3    # "i":I
    .local v6, "i":I
    aget-wide v12, v9, v3

    #@4d
    not-long v14, v10

    #@4e
    and-long/2addr v12, v14

    #@4f
    aput-wide v12, v9, v3

    #@51
    .line 404
    :goto_1
    if-ge v6, v8, :cond_5

    #@53
    .line 405
    move-object/from16 v0, p0

    #@55
    iget-object v9, v0, Ljava/util/BitSet;->bits:[J

    #@57
    add-int/lit8 v3, v6, 0x1

    #@59
    .end local v6    # "i":I
    .restart local v3    # "i":I
    const-wide/16 v12, 0x0

    #@5b
    aput-wide v12, v9, v6

    #@5d
    move v6, v3

    #@5e
    .end local v3    # "i":I
    .restart local v6    # "i":I
    goto :goto_1

    #@5f
    .line 407
    :cond_5
    move-object/from16 v0, p0

    #@61
    iget-object v9, v0, Ljava/util/BitSet;->bits:[J

    #@63
    add-int/lit8 v3, v6, 0x1

    #@65
    .end local v6    # "i":I
    .restart local v3    # "i":I
    aget-wide v12, v9, v6

    #@67
    not-long v14, v4

    #@68
    and-long/2addr v12, v14

    #@69
    aput-wide v12, v9, v6

    #@6b
    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 106
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/BitSet;

    #@6
    .line 107
    .local v0, "clone":Ljava/util/BitSet;
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    #@8
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, [J

    #@e
    iput-object v2, v0, Ljava/util/BitSet;->bits:[J

    #@10
    .line 108
    invoke-direct {v0}, Ljava/util/BitSet;->shrinkSize()V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    .line 109
    return-object v0

    #@14
    .line 110
    .end local v0    # "clone":Ljava/util/BitSet;
    :catch_0
    move-exception v1

    #@15
    .line 111
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    #@17
    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@1a
    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 116
    if-ne p0, p1, :cond_0

    #@4
    .line 117
    return v7

    #@5
    .line 119
    :cond_0
    instance-of v2, p1, Ljava/util/BitSet;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 120
    return v6

    #@a
    :cond_1
    move-object v1, p1

    #@b
    .line 122
    check-cast v1, Ljava/util/BitSet;

    #@d
    .line 123
    .local v1, "lhs":Ljava/util/BitSet;
    iget v2, p0, Ljava/util/BitSet;->longCount:I

    #@f
    iget v3, v1, Ljava/util/BitSet;->longCount:I

    #@11
    if-eq v2, v3, :cond_2

    #@13
    .line 124
    return v6

    #@14
    .line 126
    :cond_2
    const/4 v0, 0x0

    #@15
    .local v0, "i":I
    :goto_0
    iget v2, p0, Ljava/util/BitSet;->longCount:I

    #@17
    if-ge v0, v2, :cond_4

    #@19
    .line 127
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    #@1b
    aget-wide v2, v2, v0

    #@1d
    iget-object v4, v1, Ljava/util/BitSet;->bits:[J

    #@1f
    aget-wide v4, v4, v0

    #@21
    cmp-long v2, v2, v4

    #@23
    if-eqz v2, :cond_3

    #@25
    .line 128
    return v6

    #@26
    .line 126
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 131
    :cond_4
    return v7
.end method

.method public flip(I)V
    .locals 6
    .param p1, "index"    # I

    #@0
    .prologue
    .line 214
    if-gez p1, :cond_0

    #@2
    .line 215
    invoke-direct {p0, p1}, Ljava/util/BitSet;->checkIndex(I)V

    #@5
    .line 217
    :cond_0
    div-int/lit8 v0, p1, 0x40

    #@7
    .line 218
    .local v0, "arrayIndex":I
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    #@9
    array-length v1, v1

    #@a
    if-lt v0, v1, :cond_1

    #@c
    .line 219
    add-int/lit8 v1, v0, 0x1

    #@e
    invoke-direct {p0, v1}, Ljava/util/BitSet;->ensureCapacity(I)V

    #@11
    .line 221
    :cond_1
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    #@13
    aget-wide v2, v1, v0

    #@15
    const-wide/16 v4, 0x1

    #@17
    shl-long/2addr v4, p1

    #@18
    xor-long/2addr v2, v4

    #@19
    aput-wide v2, v1, v0

    #@1b
    .line 222
    iget v1, p0, Ljava/util/BitSet;->longCount:I

    #@1d
    add-int/lit8 v2, v0, 0x1

    #@1f
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@22
    move-result v1

    #@23
    iput v1, p0, Ljava/util/BitSet;->longCount:I

    #@25
    .line 223
    invoke-direct {p0}, Ljava/util/BitSet;->shrinkSize()V

    #@28
    .line 213
    return-void
.end method

.method public flip(II)V
    .locals 16
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    .line 420
    invoke-direct/range {p0 .. p2}, Ljava/util/BitSet;->checkRange(II)V

    #@3
    .line 421
    move/from16 v0, p1

    #@5
    move/from16 v1, p2

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 422
    return-void

    #@a
    .line 424
    :cond_0
    div-int/lit8 v2, p1, 0x40

    #@c
    .line 425
    .local v2, "firstArrayIndex":I
    add-int/lit8 v10, p2, -0x1

    #@e
    div-int/lit8 v7, v10, 0x40

    #@10
    .line 426
    .local v7, "lastArrayIndex":I
    move-object/from16 v0, p0

    #@12
    iget-object v10, v0, Ljava/util/BitSet;->bits:[J

    #@14
    array-length v10, v10

    #@15
    if-lt v7, v10, :cond_1

    #@17
    .line 427
    add-int/lit8 v10, v7, 0x1

    #@19
    move-object/from16 v0, p0

    #@1b
    invoke-direct {v0, v10}, Ljava/util/BitSet;->ensureCapacity(I)V

    #@1e
    .line 430
    :cond_1
    const-wide/16 v10, -0x1

    #@20
    shl-long v8, v10, p1

    #@22
    .line 431
    .local v8, "lowMask":J
    move/from16 v0, p2

    #@24
    neg-int v10, v0

    #@25
    const-wide/16 v12, -0x1

    #@27
    ushr-long v4, v12, v10

    #@29
    .line 432
    .local v4, "highMask":J
    if-ne v2, v7, :cond_2

    #@2b
    .line 433
    move-object/from16 v0, p0

    #@2d
    iget-object v10, v0, Ljava/util/BitSet;->bits:[J

    #@2f
    aget-wide v12, v10, v2

    #@31
    and-long v14, v8, v4

    #@33
    xor-long/2addr v12, v14

    #@34
    aput-wide v12, v10, v2

    #@36
    .line 442
    :goto_0
    move-object/from16 v0, p0

    #@38
    iget v10, v0, Ljava/util/BitSet;->longCount:I

    #@3a
    add-int/lit8 v11, v7, 0x1

    #@3c
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    #@3f
    move-result v10

    #@40
    move-object/from16 v0, p0

    #@42
    iput v10, v0, Ljava/util/BitSet;->longCount:I

    #@44
    .line 443
    invoke-direct/range {p0 .. p0}, Ljava/util/BitSet;->shrinkSize()V

    #@47
    .line 419
    return-void

    #@48
    .line 435
    :cond_2
    move v3, v2

    #@49
    .line 436
    .local v3, "i":I
    move-object/from16 v0, p0

    #@4b
    iget-object v10, v0, Ljava/util/BitSet;->bits:[J

    #@4d
    add-int/lit8 v6, v3, 0x1

    #@4f
    .end local v3    # "i":I
    .local v6, "i":I
    aget-wide v12, v10, v3

    #@51
    xor-long/2addr v12, v8

    #@52
    aput-wide v12, v10, v3

    #@54
    .line 437
    :goto_1
    if-ge v6, v7, :cond_3

    #@56
    .line 438
    move-object/from16 v0, p0

    #@58
    iget-object v10, v0, Ljava/util/BitSet;->bits:[J

    #@5a
    add-int/lit8 v3, v6, 0x1

    #@5c
    .end local v6    # "i":I
    .restart local v3    # "i":I
    aget-wide v12, v10, v6

    #@5e
    const-wide/16 v14, -0x1

    #@60
    xor-long/2addr v12, v14

    #@61
    aput-wide v12, v10, v6

    #@63
    move v6, v3

    #@64
    .end local v3    # "i":I
    .restart local v6    # "i":I
    goto :goto_1

    #@65
    .line 440
    :cond_3
    move-object/from16 v0, p0

    #@67
    iget-object v10, v0, Ljava/util/BitSet;->bits:[J

    #@69
    add-int/lit8 v3, v6, 0x1

    #@6b
    .end local v6    # "i":I
    .restart local v3    # "i":I
    aget-wide v12, v10, v6

    #@6d
    xor-long/2addr v12, v4

    #@6e
    aput-wide v12, v10, v6

    #@70
    goto :goto_0
.end method

.method public get(II)Ljava/util/BitSet;
    .locals 20
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    .line 248
    invoke-direct/range {p0 .. p2}, Ljava/util/BitSet;->checkRange(II)V

    #@3
    .line 250
    move-object/from16 v0, p0

    #@5
    iget v13, v0, Ljava/util/BitSet;->longCount:I

    #@7
    mul-int/lit8 v7, v13, 0x40

    #@9
    .line 251
    .local v7, "last":I
    move/from16 v0, p1

    #@b
    if-ge v0, v7, :cond_0

    #@d
    move/from16 v0, p1

    #@f
    move/from16 v1, p2

    #@11
    if-ne v0, v1, :cond_1

    #@13
    .line 252
    :cond_0
    new-instance v13, Ljava/util/BitSet;

    #@15
    const/16 v16, 0x0

    #@17
    move/from16 v0, v16

    #@19
    invoke-direct {v13, v0}, Ljava/util/BitSet;-><init>(I)V

    #@1c
    return-object v13

    #@1d
    .line 254
    :cond_1
    move/from16 v0, p2

    #@1f
    if-le v0, v7, :cond_2

    #@21
    .line 255
    move/from16 p2, v7

    #@23
    .line 258
    :cond_2
    div-int/lit8 v3, p1, 0x40

    #@25
    .line 259
    .local v3, "firstArrayIndex":I
    add-int/lit8 v13, p2, -0x1

    #@27
    div-int/lit8 v8, v13, 0x40

    #@29
    .line 260
    .local v8, "lastArrayIndex":I
    const-wide/16 v16, -0x1

    #@2b
    shl-long v10, v16, p1

    #@2d
    .line 261
    .local v10, "lowMask":J
    move/from16 v0, p2

    #@2f
    neg-int v13, v0

    #@30
    const-wide/16 v16, -0x1

    #@32
    ushr-long v4, v16, v13

    #@34
    .line 263
    .local v4, "highMask":J
    if-ne v3, v8, :cond_4

    #@36
    .line 264
    move-object/from16 v0, p0

    #@38
    iget-object v13, v0, Ljava/util/BitSet;->bits:[J

    #@3a
    aget-wide v16, v13, v3

    #@3c
    and-long v18, v10, v4

    #@3e
    and-long v16, v16, v18

    #@40
    ushr-long v14, v16, p1

    #@42
    .line 265
    .local v14, "result":J
    const-wide/16 v16, 0x0

    #@44
    cmp-long v13, v14, v16

    #@46
    if-nez v13, :cond_3

    #@48
    .line 266
    new-instance v13, Ljava/util/BitSet;

    #@4a
    const/16 v16, 0x0

    #@4c
    move/from16 v0, v16

    #@4e
    invoke-direct {v13, v0}, Ljava/util/BitSet;-><init>(I)V

    #@51
    return-object v13

    #@52
    .line 268
    :cond_3
    new-instance v13, Ljava/util/BitSet;

    #@54
    const/16 v16, 0x1

    #@56
    move/from16 v0, v16

    #@58
    new-array v0, v0, [J

    #@5a
    move-object/from16 v16, v0

    #@5c
    const/16 v17, 0x0

    #@5e
    aput-wide v14, v16, v17

    #@60
    move-object/from16 v0, v16

    #@62
    invoke-direct {v13, v0}, Ljava/util/BitSet;-><init>([J)V

    #@65
    return-object v13

    #@66
    .line 271
    .end local v14    # "result":J
    :cond_4
    sub-int v13, v8, v3

    #@68
    add-int/lit8 v13, v13, 0x1

    #@6a
    new-array v9, v13, [J

    #@6c
    .line 274
    .local v9, "newBits":[J
    move-object/from16 v0, p0

    #@6e
    iget-object v13, v0, Ljava/util/BitSet;->bits:[J

    #@70
    aget-wide v16, v13, v3

    #@72
    and-long v16, v16, v10

    #@74
    const/4 v13, 0x0

    #@75
    aput-wide v16, v9, v13

    #@77
    .line 275
    array-length v13, v9

    #@78
    add-int/lit8 v13, v13, -0x1

    #@7a
    move-object/from16 v0, p0

    #@7c
    iget-object v0, v0, Ljava/util/BitSet;->bits:[J

    #@7e
    move-object/from16 v16, v0

    #@80
    aget-wide v16, v16, v8

    #@82
    and-long v16, v16, v4

    #@84
    aput-wide v16, v9, v13

    #@86
    .line 278
    const/4 v6, 0x1

    #@87
    .local v6, "i":I
    :goto_0
    sub-int v13, v8, v3

    #@89
    if-ge v6, v13, :cond_5

    #@8b
    .line 279
    move-object/from16 v0, p0

    #@8d
    iget-object v13, v0, Ljava/util/BitSet;->bits:[J

    #@8f
    add-int v16, v3, v6

    #@91
    aget-wide v16, v13, v16

    #@93
    aput-wide v16, v9, v6

    #@95
    .line 278
    add-int/lit8 v6, v6, 0x1

    #@97
    goto :goto_0

    #@98
    .line 283
    :cond_5
    rem-int/lit8 v12, p1, 0x40

    #@9a
    .line 284
    .local v12, "numBitsToShift":I
    array-length v2, v9

    #@9b
    .line 285
    .local v2, "actualLen":I
    if-eqz v12, :cond_8

    #@9d
    .line 286
    const/4 v6, 0x0

    #@9e
    :goto_1
    array-length v13, v9

    #@9f
    if-ge v6, v13, :cond_8

    #@a1
    .line 289
    aget-wide v16, v9, v6

    #@a3
    ushr-long v16, v16, v12

    #@a5
    aput-wide v16, v9, v6

    #@a7
    .line 293
    array-length v13, v9

    #@a8
    add-int/lit8 v13, v13, -0x1

    #@aa
    if-eq v6, v13, :cond_6

    #@ac
    .line 294
    aget-wide v16, v9, v6

    #@ae
    add-int/lit8 v13, v6, 0x1

    #@b0
    aget-wide v18, v9, v13

    #@b2
    neg-int v13, v12

    #@b3
    shl-long v18, v18, v13

    #@b5
    or-long v16, v16, v18

    #@b7
    aput-wide v16, v9, v6

    #@b9
    .line 296
    :cond_6
    aget-wide v16, v9, v6

    #@bb
    const-wide/16 v18, 0x0

    #@bd
    cmp-long v13, v16, v18

    #@bf
    if-eqz v13, :cond_7

    #@c1
    .line 297
    add-int/lit8 v2, v6, 0x1

    #@c3
    .line 286
    :cond_7
    add-int/lit8 v6, v6, 0x1

    #@c5
    goto :goto_1

    #@c6
    .line 301
    :cond_8
    new-instance v13, Ljava/util/BitSet;

    #@c8
    invoke-direct {v13, v9}, Ljava/util/BitSet;-><init>([J)V

    #@cb
    return-object v13
.end method

.method public get(I)Z
    .locals 6
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 164
    if-gez p1, :cond_0

    #@3
    .line 165
    invoke-direct {p0, p1}, Ljava/util/BitSet;->checkIndex(I)V

    #@6
    .line 167
    :cond_0
    div-int/lit8 v0, p1, 0x40

    #@8
    .line 168
    .local v0, "arrayIndex":I
    iget v2, p0, Ljava/util/BitSet;->longCount:I

    #@a
    if-lt v0, v2, :cond_1

    #@c
    .line 169
    return v1

    #@d
    .line 171
    :cond_1
    iget-object v2, p0, Ljava/util/BitSet;->bits:[J

    #@f
    aget-wide v2, v2, v0

    #@11
    const-wide/16 v4, 0x1

    #@13
    shl-long/2addr v4, p1

    #@14
    and-long/2addr v2, v4

    #@15
    const-wide/16 v4, 0x0

    #@17
    cmp-long v2, v2, v4

    #@19
    if-eqz v2, :cond_2

    #@1b
    const/4 v1, 0x1

    #@1c
    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 8

    #@0
    .prologue
    .line 151
    const-wide/16 v2, 0x4d2

    #@2
    .line 152
    .local v2, "x":J
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/util/BitSet;->longCount:I

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 153
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    #@9
    aget-wide v4, v1, v0

    #@b
    add-int/lit8 v1, v0, 0x1

    #@d
    int-to-long v6, v1

    #@e
    mul-long/2addr v4, v6

    #@f
    xor-long/2addr v2, v4

    #@10
    .line 152
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 155
    :cond_0
    const/16 v1, 0x20

    #@15
    shr-long v4, v2, v1

    #@17
    xor-long/2addr v4, v2

    #@18
    long-to-int v1, v4

    #@19
    return v1
.end method

.method public intersects(Ljava/util/BitSet;)Z
    .locals 8
    .param p1, "bs"    # Ljava/util/BitSet;

    #@0
    .prologue
    .line 450
    iget-object v0, p1, Ljava/util/BitSet;->bits:[J

    #@2
    .line 451
    .local v0, "bsBits":[J
    iget v3, p0, Ljava/util/BitSet;->longCount:I

    #@4
    iget v4, p1, Ljava/util/BitSet;->longCount:I

    #@6
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@9
    move-result v2

    #@a
    .line 452
    .local v2, "length":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    #@d
    .line 453
    iget-object v3, p0, Ljava/util/BitSet;->bits:[J

    #@f
    aget-wide v4, v3, v1

    #@11
    aget-wide v6, v0, v1

    #@13
    and-long/2addr v4, v6

    #@14
    const-wide/16 v6, 0x0

    #@16
    cmp-long v3, v4, v6

    #@18
    if-eqz v3, :cond_0

    #@1a
    .line 454
    const/4 v3, 0x1

    #@1b
    return v3

    #@1c
    .line 452
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 457
    :cond_1
    const/4 v3, 0x0

    #@20
    return v3
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 654
    iget v1, p0, Ljava/util/BitSet;->longCount:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public length()I
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 530
    iget v0, p0, Ljava/util/BitSet;->longCount:I

    #@3
    if-nez v0, :cond_0

    #@5
    .line 531
    return v1

    #@6
    .line 533
    :cond_0
    iget v0, p0, Ljava/util/BitSet;->longCount:I

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    mul-int/lit8 v0, v0, 0x40

    #@c
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    #@e
    iget v2, p0, Ljava/util/BitSet;->longCount:I

    #@10
    add-int/lit8 v2, v2, -0x1

    #@12
    aget-wide v2, v1, v2

    #@14
    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    #@17
    move-result v1

    #@18
    rsub-int/lit8 v1, v1, 0x40

    #@1a
    add-int/2addr v0, v1

    #@1b
    return v0
.end method

.method public nextClearBit(I)I
    .locals 10
    .param p1, "index"    # I

    #@0
    .prologue
    const-wide/16 v8, -0x1

    #@2
    .line 593
    invoke-direct {p0, p1}, Ljava/util/BitSet;->checkIndex(I)V

    #@5
    .line 594
    div-int/lit8 v0, p1, 0x40

    #@7
    .line 595
    .local v0, "arrayIndex":I
    iget v1, p0, Ljava/util/BitSet;->longCount:I

    #@9
    if-lt v0, v1, :cond_0

    #@b
    .line 596
    return p1

    #@c
    .line 598
    :cond_0
    shl-long v2, v8, p1

    #@e
    .line 599
    .local v2, "mask":J
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    #@10
    aget-wide v4, v1, v0

    #@12
    not-long v4, v4

    #@13
    and-long/2addr v4, v2

    #@14
    const-wide/16 v6, 0x0

    #@16
    cmp-long v1, v4, v6

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 600
    mul-int/lit8 v1, v0, 0x40

    #@1c
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    #@1e
    aget-wide v4, v4, v0

    #@20
    not-long v4, v4

    #@21
    and-long/2addr v4, v2

    #@22
    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    #@25
    move-result v4

    #@26
    add-int/2addr v1, v4

    #@27
    return v1

    #@28
    .line 602
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2a
    iget v1, p0, Ljava/util/BitSet;->longCount:I

    #@2c
    if-ge v0, v1, :cond_2

    #@2e
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    #@30
    aget-wide v4, v1, v0

    #@32
    cmp-long v1, v4, v8

    #@34
    if-eqz v1, :cond_1

    #@36
    .line 604
    :cond_2
    iget v1, p0, Ljava/util/BitSet;->longCount:I

    #@38
    if-ne v0, v1, :cond_3

    #@3a
    .line 605
    iget v1, p0, Ljava/util/BitSet;->longCount:I

    #@3c
    mul-int/lit8 v1, v1, 0x40

    #@3e
    return v1

    #@3f
    .line 607
    :cond_3
    mul-int/lit8 v1, v0, 0x40

    #@41
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    #@43
    aget-wide v4, v4, v0

    #@45
    not-long v4, v4

    #@46
    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    #@49
    move-result v4

    #@4a
    add-int/2addr v1, v4

    #@4b
    return v1
.end method

.method public nextSetBit(I)I
    .locals 10
    .param p1, "index"    # I

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    const/4 v6, -0x1

    #@3
    .line 570
    invoke-direct {p0, p1}, Ljava/util/BitSet;->checkIndex(I)V

    #@6
    .line 571
    div-int/lit8 v0, p1, 0x40

    #@8
    .line 572
    .local v0, "arrayIndex":I
    iget v1, p0, Ljava/util/BitSet;->longCount:I

    #@a
    if-lt v0, v1, :cond_0

    #@c
    .line 573
    return v6

    #@d
    .line 575
    :cond_0
    const-wide/16 v4, -0x1

    #@f
    shl-long v2, v4, p1

    #@11
    .line 576
    .local v2, "mask":J
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    #@13
    aget-wide v4, v1, v0

    #@15
    and-long/2addr v4, v2

    #@16
    cmp-long v1, v4, v8

    #@18
    if-eqz v1, :cond_1

    #@1a
    .line 577
    mul-int/lit8 v1, v0, 0x40

    #@1c
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    #@1e
    aget-wide v4, v4, v0

    #@20
    and-long/2addr v4, v2

    #@21
    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    #@24
    move-result v4

    #@25
    add-int/2addr v1, v4

    #@26
    return v1

    #@27
    .line 579
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@29
    iget v1, p0, Ljava/util/BitSet;->longCount:I

    #@2b
    if-ge v0, v1, :cond_2

    #@2d
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    #@2f
    aget-wide v4, v1, v0

    #@31
    cmp-long v1, v4, v8

    #@33
    if-eqz v1, :cond_1

    #@35
    .line 581
    :cond_2
    iget v1, p0, Ljava/util/BitSet;->longCount:I

    #@37
    if-ne v0, v1, :cond_3

    #@39
    .line 582
    return v6

    #@3a
    .line 584
    :cond_3
    mul-int/lit8 v1, v0, 0x40

    #@3c
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    #@3e
    aget-wide v4, v4, v0

    #@40
    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    #@43
    move-result v4

    #@44
    add-int/2addr v1, v4

    #@45
    return v1
.end method

.method public or(Ljava/util/BitSet;)V
    .locals 8
    .param p1, "bs"    # Ljava/util/BitSet;

    #@0
    .prologue
    .line 487
    iget v3, p0, Ljava/util/BitSet;->longCount:I

    #@2
    iget v4, p1, Ljava/util/BitSet;->longCount:I

    #@4
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@7
    move-result v2

    #@8
    .line 488
    .local v2, "minSize":I
    iget v3, p0, Ljava/util/BitSet;->longCount:I

    #@a
    iget v4, p1, Ljava/util/BitSet;->longCount:I

    #@c
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    #@f
    move-result v1

    #@10
    .line 489
    .local v1, "maxSize":I
    invoke-direct {p0, v1}, Ljava/util/BitSet;->ensureCapacity(I)V

    #@13
    .line 490
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@16
    .line 491
    iget-object v3, p0, Ljava/util/BitSet;->bits:[J

    #@18
    aget-wide v4, v3, v0

    #@1a
    iget-object v6, p1, Ljava/util/BitSet;->bits:[J

    #@1c
    aget-wide v6, v6, v0

    #@1e
    or-long/2addr v4, v6

    #@1f
    aput-wide v4, v3, v0

    #@21
    .line 490
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 493
    :cond_0
    iget v3, p1, Ljava/util/BitSet;->longCount:I

    #@26
    if-le v3, v2, :cond_1

    #@28
    .line 494
    iget-object v3, p1, Ljava/util/BitSet;->bits:[J

    #@2a
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    #@2c
    sub-int v5, v1, v2

    #@2e
    invoke-static {v3, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@31
    .line 496
    :cond_1
    iput v1, p0, Ljava/util/BitSet;->longCount:I

    #@33
    .line 486
    return-void
.end method

.method public previousClearBit(I)I
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 637
    if-ne p1, v2, :cond_0

    #@3
    .line 638
    return v2

    #@4
    .line 640
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/BitSet;->checkIndex(I)V

    #@7
    .line 642
    move v0, p1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@a
    .line 643
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_1

    #@10
    .line 644
    return v0

    #@11
    .line 642
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@13
    goto :goto_0

    #@14
    .line 647
    :cond_2
    return v2
.end method

.method public previousSetBit(I)I
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v2, -0x1

    #@1
    .line 617
    if-ne p1, v2, :cond_0

    #@3
    .line 618
    return v2

    #@4
    .line 620
    :cond_0
    invoke-direct {p0, p1}, Ljava/util/BitSet;->checkIndex(I)V

    #@7
    .line 622
    move v0, p1

    #@8
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    #@a
    .line 623
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 624
    return v0

    #@11
    .line 622
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@13
    goto :goto_0

    #@14
    .line 627
    :cond_2
    return v2
.end method

.method public set(I)V
    .locals 6
    .param p1, "index"    # I

    #@0
    .prologue
    .line 180
    if-gez p1, :cond_0

    #@2
    .line 181
    invoke-direct {p0, p1}, Ljava/util/BitSet;->checkIndex(I)V

    #@5
    .line 183
    :cond_0
    div-int/lit8 v0, p1, 0x40

    #@7
    .line 184
    .local v0, "arrayIndex":I
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    #@9
    array-length v1, v1

    #@a
    if-lt v0, v1, :cond_1

    #@c
    .line 185
    add-int/lit8 v1, v0, 0x1

    #@e
    invoke-direct {p0, v1}, Ljava/util/BitSet;->ensureCapacity(I)V

    #@11
    .line 187
    :cond_1
    iget-object v1, p0, Ljava/util/BitSet;->bits:[J

    #@13
    aget-wide v2, v1, v0

    #@15
    const-wide/16 v4, 0x1

    #@17
    shl-long/2addr v4, p1

    #@18
    or-long/2addr v2, v4

    #@19
    aput-wide v2, v1, v0

    #@1b
    .line 188
    iget v1, p0, Ljava/util/BitSet;->longCount:I

    #@1d
    add-int/lit8 v2, v0, 0x1

    #@1f
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@22
    move-result v1

    #@23
    iput v1, p0, Ljava/util/BitSet;->longCount:I

    #@25
    .line 179
    return-void
.end method

.method public set(II)V
    .locals 16
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    #@0
    .prologue
    .line 350
    invoke-direct/range {p0 .. p2}, Ljava/util/BitSet;->checkRange(II)V

    #@3
    .line 351
    move/from16 v0, p1

    #@5
    move/from16 v1, p2

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 352
    return-void

    #@a
    .line 354
    :cond_0
    div-int/lit8 v2, p1, 0x40

    #@c
    .line 355
    .local v2, "firstArrayIndex":I
    add-int/lit8 v10, p2, -0x1

    #@e
    div-int/lit8 v7, v10, 0x40

    #@10
    .line 356
    .local v7, "lastArrayIndex":I
    move-object/from16 v0, p0

    #@12
    iget-object v10, v0, Ljava/util/BitSet;->bits:[J

    #@14
    array-length v10, v10

    #@15
    if-lt v7, v10, :cond_1

    #@17
    .line 357
    add-int/lit8 v10, v7, 0x1

    #@19
    move-object/from16 v0, p0

    #@1b
    invoke-direct {v0, v10}, Ljava/util/BitSet;->ensureCapacity(I)V

    #@1e
    .line 360
    :cond_1
    const-wide/16 v10, -0x1

    #@20
    shl-long v8, v10, p1

    #@22
    .line 361
    .local v8, "lowMask":J
    move/from16 v0, p2

    #@24
    neg-int v10, v0

    #@25
    const-wide/16 v12, -0x1

    #@27
    ushr-long v4, v12, v10

    #@29
    .line 362
    .local v4, "highMask":J
    if-ne v2, v7, :cond_2

    #@2b
    .line 363
    move-object/from16 v0, p0

    #@2d
    iget-object v10, v0, Ljava/util/BitSet;->bits:[J

    #@2f
    aget-wide v12, v10, v2

    #@31
    and-long v14, v8, v4

    #@33
    or-long/2addr v12, v14

    #@34
    aput-wide v12, v10, v2

    #@36
    .line 372
    :goto_0
    move-object/from16 v0, p0

    #@38
    iget v10, v0, Ljava/util/BitSet;->longCount:I

    #@3a
    add-int/lit8 v11, v7, 0x1

    #@3c
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    #@3f
    move-result v10

    #@40
    move-object/from16 v0, p0

    #@42
    iput v10, v0, Ljava/util/BitSet;->longCount:I

    #@44
    .line 349
    return-void

    #@45
    .line 365
    :cond_2
    move v3, v2

    #@46
    .line 366
    .local v3, "i":I
    move-object/from16 v0, p0

    #@48
    iget-object v10, v0, Ljava/util/BitSet;->bits:[J

    #@4a
    add-int/lit8 v6, v3, 0x1

    #@4c
    .end local v3    # "i":I
    .local v6, "i":I
    aget-wide v12, v10, v3

    #@4e
    or-long/2addr v12, v8

    #@4f
    aput-wide v12, v10, v3

    #@51
    .line 367
    :goto_1
    if-ge v6, v7, :cond_3

    #@53
    .line 368
    move-object/from16 v0, p0

    #@55
    iget-object v10, v0, Ljava/util/BitSet;->bits:[J

    #@57
    add-int/lit8 v3, v6, 0x1

    #@59
    .end local v6    # "i":I
    .restart local v3    # "i":I
    aget-wide v12, v10, v6

    #@5b
    const-wide/16 v14, -0x1

    #@5d
    or-long/2addr v12, v14

    #@5e
    aput-wide v12, v10, v6

    #@60
    move v6, v3

    #@61
    .end local v3    # "i":I
    .restart local v6    # "i":I
    goto :goto_1

    #@62
    .line 370
    :cond_3
    move-object/from16 v0, p0

    #@64
    iget-object v10, v0, Ljava/util/BitSet;->bits:[J

    #@66
    add-int/lit8 v3, v6, 0x1

    #@68
    .end local v6    # "i":I
    .restart local v3    # "i":I
    aget-wide v12, v10, v6

    #@6a
    or-long/2addr v12, v4

    #@6b
    aput-wide v12, v10, v6

    #@6d
    goto :goto_0
.end method

.method public set(IIZ)V
    .locals 0
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "state"    # Z

    #@0
    .prologue
    .line 325
    if-eqz p3, :cond_0

    #@2
    .line 326
    invoke-virtual {p0, p1, p2}, Ljava/util/BitSet;->set(II)V

    #@5
    .line 324
    :goto_0
    return-void

    #@6
    .line 328
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/BitSet;->clear(II)V

    #@9
    goto :goto_0
.end method

.method public set(IZ)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "state"    # Z

    #@0
    .prologue
    .line 310
    if-eqz p2, :cond_0

    #@2
    .line 311
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->set(I)V

    #@5
    .line 309
    :goto_0
    return-void

    #@6
    .line 313
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/BitSet;->clear(I)V

    #@9
    goto :goto_0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 522
    iget-object v0, p0, Ljava/util/BitSet;->bits:[J

    #@2
    array-length v0, v0

    #@3
    mul-int/lit8 v0, v0, 0x40

    #@5
    return v0
.end method

.method public toByteArray()[B
    .locals 8

    #@0
    .prologue
    .line 737
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    #@3
    move-result v1

    #@4
    .line 738
    .local v1, "bitCount":I
    add-int/lit8 v5, v1, 0x7

    #@6
    div-int/lit8 v5, v5, 0x8

    #@8
    new-array v4, v5, [B

    #@a
    .line 739
    .local v4, "result":[B
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    array-length v5, v4

    #@c
    if-ge v2, v5, :cond_0

    #@e
    .line 740
    mul-int/lit8 v3, v2, 0x8

    #@10
    .line 741
    .local v3, "lowBit":I
    div-int/lit8 v0, v3, 0x40

    #@12
    .line 742
    .local v0, "arrayIndex":I
    iget-object v5, p0, Ljava/util/BitSet;->bits:[J

    #@14
    aget-wide v6, v5, v0

    #@16
    ushr-long/2addr v6, v3

    #@17
    long-to-int v5, v6

    #@18
    int-to-byte v5, v5

    #@19
    aput-byte v5, v4, v2

    #@1b
    .line 739
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 744
    .end local v0    # "arrayIndex":I
    .end local v3    # "lowBit":I
    :cond_0
    return-object v4
.end method

.method public toLongArray()[J
    .locals 2

    #@0
    .prologue
    .line 727
    iget-object v0, p0, Ljava/util/BitSet;->bits:[J

    #@2
    iget v1, p0, Ljava/util/BitSet;->longCount:I

    #@4
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    #@0
    .prologue
    const-wide/16 v10, 0x0

    #@2
    const/16 v8, 0x40

    #@4
    .line 543
    new-instance v3, Ljava/lang/StringBuilder;

    #@6
    iget v4, p0, Ljava/util/BitSet;->longCount:I

    #@8
    div-int/lit8 v4, v4, 0x2

    #@a
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@d
    .line 544
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    #@f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@12
    .line 545
    const/4 v0, 0x0

    #@13
    .line 546
    .local v0, "comma":Z
    const/4 v1, 0x0

    #@14
    .local v1, "i":I
    :goto_0
    iget v4, p0, Ljava/util/BitSet;->longCount:I

    #@16
    if-ge v1, v4, :cond_3

    #@18
    .line 547
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    #@1a
    aget-wide v4, v4, v1

    #@1c
    cmp-long v4, v4, v10

    #@1e
    if-eqz v4, :cond_2

    #@20
    .line 548
    const/4 v2, 0x0

    #@21
    .local v2, "j":I
    :goto_1
    if-ge v2, v8, :cond_2

    #@23
    .line 549
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    #@25
    aget-wide v4, v4, v1

    #@27
    const-wide/16 v6, 0x1

    #@29
    shl-long/2addr v6, v2

    #@2a
    and-long/2addr v4, v6

    #@2b
    cmp-long v4, v4, v10

    #@2d
    if-eqz v4, :cond_0

    #@2f
    .line 550
    if-eqz v0, :cond_1

    #@31
    .line 551
    const-string/jumbo v4, ", "

    #@34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    .line 555
    :goto_2
    mul-int/lit8 v4, v1, 0x40

    #@39
    add-int/2addr v4, v2

    #@3a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    .line 548
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@3f
    goto :goto_1

    #@40
    .line 553
    :cond_1
    const/4 v0, 0x1

    #@41
    goto :goto_2

    #@42
    .line 546
    .end local v2    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@44
    goto :goto_0

    #@45
    .line 560
    :cond_3
    const/16 v4, 0x7d

    #@47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4a
    .line 561
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v4

    #@4e
    return-object v4
.end method

.method public xor(Ljava/util/BitSet;)V
    .locals 8
    .param p1, "bs"    # Ljava/util/BitSet;

    #@0
    .prologue
    .line 503
    iget v3, p0, Ljava/util/BitSet;->longCount:I

    #@2
    iget v4, p1, Ljava/util/BitSet;->longCount:I

    #@4
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@7
    move-result v2

    #@8
    .line 504
    .local v2, "minSize":I
    iget v3, p0, Ljava/util/BitSet;->longCount:I

    #@a
    iget v4, p1, Ljava/util/BitSet;->longCount:I

    #@c
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    #@f
    move-result v1

    #@10
    .line 505
    .local v1, "maxSize":I
    invoke-direct {p0, v1}, Ljava/util/BitSet;->ensureCapacity(I)V

    #@13
    .line 506
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@16
    .line 507
    iget-object v3, p0, Ljava/util/BitSet;->bits:[J

    #@18
    aget-wide v4, v3, v0

    #@1a
    iget-object v6, p1, Ljava/util/BitSet;->bits:[J

    #@1c
    aget-wide v6, v6, v0

    #@1e
    xor-long/2addr v4, v6

    #@1f
    aput-wide v4, v3, v0

    #@21
    .line 506
    add-int/lit8 v0, v0, 0x1

    #@23
    goto :goto_0

    #@24
    .line 509
    :cond_0
    iget v3, p1, Ljava/util/BitSet;->longCount:I

    #@26
    if-le v3, v2, :cond_1

    #@28
    .line 510
    iget-object v3, p1, Ljava/util/BitSet;->bits:[J

    #@2a
    iget-object v4, p0, Ljava/util/BitSet;->bits:[J

    #@2c
    sub-int v5, v1, v2

    #@2e
    invoke-static {v3, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy([JI[JII)V

    #@31
    .line 512
    :cond_1
    iput v1, p0, Ljava/util/BitSet;->longCount:I

    #@33
    .line 513
    invoke-direct {p0}, Ljava/util/BitSet;->shrinkSize()V

    #@36
    .line 502
    return-void
.end method
