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

.field private didRound:Z

.field public digits:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x13

    #@2
    .line 806
    const-wide/high16 v2, -0x8000000000000000L

    #@4
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    .line 807
    .local v1, "s":Ljava/lang/String;
    new-array v2, v4, [B

    #@a
    sput-object v2, Landroid/icu/text/DigitList;->LONG_MIN_REP:[B

    #@c
    .line 808
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    #@f
    .line 810
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
    .line 808
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 45
    :cond_0
    return-void
.end method

.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 75
    iput v1, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@6
    .line 76
    iput v1, p0, Landroid/icu/text/DigitList;->count:I

    #@8
    .line 77
    const/16 v0, 0x13

    #@a
    new-array v0, v0, [B

    #@c
    iput-object v0, p0, Landroid/icu/text/DigitList;->digits:[B

    #@e
    .line 580
    iput-boolean v1, p0, Landroid/icu/text/DigitList;->didRound:Z

    #@10
    .line 45
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
    .line 80
    iget-object v1, p0, Landroid/icu/text/DigitList;->digits:[B

    #@3
    array-length v1, v1

    #@4
    if-le p1, v1, :cond_0

    #@6
    .line 81
    mul-int/lit8 v1, p1, 0x2

    #@8
    new-array v0, v1, [B

    #@a
    .line 82
    .local v0, "newDigits":[B
    iget-object v1, p0, Landroid/icu/text/DigitList;->digits:[B

    #@c
    invoke-static {v1, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@f
    .line 83
    iput-object v0, p0, Landroid/icu/text/DigitList;->digits:[B

    #@11
    .line 79
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
    .line 211
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
    .line 212
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@10
    iget v4, p0, Landroid/icu/text/DigitList;->count:I

    #@12
    add-int/lit8 v4, v4, 0x1

    #@14
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    #@17
    .line 213
    .local v3, "stringRep":Ljava/lang/StringBuilder;
    if-nez p1, :cond_1

    #@19
    .line 214
    const/16 v4, 0x2d

    #@1b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1e
    .line 216
    :cond_1
    iget v0, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@20
    .line 217
    .local v0, "d":I
    if-gez v0, :cond_3

    #@22
    .line 218
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@25
    .line 219
    :goto_0
    if-gez v0, :cond_2

    #@27
    .line 220
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2a
    .line 221
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 223
    :cond_2
    const/4 v0, -0x1

    #@2e
    .line 225
    :cond_3
    const/4 v2, 0x0

    #@2f
    .local v2, "i":I
    :goto_1
    iget v4, p0, Landroid/icu/text/DigitList;->count:I

    #@31
    if-ge v2, v4, :cond_5

    #@33
    .line 226
    if-ne v0, v2, :cond_4

    #@35
    .line 227
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@38
    .line 229
    :cond_4
    iget-object v4, p0, Landroid/icu/text/DigitList;->digits:[B

    #@3a
    aget-byte v4, v4, v2

    #@3c
    int-to-char v4, v4

    #@3d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@40
    .line 225
    add-int/lit8 v2, v2, 0x1

    #@42
    goto :goto_1

    #@43
    .line 231
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
    .line 232
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4c
    move v0, v1

    #@4d
    .end local v1    # "d":I
    .restart local v0    # "d":I
    goto :goto_2

    #@4e
    .line 234
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
    .line 790
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
    .line 791
    :cond_0
    return v3

    #@e
    .line 793
    :cond_1
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/icu/text/DigitList;->count:I

    #@11
    if-ge v0, v1, :cond_3

    #@13
    .line 795
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
    .line 793
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 798
    :cond_3
    const/4 v1, 0x1

    #@22
    return v1
.end method

.method private set(Ljava/lang/String;I)V
    .locals 10
    .param p1, "rep"    # Ljava/lang/String;
    .param p2, "maxCount"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v9, -0x1

    #@2
    .line 456
    iput v9, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@4
    .line 457
    iput v5, p0, Landroid/icu/text/DigitList;->count:I

    #@6
    .line 458
    const/4 v1, 0x0

    #@7
    .line 461
    .local v1, "exponent":I
    const/4 v3, 0x0

    #@8
    .line 462
    .local v3, "leadingZerosAfterDecimal":I
    const/4 v4, 0x0

    #@9
    .line 464
    .local v4, "nonZeroDigitSeen":Z
    const/4 v2, 0x0

    #@a
    .line 465
    .local v2, "i":I
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@d
    move-result v6

    #@e
    const/16 v7, 0x2d

    #@10
    if-ne v6, v7, :cond_0

    #@12
    .line 466
    const/4 v2, 0x1

    #@13
    .line 468
    .end local v4    # "nonZeroDigitSeen":Z
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@16
    move-result v6

    #@17
    if-ge v2, v6, :cond_5

    #@19
    .line 469
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@1c
    move-result v0

    #@1d
    .line 470
    .local v0, "c":C
    const/16 v6, 0x2e

    #@1f
    if-ne v0, v6, :cond_2

    #@21
    .line 471
    iget v6, p0, Landroid/icu/text/DigitList;->count:I

    #@23
    iput v6, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@25
    .line 468
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@27
    goto :goto_0

    #@28
    .line 472
    :cond_2
    const/16 v6, 0x65

    #@2a
    if-eq v0, v6, :cond_3

    #@2c
    const/16 v6, 0x45

    #@2e
    if-ne v0, v6, :cond_7

    #@30
    .line 473
    :cond_3
    add-int/lit8 v2, v2, 0x1

    #@32
    .line 475
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    #@35
    move-result v5

    #@36
    const/16 v6, 0x2b

    #@38
    if-ne v5, v6, :cond_4

    #@3a
    .line 476
    add-int/lit8 v2, v2, 0x1

    #@3c
    .line 478
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
    .line 494
    .end local v0    # "c":C
    :cond_5
    iget v5, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@4a
    if-ne v5, v9, :cond_6

    #@4c
    .line 495
    iget v5, p0, Landroid/icu/text/DigitList;->count:I

    #@4e
    iput v5, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@50
    .line 497
    :cond_6
    iget v5, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@52
    sub-int v6, v1, v3

    #@54
    add-int/2addr v5, v6

    #@55
    iput v5, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@57
    .line 455
    return-void

    #@58
    .line 480
    .restart local v0    # "c":C
    :cond_7
    iget v6, p0, Landroid/icu/text/DigitList;->count:I

    #@5a
    if-ge v6, p2, :cond_1

    #@5c
    .line 481
    if-nez v4, :cond_8

    #@5e
    .line 482
    const/16 v6, 0x30

    #@60
    if-eq v0, v6, :cond_9

    #@62
    const/4 v4, 0x1

    #@63
    .line 483
    .local v4, "nonZeroDigitSeen":Z
    :goto_2
    if-nez v4, :cond_8

    #@65
    iget v6, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@67
    if-eq v6, v9, :cond_8

    #@69
    .line 484
    add-int/lit8 v3, v3, 0x1

    #@6b
    .line 488
    .end local v4    # "nonZeroDigitSeen":Z
    :cond_8
    if-eqz v4, :cond_1

    #@6d
    .line 489
    iget v6, p0, Landroid/icu/text/DigitList;->count:I

    #@6f
    add-int/lit8 v6, v6, 0x1

    #@71
    iget v7, p0, Landroid/icu/text/DigitList;->count:I

    #@73
    invoke-direct {p0, v6, v7}, Landroid/icu/text/DigitList;->ensureCapacity(II)V

    #@76
    .line 490
    iget-object v6, p0, Landroid/icu/text/DigitList;->digits:[B

    #@78
    iget v7, p0, Landroid/icu/text/DigitList;->count:I

    #@7a
    add-int/lit8 v8, v7, 0x1

    #@7c
    iput v8, p0, Landroid/icu/text/DigitList;->count:I

    #@7e
    int-to-byte v8, v0

    #@7f
    aput-byte v8, v6, v7

    #@81
    goto :goto_1

    #@82
    :cond_9
    move v4, v5

    #@83
    .line 482
    goto :goto_2
.end method

.method private setBigDecimalDigits(Ljava/lang/String;IZ)V
    .locals 1
    .param p1, "stringDigits"    # Ljava/lang/String;
    .param p2, "maximumDigits"    # I
    .param p3, "fixedPoint"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 738
    iput-boolean v0, p0, Landroid/icu/text/DigitList;->didRound:Z

    #@3
    .line 741
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v0

    #@7
    invoke-direct {p0, p1, v0}, Landroid/icu/text/DigitList;->set(Ljava/lang/String;I)V

    #@a
    .line 751
    if-eqz p3, :cond_1

    #@c
    iget v0, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@e
    add-int/2addr p2, v0

    #@f
    .end local p2    # "maximumDigits":I
    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Landroid/icu/text/DigitList;->round(I)V

    #@12
    .line 690
    return-void

    #@13
    .line 751
    .restart local p2    # "maximumDigits":I
    :cond_1
    if-nez p2, :cond_0

    #@15
    const/4 p2, -0x1

    #@16
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
    .line 518
    iget v3, p0, Landroid/icu/text/DigitList;->count:I

    #@6
    if-ge p1, v3, :cond_4

    #@8
    .line 519
    iget-object v3, p0, Landroid/icu/text/DigitList;->digits:[B

    #@a
    aget-byte v3, v3, p1

    #@c
    if-le v3, v4, :cond_0

    #@e
    .line 520
    return v1

    #@f
    .line 521
    :cond_0
    iget-object v3, p0, Landroid/icu/text/DigitList;->digits:[B

    #@11
    aget-byte v3, v3, p1

    #@13
    if-ne v3, v4, :cond_4

    #@15
    .line 522
    add-int/lit8 v0, p1, 0x1

    #@17
    .local v0, "i":I
    :goto_0
    iget v3, p0, Landroid/icu/text/DigitList;->count:I

    #@19
    if-ge v0, v3, :cond_2

    #@1b
    .line 523
    iget-object v3, p0, Landroid/icu/text/DigitList;->digits:[B

    #@1d
    aget-byte v3, v3, v0

    #@1f
    const/16 v4, 0x30

    #@21
    if-eq v3, v4, :cond_1

    #@23
    .line 524
    return v1

    #@24
    .line 522
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 527
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
    .line 530
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
    .line 113
    iget v0, p0, Landroid/icu/text/DigitList;->count:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iget v1, p0, Landroid/icu/text/DigitList;->count:I

    #@6
    invoke-direct {p0, v0, v1}, Landroid/icu/text/DigitList;->ensureCapacity(II)V

    #@9
    .line 114
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
    .line 112
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
    .line 853
    if-ne p0, p1, :cond_0

    #@4
    .line 854
    return v5

    #@5
    .line 855
    :cond_0
    instance-of v2, p1, Landroid/icu/text/DigitList;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 856
    return v4

    #@a
    :cond_1
    move-object v1, p1

    #@b
    .line 857
    check-cast v1, Landroid/icu/text/DigitList;

    #@d
    .line 858
    .local v1, "other":Landroid/icu/text/DigitList;
    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    #@f
    iget v3, v1, Landroid/icu/text/DigitList;->count:I

    #@11
    if-ne v2, v3, :cond_2

    #@13
    .line 859
    iget v2, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@15
    iget v3, v1, Landroid/icu/text/DigitList;->decimalAt:I

    #@17
    if-eq v2, v3, :cond_3

    #@19
    .line 860
    :cond_2
    return v4

    #@1a
    .line 861
    :cond_3
    const/4 v0, 0x0

    #@1b
    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    #@1d
    if-ge v0, v2, :cond_5

    #@1f
    .line 862
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
    .line 863
    return v4

    #@2a
    .line 861
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 864
    :cond_5
    return v5
.end method

.method public getBigDecimal(Z)Ljava/math/BigDecimal;
    .locals 12
    .param p1, "isPositive"    # Z

    #@0
    .prologue
    .line 247
    invoke-virtual {p0}, Landroid/icu/text/DigitList;->isZero()Z

    #@3
    move-result v8

    #@4
    if-eqz v8, :cond_0

    #@6
    .line 248
    const-wide/16 v8, 0x0

    #@8
    invoke-static {v8, v9}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    #@b
    move-result-object v8

    #@c
    return-object v8

    #@d
    .line 254
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
    .line 255
    .local v4, "scale":J
    const-wide/16 v8, 0x0

    #@17
    cmp-long v8, v4, v8

    #@19
    if-lez v8, :cond_5

    #@1b
    .line 256
    iget v1, p0, Landroid/icu/text/DigitList;->count:I

    #@1d
    .line 257
    .local v1, "numDigits":I
    const-wide/32 v8, 0x7fffffff

    #@20
    cmp-long v8, v4, v8

    #@22
    if-lez v8, :cond_1

    #@24
    .line 259
    const-wide/32 v8, 0x7fffffff

    #@27
    sub-long v2, v4, v8

    #@29
    .line 260
    .local v2, "numShift":J
    iget v8, p0, Landroid/icu/text/DigitList;->count:I

    #@2b
    int-to-long v8, v8

    #@2c
    cmp-long v8, v2, v8

    #@2e
    if-gez v8, :cond_3

    #@30
    .line 261
    int-to-long v8, v1

    #@31
    sub-long/2addr v8, v2

    #@32
    long-to-int v1, v8

    #@33
    .line 267
    .end local v2    # "numShift":J
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    #@35
    add-int/lit8 v8, v1, 0x1

    #@37
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    #@3a
    .line 268
    .local v6, "significantDigits":Ljava/lang/StringBuilder;
    if-nez p1, :cond_2

    #@3c
    .line 269
    const/16 v8, 0x2d

    #@3e
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@41
    .line 271
    :cond_2
    const/4 v0, 0x0

    #@42
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    #@44
    .line 272
    iget-object v8, p0, Landroid/icu/text/DigitList;->digits:[B

    #@46
    aget-byte v8, v8, v0

    #@48
    int-to-char v8, v8

    #@49
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4c
    .line 271
    add-int/lit8 v0, v0, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 264
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
    .line 274
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
    .line 275
    .local v7, "unscaledVal":Ljava/math/BigInteger;
    new-instance v8, Ljava/math/BigDecimal;

    #@61
    long-to-int v9, v4

    #@62
    invoke-direct {v8, v7, v9}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@65
    return-object v8

    #@66
    .line 280
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
    .line 293
    invoke-virtual {p0}, Landroid/icu/text/DigitList;->isZero()Z

    #@3
    move-result v8

    #@4
    if-eqz v8, :cond_0

    #@6
    .line 294
    const-wide/16 v8, 0x0

    #@8
    invoke-static {v8, v9}, Landroid/icu/math/BigDecimal;->valueOf(J)Landroid/icu/math/BigDecimal;

    #@b
    move-result-object v8

    #@c
    return-object v8

    #@d
    .line 300
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
    .line 301
    .local v4, "scale":J
    const-wide/16 v8, 0x0

    #@17
    cmp-long v8, v4, v8

    #@19
    if-lez v8, :cond_5

    #@1b
    .line 302
    iget v1, p0, Landroid/icu/text/DigitList;->count:I

    #@1d
    .line 303
    .local v1, "numDigits":I
    const-wide/32 v8, 0x7fffffff

    #@20
    cmp-long v8, v4, v8

    #@22
    if-lez v8, :cond_1

    #@24
    .line 305
    const-wide/32 v8, 0x7fffffff

    #@27
    sub-long v2, v4, v8

    #@29
    .line 306
    .local v2, "numShift":J
    iget v8, p0, Landroid/icu/text/DigitList;->count:I

    #@2b
    int-to-long v8, v8

    #@2c
    cmp-long v8, v2, v8

    #@2e
    if-gez v8, :cond_3

    #@30
    .line 307
    int-to-long v8, v1

    #@31
    sub-long/2addr v8, v2

    #@32
    long-to-int v1, v8

    #@33
    .line 313
    .end local v2    # "numShift":J
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    #@35
    add-int/lit8 v8, v1, 0x1

    #@37
    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    #@3a
    .line 314
    .local v6, "significantDigits":Ljava/lang/StringBuilder;
    if-nez p1, :cond_2

    #@3c
    .line 315
    const/16 v8, 0x2d

    #@3e
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@41
    .line 317
    :cond_2
    const/4 v0, 0x0

    #@42
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    #@44
    .line 318
    iget-object v8, p0, Landroid/icu/text/DigitList;->digits:[B

    #@46
    aget-byte v8, v8, v0

    #@48
    int-to-char v8, v8

    #@49
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4c
    .line 317
    add-int/lit8 v0, v0, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 310
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
    .line 320
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
    .line 321
    .local v7, "unscaledVal":Ljava/math/BigInteger;
    new-instance v8, Landroid/icu/math/BigDecimal;

    #@61
    long-to-int v9, v4

    #@62
    invoke-direct {v8, v7, v9}, Landroid/icu/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    #@65
    return-object v8

    #@66
    .line 323
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
    .line 169
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
    .line 185
    :cond_0
    iget v4, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@f
    iget v5, p0, Landroid/icu/text/DigitList;->count:I

    #@11
    if-le v4, v5, :cond_2

    #@13
    iget v1, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@15
    .line 186
    .local v1, "len":I
    :goto_0
    if-nez p1, :cond_1

    #@17
    .line 187
    add-int/lit8 v1, v1, 0x1

    #@19
    .line 189
    :cond_1
    new-array v3, v1, [C

    #@1b
    .line 190
    .local v3, "text":[C
    const/4 v2, 0x0

    #@1c
    .line 191
    .local v2, "n":I
    if-nez p1, :cond_4

    #@1e
    .line 192
    const/16 v4, 0x2d

    #@20
    const/4 v5, 0x0

    #@21
    aput-char v4, v3, v5

    #@23
    .line 193
    const/4 v0, 0x0

    #@24
    .local v0, "i":I
    :goto_1
    iget v4, p0, Landroid/icu/text/DigitList;->count:I

    #@26
    if-ge v0, v4, :cond_3

    #@28
    .line 194
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
    .line 193
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_1

    #@34
    .line 185
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
    .line 196
    .restart local v0    # "i":I
    .restart local v2    # "n":I
    .restart local v3    # "text":[C
    :cond_3
    iget v4, p0, Landroid/icu/text/DigitList;->count:I

    #@39
    add-int/lit8 v2, v4, 0x1

    #@3b
    .line 203
    :goto_2
    move v0, v2

    #@3c
    :goto_3
    array-length v4, v3

    #@3d
    if-ge v0, v4, :cond_6

    #@3f
    .line 204
    const/16 v4, 0x30

    #@41
    aput-char v4, v3, v0

    #@43
    .line 203
    add-int/lit8 v0, v0, 0x1

    #@45
    goto :goto_3

    #@46
    .line 198
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
    .line 199
    iget-object v4, p0, Landroid/icu/text/DigitList;->digits:[B

    #@4d
    aget-byte v4, v4, v0

    #@4f
    int-to-char v4, v4

    #@50
    aput-char v4, v3, v0

    #@52
    .line 198
    add-int/lit8 v0, v0, 0x1

    #@54
    goto :goto_4

    #@55
    .line 201
    :cond_5
    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    #@57
    goto :goto_2

    #@58
    .line 206
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
    .line 118
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
    .line 127
    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    #@2
    if-nez v2, :cond_0

    #@4
    const-wide/16 v2, 0x0

    #@6
    return-wide v2

    #@7
    .line 128
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    #@b
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@e
    .line 129
    .local v1, "temp":Ljava/lang/StringBuilder;
    const/16 v2, 0x2e

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@13
    .line 130
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
    .line 131
    :cond_1
    const/16 v2, 0x45

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@28
    .line 132
    iget v2, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@2a
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 133
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
    .line 145
    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    #@2
    if-nez v2, :cond_0

    #@4
    const-wide/16 v2, 0x0

    #@6
    return-wide v2

    #@7
    .line 150
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
    .line 152
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    #@14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@17
    .line 153
    .local v1, "temp":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@18
    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@1a
    if-ge v0, v2, :cond_3

    #@1c
    .line 155
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
    .line 153
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 155
    :cond_2
    const/16 v2, 0x30

    #@2d
    goto :goto_1

    #@2e
    .line 157
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
    .line 871
    iget v0, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@2
    .line 873
    .local v0, "hashcode":I
    const/4 v1, 0x0

    #@3
    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    #@5
    if-ge v1, v2, :cond_0

    #@7
    .line 874
    mul-int/lit8 v2, v0, 0x25

    #@9
    iget-object v3, p0, Landroid/icu/text/DigitList;->digits:[B

    #@b
    aget-byte v3, v3, v1

    #@d
    add-int v0, v2, v3

    #@f
    .line 873
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 876
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
    .line 334
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
    .line 335
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
    .line 92
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
    .line 93
    :cond_1
    const/4 v1, 0x1

    #@13
    return v1
.end method

.method public final round(I)V
    .locals 4
    .param p1, "maximumDigits"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 543
    if-ltz p1, :cond_2

    #@4
    iget v0, p0, Landroid/icu/text/DigitList;->count:I

    #@6
    if-ge p1, v0, :cond_2

    #@8
    .line 544
    invoke-direct {p0, p1}, Landroid/icu/text/DigitList;->shouldRoundUp(I)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 550
    :cond_0
    add-int/lit8 p1, p1, -0x1

    #@10
    .line 551
    if-gez p1, :cond_3

    #@12
    .line 555
    iget-object v0, p0, Landroid/icu/text/DigitList;->digits:[B

    #@14
    const/16 v1, 0x31

    #@16
    aput-byte v1, v0, v2

    #@18
    .line 556
    iget v0, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@1a
    add-int/lit8 v0, v0, 0x1

    #@1c
    iput v0, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@1e
    .line 557
    const/4 p1, 0x0

    #@1f
    .line 558
    iput-boolean v3, p0, Landroid/icu/text/DigitList;->didRound:Z

    #@21
    .line 567
    :goto_0
    add-int/lit8 p1, p1, 0x1

    #@23
    .line 569
    :cond_1
    iput p1, p0, Landroid/icu/text/DigitList;->count:I

    #@25
    .line 574
    :cond_2
    :goto_1
    iget v0, p0, Landroid/icu/text/DigitList;->count:I

    #@27
    if-le v0, v3, :cond_4

    #@29
    iget-object v0, p0, Landroid/icu/text/DigitList;->digits:[B

    #@2b
    iget v1, p0, Landroid/icu/text/DigitList;->count:I

    #@2d
    add-int/lit8 v1, v1, -0x1

    #@2f
    aget-byte v0, v0, v1

    #@31
    const/16 v1, 0x30

    #@33
    if-ne v0, v1, :cond_4

    #@35
    .line 575
    iget v0, p0, Landroid/icu/text/DigitList;->count:I

    #@37
    add-int/lit8 v0, v0, -0x1

    #@39
    iput v0, p0, Landroid/icu/text/DigitList;->count:I

    #@3b
    goto :goto_1

    #@3c
    .line 562
    :cond_3
    iget-object v0, p0, Landroid/icu/text/DigitList;->digits:[B

    #@3e
    aget-byte v1, v0, p1

    #@40
    add-int/lit8 v1, v1, 0x1

    #@42
    int-to-byte v1, v1

    #@43
    aput-byte v1, v0, p1

    #@45
    .line 563
    iput-boolean v3, p0, Landroid/icu/text/DigitList;->didRound:Z

    #@47
    .line 564
    iget-object v0, p0, Landroid/icu/text/DigitList;->digits:[B

    #@49
    aget-byte v0, v0, p1

    #@4b
    const/16 v1, 0x39

    #@4d
    if-gt v0, v1, :cond_0

    #@4f
    goto :goto_0

    #@50
    .line 539
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
    .line 410
    const-wide/16 v2, 0x0

    #@4
    cmpl-double v1, p1, v2

    #@6
    if-nez v1, :cond_0

    #@8
    const-wide/16 p1, 0x0

    #@a
    .line 413
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 415
    .local v0, "rep":Ljava/lang/String;
    iput-boolean v4, p0, Landroid/icu/text/DigitList;->didRound:Z

    #@10
    .line 417
    const/16 v1, 0x13

    #@12
    invoke-direct {p0, v0, v1}, Landroid/icu/text/DigitList;->set(Ljava/lang/String;I)V

    #@15
    .line 419
    if-eqz p4, :cond_3

    #@17
    .line 425
    iget v1, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@19
    neg-int v1, v1

    #@1a
    if-le v1, p3, :cond_1

    #@1c
    .line 426
    iput v4, p0, Landroid/icu/text/DigitList;->count:I

    #@1e
    .line 427
    return-void

    #@1f
    .line 428
    :cond_1
    iget v1, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@21
    neg-int v1, v1

    #@22
    if-ne v1, p3, :cond_3

    #@24
    .line 429
    invoke-direct {p0, v4}, Landroid/icu/text/DigitList;->shouldRoundUp(I)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_2

    #@2a
    .line 430
    iput v5, p0, Landroid/icu/text/DigitList;->count:I

    #@2c
    .line 431
    iget v1, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@2e
    add-int/lit8 v1, v1, 0x1

    #@30
    iput v1, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@32
    .line 432
    iget-object v1, p0, Landroid/icu/text/DigitList;->digits:[B

    #@34
    const/16 v2, 0x31

    #@36
    aput-byte v2, v1, v4

    #@38
    .line 436
    :goto_0
    return-void

    #@39
    .line 434
    :cond_2
    iput v4, p0, Landroid/icu/text/DigitList;->count:I

    #@3b
    goto :goto_0

    #@3c
    .line 442
    :cond_3
    :goto_1
    iget v1, p0, Landroid/icu/text/DigitList;->count:I

    #@3e
    if-le v1, v5, :cond_4

    #@40
    iget-object v1, p0, Landroid/icu/text/DigitList;->digits:[B

    #@42
    iget v2, p0, Landroid/icu/text/DigitList;->count:I

    #@44
    add-int/lit8 v2, v2, -0x1

    #@46
    aget-byte v1, v1, v2

    #@48
    const/16 v2, 0x30

    #@4a
    if-ne v1, v2, :cond_4

    #@4c
    .line 443
    iget v1, p0, Landroid/icu/text/DigitList;->count:I

    #@4e
    add-int/lit8 v1, v1, -0x1

    #@50
    iput v1, p0, Landroid/icu/text/DigitList;->count:I

    #@52
    goto :goto_1

    #@53
    .line 447
    :cond_4
    if-eqz p4, :cond_6

    #@55
    iget v1, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@57
    add-int/2addr p3, v1

    #@58
    .end local p3    # "maximumDigits":I
    :cond_5
    :goto_2
    invoke-virtual {p0, p3}, Landroid/icu/text/DigitList;->round(I)V

    #@5b
    .line 408
    return-void

    #@5c
    .line 447
    .restart local p3    # "maximumDigits":I
    :cond_6
    if-nez p3, :cond_5

    #@5e
    const/4 p3, -0x1

    #@5f
    goto :goto_2
.end method

.method public final set(J)V
    .locals 1
    .param p1, "source"    # J

    #@0
    .prologue
    .line 596
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/text/DigitList;->set(JI)V

    #@4
    .line 594
    return-void
.end method

.method public final set(JI)V
    .locals 9
    .param p1, "source"    # J
    .param p3, "maximumDigits"    # I

    #@0
    .prologue
    .line 616
    const/4 v2, 0x0

    #@1
    iput-boolean v2, p0, Landroid/icu/text/DigitList;->didRound:Z

    #@3
    .line 618
    const-wide/16 v2, 0x0

    #@5
    cmp-long v2, p1, v2

    #@7
    if-gtz v2, :cond_2

    #@9
    .line 619
    const-wide/high16 v2, -0x8000000000000000L

    #@b
    cmp-long v2, p1, v2

    #@d
    if-nez v2, :cond_1

    #@f
    .line 620
    const/16 v2, 0x13

    #@11
    iput v2, p0, Landroid/icu/text/DigitList;->count:I

    #@13
    const/16 v2, 0x13

    #@15
    iput v2, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@17
    .line 621
    sget-object v2, Landroid/icu/text/DigitList;->LONG_MIN_REP:[B

    #@19
    iget-object v3, p0, Landroid/icu/text/DigitList;->digits:[B

    #@1b
    iget v4, p0, Landroid/icu/text/DigitList;->count:I

    #@1d
    const/4 v5, 0x0

    #@1e
    const/4 v6, 0x0

    #@1f
    invoke-static {v2, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@22
    .line 641
    :goto_0
    if-lez p3, :cond_0

    #@24
    invoke-virtual {p0, p3}, Landroid/icu/text/DigitList;->round(I)V

    #@27
    .line 607
    :cond_0
    return-void

    #@28
    .line 623
    :cond_1
    const/4 v2, 0x0

    #@29
    iput v2, p0, Landroid/icu/text/DigitList;->count:I

    #@2b
    .line 624
    const/4 v2, 0x0

    #@2c
    iput v2, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@2e
    goto :goto_0

    #@2f
    .line 627
    :cond_2
    const/16 v0, 0x13

    #@31
    .line 629
    .local v0, "left":I
    :goto_1
    const-wide/16 v2, 0x0

    #@33
    cmp-long v2, p1, v2

    #@35
    if-lez v2, :cond_3

    #@37
    .line 630
    iget-object v2, p0, Landroid/icu/text/DigitList;->digits:[B

    #@39
    add-int/lit8 v0, v0, -0x1

    #@3b
    const-wide/16 v4, 0xa

    #@3d
    rem-long v4, p1, v4

    #@3f
    const-wide/16 v6, 0x30

    #@41
    add-long/2addr v4, v6

    #@42
    long-to-int v3, v4

    #@43
    int-to-byte v3, v3

    #@44
    aput-byte v3, v2, v0

    #@46
    .line 631
    const-wide/16 v2, 0xa

    #@48
    div-long/2addr p1, v2

    #@49
    goto :goto_1

    #@4a
    .line 633
    :cond_3
    rsub-int/lit8 v2, v0, 0x13

    #@4c
    iput v2, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@4e
    .line 637
    const/16 v1, 0x12

    #@50
    .local v1, "right":I
    :goto_2
    iget-object v2, p0, Landroid/icu/text/DigitList;->digits:[B

    #@52
    aget-byte v2, v2, v1

    #@54
    const/16 v3, 0x30

    #@56
    if-ne v2, v3, :cond_4

    #@58
    add-int/lit8 v1, v1, -0x1

    #@5a
    goto :goto_2

    #@5b
    .line 638
    :cond_4
    sub-int v2, v1, v0

    #@5d
    add-int/lit8 v2, v2, 0x1

    #@5f
    iput v2, p0, Landroid/icu/text/DigitList;->count:I

    #@61
    .line 639
    iget-object v2, p0, Landroid/icu/text/DigitList;->digits:[B

    #@63
    iget-object v3, p0, Landroid/icu/text/DigitList;->digits:[B

    #@65
    iget v4, p0, Landroid/icu/text/DigitList;->count:I

    #@67
    const/4 v5, 0x0

    #@68
    invoke-static {v2, v0, v3, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@6b
    goto :goto_0
.end method

.method public final set(Landroid/icu/math/BigDecimal;IZ)V
    .locals 1
    .param p1, "source"    # Landroid/icu/math/BigDecimal;
    .param p2, "maximumDigits"    # I
    .param p3, "fixedPoint"    # Z

    #@0
    .prologue
    .line 781
    invoke-virtual {p1}, Landroid/icu/math/BigDecimal;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2, p3}, Landroid/icu/text/DigitList;->setBigDecimalDigits(Ljava/lang/String;IZ)V

    #@7
    .line 780
    return-void
.end method

.method public final set(Ljava/math/BigDecimal;IZ)V
    .locals 1
    .param p1, "source"    # Ljava/math/BigDecimal;
    .param p2, "maximumDigits"    # I
    .param p3, "fixedPoint"    # Z

    #@0
    .prologue
    .line 766
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p2, p3}, Landroid/icu/text/DigitList;->setBigDecimalDigits(Ljava/lang/String;IZ)V

    #@7
    .line 765
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
    .line 653
    invoke-virtual {p1}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    #@4
    move-result-object v2

    #@5
    .line 655
    .local v2, "stringDigits":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@8
    move-result v3

    #@9
    iput v3, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@b
    iput v3, p0, Landroid/icu/text/DigitList;->count:I

    #@d
    .line 656
    iput-boolean v5, p0, Landroid/icu/text/DigitList;->didRound:Z

    #@f
    .line 659
    :goto_0
    iget v3, p0, Landroid/icu/text/DigitList;->count:I

    #@11
    const/4 v4, 0x1

    #@12
    if-le v3, v4, :cond_0

    #@14
    iget v3, p0, Landroid/icu/text/DigitList;->count:I

    #@16
    add-int/lit8 v3, v3, -0x1

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@1b
    move-result v3

    #@1c
    const/16 v4, 0x30

    #@1e
    if-ne v3, v4, :cond_0

    #@20
    iget v3, p0, Landroid/icu/text/DigitList;->count:I

    #@22
    add-int/lit8 v3, v3, -0x1

    #@24
    iput v3, p0, Landroid/icu/text/DigitList;->count:I

    #@26
    goto :goto_0

    #@27
    .line 661
    :cond_0
    const/4 v1, 0x0

    #@28
    .line 662
    .local v1, "offset":I
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    #@2b
    move-result v3

    #@2c
    const/16 v4, 0x2d

    #@2e
    if-ne v3, v4, :cond_1

    #@30
    .line 663
    const/4 v1, 0x1

    #@31
    .line 664
    iget v3, p0, Landroid/icu/text/DigitList;->count:I

    #@33
    add-int/lit8 v3, v3, -0x1

    #@35
    iput v3, p0, Landroid/icu/text/DigitList;->count:I

    #@37
    .line 665
    iget v3, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@39
    add-int/lit8 v3, v3, -0x1

    #@3b
    iput v3, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@3d
    .line 668
    :cond_1
    iget v3, p0, Landroid/icu/text/DigitList;->count:I

    #@3f
    invoke-direct {p0, v3, v5}, Landroid/icu/text/DigitList;->ensureCapacity(II)V

    #@42
    .line 669
    const/4 v0, 0x0

    #@43
    .local v0, "i":I
    :goto_1
    iget v3, p0, Landroid/icu/text/DigitList;->count:I

    #@45
    if-ge v0, v3, :cond_2

    #@47
    .line 670
    iget-object v3, p0, Landroid/icu/text/DigitList;->digits:[B

    #@49
    add-int v4, v0, v1

    #@4b
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    #@4e
    move-result v4

    #@4f
    int-to-byte v4, v4

    #@50
    aput-byte v4, v3, v0

    #@52
    .line 669
    add-int/lit8 v0, v0, 0x1

    #@54
    goto :goto_1

    #@55
    .line 673
    :cond_2
    if-lez p2, :cond_3

    #@57
    invoke-virtual {p0, p2}, Landroid/icu/text/DigitList;->round(I)V

    #@5a
    .line 652
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 881
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
    .line 882
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    const-string/jumbo v2, "0."

    #@f
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@12
    .line 883
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
    .line 884
    :cond_1
    const-string/jumbo v2, "x10^"

    #@25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    .line 885
    iget v2, p0, Landroid/icu/text/DigitList;->decimalAt:I

    #@2a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    .line 886
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    return-object v2
.end method

.method public wasRounded()Z
    .locals 1

    #@0
    .prologue
    .line 588
    iget-boolean v0, p0, Landroid/icu/text/DigitList;->didRound:Z

    #@2
    return v0
.end method
