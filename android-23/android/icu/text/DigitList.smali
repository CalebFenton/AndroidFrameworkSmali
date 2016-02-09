.class final Landroid/icu/text/DigitList;
.super Ljava/lang/Object;
.source "DigitList.java"


# static fields
.field public static final DBL_DIG:I = 0x11

.field private static LONG_MIN_REP:[B = null

.field public static final MAX_LONG_DIGITS:I = 0x13


# instance fields
.field public count:I

.field public decimalAt:I

.field public digits:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x13

    #@2
    .line 784
    const-wide/high16 v2, -0x8000000000000000L

    #@4
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 785
    .local v1, "s":Ljava/lang/String;
    new-array v2, v4, [B

    #@a
    sput-object v2, Landroid/icu/text/DigitList;->LONG_MIN_REP:[B

    #@c
    .line 786
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    #@f
    .line 788
    sget-object v2, Landroid/icu/text/DigitList;->LONG_MIN_REP:[B

    #@11
    add-int/lit8 v3, v0, 0x1

    #@13
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    #@16
    move-result v3

    #@17
    int-to-byte v3, v3

    #@18
    aput-byte v3, v2, v0

    #@1a
    .line 786
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 44
    :cond_0
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 74
    iput v0, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@6
    .line 75
    iput v0, p0, Landroid/icu/text/DigitList;->count:I

    #@8
    .line 76
    const/16 v0, 0x13

    #@a
    new-array v0, v0, [B

    #@c
    iput-object v0, p0, Landroid/icu/text/DigitList;->digits:[B

    #@e
    .line 44
    return-void
.end method

.method private final ensureCapacity(II)V
    .locals 3
    .param p1, "digitCapacity"    # I
    .param p2, "digitsToCopy"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 79
    iget-object v1, p0, Landroid/icu/text/DigitList;->digits:[B

    #@3
    array-length v1, v1

    #@4
    if-le p1, v1, :cond_0

    #@6
    .line 80
    mul-int/lit8 v1, p1, 0x2

    #@8
    new-array v0, v1, [B

    #@a
    .line 81
    .local v0, "newDigits":[B
    iget-object v1, p0, Landroid/icu/text/DigitList;->digits:[B

    #@c
    invoke-static {v1, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@f
    .line 82
    iput-object v0, p0, Landroid/icu/text/DigitList;->digits:[B

    #@11
    .line 78
    .end local v0    # "newDigits":[B
    :cond_0
    return-void
.end method

.method private getStringRep(Z)Ljava/lang/String;
    .locals 7
    .param p1, "isPositive"    # Z

    #@0
    .prologue
    const/16 v6, 0x30

    #@2
    const/16 v5, 0x2e

    #@4
    .line 210
    invoke-virtual {p0}, Landroid/icu/text/DigitList;->isZero()Z

    #@7
    move-result v4

    #@8
    if-eqz v4, :cond_0

    #@a
    const-string/jumbo v4, "0"

    #@d
    return-object v4

    #@e
    .line 211
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    iget v4, p0, Landroid/icu/text/DigitList;->count:I

    #@12
    add-int/lit8 v4, v4, 0x1

    #@14
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@17
    .line 212
    .local v3, "stringRep":Ljava/lang/StringBuilder;
    if-nez p1, :cond_1

    #@19
    .line 213
    const/16 v4, 0x2d

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1e
    .line 215
    :cond_1
    iget v0, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@20
    .line 216
    .local v0, "d":I
    if-gez v0, :cond_3

    #@22
    .line 217
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25
    .line 218
    :goto_0
    if-gez v0, :cond_2

    #@27
    .line 219
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2a
    .line 220
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 222
    :cond_2
    const/4 v0, -0x1

    #@2e
    .line 224
    :cond_3
    const/4 v2, 0x0

    #@2f
    .local v2, "i":I
    :goto_1
    iget v4, p0, Landroid/icu/text/DigitList;->count:I

    #@31
    if-ge v2, v4, :cond_5

    #@33
    .line 225
    if-ne v0, v2, :cond_4

    #@35
    .line 226
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@38
    .line 228
    :cond_4
    iget-object v4, p0, Landroid/icu/text/DigitList;->digits:[B

    #@3a
    aget-byte v4, v4, v2

    #@3c
    int-to-char v4, v4

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@40
    .line 224
    add-int/lit8 v2, v2, 0x1

    #@42
    goto :goto_1

    #@43
    .line 230
    :cond_5
    :goto_2
    add-int/lit8 v1, v0, -0x1

    #@45
    .end local v0    # "d":I
    .local v1, "d":I
    iget v4, p0, Landroid/icu/text/DigitList;->count:I

    #@47
    if-le v0, v4, :cond_6

    #@49
    .line 231
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4c
    move v0, v1

    #@4d
    .end local v1    # "d":I
    .restart local v0    # "d":I
    goto :goto_2

    #@4e
    .line 233
    .end local v0    # "d":I
    .restart local v1    # "d":I
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v4

    #@52
    return-object v4
.end method

.method private isLongMIN_VALUE()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 768
    iget v1, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@3
    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    #@5
    if-ne v1, v2, :cond_0

    #@7
    iget v1, p0, Landroid/icu/text/DigitList;->count:I

    #@9
    const/16 v2, 0x13

    #@b
    if-eq v1, v2, :cond_1

    #@d
    .line 769
    :cond_0
    return v3

    #@e
    .line 771
    :cond_1
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/icu/text/DigitList;->count:I

    #@11
    if-ge v0, v1, :cond_3

    #@13
    .line 773
    iget-object v1, p0, Landroid/icu/text/DigitList;->digits:[B

    #@15
    aget-byte v1, v1, v0

    #@17
    sget-object v2, Landroid/icu/text/DigitList;->LONG_MIN_REP:[B

    #@19
    aget-byte v2, v2, v0

    #@1b
    if-eq v1, v2, :cond_2

    #@1d
    return v3

    #@1e
    .line 771
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 776
    :cond_3
    const/4 v1, 0x1

    #@22
    return v1
.end method

.method private set(Ljava/lang/String;I)V
    .locals 9
    .param p1, "rep"    # Ljava/lang/String;
    .param p2, "maxCount"    # I

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    .line 453
    iput v8, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@3
    .line 454
    const/4 v5, 0x0

    #@4
    iput v5, p0, Landroid/icu/text/DigitList;->count:I

    #@6
    .line 455
    const/4 v1, 0x0

    #@7
    .line 458
    .local v1, "exponent":I
    const/4 v3, 0x0

    #@8
    .line 459
    .local v3, "leadingZerosAfterDecimal":I
    const/4 v4, 0x0

    #@9
    .line 461
    .local v4, "nonZeroDigitSeen":Z
    const/4 v2, 0x0

    #@a
    .line 462
    .local v2, "i":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v5

    #@e
    const/16 v6, 0x2d

    #@10
    if-ne v5, v6, :cond_0

    #@12
    .line 463
    const/4 v2, 0x1

    #@13
    .line 465
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@16
    move-result v5

    #@17
    if-ge v2, v5, :cond_5

    #@19
    .line 466
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@1c
    move-result v0

    #@1d
    .line 467
    .local v0, "c":C
    const/16 v5, 0x2e

    #@1f
    if-ne v0, v5, :cond_2

    #@21
    .line 468
    iget v5, p0, Landroid/icu/text/DigitList;->count:I

    #@23
    iput v5, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@25
    .line 465
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_0

    #@28
    .line 469
    :cond_2
    const/16 v5, 0x65

    #@2a
    if-eq v0, v5, :cond_3

    #@2c
    const/16 v5, 0x45

    #@2e
    if-ne v0, v5, :cond_7

    #@30
    .line 470
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@32
    .line 472
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@35
    move-result v5

    #@36
    const/16 v6, 0x2b

    #@38
    if-ne v5, v6, :cond_4

    #@3a
    .line 473
    add-int/lit8 v2, v2, 0x1

    #@3c
    .line 475
    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@3f
    move-result-object v5

    #@40
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@47
    move-result v1

    #@48
    .line 491
    .end local v0    # "c":C
    :cond_5
    iget v5, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@4a
    if-ne v5, v8, :cond_6

    #@4c
    .line 492
    iget v5, p0, Landroid/icu/text/DigitList;->count:I

    #@4e
    iput v5, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@50
    .line 494
    :cond_6
    iget v5, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@52
    sub-int v6, v1, v3

    #@54
    add-int/2addr v5, v6

    #@55
    iput v5, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@57
    .line 452
    return-void

    #@58
    .line 477
    .restart local v0    # "c":C
    :cond_7
    iget v5, p0, Landroid/icu/text/DigitList;->count:I

    #@5a
    if-ge v5, p2, :cond_1

    #@5c
    .line 478
    if-nez v4, :cond_8

    #@5e
    .line 479
    const/16 v5, 0x30

    #@60
    if-eq v0, v5, :cond_9

    #@62
    const/4 v4, 0x1

    #@63
    .line 480
    :goto_2
    if-nez v4, :cond_8

    #@65
    iget v5, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@67
    if-eq v5, v8, :cond_8

    #@69
    .line 481
    add-int/lit8 v3, v3, 0x1

    #@6b
    .line 485
    :cond_8
    if-eqz v4, :cond_1

    #@6d
    .line 486
    iget v5, p0, Landroid/icu/text/DigitList;->count:I

    #@6f
    add-int/lit8 v5, v5, 0x1

    #@71
    iget v6, p0, Landroid/icu/text/DigitList;->count:I

    #@73
    invoke-direct {p0, v5, v6}, Landroid/icu/text/DigitList;->ensureCapacity(II)V

    #@76
    .line 487
    iget-object v5, p0, Landroid/icu/text/DigitList;->digits:[B

    #@78
    iget v6, p0, Landroid/icu/text/DigitList;->count:I

    #@7a
    add-int/lit8 v7, v6, 0x1

    #@7c
    iput v7, p0, Landroid/icu/text/DigitList;->count:I

    #@7e
    int-to-byte v7, v0

    #@7f
    aput-byte v7, v5, v6

    #@81
    goto :goto_1

    #@82
    .line 479
    :cond_9
    const/4 v4, 0x0

    #@83
    goto :goto_2
.end method

.method private setBigDecimalDigits(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "stringDigits"    # Ljava/lang/String;
    .param p2, "maximumDigits"    # I
    .param p3, "fixedPoint"    # Z

    #@0
    .prologue
    .line 719
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, p1, v0}, Landroid/icu/text/DigitList;->set(Ljava/lang/String;I)V

    #@7
    .line 729
    if-eqz p3, :cond_1

    #@9
    iget v0, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@b
    add-int/2addr p2, v0

    #@c
    .end local p2    # "maximumDigits":I
    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Landroid/icu/text/DigitList;->round(I)V

    #@f
    .line 670
    return-void

    #@10
    .line 729
    .restart local p2    # "maximumDigits":I
    :cond_1
    if-nez p2, :cond_0

    #@12
    const/4 p2, -0x1

    #@13
    goto :goto_0
.end method

.method private shouldRoundUp(I)Z
    .locals 5
    .param p1, "maximumDigits"    # I

    #@0
    .prologue
    const/16 v4, 0x35

    #@2
    const/4 v1, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 515
    iget v3, p0, Landroid/icu/text/DigitList;->count:I

    #@6
    if-ge p1, v3, :cond_4

    #@8
    .line 516
    iget-object v3, p0, Landroid/icu/text/DigitList;->digits:[B

    #@a
    aget-byte v3, v3, p1

    #@c
    if-le v3, v4, :cond_0

    #@e
    .line 517
    return v1

    #@f
    .line 518
    :cond_0
    iget-object v3, p0, Landroid/icu/text/DigitList;->digits:[B

    #@11
    aget-byte v3, v3, p1

    #@13
    if-ne v3, v4, :cond_4

    #@15
    .line 519
    add-int/lit8 v0, p1, 0x1

    #@17
    .local v0, "i":I
    :goto_0
    iget v3, p0, Landroid/icu/text/DigitList;->count:I

    #@19
    if-ge v0, v3, :cond_2

    #@1b
    .line 520
    iget-object v3, p0, Landroid/icu/text/DigitList;->digits:[B

    #@1d
    aget-byte v3, v3, v0

    #@1f
    const/16 v4, 0x30

    #@21
    if-eq v3, v4, :cond_1

    #@23
    .line 521
    return v1

    #@24
    .line 519
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 524
    :cond_2
    if-lez p1, :cond_3

    #@29
    iget-object v3, p0, Landroid/icu/text/DigitList;->digits:[B

    #@2b
    add-int/lit8 v4, p1, -0x1

    #@2d
    aget-byte v3, v3, v4

    #@2f
    rem-int/lit8 v3, v3, 0x2

    #@31
    if-eqz v3, :cond_3

    #@33
    :goto_1
    return v1

    #@34
    :cond_3
    move v1, v2

    #@35
    goto :goto_1

    #@36
    .line 527
    .end local v0    # "i":I
    :cond_4
    return v2
.end method


# virtual methods
.method public append(I)V
    .locals 3
    .param p1, "digit"    # I

    #@0
    .prologue
    .line 112
    iget v0, p0, Landroid/icu/text/DigitList;->count:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iget v1, p0, Landroid/icu/text/DigitList;->count:I

    #@6
    invoke-direct {p0, v0, v1}, Landroid/icu/text/DigitList;->ensureCapacity(II)V

    #@9
    .line 113
    iget-object v0, p0, Landroid/icu/text/DigitList;->digits:[B

    #@b
    iget v1, p0, Landroid/icu/text/DigitList;->count:I

    #@d
    add-int/lit8 v2, v1, 0x1

    #@f
    iput v2, p0, Landroid/icu/text/DigitList;->count:I

    #@11
    int-to-byte v2, p1

    #@12
    aput-byte v2, v0, v1

    #@14
    .line 111
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 831
    if-ne p0, p1, :cond_0

    #@4
    .line 832
    return v5

    #@5
    .line 833
    :cond_0
    instance-of v2, p1, Landroid/icu/text/DigitList;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 834
    return v4

    #@a
    :cond_1
    move-object v1, p1

    #@b
    .line 835
    check-cast v1, Landroid/icu/text/DigitList;

    #@d
    .line 836
    .local v1, "other":Landroid/icu/text/DigitList;
    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    #@f
    iget v3, v1, Landroid/icu/text/DigitList;->count:I

    #@11
    if-ne v2, v3, :cond_2

    #@13
    .line 837
    iget v2, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@15
    iget v3, v1, Landroid/icu/text/DigitList;->decimalAt:I

    #@17
    if-eq v2, v3, :cond_3

    #@19
    .line 838
    :cond_2
    return v4

    #@1a
    .line 839
    :cond_3
    const/4 v0, 0x0

    #@1b
    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    #@1d
    if-ge v0, v2, :cond_5

    #@1f
    .line 840
    iget-object v2, p0, Landroid/icu/text/DigitList;->digits:[B

    #@21
    aget-byte v2, v2, v0

    #@23
    iget-object v3, v1, Landroid/icu/text/DigitList;->digits:[B

    #@25
    aget-byte v3, v3, v0

    #@27
    if-eq v2, v3, :cond_4

    #@29
    .line 841
    return v4

    #@2a
    .line 839
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 842
    :cond_5
    return v5
.end method

.method public getBigDecimal(Z)Ljava/math/BigDecimal;
    .locals 12
    .param p1, "isPositive"    # Z

    #@0
    .prologue
    .line 246
    invoke-virtual {p0}, Landroid/icu/text/DigitList;->isZero()Z

    #@3
    move-result v8

    #@4
    if-eqz v8, :cond_0

    #@6
    .line 247
    const-wide/16 v8, 0x0

    #@8
    invoke-static {v8, v9}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    #@b
    move-result-object v8

    #@c
    return-object v8

    #@d
    .line 253
    :cond_0
    iget v8, p0, Landroid/icu/text/DigitList;->count:I

    #@f
    int-to-long v8, v8

    #@10
    iget v10, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@12
    int-to-long v10, v10

    #@13
    sub-long v4, v8, v10

    #@15
    .line 254
    .local v4, "scale":J
    const-wide/16 v8, 0x0

    #@17
    cmp-long v8, v4, v8

    #@19
    if-lez v8, :cond_5

    #@1b
    .line 255
    iget v1, p0, Landroid/icu/text/DigitList;->count:I

    #@1d
    .line 256
    .local v1, "numDigits":I
    const-wide/32 v8, 0x7fffffff

    #@20
    cmp-long v8, v4, v8

    #@22
    if-lez v8, :cond_1

    #@24
    .line 258
    const-wide/32 v8, 0x7fffffff

    #@27
    sub-long v2, v4, v8

    #@29
    .line 259
    .local v2, "numShift":J
    iget v8, p0, Landroid/icu/text/DigitList;->count:I

    #@2b
    int-to-long v8, v8

    #@2c
    cmp-long v8, v2, v8

    #@2e
    if-gez v8, :cond_3

    #@30
    .line 260
    int-to-long v8, v1

    #@31
    sub-long/2addr v8, v2

    #@32
    long-to-int v1, v8

    #@33
    .line 266
    .end local v2    # "numShift":J
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    #@35
    add-int/lit8 v8, v1, 0x1

    #@37
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    #@3a
    .line 267
    .local v6, "significantDigits":Ljava/lang/StringBuilder;
    if-nez p1, :cond_2

    #@3c
    .line 268
    const/16 v8, 0x2d

    #@3e
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@41
    .line 270
    :cond_2
    const/4 v0, 0x0

    #@42
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    #@44
    .line 271
    iget-object v8, p0, Landroid/icu/text/DigitList;->digits:[B

    #@46
    aget-byte v8, v8, v0

    #@48
    int-to-char v8, v8

    #@49
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4c
    .line 270
    add-int/lit8 v0, v0, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 263
    .end local v0    # "i":I
    .end local v6    # "significantDigits":Ljava/lang/StringBuilder;
    .restart local v2    # "numShift":J
    :cond_3
    new-instance v8, Ljava/math/BigDecimal;

    #@51
    const/4 v9, 0x0

    #@52
    invoke-direct {v8, v9}, Ljava/math/BigDecimal;-><init>(I)V

    #@55
    return-object v8

    #@56
    .line 273
    .end local v2    # "numShift":J
    .restart local v0    # "i":I
    .restart local v6    # "significantDigits":Ljava/lang/StringBuilder;
    :cond_4
    new-instance v7, Ljava/math/BigInteger;

    #@58
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v8

    #@5c
    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    #@5f
    .line 274
    .local v7, "unscaledVal":Ljava/math/BigInteger;
    new-instance v8, Ljava/math/BigDecimal;

    #@61
    long-to-int v9, v4

    #@62
    invoke-direct {v8, v7, v9}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@65
    return-object v8

    #@66
    .line 279
    .end local v0    # "i":I
    .end local v1    # "numDigits":I
    .end local v6    # "significantDigits":Ljava/lang/StringBuilder;
    .end local v7    # "unscaledVal":Ljava/math/BigInteger;
    :cond_5
    new-instance v8, Ljava/math/BigDecimal;

    #@68
    invoke-direct {p0, p1}, Landroid/icu/text/DigitList;->getStringRep(Z)Ljava/lang/String;

    #@6b
    move-result-object v9

    #@6c
    invoke-direct {v8, v9}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    #@6f
    return-object v8
.end method

.method public getBigDecimalICU(Z)Landroid/icu/math/BigDecimal;
    .locals 12
    .param p1, "isPositive"    # Z

    #@0
    .prologue
    .line 292
    invoke-virtual {p0}, Landroid/icu/text/DigitList;->isZero()Z

    #@3
    move-result v8

    #@4
    if-eqz v8, :cond_0

    #@6
    .line 293
    const-wide/16 v8, 0x0

    #@8
    invoke-static {v8, v9}, Landroid/icu/math/BigDecimal;->valueOf(J)Landroid/icu/math/BigDecimal;

    #@b
    move-result-object v8

    #@c
    return-object v8

    #@d
    .line 299
    :cond_0
    iget v8, p0, Landroid/icu/text/DigitList;->count:I

    #@f
    int-to-long v8, v8

    #@10
    iget v10, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@12
    int-to-long v10, v10

    #@13
    sub-long v4, v8, v10

    #@15
    .line 300
    .local v4, "scale":J
    const-wide/16 v8, 0x0

    #@17
    cmp-long v8, v4, v8

    #@19
    if-lez v8, :cond_5

    #@1b
    .line 301
    iget v1, p0, Landroid/icu/text/DigitList;->count:I

    #@1d
    .line 302
    .local v1, "numDigits":I
    const-wide/32 v8, 0x7fffffff

    #@20
    cmp-long v8, v4, v8

    #@22
    if-lez v8, :cond_1

    #@24
    .line 304
    const-wide/32 v8, 0x7fffffff

    #@27
    sub-long v2, v4, v8

    #@29
    .line 305
    .local v2, "numShift":J
    iget v8, p0, Landroid/icu/text/DigitList;->count:I

    #@2b
    int-to-long v8, v8

    #@2c
    cmp-long v8, v2, v8

    #@2e
    if-gez v8, :cond_3

    #@30
    .line 306
    int-to-long v8, v1

    #@31
    sub-long/2addr v8, v2

    #@32
    long-to-int v1, v8

    #@33
    .line 312
    .end local v2    # "numShift":J
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    #@35
    add-int/lit8 v8, v1, 0x1

    #@37
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    #@3a
    .line 313
    .local v6, "significantDigits":Ljava/lang/StringBuilder;
    if-nez p1, :cond_2

    #@3c
    .line 314
    const/16 v8, 0x2d

    #@3e
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@41
    .line 316
    :cond_2
    const/4 v0, 0x0

    #@42
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    #@44
    .line 317
    iget-object v8, p0, Landroid/icu/text/DigitList;->digits:[B

    #@46
    aget-byte v8, v8, v0

    #@48
    int-to-char v8, v8

    #@49
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4c
    .line 316
    add-int/lit8 v0, v0, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 309
    .end local v0    # "i":I
    .end local v6    # "significantDigits":Ljava/lang/StringBuilder;
    .restart local v2    # "numShift":J
    :cond_3
    new-instance v8, Landroid/icu/math/BigDecimal;

    #@51
    const/4 v9, 0x0

    #@52
    invoke-direct {v8, v9}, Landroid/icu/math/BigDecimal;-><init>(I)V

    #@55
    return-object v8

    #@56
    .line 319
    .end local v2    # "numShift":J
    .restart local v0    # "i":I
    .restart local v6    # "significantDigits":Ljava/lang/StringBuilder;
    :cond_4
    new-instance v7, Ljava/math/BigInteger;

    #@58
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v8

    #@5c
    invoke-direct {v7, v8}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    #@5f
    .line 320
    .local v7, "unscaledVal":Ljava/math/BigInteger;
    new-instance v8, Landroid/icu/math/BigDecimal;

    #@61
    long-to-int v9, v4

    #@62
    invoke-direct {v8, v7, v9}, Landroid/icu/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@65
    return-object v8

    #@66
    .line 322
    .end local v0    # "i":I
    .end local v1    # "numDigits":I
    .end local v6    # "significantDigits":Ljava/lang/StringBuilder;
    .end local v7    # "unscaledVal":Ljava/math/BigInteger;
    :cond_5
    new-instance v8, Landroid/icu/math/BigDecimal;

    #@68
    invoke-direct {p0, p1}, Landroid/icu/text/DigitList;->getStringRep(Z)Ljava/lang/String;

    #@6b
    move-result-object v9

    #@6c
    invoke-direct {v8, v9}, Landroid/icu/math/BigDecimal;-><init>(Ljava/lang/String;)V

    #@6f
    return-object v8
.end method

.method public getBigInteger(Z)Ljava/math/BigInteger;
    .locals 6
    .param p1, "isPositive"    # Z

    #@0
    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/icu/text/DigitList;->isZero()Z

    #@3
    move-result v4

    #@4
    if-eqz v4, :cond_0

    #@6
    const-wide/16 v4, 0x0

    #@8
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@b
    move-result-object v4

    #@c
    return-object v4

    #@d
    .line 184
    :cond_0
    iget v4, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@f
    iget v5, p0, Landroid/icu/text/DigitList;->count:I

    #@11
    if-le v4, v5, :cond_2

    #@13
    iget v1, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@15
    .line 185
    .local v1, "len":I
    :goto_0
    if-nez p1, :cond_1

    #@17
    .line 186
    add-int/lit8 v1, v1, 0x1

    #@19
    .line 188
    :cond_1
    new-array v3, v1, [C

    #@1b
    .line 189
    .local v3, "text":[C
    const/4 v2, 0x0

    #@1c
    .line 190
    .local v2, "n":I
    if-nez p1, :cond_4

    #@1e
    .line 191
    const/16 v4, 0x2d

    #@20
    const/4 v5, 0x0

    #@21
    aput-char v4, v3, v5

    #@23
    .line 192
    const/4 v0, 0x0

    #@24
    .local v0, "i":I
    :goto_1
    iget v4, p0, Landroid/icu/text/DigitList;->count:I

    #@26
    if-ge v0, v4, :cond_3

    #@28
    .line 193
    add-int/lit8 v4, v0, 0x1

    #@2a
    iget-object v5, p0, Landroid/icu/text/DigitList;->digits:[B

    #@2c
    aget-byte v5, v5, v0

    #@2e
    int-to-char v5, v5

    #@2f
    aput-char v5, v3, v4

    #@31
    .line 192
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_1

    #@34
    .line 184
    .end local v0    # "i":I
    .end local v1    # "len":I
    .end local v2    # "n":I
    .end local v3    # "text":[C
    :cond_2
    iget v1, p0, Landroid/icu/text/DigitList;->count:I

    #@36
    .restart local v1    # "len":I
    goto :goto_0

    #@37
    .line 195
    .restart local v0    # "i":I
    .restart local v2    # "n":I
    .restart local v3    # "text":[C
    :cond_3
    iget v4, p0, Landroid/icu/text/DigitList;->count:I

    #@39
    add-int/lit8 v2, v4, 0x1

    #@3b
    .line 202
    :goto_2
    move v0, v2

    #@3c
    :goto_3
    array-length v4, v3

    #@3d
    if-ge v0, v4, :cond_6

    #@3f
    .line 203
    const/16 v4, 0x30

    #@41
    aput-char v4, v3, v0

    #@43
    .line 202
    add-int/lit8 v0, v0, 0x1

    #@45
    goto :goto_3

    #@46
    .line 197
    .end local v0    # "i":I
    :cond_4
    const/4 v0, 0x0

    #@47
    .restart local v0    # "i":I
    :goto_4
    iget v4, p0, Landroid/icu/text/DigitList;->count:I

    #@49
    if-ge v0, v4, :cond_5

    #@4b
    .line 198
    iget-object v4, p0, Landroid/icu/text/DigitList;->digits:[B

    #@4d
    aget-byte v4, v4, v0

    #@4f
    int-to-char v4, v4

    #@50
    aput-char v4, v3, v0

    #@52
    .line 197
    add-int/lit8 v0, v0, 0x1

    #@54
    goto :goto_4

    #@55
    .line 200
    :cond_5
    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    #@57
    goto :goto_2

    #@58
    .line 205
    :cond_6
    new-instance v4, Ljava/math/BigInteger;

    #@5a
    new-instance v5, Ljava/lang/String;

    #@5c
    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([C)V

    #@5f
    invoke-direct {v4, v5}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    #@62
    return-object v4
.end method

.method public getDigitValue(I)B
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 117
    iget-object v0, p0, Landroid/icu/text/DigitList;->digits:[B

    #@2
    aget-byte v0, v0, p1

    #@4
    add-int/lit8 v0, v0, -0x30

    #@6
    int-to-byte v0, v0

    #@7
    return v0
.end method

.method public final getDouble()D
    .locals 4

    #@0
    .prologue
    .line 126
    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    #@2
    if-nez v2, :cond_0

    #@4
    const-wide/16 v2, 0x0

    #@6
    return-wide v2

    #@7
    .line 127
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    #@b
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@e
    .line 128
    .local v1, "temp":Ljava/lang/StringBuilder;
    const/16 v2, 0x2e

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@13
    .line 129
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    #@16
    if-ge v0, v2, :cond_1

    #@18
    iget-object v2, p0, Landroid/icu/text/DigitList;->digits:[B

    #@1a
    aget-byte v2, v2, v0

    #@1c
    int-to-char v2, v2

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 130
    :cond_1
    const/16 v2, 0x45

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@28
    .line 131
    iget v2, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@2a
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    #@3c
    move-result-wide v2

    #@3d
    return-wide v2
.end method

.method public final getLong()J
    .locals 4

    #@0
    .prologue
    .line 144
    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    #@2
    if-nez v2, :cond_0

    #@4
    const-wide/16 v2, 0x0

    #@6
    return-wide v2

    #@7
    .line 149
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/DigitList;->isLongMIN_VALUE()Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    const-wide/high16 v2, -0x8000000000000000L

    #@f
    return-wide v2

    #@10
    .line 151
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    #@14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@17
    .line 152
    .local v1, "temp":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@18
    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@1a
    if-ge v0, v2, :cond_3

    #@1c
    .line 154
    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    #@1e
    if-ge v0, v2, :cond_2

    #@20
    iget-object v2, p0, Landroid/icu/text/DigitList;->digits:[B

    #@22
    aget-byte v2, v2, v0

    #@24
    int-to-char v2, v2

    #@25
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@28
    .line 152
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 154
    :cond_2
    const/16 v2, 0x30

    #@2d
    goto :goto_1

    #@2e
    .line 156
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@35
    move-result-wide v2

    #@36
    return-wide v2
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 849
    iget v0, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@2
    .line 851
    .local v0, "hashcode":I
    const/4 v1, 0x0

    #@3
    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    #@5
    if-ge v1, v2, :cond_0

    #@7
    .line 852
    mul-int/lit8 v2, v0, 0x25

    #@9
    iget-object v3, p0, Landroid/icu/text/DigitList;->digits:[B

    #@b
    aget-byte v3, v3, v1

    #@d
    add-int v0, v2, v3

    #@f
    .line 851
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 854
    :cond_0
    return v0
.end method

.method isIntegral()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 333
    :goto_0
    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    #@4
    if-lez v2, :cond_0

    #@6
    iget-object v2, p0, Landroid/icu/text/DigitList;->digits:[B

    #@8
    iget v3, p0, Landroid/icu/text/DigitList;->count:I

    #@a
    add-int/lit8 v3, v3, -0x1

    #@c
    aget-byte v2, v2, v3

    #@e
    const/16 v3, 0x30

    #@10
    if-ne v2, v3, :cond_0

    #@12
    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    #@14
    add-int/lit8 v2, v2, -0x1

    #@16
    iput v2, p0, Landroid/icu/text/DigitList;->count:I

    #@18
    goto :goto_0

    #@19
    .line 334
    :cond_0
    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    #@1b
    if-eqz v2, :cond_1

    #@1d
    iget v2, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@1f
    iget v3, p0, Landroid/icu/text/DigitList;->count:I

    #@21
    if-lt v2, v3, :cond_2

    #@23
    :cond_1
    :goto_1
    return v0

    #@24
    :cond_2
    move v0, v1

    #@25
    goto :goto_1
.end method

.method isZero()Z
    .locals 3

    #@0
    .prologue
    .line 91
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/icu/text/DigitList;->count:I

    #@3
    if-ge v0, v1, :cond_1

    #@5
    iget-object v1, p0, Landroid/icu/text/DigitList;->digits:[B

    #@7
    aget-byte v1, v1, v0

    #@9
    const/16 v2, 0x30

    #@b
    if-eq v1, v2, :cond_0

    #@d
    const/4 v1, 0x0

    #@e
    return v1

    #@f
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 92
    :cond_1
    const/4 v1, 0x1

    #@13
    return v1
.end method

.method public final round(I)V
    .locals 3
    .param p1, "maximumDigits"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 540
    if-ltz p1, :cond_2

    #@3
    iget v0, p0, Landroid/icu/text/DigitList;->count:I

    #@5
    if-ge p1, v0, :cond_2

    #@7
    .line 541
    invoke-direct {p0, p1}, Landroid/icu/text/DigitList;->shouldRoundUp(I)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 547
    :cond_0
    add-int/lit8 p1, p1, -0x1

    #@f
    .line 548
    if-gez p1, :cond_3

    #@11
    .line 552
    iget-object v0, p0, Landroid/icu/text/DigitList;->digits:[B

    #@13
    const/16 v1, 0x31

    #@15
    aput-byte v1, v0, v2

    #@17
    .line 553
    iget v0, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@19
    add-int/lit8 v0, v0, 0x1

    #@1b
    iput v0, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@1d
    .line 554
    const/4 p1, 0x0

    #@1e
    .line 562
    :goto_0
    add-int/lit8 p1, p1, 0x1

    #@20
    .line 564
    :cond_1
    iput p1, p0, Landroid/icu/text/DigitList;->count:I

    #@22
    .line 569
    :cond_2
    :goto_1
    iget v0, p0, Landroid/icu/text/DigitList;->count:I

    #@24
    const/4 v1, 0x1

    #@25
    if-le v0, v1, :cond_4

    #@27
    iget-object v0, p0, Landroid/icu/text/DigitList;->digits:[B

    #@29
    iget v1, p0, Landroid/icu/text/DigitList;->count:I

    #@2b
    add-int/lit8 v1, v1, -0x1

    #@2d
    aget-byte v0, v0, v1

    #@2f
    const/16 v1, 0x30

    #@31
    if-ne v0, v1, :cond_4

    #@33
    .line 570
    iget v0, p0, Landroid/icu/text/DigitList;->count:I

    #@35
    add-int/lit8 v0, v0, -0x1

    #@37
    iput v0, p0, Landroid/icu/text/DigitList;->count:I

    #@39
    goto :goto_1

    #@3a
    .line 558
    :cond_3
    iget-object v0, p0, Landroid/icu/text/DigitList;->digits:[B

    #@3c
    aget-byte v1, v0, p1

    #@3e
    add-int/lit8 v1, v1, 0x1

    #@40
    int-to-byte v1, v1

    #@41
    aput-byte v1, v0, p1

    #@43
    .line 559
    iget-object v0, p0, Landroid/icu/text/DigitList;->digits:[B

    #@45
    aget-byte v0, v0, p1

    #@47
    const/16 v1, 0x39

    #@49
    if-gt v0, v1, :cond_0

    #@4b
    goto :goto_0

    #@4c
    .line 536
    :cond_4
    return-void
.end method

.method final set(DIZ)V
    .locals 7
    .param p1, "source"    # D
    .param p3, "maximumDigits"    # I
    .param p4, "fixedPoint"    # Z

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 409
    const-wide/16 v2, 0x0

    #@4
    cmpl-double v1, p1, v2

    #@6
    if-nez v1, :cond_0

    #@8
    const-wide/16 p1, 0x0

    #@a
    .line 412
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 414
    .local v0, "rep":Ljava/lang/String;
    const/16 v1, 0x13

    #@10
    invoke-direct {p0, v0, v1}, Landroid/icu/text/DigitList;->set(Ljava/lang/String;I)V

    #@13
    .line 416
    if-eqz p4, :cond_3

    #@15
    .line 422
    iget v1, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@17
    neg-int v1, v1

    #@18
    if-le v1, p3, :cond_1

    #@1a
    .line 423
    iput v4, p0, Landroid/icu/text/DigitList;->count:I

    #@1c
    .line 424
    return-void

    #@1d
    .line 425
    :cond_1
    iget v1, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@1f
    neg-int v1, v1

    #@20
    if-ne v1, p3, :cond_3

    #@22
    .line 426
    invoke-direct {p0, v4}, Landroid/icu/text/DigitList;->shouldRoundUp(I)Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_2

    #@28
    .line 427
    iput v5, p0, Landroid/icu/text/DigitList;->count:I

    #@2a
    .line 428
    iget v1, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@2c
    add-int/lit8 v1, v1, 0x1

    #@2e
    iput v1, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@30
    .line 429
    iget-object v1, p0, Landroid/icu/text/DigitList;->digits:[B

    #@32
    const/16 v2, 0x31

    #@34
    aput-byte v2, v1, v4

    #@36
    .line 433
    :goto_0
    return-void

    #@37
    .line 431
    :cond_2
    iput v4, p0, Landroid/icu/text/DigitList;->count:I

    #@39
    goto :goto_0

    #@3a
    .line 439
    :cond_3
    :goto_1
    iget v1, p0, Landroid/icu/text/DigitList;->count:I

    #@3c
    if-le v1, v5, :cond_4

    #@3e
    iget-object v1, p0, Landroid/icu/text/DigitList;->digits:[B

    #@40
    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    #@42
    add-int/lit8 v2, v2, -0x1

    #@44
    aget-byte v1, v1, v2

    #@46
    const/16 v2, 0x30

    #@48
    if-ne v1, v2, :cond_4

    #@4a
    .line 440
    iget v1, p0, Landroid/icu/text/DigitList;->count:I

    #@4c
    add-int/lit8 v1, v1, -0x1

    #@4e
    iput v1, p0, Landroid/icu/text/DigitList;->count:I

    #@50
    goto :goto_1

    #@51
    .line 444
    :cond_4
    if-eqz p4, :cond_6

    #@53
    iget v1, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@55
    add-int/2addr p3, v1

    #@56
    .end local p3    # "maximumDigits":I
    :cond_5
    :goto_2
    invoke-virtual {p0, p3}, Landroid/icu/text/DigitList;->round(I)V

    #@59
    .line 407
    return-void

    #@5a
    .line 444
    .restart local p3    # "maximumDigits":I
    :cond_6
    if-nez p3, :cond_5

    #@5c
    const/4 p3, -0x1

    #@5d
    goto :goto_2
.end method

.method public final set(J)V
    .locals 1
    .param p1, "source"    # J

    #@0
    .prologue
    .line 579
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/DigitList;->set(JI)V

    #@4
    .line 577
    return-void
.end method

.method public final set(JI)V
    .locals 9
    .param p1, "source"    # J
    .param p3, "maximumDigits"    # I

    #@0
    .prologue
    .line 599
    const-wide/16 v2, 0x0

    #@2
    cmp-long v2, p1, v2

    #@4
    if-gtz v2, :cond_2

    #@6
    .line 600
    const-wide/high16 v2, -0x8000000000000000L

    #@8
    cmp-long v2, p1, v2

    #@a
    if-nez v2, :cond_1

    #@c
    .line 601
    const/16 v2, 0x13

    #@e
    iput v2, p0, Landroid/icu/text/DigitList;->count:I

    #@10
    const/16 v2, 0x13

    #@12
    iput v2, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@14
    .line 602
    sget-object v2, Landroid/icu/text/DigitList;->LONG_MIN_REP:[B

    #@16
    iget-object v3, p0, Landroid/icu/text/DigitList;->digits:[B

    #@18
    iget v4, p0, Landroid/icu/text/DigitList;->count:I

    #@1a
    const/4 v5, 0x0

    #@1b
    const/4 v6, 0x0

    #@1c
    invoke-static {v2, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1f
    .line 622
    :goto_0
    if-lez p3, :cond_0

    #@21
    invoke-virtual {p0, p3}, Landroid/icu/text/DigitList;->round(I)V

    #@24
    .line 590
    :cond_0
    return-void

    #@25
    .line 604
    :cond_1
    const/4 v2, 0x0

    #@26
    iput v2, p0, Landroid/icu/text/DigitList;->count:I

    #@28
    .line 605
    const/4 v2, 0x0

    #@29
    iput v2, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@2b
    goto :goto_0

    #@2c
    .line 608
    :cond_2
    const/16 v0, 0x13

    #@2e
    .line 610
    .local v0, "left":I
    :goto_1
    const-wide/16 v2, 0x0

    #@30
    cmp-long v2, p1, v2

    #@32
    if-lez v2, :cond_3

    #@34
    .line 611
    iget-object v2, p0, Landroid/icu/text/DigitList;->digits:[B

    #@36
    add-int/lit8 v0, v0, -0x1

    #@38
    const-wide/16 v4, 0xa

    #@3a
    rem-long v4, p1, v4

    #@3c
    const-wide/16 v6, 0x30

    #@3e
    add-long/2addr v4, v6

    #@3f
    long-to-int v3, v4

    #@40
    int-to-byte v3, v3

    #@41
    aput-byte v3, v2, v0

    #@43
    .line 612
    const-wide/16 v2, 0xa

    #@45
    div-long/2addr p1, v2

    #@46
    goto :goto_1

    #@47
    .line 614
    :cond_3
    rsub-int/lit8 v2, v0, 0x13

    #@49
    iput v2, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@4b
    .line 618
    const/16 v1, 0x12

    #@4d
    .local v1, "right":I
    :goto_2
    iget-object v2, p0, Landroid/icu/text/DigitList;->digits:[B

    #@4f
    aget-byte v2, v2, v1

    #@51
    const/16 v3, 0x30

    #@53
    if-ne v2, v3, :cond_4

    #@55
    add-int/lit8 v1, v1, -0x1

    #@57
    goto :goto_2

    #@58
    .line 619
    :cond_4
    sub-int v2, v1, v0

    #@5a
    add-int/lit8 v2, v2, 0x1

    #@5c
    iput v2, p0, Landroid/icu/text/DigitList;->count:I

    #@5e
    .line 620
    iget-object v2, p0, Landroid/icu/text/DigitList;->digits:[B

    #@60
    iget-object v3, p0, Landroid/icu/text/DigitList;->digits:[B

    #@62
    iget v4, p0, Landroid/icu/text/DigitList;->count:I

    #@64
    const/4 v5, 0x0

    #@65
    invoke-static {v2, v0, v3, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@68
    goto :goto_0
.end method

.method public final set(Landroid/icu/math/BigDecimal;IZ)V
    .locals 1
    .param p1, "source"    # Landroid/icu/math/BigDecimal;
    .param p2, "maximumDigits"    # I
    .param p3, "fixedPoint"    # Z

    #@0
    .prologue
    .line 759
    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2, p3}, Landroid/icu/text/DigitList;->setBigDecimalDigits(Ljava/lang/String;IZ)V

    #@7
    .line 758
    return-void
.end method

.method public final set(Ljava/math/BigDecimal;IZ)V
    .locals 1
    .param p1, "source"    # Ljava/math/BigDecimal;
    .param p2, "maximumDigits"    # I
    .param p3, "fixedPoint"    # Z

    #@0
    .prologue
    .line 744
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2, p3}, Landroid/icu/text/DigitList;->setBigDecimalDigits(Ljava/lang/String;IZ)V

    #@7
    .line 743
    return-void
.end method

.method public final set(Ljava/math/BigInteger;I)V
    .locals 6
    .param p1, "source"    # Ljava/math/BigInteger;
    .param p2, "maximumDigits"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 634
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 636
    .local v2, "stringDigits":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@8
    move-result v3

    #@9
    iput v3, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@b
    iput v3, p0, Landroid/icu/text/DigitList;->count:I

    #@d
    .line 639
    :goto_0
    iget v3, p0, Landroid/icu/text/DigitList;->count:I

    #@f
    const/4 v4, 0x1

    #@10
    if-le v3, v4, :cond_0

    #@12
    iget v3, p0, Landroid/icu/text/DigitList;->count:I

    #@14
    add-int/lit8 v3, v3, -0x1

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@19
    move-result v3

    #@1a
    const/16 v4, 0x30

    #@1c
    if-ne v3, v4, :cond_0

    #@1e
    iget v3, p0, Landroid/icu/text/DigitList;->count:I

    #@20
    add-int/lit8 v3, v3, -0x1

    #@22
    iput v3, p0, Landroid/icu/text/DigitList;->count:I

    #@24
    goto :goto_0

    #@25
    .line 641
    :cond_0
    const/4 v1, 0x0

    #@26
    .line 642
    .local v1, "offset":I
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    #@29
    move-result v3

    #@2a
    const/16 v4, 0x2d

    #@2c
    if-ne v3, v4, :cond_1

    #@2e
    .line 643
    const/4 v1, 0x1

    #@2f
    .line 644
    iget v3, p0, Landroid/icu/text/DigitList;->count:I

    #@31
    add-int/lit8 v3, v3, -0x1

    #@33
    iput v3, p0, Landroid/icu/text/DigitList;->count:I

    #@35
    .line 645
    iget v3, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@37
    add-int/lit8 v3, v3, -0x1

    #@39
    iput v3, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@3b
    .line 648
    :cond_1
    iget v3, p0, Landroid/icu/text/DigitList;->count:I

    #@3d
    invoke-direct {p0, v3, v5}, Landroid/icu/text/DigitList;->ensureCapacity(II)V

    #@40
    .line 649
    const/4 v0, 0x0

    #@41
    .local v0, "i":I
    :goto_1
    iget v3, p0, Landroid/icu/text/DigitList;->count:I

    #@43
    if-ge v0, v3, :cond_2

    #@45
    .line 650
    iget-object v3, p0, Landroid/icu/text/DigitList;->digits:[B

    #@47
    add-int v4, v0, v1

    #@49
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    #@4c
    move-result v4

    #@4d
    int-to-byte v4, v4

    #@4e
    aput-byte v4, v3, v0

    #@50
    .line 649
    add-int/lit8 v0, v0, 0x1

    #@52
    goto :goto_1

    #@53
    .line 653
    :cond_2
    if-lez p2, :cond_3

    #@55
    invoke-virtual {p0, p2}, Landroid/icu/text/DigitList;->round(I)V

    #@58
    .line 633
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 859
    invoke-virtual {p0}, Landroid/icu/text/DigitList;->isZero()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    const-string/jumbo v2, "0"

    #@9
    return-object v2

    #@a
    .line 860
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    const-string/jumbo v2, "0."

    #@f
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@12
    .line 861
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@13
    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    #@15
    if-ge v1, v2, :cond_1

    #@17
    iget-object v2, p0, Landroid/icu/text/DigitList;->digits:[B

    #@19
    aget-byte v2, v2, v1

    #@1b
    int-to-char v2, v2

    #@1c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1f
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 862
    :cond_1
    const-string/jumbo v2, "x10^"

    #@25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    .line 863
    iget v2, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    .line 864
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    return-object v2
.end method
