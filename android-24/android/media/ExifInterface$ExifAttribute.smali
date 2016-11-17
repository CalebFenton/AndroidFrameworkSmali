.class Landroid/media/ExifInterface$ExifAttribute;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifAttribute"
.end annotation


# instance fields
.field public final bytes:[B

.field public final format:I

.field public final numberOfComponents:I


# direct methods
.method static synthetic -wrap0(Landroid/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 1
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private constructor <init>(II[B)V
    .locals 0
    .param p1, "format"    # I
    .param p2, "numberOfComponents"    # I
    .param p3, "bytes"    # [B

    #@0
    .prologue
    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 446
    iput p1, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    #@5
    .line 447
    iput p2, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    #@7
    .line 448
    iput-object p3, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    #@9
    .line 445
    return-void
.end method

.method synthetic constructor <init>(II[BLandroid/media/ExifInterface$ExifAttribute;)V
    .locals 0
    .param p1, "format"    # I
    .param p2, "numberOfComponents"    # I
    .param p3, "bytes"    # [B

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    #@3
    return-void
.end method

.method public static createByte(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 6
    .param p0, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 495
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@5
    move-result v2

    #@6
    if-ne v2, v5, :cond_0

    #@8
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@b
    move-result v2

    #@c
    const/16 v3, 0x30

    #@e
    if-lt v2, v3, :cond_0

    #@10
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v2

    #@14
    const/16 v3, 0x31

    #@16
    if-gt v2, v3, :cond_0

    #@18
    .line 496
    new-array v1, v5, [B

    #@1a
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    #@1d
    move-result v2

    #@1e
    add-int/lit8 v2, v2, -0x30

    #@20
    int-to-byte v2, v2

    #@21
    aput-byte v2, v1, v4

    #@23
    .line 497
    .local v1, "bytes":[B
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    #@25
    array-length v3, v1

    #@26
    invoke-direct {v2, v5, v3, v1}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    #@29
    return-object v2

    #@2a
    .line 499
    .end local v1    # "bytes":[B
    :cond_0
    invoke-static {}, Landroid/media/ExifInterface;->-get0()Ljava/nio/charset/Charset;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@31
    move-result-object v0

    #@32
    .line 500
    .local v0, "ascii":[B
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    #@34
    array-length v3, v0

    #@35
    invoke-direct {v2, v5, v3, v0}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    #@38
    return-object v2
.end method

.method public static createDouble(DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # D
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    .line 549
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [D

    #@3
    const/4 v1, 0x0

    #@4
    aput-wide p0, v0, v1

    #@6
    invoke-static {v0, p2}, Landroid/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static createDouble([DLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 7
    .param p0, "values"    # [D
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    const/16 v6, 0xc

    #@2
    .line 540
    invoke-static {}, Landroid/media/ExifInterface;->-get2()[I

    #@5
    move-result-object v1

    #@6
    aget v1, v1, v6

    #@8
    array-length v4, p0

    #@9
    mul-int/2addr v1, v4

    #@a
    new-array v1, v1, [B

    #@c
    .line 539
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@f
    move-result-object v0

    #@10
    .line 541
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@13
    .line 542
    const/4 v1, 0x0

    #@14
    array-length v4, p0

    #@15
    :goto_0
    if-ge v1, v4, :cond_0

    #@17
    aget-wide v2, p0, v1

    #@19
    .line 543
    .local v2, "value":D
    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    #@1c
    .line 542
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 545
    .end local v2    # "value":D
    :cond_0
    new-instance v1, Landroid/media/ExifInterface$ExifAttribute;

    #@21
    array-length v4, p0

    #@22
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    #@25
    move-result-object v5

    #@26
    invoke-direct {v1, v6, v4, v5}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    #@29
    return-object v1
.end method

.method public static createSLong(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    .line 490
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [I

    #@3
    const/4 v1, 0x0

    #@4
    aput p0, v0, v1

    #@6
    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static createSLong([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 6
    .param p0, "values"    # [I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    const/16 v5, 0x9

    #@2
    .line 481
    invoke-static {}, Landroid/media/ExifInterface;->-get2()[I

    #@5
    move-result-object v2

    #@6
    aget v2, v2, v5

    #@8
    array-length v3, p0

    #@9
    mul-int/2addr v2, v3

    #@a
    new-array v2, v2, [B

    #@c
    .line 480
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@f
    move-result-object v0

    #@10
    .line 482
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@13
    .line 483
    const/4 v2, 0x0

    #@14
    array-length v3, p0

    #@15
    :goto_0
    if-ge v2, v3, :cond_0

    #@17
    aget v1, p0, v2

    #@19
    .line 484
    .local v1, "value":I
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@1c
    .line 483
    add-int/lit8 v2, v2, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 486
    .end local v1    # "value":I
    :cond_0
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    #@21
    array-length v3, p0

    #@22
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    #@25
    move-result-object v4

    #@26
    invoke-direct {v2, v5, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    #@29
    return-object v2
.end method

.method public static createSRational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # Landroid/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    .line 535
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Landroid/media/ExifInterface$Rational;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p0, v0, v1

    #@6
    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static createSRational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 7
    .param p0, "values"    # [Landroid/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    const/16 v6, 0xa

    #@2
    .line 525
    invoke-static {}, Landroid/media/ExifInterface;->-get2()[I

    #@5
    move-result-object v2

    #@6
    aget v2, v2, v6

    #@8
    array-length v3, p0

    #@9
    mul-int/2addr v2, v3

    #@a
    new-array v2, v2, [B

    #@c
    .line 524
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@f
    move-result-object v0

    #@10
    .line 526
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@13
    .line 527
    const/4 v2, 0x0

    #@14
    array-length v3, p0

    #@15
    :goto_0
    if-ge v2, v3, :cond_0

    #@17
    aget-object v1, p0, v2

    #@19
    .line 528
    .local v1, "value":Landroid/media/ExifInterface$Rational;
    iget-wide v4, v1, Landroid/media/ExifInterface$Rational;->numerator:J

    #@1b
    long-to-int v4, v4

    #@1c
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@1f
    .line 529
    iget-wide v4, v1, Landroid/media/ExifInterface$Rational;->denominator:J

    #@21
    long-to-int v4, v4

    #@22
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@25
    .line 527
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_0

    #@28
    .line 531
    .end local v1    # "value":Landroid/media/ExifInterface$Rational;
    :cond_0
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    #@2a
    array-length v3, p0

    #@2b
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    #@2e
    move-result-object v4

    #@2f
    invoke-direct {v2, v6, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    #@32
    return-object v2
.end method

.method public static createString(Ljava/lang/String;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 4
    .param p0, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v1

    #@9
    const/4 v2, 0x0

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-static {}, Landroid/media/ExifInterface;->-get0()Ljava/nio/charset/Charset;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@19
    move-result-object v0

    #@1a
    .line 505
    .local v0, "ascii":[B
    new-instance v1, Landroid/media/ExifInterface$ExifAttribute;

    #@1c
    array-length v2, v0

    #@1d
    const/4 v3, 0x2

    #@1e
    invoke-direct {v1, v3, v2, v0}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    #@21
    return-object v1
.end method

.method public static createULong(JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # J
    .param p2, "byteOrder"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    .line 476
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [J

    #@3
    const/4 v1, 0x0

    #@4
    aput-wide p0, v0, v1

    #@6
    invoke-static {v0, p2}, Landroid/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static createULong([JLjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 7
    .param p0, "values"    # [J
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    .line 467
    invoke-static {}, Landroid/media/ExifInterface;->-get2()[I

    #@4
    move-result-object v1

    #@5
    aget v1, v1, v6

    #@7
    array-length v4, p0

    #@8
    mul-int/2addr v1, v4

    #@9
    new-array v1, v1, [B

    #@b
    .line 466
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@e
    move-result-object v0

    #@f
    .line 468
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@12
    .line 469
    const/4 v1, 0x0

    #@13
    array-length v4, p0

    #@14
    :goto_0
    if-ge v1, v4, :cond_0

    #@16
    aget-wide v2, p0, v1

    #@18
    .line 470
    .local v2, "value":J
    long-to-int v5, v2

    #@19
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@1c
    .line 469
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 472
    .end local v2    # "value":J
    :cond_0
    new-instance v1, Landroid/media/ExifInterface$ExifAttribute;

    #@21
    array-length v4, p0

    #@22
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    #@25
    move-result-object v5

    #@26
    invoke-direct {v1, v6, v4, v5}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    #@29
    return-object v1
.end method

.method public static createURational(Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # Landroid/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    .line 520
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Landroid/media/ExifInterface$Rational;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p0, v0, v1

    #@6
    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static createURational([Landroid/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 7
    .param p0, "values"    # [Landroid/media/ExifInterface$Rational;
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    const/4 v6, 0x5

    #@1
    .line 510
    invoke-static {}, Landroid/media/ExifInterface;->-get2()[I

    #@4
    move-result-object v2

    #@5
    aget v2, v2, v6

    #@7
    array-length v3, p0

    #@8
    mul-int/2addr v2, v3

    #@9
    new-array v2, v2, [B

    #@b
    .line 509
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@e
    move-result-object v0

    #@f
    .line 511
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@12
    .line 512
    const/4 v2, 0x0

    #@13
    array-length v3, p0

    #@14
    :goto_0
    if-ge v2, v3, :cond_0

    #@16
    aget-object v1, p0, v2

    #@18
    .line 513
    .local v1, "value":Landroid/media/ExifInterface$Rational;
    iget-wide v4, v1, Landroid/media/ExifInterface$Rational;->numerator:J

    #@1a
    long-to-int v4, v4

    #@1b
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@1e
    .line 514
    iget-wide v4, v1, Landroid/media/ExifInterface$Rational;->denominator:J

    #@20
    long-to-int v4, v4

    #@21
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    #@24
    .line 512
    add-int/lit8 v2, v2, 0x1

    #@26
    goto :goto_0

    #@27
    .line 516
    .end local v1    # "value":Landroid/media/ExifInterface$Rational;
    :cond_0
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    #@29
    array-length v3, p0

    #@2a
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    #@2d
    move-result-object v4

    #@2e
    invoke-direct {v2, v6, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    #@31
    return-object v2
.end method

.method public static createUShort(ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p0, "value"    # I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    .line 462
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [I

    #@3
    const/4 v1, 0x0

    #@4
    aput p0, v0, v1

    #@6
    invoke-static {v0, p1}, Landroid/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static createUShort([ILjava/nio/ByteOrder;)Landroid/media/ExifInterface$ExifAttribute;
    .locals 6
    .param p0, "values"    # [I
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    .line 453
    invoke-static {}, Landroid/media/ExifInterface;->-get2()[I

    #@4
    move-result-object v2

    #@5
    aget v2, v2, v5

    #@7
    array-length v3, p0

    #@8
    mul-int/2addr v2, v3

    #@9
    new-array v2, v2, [B

    #@b
    .line 452
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    #@e
    move-result-object v0

    #@f
    .line 454
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@12
    .line 455
    const/4 v2, 0x0

    #@13
    array-length v3, p0

    #@14
    :goto_0
    if-ge v2, v3, :cond_0

    #@16
    aget v1, p0, v2

    #@18
    .line 456
    .local v1, "value":I
    int-to-short v4, v1

    #@19
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    #@1c
    .line 455
    add-int/lit8 v2, v2, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 458
    .end local v1    # "value":I
    :cond_0
    new-instance v2, Landroid/media/ExifInterface$ExifAttribute;

    #@21
    array-length v3, p0

    #@22
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    #@25
    move-result-object v4

    #@26
    invoke-direct {v2, v5, v3, v4}, Landroid/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    #@29
    return-object v2
.end method

.method private getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 22
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    .line 560
    :try_start_0
    new-instance v12, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;

    #@2
    move-object/from16 v0, p0

    #@4
    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    #@6
    invoke-direct {v12, v3}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;-><init>([B)V

    #@9
    .line 561
    .local v12, "inputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
    move-object/from16 v0, p1

    #@b
    invoke-virtual {v12, v0}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    #@e
    .line 562
    move-object/from16 v0, p0

    #@10
    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    #@12
    packed-switch v3, :pswitch_data_0

    #@15
    .line 663
    const/4 v3, 0x0

    #@16
    return-object v3

    #@17
    .line 566
    :pswitch_0
    move-object/from16 v0, p0

    #@19
    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    #@1b
    array-length v3, v3

    #@1c
    const/4 v8, 0x1

    #@1d
    if-ne v3, v8, :cond_0

    #@1f
    move-object/from16 v0, p0

    #@21
    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    #@23
    const/4 v8, 0x0

    #@24
    aget-byte v3, v3, v8

    #@26
    if-ltz v3, :cond_0

    #@28
    move-object/from16 v0, p0

    #@2a
    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    #@2c
    const/4 v8, 0x0

    #@2d
    aget-byte v3, v3, v8

    #@2f
    const/4 v8, 0x1

    #@30
    if-gt v3, v8, :cond_0

    #@32
    .line 567
    new-instance v3, Ljava/lang/String;

    #@34
    const/4 v8, 0x1

    #@35
    new-array v8, v8, [C

    #@37
    move-object/from16 v0, p0

    #@39
    iget-object v0, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    #@3b
    move-object/from16 v19, v0

    #@3d
    const/16 v20, 0x0

    #@3f
    aget-byte v19, v19, v20

    #@41
    add-int/lit8 v19, v19, 0x30

    #@43
    move/from16 v0, v19

    #@45
    int-to-char v0, v0

    #@46
    move/from16 v19, v0

    #@48
    const/16 v20, 0x0

    #@4a
    aput-char v19, v8, v20

    #@4c
    invoke-direct {v3, v8}, Ljava/lang/String;-><init>([C)V

    #@4f
    return-object v3

    #@50
    .line 569
    :cond_0
    new-instance v3, Ljava/lang/String;

    #@52
    move-object/from16 v0, p0

    #@54
    iget-object v8, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    #@56
    invoke-static {}, Landroid/media/ExifInterface;->-get0()Ljava/nio/charset/Charset;

    #@59
    move-result-object v19

    #@5a
    move-object/from16 v0, v19

    #@5c
    invoke-direct {v3, v8, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@5f
    return-object v3

    #@60
    .line 573
    :pswitch_1
    const/4 v11, 0x0

    #@61
    .line 574
    .local v11, "index":I
    move-object/from16 v0, p0

    #@63
    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    #@65
    invoke-static {}, Landroid/media/ExifInterface;->-get1()[B

    #@68
    move-result-object v8

    #@69
    array-length v8, v8

    #@6a
    if-lt v3, v8, :cond_2

    #@6c
    .line 575
    const/4 v13, 0x1

    #@6d
    .line 576
    .local v13, "same":Z
    const/4 v10, 0x0

    #@6e
    .local v10, "i":I
    :goto_0
    invoke-static {}, Landroid/media/ExifInterface;->-get1()[B

    #@71
    move-result-object v3

    #@72
    array-length v3, v3

    #@73
    if-ge v10, v3, :cond_1

    #@75
    .line 577
    move-object/from16 v0, p0

    #@77
    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    #@79
    aget-byte v3, v3, v10

    #@7b
    invoke-static {}, Landroid/media/ExifInterface;->-get1()[B

    #@7e
    move-result-object v8

    #@7f
    aget-byte v8, v8, v10

    #@81
    if-eq v3, v8, :cond_4

    #@83
    .line 578
    const/4 v13, 0x0

    #@84
    .line 582
    :cond_1
    if-eqz v13, :cond_2

    #@86
    .line 583
    invoke-static {}, Landroid/media/ExifInterface;->-get1()[B

    #@89
    move-result-object v3

    #@8a
    array-length v11, v3

    #@8b
    .line 587
    .end local v10    # "i":I
    .end local v13    # "same":Z
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    .line 588
    .local v14, "stringBuilder":Ljava/lang/StringBuilder;
    :goto_1
    move-object/from16 v0, p0

    #@92
    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    #@94
    if-ge v11, v3, :cond_3

    #@96
    .line 589
    move-object/from16 v0, p0

    #@98
    iget-object v3, v0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    #@9a
    aget-byte v2, v3, v11

    #@9c
    .line 590
    .local v2, "ch":I
    if-nez v2, :cond_5

    #@9e
    .line 600
    .end local v2    # "ch":I
    :cond_3
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a1
    move-result-object v3

    #@a2
    return-object v3

    #@a3
    .line 576
    .end local v14    # "stringBuilder":Ljava/lang/StringBuilder;
    .restart local v10    # "i":I
    .restart local v13    # "same":Z
    :cond_4
    add-int/lit8 v10, v10, 0x1

    #@a5
    goto :goto_0

    #@a6
    .line 593
    .end local v10    # "i":I
    .end local v13    # "same":Z
    .restart local v2    # "ch":I
    .restart local v14    # "stringBuilder":Ljava/lang/StringBuilder;
    :cond_5
    const/16 v3, 0x20

    #@a8
    if-lt v2, v3, :cond_6

    #@aa
    .line 594
    int-to-char v3, v2

    #@ab
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ae
    .line 598
    :goto_2
    add-int/lit8 v11, v11, 0x1

    #@b0
    goto :goto_1

    #@b1
    .line 596
    :cond_6
    const/16 v3, 0x3f

    #@b3
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b6
    goto :goto_2

    #@b7
    .line 665
    .end local v2    # "ch":I
    .end local v11    # "index":I
    .end local v12    # "inputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
    .end local v14    # "stringBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v9

    #@b8
    .line 666
    .local v9, "e":Ljava/io/IOException;
    const-string/jumbo v3, "ExifInterface"

    #@bb
    const-string/jumbo v8, "IOException occurred during reading a value"

    #@be
    invoke-static {v3, v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@c1
    .line 667
    const/4 v3, 0x0

    #@c2
    return-object v3

    #@c3
    .line 603
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v12    # "inputStream":Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;
    :pswitch_2
    :try_start_1
    move-object/from16 v0, p0

    #@c5
    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    #@c7
    new-array v0, v3, [I

    #@c9
    move-object/from16 v16, v0

    #@cb
    .line 604
    .local v16, "values":[I
    const/4 v10, 0x0

    #@cc
    .restart local v10    # "i":I
    :goto_3
    move-object/from16 v0, p0

    #@ce
    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    #@d0
    if-ge v10, v3, :cond_7

    #@d2
    .line 605
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedShort()I

    #@d5
    move-result v3

    #@d6
    aput v3, v16, v10

    #@d8
    .line 604
    add-int/lit8 v10, v10, 0x1

    #@da
    goto :goto_3

    #@db
    .line 607
    :cond_7
    return-object v16

    #@dc
    .line 610
    .end local v10    # "i":I
    .end local v16    # "values":[I
    :pswitch_3
    move-object/from16 v0, p0

    #@de
    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    #@e0
    new-array v0, v3, [J

    #@e2
    move-object/from16 v17, v0

    #@e4
    .line 611
    .local v17, "values":[J
    const/4 v10, 0x0

    #@e5
    .restart local v10    # "i":I
    :goto_4
    move-object/from16 v0, p0

    #@e7
    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    #@e9
    if-ge v10, v3, :cond_8

    #@eb
    .line 612
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    #@ee
    move-result-wide v20

    #@ef
    aput-wide v20, v17, v10

    #@f1
    .line 611
    add-int/lit8 v10, v10, 0x1

    #@f3
    goto :goto_4

    #@f4
    .line 614
    :cond_8
    return-object v17

    #@f5
    .line 617
    .end local v10    # "i":I
    .end local v17    # "values":[J
    :pswitch_4
    move-object/from16 v0, p0

    #@f7
    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    #@f9
    new-array v0, v3, [Landroid/media/ExifInterface$Rational;

    #@fb
    move-object/from16 v18, v0

    #@fd
    .line 618
    .local v18, "values":[Landroid/media/ExifInterface$Rational;
    const/4 v10, 0x0

    #@fe
    .restart local v10    # "i":I
    :goto_5
    move-object/from16 v0, p0

    #@100
    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    #@102
    if-ge v10, v3, :cond_9

    #@104
    .line 619
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    #@107
    move-result-wide v4

    #@108
    .line 620
    .local v4, "numerator":J
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readUnsignedInt()J

    #@10b
    move-result-wide v6

    #@10c
    .line 621
    .local v6, "denominator":J
    new-instance v3, Landroid/media/ExifInterface$Rational;

    #@10e
    const/4 v8, 0x0

    #@10f
    invoke-direct/range {v3 .. v8}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$Rational;)V

    #@112
    aput-object v3, v18, v10

    #@114
    .line 618
    add-int/lit8 v10, v10, 0x1

    #@116
    goto :goto_5

    #@117
    .line 623
    .end local v4    # "numerator":J
    .end local v6    # "denominator":J
    :cond_9
    return-object v18

    #@118
    .line 626
    .end local v10    # "i":I
    .end local v18    # "values":[Landroid/media/ExifInterface$Rational;
    :pswitch_5
    move-object/from16 v0, p0

    #@11a
    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    #@11c
    new-array v0, v3, [I

    #@11e
    move-object/from16 v16, v0

    #@120
    .line 627
    .restart local v16    # "values":[I
    const/4 v10, 0x0

    #@121
    .restart local v10    # "i":I
    :goto_6
    move-object/from16 v0, p0

    #@123
    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    #@125
    if-ge v10, v3, :cond_a

    #@127
    .line 628
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readShort()S

    #@12a
    move-result v3

    #@12b
    aput v3, v16, v10

    #@12d
    .line 627
    add-int/lit8 v10, v10, 0x1

    #@12f
    goto :goto_6

    #@130
    .line 630
    :cond_a
    return-object v16

    #@131
    .line 633
    .end local v10    # "i":I
    .end local v16    # "values":[I
    :pswitch_6
    move-object/from16 v0, p0

    #@133
    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    #@135
    new-array v0, v3, [I

    #@137
    move-object/from16 v16, v0

    #@139
    .line 634
    .restart local v16    # "values":[I
    const/4 v10, 0x0

    #@13a
    .restart local v10    # "i":I
    :goto_7
    move-object/from16 v0, p0

    #@13c
    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    #@13e
    if-ge v10, v3, :cond_b

    #@140
    .line 635
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readInt()I

    #@143
    move-result v3

    #@144
    aput v3, v16, v10

    #@146
    .line 634
    add-int/lit8 v10, v10, 0x1

    #@148
    goto :goto_7

    #@149
    .line 637
    :cond_b
    return-object v16

    #@14a
    .line 640
    .end local v10    # "i":I
    .end local v16    # "values":[I
    :pswitch_7
    move-object/from16 v0, p0

    #@14c
    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    #@14e
    new-array v0, v3, [Landroid/media/ExifInterface$Rational;

    #@150
    move-object/from16 v18, v0

    #@152
    .line 641
    .restart local v18    # "values":[Landroid/media/ExifInterface$Rational;
    const/4 v10, 0x0

    #@153
    .restart local v10    # "i":I
    :goto_8
    move-object/from16 v0, p0

    #@155
    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    #@157
    if-ge v10, v3, :cond_c

    #@159
    .line 642
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readInt()I

    #@15c
    move-result v3

    #@15d
    int-to-long v4, v3

    #@15e
    .line 643
    .restart local v4    # "numerator":J
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readInt()I

    #@161
    move-result v3

    #@162
    int-to-long v6, v3

    #@163
    .line 644
    .restart local v6    # "denominator":J
    new-instance v3, Landroid/media/ExifInterface$Rational;

    #@165
    const/4 v8, 0x0

    #@166
    invoke-direct/range {v3 .. v8}, Landroid/media/ExifInterface$Rational;-><init>(JJLandroid/media/ExifInterface$Rational;)V

    #@169
    aput-object v3, v18, v10

    #@16b
    .line 641
    add-int/lit8 v10, v10, 0x1

    #@16d
    goto :goto_8

    #@16e
    .line 646
    .end local v4    # "numerator":J
    .end local v6    # "denominator":J
    :cond_c
    return-object v18

    #@16f
    .line 649
    .end local v10    # "i":I
    .end local v18    # "values":[Landroid/media/ExifInterface$Rational;
    :pswitch_8
    move-object/from16 v0, p0

    #@171
    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    #@173
    new-array v15, v3, [D

    #@175
    .line 650
    .local v15, "values":[D
    const/4 v10, 0x0

    #@176
    .restart local v10    # "i":I
    :goto_9
    move-object/from16 v0, p0

    #@178
    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    #@17a
    if-ge v10, v3, :cond_d

    #@17c
    .line 651
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readFloat()F

    #@17f
    move-result v3

    #@180
    float-to-double v0, v3

    #@181
    move-wide/from16 v20, v0

    #@183
    aput-wide v20, v15, v10

    #@185
    .line 650
    add-int/lit8 v10, v10, 0x1

    #@187
    goto :goto_9

    #@188
    .line 653
    :cond_d
    return-object v15

    #@189
    .line 656
    .end local v10    # "i":I
    .end local v15    # "values":[D
    :pswitch_9
    move-object/from16 v0, p0

    #@18b
    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    #@18d
    new-array v15, v3, [D

    #@18f
    .line 657
    .restart local v15    # "values":[D
    const/4 v10, 0x0

    #@190
    .restart local v10    # "i":I
    :goto_a
    move-object/from16 v0, p0

    #@192
    iget v3, v0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    #@194
    if-ge v10, v3, :cond_e

    #@196
    .line 658
    invoke-virtual {v12}, Landroid/media/ExifInterface$ByteOrderAwarenessDataInputStream;->readDouble()D

    #@199
    move-result-wide v20

    #@19a
    aput-wide v20, v15, v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@19c
    .line 657
    add-int/lit8 v10, v10, 0x1

    #@19e
    goto :goto_a

    #@19f
    .line 660
    :cond_e
    return-object v15

    #@1a0
    .line 562
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public getDoubleValue(Ljava/nio/ByteOrder;)D
    .locals 8
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 672
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    #@5
    move-result-object v4

    #@6
    .line 673
    .local v4, "value":Ljava/lang/Object;
    if-nez v4, :cond_0

    #@8
    .line 674
    new-instance v5, Ljava/lang/NumberFormatException;

    #@a
    const-string/jumbo v6, "NULL can\'t be converted to a double value"

    #@d
    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@10
    throw v5

    #@11
    .line 676
    :cond_0
    instance-of v5, v4, Ljava/lang/String;

    #@13
    if-eqz v5, :cond_1

    #@15
    .line 677
    check-cast v4, Ljava/lang/String;

    #@17
    .end local v4    # "value":Ljava/lang/Object;
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@1a
    move-result-wide v6

    #@1b
    return-wide v6

    #@1c
    .line 679
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v5, v4, [J

    #@1e
    if-eqz v5, :cond_3

    #@20
    move-object v2, v4

    #@21
    .line 680
    check-cast v2, [J

    #@23
    .line 681
    .local v2, "array":[J
    array-length v5, v2

    #@24
    if-ne v5, v7, :cond_2

    #@26
    .line 682
    aget-wide v6, v2, v6

    #@28
    long-to-double v6, v6

    #@29
    return-wide v6

    #@2a
    .line 684
    :cond_2
    new-instance v5, Ljava/lang/NumberFormatException;

    #@2c
    const-string/jumbo v6, "There are more than one component"

    #@2f
    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@32
    throw v5

    #@33
    .line 686
    .end local v2    # "array":[J
    :cond_3
    instance-of v5, v4, [I

    #@35
    if-eqz v5, :cond_5

    #@37
    move-object v1, v4

    #@38
    .line 687
    check-cast v1, [I

    #@3a
    .line 688
    .local v1, "array":[I
    array-length v5, v1

    #@3b
    if-ne v5, v7, :cond_4

    #@3d
    .line 689
    aget v5, v1, v6

    #@3f
    int-to-double v6, v5

    #@40
    return-wide v6

    #@41
    .line 691
    :cond_4
    new-instance v5, Ljava/lang/NumberFormatException;

    #@43
    const-string/jumbo v6, "There are more than one component"

    #@46
    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@49
    throw v5

    #@4a
    .line 693
    .end local v1    # "array":[I
    :cond_5
    instance-of v5, v4, [D

    #@4c
    if-eqz v5, :cond_7

    #@4e
    move-object v0, v4

    #@4f
    .line 694
    check-cast v0, [D

    #@51
    .line 695
    .local v0, "array":[D
    array-length v5, v0

    #@52
    if-ne v5, v7, :cond_6

    #@54
    .line 696
    aget-wide v6, v0, v6

    #@56
    return-wide v6

    #@57
    .line 698
    :cond_6
    new-instance v5, Ljava/lang/NumberFormatException;

    #@59
    const-string/jumbo v6, "There are more than one component"

    #@5c
    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v5

    #@60
    .line 700
    .end local v0    # "array":[D
    :cond_7
    instance-of v5, v4, [Landroid/media/ExifInterface$Rational;

    #@62
    if-eqz v5, :cond_9

    #@64
    move-object v3, v4

    #@65
    .line 701
    check-cast v3, [Landroid/media/ExifInterface$Rational;

    #@67
    .line 702
    .local v3, "array":[Landroid/media/ExifInterface$Rational;
    array-length v5, v3

    #@68
    if-ne v5, v7, :cond_8

    #@6a
    .line 703
    aget-object v5, v3, v6

    #@6c
    invoke-virtual {v5}, Landroid/media/ExifInterface$Rational;->calculate()D

    #@6f
    move-result-wide v6

    #@70
    return-wide v6

    #@71
    .line 705
    :cond_8
    new-instance v5, Ljava/lang/NumberFormatException;

    #@73
    const-string/jumbo v6, "There are more than one component"

    #@76
    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@79
    throw v5

    #@7a
    .line 707
    .end local v3    # "array":[Landroid/media/ExifInterface$Rational;
    :cond_9
    new-instance v5, Ljava/lang/NumberFormatException;

    #@7c
    const-string/jumbo v6, "Couldn\'t find a double value"

    #@7f
    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@82
    throw v5
.end method

.method public getIntValue(Ljava/nio/ByteOrder;)I
    .locals 6
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 711
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    .line 712
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_0

    #@8
    .line 713
    new-instance v3, Ljava/lang/NumberFormatException;

    #@a
    const-string/jumbo v4, "NULL can\'t be converted to a integer value"

    #@d
    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@10
    throw v3

    #@11
    .line 715
    :cond_0
    instance-of v3, v2, Ljava/lang/String;

    #@13
    if-eqz v3, :cond_1

    #@15
    .line 716
    check-cast v2, Ljava/lang/String;

    #@17
    .end local v2    # "value":Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1a
    move-result v3

    #@1b
    return v3

    #@1c
    .line 718
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v3, v2, [J

    #@1e
    if-eqz v3, :cond_3

    #@20
    move-object v1, v2

    #@21
    .line 719
    check-cast v1, [J

    #@23
    .line 720
    .local v1, "array":[J
    array-length v3, v1

    #@24
    if-ne v3, v5, :cond_2

    #@26
    .line 721
    aget-wide v4, v1, v4

    #@28
    long-to-int v3, v4

    #@29
    return v3

    #@2a
    .line 723
    :cond_2
    new-instance v3, Ljava/lang/NumberFormatException;

    #@2c
    const-string/jumbo v4, "There are more than one component"

    #@2f
    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@32
    throw v3

    #@33
    .line 725
    .end local v1    # "array":[J
    :cond_3
    instance-of v3, v2, [I

    #@35
    if-eqz v3, :cond_5

    #@37
    move-object v0, v2

    #@38
    .line 726
    check-cast v0, [I

    #@3a
    .line 727
    .local v0, "array":[I
    array-length v3, v0

    #@3b
    if-ne v3, v5, :cond_4

    #@3d
    .line 728
    aget v3, v0, v4

    #@3f
    return v3

    #@40
    .line 730
    :cond_4
    new-instance v3, Ljava/lang/NumberFormatException;

    #@42
    const-string/jumbo v4, "There are more than one component"

    #@45
    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@48
    throw v3

    #@49
    .line 732
    .end local v0    # "array":[I
    :cond_5
    new-instance v3, Ljava/lang/NumberFormatException;

    #@4b
    const-string/jumbo v4, "Couldn\'t find a integer value"

    #@4e
    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@51
    throw v3
.end method

.method public getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .locals 10
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 736
    invoke-direct {p0, p1}, Landroid/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    #@4
    move-result-object v6

    #@5
    .line 737
    .local v6, "value":Ljava/lang/Object;
    if-nez v6, :cond_0

    #@7
    .line 738
    return-object v8

    #@8
    .line 740
    :cond_0
    instance-of v7, v6, Ljava/lang/String;

    #@a
    if-eqz v7, :cond_1

    #@c
    .line 741
    check-cast v6, Ljava/lang/String;

    #@e
    .end local v6    # "value":Ljava/lang/Object;
    return-object v6

    #@f
    .line 744
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    .line 745
    .local v5, "stringBuilder":Ljava/lang/StringBuilder;
    instance-of v7, v6, [J

    #@16
    if-eqz v7, :cond_4

    #@18
    move-object v2, v6

    #@19
    .line 746
    check-cast v2, [J

    #@1b
    .line 747
    .local v2, "array":[J
    const/4 v4, 0x0

    #@1c
    .local v4, "i":I
    :goto_0
    array-length v7, v2

    #@1d
    if-ge v4, v7, :cond_3

    #@1f
    .line 748
    aget-wide v8, v2, v4

    #@21
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@24
    .line 749
    add-int/lit8 v7, v4, 0x1

    #@26
    array-length v8, v2

    #@27
    if-eq v7, v8, :cond_2

    #@29
    .line 750
    const-string/jumbo v7, ","

    #@2c
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    .line 747
    :cond_2
    add-int/lit8 v4, v4, 0x1

    #@31
    goto :goto_0

    #@32
    .line 753
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v7

    #@36
    return-object v7

    #@37
    .line 755
    .end local v2    # "array":[J
    .end local v4    # "i":I
    :cond_4
    instance-of v7, v6, [I

    #@39
    if-eqz v7, :cond_7

    #@3b
    move-object v1, v6

    #@3c
    .line 756
    check-cast v1, [I

    #@3e
    .line 757
    .local v1, "array":[I
    const/4 v4, 0x0

    #@3f
    .restart local v4    # "i":I
    :goto_1
    array-length v7, v1

    #@40
    if-ge v4, v7, :cond_6

    #@42
    .line 758
    aget v7, v1, v4

    #@44
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    .line 759
    add-int/lit8 v7, v4, 0x1

    #@49
    array-length v8, v1

    #@4a
    if-eq v7, v8, :cond_5

    #@4c
    .line 760
    const-string/jumbo v7, ","

    #@4f
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    .line 757
    :cond_5
    add-int/lit8 v4, v4, 0x1

    #@54
    goto :goto_1

    #@55
    .line 763
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v7

    #@59
    return-object v7

    #@5a
    .line 765
    .end local v1    # "array":[I
    .end local v4    # "i":I
    :cond_7
    instance-of v7, v6, [D

    #@5c
    if-eqz v7, :cond_a

    #@5e
    move-object v0, v6

    #@5f
    .line 766
    check-cast v0, [D

    #@61
    .line 767
    .local v0, "array":[D
    const/4 v4, 0x0

    #@62
    .restart local v4    # "i":I
    :goto_2
    array-length v7, v0

    #@63
    if-ge v4, v7, :cond_9

    #@65
    .line 768
    aget-wide v8, v0, v4

    #@67
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@6a
    .line 769
    add-int/lit8 v7, v4, 0x1

    #@6c
    array-length v8, v0

    #@6d
    if-eq v7, v8, :cond_8

    #@6f
    .line 770
    const-string/jumbo v7, ","

    #@72
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    .line 767
    :cond_8
    add-int/lit8 v4, v4, 0x1

    #@77
    goto :goto_2

    #@78
    .line 773
    :cond_9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v7

    #@7c
    return-object v7

    #@7d
    .line 775
    .end local v0    # "array":[D
    .end local v4    # "i":I
    :cond_a
    instance-of v7, v6, [Landroid/media/ExifInterface$Rational;

    #@7f
    if-eqz v7, :cond_d

    #@81
    move-object v3, v6

    #@82
    .line 776
    check-cast v3, [Landroid/media/ExifInterface$Rational;

    #@84
    .line 777
    .local v3, "array":[Landroid/media/ExifInterface$Rational;
    const/4 v4, 0x0

    #@85
    .restart local v4    # "i":I
    :goto_3
    array-length v7, v3

    #@86
    if-ge v4, v7, :cond_c

    #@88
    .line 778
    aget-object v7, v3, v4

    #@8a
    iget-wide v8, v7, Landroid/media/ExifInterface$Rational;->numerator:J

    #@8c
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@8f
    .line 779
    const/16 v7, 0x2f

    #@91
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@94
    .line 780
    aget-object v7, v3, v4

    #@96
    iget-wide v8, v7, Landroid/media/ExifInterface$Rational;->denominator:J

    #@98
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@9b
    .line 781
    add-int/lit8 v7, v4, 0x1

    #@9d
    array-length v8, v3

    #@9e
    if-eq v7, v8, :cond_b

    #@a0
    .line 782
    const-string/jumbo v7, ","

    #@a3
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    .line 777
    :cond_b
    add-int/lit8 v4, v4, 0x1

    #@a8
    goto :goto_3

    #@a9
    .line 785
    :cond_c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v7

    #@ad
    return-object v7

    #@ae
    .line 787
    .end local v3    # "array":[Landroid/media/ExifInterface$Rational;
    .end local v4    # "i":I
    :cond_d
    return-object v8
.end method

.method public size()I
    .locals 2

    #@0
    .prologue
    .line 791
    invoke-static {}, Landroid/media/ExifInterface;->-get2()[I

    #@3
    move-result-object v0

    #@4
    iget v1, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    #@6
    aget v0, v0, v1

    #@8
    iget v1, p0, Landroid/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    #@a
    mul-int/2addr v0, v1

    #@b
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-static {}, Landroid/media/ExifInterface;->-get3()[Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    iget v2, p0, Landroid/media/ExifInterface$ExifAttribute;->format:I

    #@12
    aget-object v1, v1, v2

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    const-string/jumbo v1, ", data length:"

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    iget-object v1, p0, Landroid/media/ExifInterface$ExifAttribute;->bytes:[B

    #@21
    array-length v1, v1

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    const-string/jumbo v1, ")"

    #@29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v0

    #@31
    return-object v0
.end method
