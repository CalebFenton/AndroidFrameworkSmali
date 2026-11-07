.class public abstract Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;
.super Ljava/lang/Object;
.source "DecimalQuantity_AbstractBCD.java"

# interfaces
.implements Landroid/icu/impl/number/DecimalQuantity;


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o DOUBLE_MULTIPLIERS:[D

.field protected static final blacklist INFINITY_FLAG:I = 0x2

.field static final blacklist INT64_BCD:[B

.field protected static final blacklist NAN_FLAG:I = 0x4

.field protected static final blacklist NEGATIVE_FLAG:I = 0x1

.field private static final greylist-max-o SECTION_LOWER_EDGE:I = -0x1

.field private static final greylist-max-o SECTION_UPPER_EDGE:I = -0x2


# instance fields
.field public blacklist explicitExactDouble:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected blacklist exponent:I

.field protected blacklist flags:B

.field protected blacklist isApproximate:Z

.field protected blacklist lReqPos:I

.field protected blacklist origDelta:I

.field protected blacklist origDouble:D

.field protected blacklist precision:I

.field protected blacklist rReqPos:I

.field protected blacklist scale:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 24
    nop

    .line 464
    const/16 v0, 0x16

    new-array v0, v0, [D

    fill-array-data v0, :array_14

    sput-object v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->DOUBLE_MULTIPLIERS:[D

    .line 667
    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_70

    sput-object v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->INT64_BCD:[B

    return-void

    :array_14
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4024000000000000L    # 10.0
        0x4059000000000000L    # 100.0
        0x408f400000000000L    # 1000.0
        0x40c3880000000000L    # 10000.0
        0x40f86a0000000000L    # 100000.0
        0x412e848000000000L    # 1000000.0
        0x416312d000000000L    # 1.0E7
        0x4197d78400000000L    # 1.0E8
        0x41cdcd6500000000L    # 1.0E9
        0x4202a05f20000000L    # 1.0E10
        0x42374876e8000000L    # 1.0E11
        0x426d1a94a2000000L    # 1.0E12
        0x42a2309ce5400000L    # 1.0E13
        0x42d6bcc41e900000L    # 1.0E14
        0x430c6bf526340000L    # 1.0E15
        0x4341c37937e08000L    # 1.0E16
        0x4376345785d8a000L    # 1.0E17
        0x43abc16d674ec800L    # 1.0E18
        0x43e158e460913d00L    # 1.0E19
        0x4415af1d78b58c40L    # 1.0E20
        0x444b1ae4d6e2ef50L    # 1.0E21
    .end array-data

    :array_70
    .array-data 1
        0x9t
        0x2t
        0x2t
        0x3t
        0x3t
        0x7t
        0x2t
        0x0t
        0x3t
        0x6t
        0x8t
        0x5t
        0x4t
        0x7t
        0x7t
        0x5t
        0x8t
        0x0t
        0x8t
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    .line 89
    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    .line 95
    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    .line 588
    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->explicitExactDouble:Z

    return-void
.end method

.method private greylist-max-o _setToBigDecimal(Ljava/math/BigDecimal;)V
    .registers 5
    .param p1, "n"    # Ljava/math/BigDecimal;

    .line 612
    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    .line 613
    .local v0, "fracLength":I
    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object p1

    .line 614
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    .line 615
    .local v1, "bi":Ljava/math/BigInteger;
    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToBigInteger(Ljava/math/BigInteger;)V

    .line 616
    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    .line 617
    return-void
.end method

.method private greylist-max-o _setToBigInteger(Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "n"    # Ljava/math/BigInteger;

    .line 429
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x20

    if-ge v0, v1, :cond_10

    .line 430
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->readIntToBcd(I)V

    goto :goto_23

    .line 431
    :cond_10
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_20

    .line 432
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->readLongToBcd(J)V

    goto :goto_23

    .line 434
    :cond_20
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->readBigIntegerToBcd(Ljava/math/BigInteger;)V

    .line 436
    :goto_23
    return-void
.end method

.method private greylist-max-o _setToDoubleFast(D)V
    .registers 11
    .param p1, "n"    # D

    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isApproximate:Z

    .line 494
    iput-wide p1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->origDouble:D

    .line 495
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->origDelta:I

    .line 498
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 499
    .local v0, "ieeeBits":J
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v2, v0

    const/16 v4, 0x34

    shr-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit16 v2, v2, -0x3ff

    .line 502
    .local v2, "exponent":I
    if-gt v2, v4, :cond_22

    double-to-long v3, p1

    long-to-double v3, v3

    cmpl-double v3, v3, p1

    if-nez v3, :cond_22

    .line 503
    double-to-long v3, p1

    invoke-direct {p0, v3, v4}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToLong(J)V

    .line 504
    return-void

    .line 507
    :cond_22
    const/16 v3, -0x3ff

    if-eq v2, v3, :cond_6d

    const/16 v3, 0x400

    if-ne v2, v3, :cond_2b

    goto :goto_6d

    .line 514
    :cond_2b
    rsub-int/lit8 v3, v2, 0x34

    int-to-double v3, v3

    const-wide v5, 0x400a934f0979a371L    # 3.321928094887362

    div-double/2addr v3, v5

    double-to-int v3, v3

    .line 515
    .local v3, "fracLength":I
    const-wide v4, 0x4480f0cf064dd592L    # 1.0E22

    if-ltz v3, :cond_4b

    .line 516
    move v6, v3

    .line 518
    .local v6, "i":I
    :goto_3d
    const/16 v7, 0x16

    if-lt v6, v7, :cond_45

    .line 519
    mul-double/2addr p1, v4

    .line 518
    add-int/lit8 v6, v6, -0x16

    goto :goto_3d

    .line 520
    :cond_45
    sget-object v4, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->DOUBLE_MULTIPLIERS:[D

    aget-wide v4, v4, v6

    mul-double/2addr p1, v4

    .line 521
    .end local v6    # "i":I
    goto :goto_5a

    .line 522
    :cond_4b
    move v6, v3

    .line 524
    .restart local v6    # "i":I
    :goto_4c
    const/16 v7, -0x16

    if-gt v6, v7, :cond_54

    .line 525
    div-double/2addr p1, v4

    .line 524
    add-int/lit8 v6, v6, 0x16

    goto :goto_4c

    .line 526
    :cond_54
    sget-object v4, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->DOUBLE_MULTIPLIERS:[D

    neg-int v5, v6

    aget-wide v4, v4, v5

    div-double/2addr p1, v4

    .line 528
    .end local v6    # "i":I
    :goto_5a
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 529
    .local v4, "result":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_6c

    .line 530
    invoke-direct {p0, v4, v5}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToLong(J)V

    .line 531
    iget v6, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    sub-int/2addr v6, v3

    iput v6, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    .line 533
    :cond_6c
    return-void

    .line 509
    .end local v3    # "fracLength":I
    .end local v4    # "result":J
    :cond_6d
    :goto_6d
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->convertToAccurateDouble()V

    .line 510
    return-void
.end method

.method private greylist-max-o _setToInt(I)V
    .registers 4
    .param p1, "n"    # I

    .line 385
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_a

    .line 386
    int-to-long v0, p1

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->readLongToBcd(J)V

    goto :goto_d

    .line 388
    :cond_a
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->readIntToBcd(I)V

    .line 390
    :goto_d
    return-void
.end method

.method private greylist-max-o _setToLong(J)V
    .registers 5
    .param p1, "n"    # J

    .line 406
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_12

    .line 407
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->readBigIntegerToBcd(Ljava/math/BigInteger;)V

    goto :goto_21

    .line 408
    :cond_12
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1e

    .line 409
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->readIntToBcd(I)V

    goto :goto_21

    .line 411
    :cond_1e
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->readLongToBcd(J)V

    .line 413
    :goto_21
    return-void
.end method

.method private greylist-max-o convertToAccurateDouble()V
    .registers 11

    .line 541
    iget-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->origDouble:D

    .line 542
    .local v0, "n":D
    nop

    .line 543
    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->origDelta:I

    .line 544
    .local v2, "delta":I
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->setBcdToZero()V

    .line 547
    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    .line 549
    .local v3, "dstr":Ljava/lang/String;
    const/16 v4, 0x45

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v5, v6, :cond_51

    .line 551
    nop

    .line 552
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 553
    .local v4, "expPos":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToLong(J)V

    .line 554
    iget v5, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v7, v4, -0x1

    sub-int/2addr v6, v7

    add-int/2addr v6, v9

    add-int/2addr v5, v6

    iput v5, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    .line 555
    .end local v4    # "expPos":I
    goto :goto_c2

    :cond_51
    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_70

    .line 557
    nop

    .line 558
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToLong(J)V

    .line 559
    iget v4, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v7, v5

    add-int/2addr v4, v7

    iput v4, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    goto :goto_c2

    .line 560
    :cond_70
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v9

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_8e

    .line 564
    nop

    .line 565
    nop

    .line 566
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToLong(J)V

    goto :goto_c2

    .line 570
    :cond_8e
    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 571
    .local v4, "decimalPos":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToLong(J)V

    .line 572
    iget v5, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v6, v4, v6

    add-int/2addr v6, v9

    add-int/2addr v5, v6

    iput v5, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    .line 575
    .end local v4    # "decimalPos":I
    :goto_c2
    iget v4, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    add-int/2addr v4, v2

    iput v4, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    .line 576
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->compact()V

    .line 577
    iput-boolean v9, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->explicitExactDouble:Z

    .line 578
    return-void
.end method

.method private greylist-max-o fractionCount()I
    .registers 3

    .line 329
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getLowerDisplayMagnitude()I

    move-result v0

    neg-int v0, v0

    iget v1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private greylist-max-o fractionCountWithoutTrailingZeros()I
    .registers 3

    .line 333
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    neg-int v0, v0

    iget v1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private blacklist roundToMagnitude(ILjava/math/MathContext;Z)V
    .registers 21
    .param p1, "magnitude"    # I
    .param p2, "mathContext"    # Ljava/math/MathContext;
    .param p3, "nickel"    # Z

    .line 769
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    invoke-static {v1, v2}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->safeSubtract(II)I

    move-result v2

    .line 772
    .local v2, "position":I
    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v3

    .line 773
    .local v3, "_mcPrecision":I
    if-lez v3, :cond_19

    iget v4, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    sub-int/2addr v4, v3

    if-le v4, v2, :cond_19

    .line 774
    iget v4, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    sub-int v2, v4, v3

    .line 778
    :cond_19
    invoke-virtual {v0, v2}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v4

    .line 780
    .local v4, "trailingDigit":B
    const/4 v5, 0x5

    if-gtz v2, :cond_2c

    iget-boolean v6, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isApproximate:Z

    if-nez v6, :cond_2c

    if-eqz p3, :cond_2a

    if-eqz v4, :cond_2a

    if-ne v4, v5, :cond_2c

    :cond_2a
    goto/16 :goto_1c5

    .line 782
    :cond_2c
    iget v6, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    if-nez v6, :cond_32

    goto/16 :goto_1c5

    .line 787
    :cond_32
    const/4 v6, 0x1

    invoke-static {v2, v6}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->safeSubtract(II)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v7

    .line 795
    .local v7, "leadingDigit":B
    iget-boolean v8, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isApproximate:Z

    const/16 v9, 0x9

    const/4 v10, 0x7

    const/4 v11, 0x0

    const/4 v12, 0x2

    if-nez v8, :cond_7a

    .line 796
    if-eqz p3, :cond_5c

    if-eq v4, v12, :cond_5c

    if-eq v4, v10, :cond_5c

    .line 798
    if-ge v4, v12, :cond_4f

    .line 800
    const/4 v8, 0x1

    .local v8, "section":I
    goto/16 :goto_13c

    .line 801
    .end local v8    # "section":I
    :cond_4f
    if-ge v4, v5, :cond_54

    .line 803
    const/4 v8, 0x3

    .restart local v8    # "section":I
    goto/16 :goto_13c

    .line 804
    .end local v8    # "section":I
    :cond_54
    if-ge v4, v10, :cond_59

    .line 806
    const/4 v8, 0x1

    .restart local v8    # "section":I
    goto/16 :goto_13c

    .line 809
    .end local v8    # "section":I
    :cond_59
    const/4 v8, 0x3

    .restart local v8    # "section":I
    goto/16 :goto_13c

    .line 811
    .end local v8    # "section":I
    :cond_5c
    if-ge v7, v5, :cond_61

    .line 813
    const/4 v8, 0x1

    .restart local v8    # "section":I
    goto/16 :goto_13c

    .line 814
    .end local v8    # "section":I
    :cond_61
    if-le v7, v5, :cond_66

    .line 816
    const/4 v8, 0x3

    .restart local v8    # "section":I
    goto/16 :goto_13c

    .line 819
    .end local v8    # "section":I
    :cond_66
    const/4 v8, 0x2

    .line 820
    .restart local v8    # "section":I
    invoke-static {v2, v12}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->safeSubtract(II)I

    move-result v13

    .local v13, "p":I
    :goto_6b
    if-ltz v13, :cond_78

    .line 821
    invoke-virtual {v0, v13}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v14

    if-eqz v14, :cond_75

    .line 822
    const/4 v8, 0x3

    .line 823
    goto :goto_78

    .line 820
    :cond_75
    add-int/lit8 v13, v13, -0x1

    goto :goto_6b

    .end local v13    # "p":I
    :cond_78
    :goto_78
    goto/16 :goto_13c

    .line 828
    .end local v8    # "section":I
    :cond_7a
    invoke-static {v2, v12}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->safeSubtract(II)I

    move-result v8

    .line 829
    .local v8, "p":I
    iget v13, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    add-int/lit8 v13, v13, -0xe

    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 830
    .local v13, "minP":I
    if-nez v7, :cond_9d

    if-eqz p3, :cond_8e

    if-eqz v4, :cond_8e

    if-ne v4, v5, :cond_9d

    .line 831
    :cond_8e
    const/4 v14, -0x1

    .line 832
    .local v14, "section":I
    :goto_8f
    if-lt v8, v13, :cond_f9

    .line 833
    invoke-virtual {v0, v8}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v15

    if-eqz v15, :cond_9a

    .line 834
    const/4 v14, 0x1

    .line 835
    goto/16 :goto_f9

    .line 832
    :cond_9a
    add-int/lit8 v8, v8, -0x1

    goto :goto_8f

    .line 838
    .end local v14    # "section":I
    :cond_9d
    const/4 v14, 0x4

    if-ne v7, v14, :cond_b4

    if-eqz p3, :cond_a6

    if-eq v4, v12, :cond_a6

    if-ne v4, v10, :cond_b4

    .line 839
    :cond_a6
    const/4 v14, 0x2

    .line 840
    .restart local v14    # "section":I
    :goto_a7
    if-lt v8, v13, :cond_f9

    .line 841
    invoke-virtual {v0, v8}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v15

    if-eq v15, v9, :cond_b1

    .line 842
    const/4 v14, 0x1

    .line 843
    goto :goto_f9

    .line 840
    :cond_b1
    add-int/lit8 v8, v8, -0x1

    goto :goto_a7

    .line 846
    .end local v14    # "section":I
    :cond_b4
    if-ne v7, v5, :cond_ca

    if-eqz p3, :cond_bc

    if-eq v4, v12, :cond_bc

    if-ne v4, v10, :cond_ca

    .line 847
    :cond_bc
    const/4 v14, 0x2

    .line 848
    .restart local v14    # "section":I
    :goto_bd
    if-lt v8, v13, :cond_f9

    .line 849
    invoke-virtual {v0, v8}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v15

    if-eqz v15, :cond_c7

    .line 850
    const/4 v14, 0x3

    .line 851
    goto :goto_f9

    .line 848
    :cond_c7
    add-int/lit8 v8, v8, -0x1

    goto :goto_bd

    .line 854
    .end local v14    # "section":I
    :cond_ca
    if-ne v7, v9, :cond_e0

    if-eqz p3, :cond_d2

    if-eq v4, v14, :cond_d2

    if-ne v4, v9, :cond_e0

    .line 855
    :cond_d2
    const/4 v14, -0x2

    .line 856
    .restart local v14    # "section":I
    :goto_d3
    if-lt v8, v13, :cond_f9

    .line 857
    invoke-virtual {v0, v8}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v15

    if-eq v15, v9, :cond_dd

    .line 858
    const/4 v14, 0x3

    .line 859
    goto :goto_f9

    .line 856
    :cond_dd
    add-int/lit8 v8, v8, -0x1

    goto :goto_d3

    .line 862
    .end local v14    # "section":I
    :cond_e0
    if-eqz p3, :cond_f4

    if-eq v4, v12, :cond_f4

    if-eq v4, v10, :cond_f4

    .line 864
    if-ge v4, v12, :cond_ea

    .line 866
    const/4 v14, 0x1

    .restart local v14    # "section":I
    goto :goto_f9

    .line 867
    .end local v14    # "section":I
    :cond_ea
    if-ge v4, v5, :cond_ee

    .line 869
    const/4 v14, 0x3

    .restart local v14    # "section":I
    goto :goto_f9

    .line 870
    .end local v14    # "section":I
    :cond_ee
    if-ge v4, v10, :cond_f2

    .line 872
    const/4 v14, 0x1

    .restart local v14    # "section":I
    goto :goto_f9

    .line 875
    .end local v14    # "section":I
    :cond_f2
    const/4 v14, 0x3

    .restart local v14    # "section":I
    goto :goto_f9

    .line 877
    .end local v14    # "section":I
    :cond_f4
    if-ge v7, v5, :cond_f8

    .line 879
    const/4 v14, 0x1

    .restart local v14    # "section":I
    goto :goto_f9

    .line 882
    .end local v14    # "section":I
    :cond_f8
    const/4 v14, 0x3

    .line 885
    .restart local v14    # "section":I
    :cond_f9
    :goto_f9
    nop

    .line 886
    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/RoundingMode;->ordinal()I

    move-result v15

    invoke-static {v15}, Landroid/icu/impl/number/RoundingUtils;->roundsAtMidpoint(I)Z

    move-result v15

    .line 887
    .local v15, "roundsAtMidpoint":Z
    invoke-static {v2, v6}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->safeSubtract(II)I

    move-result v9

    iget v6, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    add-int/lit8 v6, v6, -0xe

    if-lt v9, v6, :cond_1c6

    if-eqz v15, :cond_118

    if-eq v14, v12, :cond_115

    goto :goto_118

    :cond_115
    :goto_115
    move v9, v13

    goto/16 :goto_1c7

    :cond_118
    :goto_118
    if-nez v15, :cond_11d

    if-gez v14, :cond_11d

    goto :goto_115

    .line 898
    :cond_11d
    iput-boolean v11, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isApproximate:Z

    .line 899
    move v9, v13

    .end local v13    # "minP":I
    .local v9, "minP":I
    const-wide/16 v12, 0x0

    iput-wide v12, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->origDouble:D

    .line 900
    iput v11, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->origDelta:I

    .line 902
    if-gtz v2, :cond_12f

    if-eqz p3, :cond_12e

    if-eqz v4, :cond_12e

    if-ne v4, v5, :cond_12f

    .line 904
    :cond_12e
    return-void

    .line 908
    :cond_12f
    const/4 v12, -0x1

    if-ne v14, v12, :cond_134

    .line 909
    const/4 v12, 0x1

    .end local v14    # "section":I
    .local v12, "section":I
    goto :goto_135

    .line 908
    .end local v12    # "section":I
    .restart local v14    # "section":I
    :cond_134
    move v12, v14

    .line 910
    .end local v14    # "section":I
    .restart local v12    # "section":I
    :goto_135
    const/4 v13, -0x2

    if-ne v12, v13, :cond_13b

    .line 911
    const/4 v12, 0x3

    move v8, v12

    goto :goto_13c

    .line 910
    :cond_13b
    move v8, v12

    .line 915
    .end local v9    # "minP":I
    .end local v12    # "section":I
    .end local v15    # "roundsAtMidpoint":Z
    .local v8, "section":I
    :goto_13c
    if-eqz p3, :cond_151

    .line 916
    const/4 v6, 0x2

    if-lt v4, v6, :cond_14f

    if-gt v4, v10, :cond_14f

    const/4 v9, 0x3

    if-ne v4, v6, :cond_148

    if-ne v8, v9, :cond_14f

    :cond_148
    if-ne v4, v10, :cond_14d

    if-ne v8, v9, :cond_14d

    goto :goto_14f

    :cond_14d
    move v6, v11

    goto :goto_158

    :cond_14f
    :goto_14f
    const/4 v6, 0x1

    goto :goto_158

    .line 919
    :cond_151
    rem-int/lit8 v6, v4, 0x2

    if-nez v6, :cond_157

    const/4 v6, 0x1

    goto :goto_158

    :cond_157
    move v6, v11

    :goto_158
    nop

    .line 921
    .local v6, "isEven":Z
    nop

    .line 922
    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isNegative()Z

    move-result v9

    .line 924
    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/RoundingMode;->ordinal()I

    move-result v10

    .line 921
    invoke-static {v6, v9, v8, v10, v0}, Landroid/icu/impl/number/RoundingUtils;->getRoundingDirection(ZZIILjava/lang/Object;)Z

    move-result v9

    .line 928
    .local v9, "roundDown":Z
    iget v10, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    if-lt v2, v10, :cond_175

    .line 929
    nop

    .line 930
    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->setBcdToZero()V

    .line 931
    iput v1, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    goto :goto_178

    .line 933
    :cond_175
    invoke-virtual {v0, v2}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->shiftRight(I)V

    .line 936
    :goto_178
    if-eqz p3, :cond_19c

    .line 937
    if-ge v4, v5, :cond_185

    if-eqz v9, :cond_185

    .line 938
    invoke-virtual {v0, v11, v11}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->setDigitPos(IB)V

    .line 939
    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->compact()V

    .line 940
    return-void

    .line 941
    :cond_185
    if-lt v4, v5, :cond_191

    if-nez v9, :cond_191

    .line 942
    const/16 v5, 0x9

    invoke-virtual {v0, v11, v5}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->setDigitPos(IB)V

    .line 943
    const/16 v4, 0x9

    goto :goto_19c

    .line 946
    :cond_191
    invoke-virtual {v0, v11, v5}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->setDigitPos(IB)V

    .line 948
    iget v5, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    if-nez v5, :cond_19b

    .line 949
    const/4 v5, 0x1

    iput v5, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    .line 952
    :cond_19b
    return-void

    .line 957
    :cond_19c
    :goto_19c
    if-nez v9, :cond_1c2

    .line 958
    const/16 v5, 0x9

    if-ne v4, v5, :cond_1af

    .line 959
    const/4 v10, 0x0

    .line 962
    .local v10, "bubblePos":I
    :goto_1a3
    invoke-virtual {v0, v10}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v12

    if-ne v12, v5, :cond_1ac

    add-int/lit8 v10, v10, 0x1

    goto :goto_1a3

    .line 964
    :cond_1ac
    invoke-virtual {v0, v10}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->shiftRight(I)V

    .line 966
    .end local v10    # "bubblePos":I
    :cond_1af
    invoke-virtual {v0, v11}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v5

    .line 967
    .local v5, "digit0":B
    nop

    .line 968
    add-int/lit8 v10, v5, 0x1

    int-to-byte v10, v10

    invoke-virtual {v0, v11, v10}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->setDigitPos(IB)V

    .line 969
    iget v10, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    const/16 v16, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    .line 972
    .end local v5    # "digit0":B
    :cond_1c2
    invoke-virtual {v0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->compact()V

    .line 974
    .end local v6    # "isEven":Z
    .end local v7    # "leadingDigit":B
    .end local v8    # "section":I
    .end local v9    # "roundDown":Z
    :goto_1c5
    return-void

    .line 887
    .restart local v7    # "leadingDigit":B
    .local v8, "p":I
    .restart local v13    # "minP":I
    .restart local v14    # "section":I
    .restart local v15    # "roundsAtMidpoint":Z
    :cond_1c6
    move v9, v13

    .line 892
    .end local v13    # "minP":I
    .local v9, "minP":I
    :goto_1c7
    invoke-direct {v0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->convertToAccurateDouble()V

    .line 893
    invoke-direct/range {p0 .. p3}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->roundToMagnitude(ILjava/math/MathContext;Z)V

    .line 894
    return-void
.end method

.method private static greylist-max-o safeSubtract(II)I
    .registers 4
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 736
    sub-int v0, p0, p1

    .line 737
    .local v0, "diff":I
    if-gez p1, :cond_a

    if-ge v0, p0, :cond_a

    .line 738
    const v1, 0x7fffffff

    return v1

    .line 739
    :cond_a
    if-lez p1, :cond_11

    if-le v0, p0, :cond_11

    .line 740
    const/high16 v1, -0x80000000

    return v1

    .line 741
    :cond_11
    return v0
.end method

.method private blacklist toExponentString(Ljava/lang/StringBuilder;)V
    .registers 7
    .param p1, "result"    # Ljava/lang/StringBuilder;

    .line 1134
    nop

    .line 1135
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1136
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1139
    :cond_c
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    iget v1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 1140
    .local v0, "upper":I
    iget v1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    .line 1141
    .local v1, "lower":I
    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1f

    .line 1142
    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    add-int/lit8 v0, v2, -0x1

    .line 1144
    :cond_1f
    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    if-le v1, v2, :cond_25

    .line 1145
    iget v1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    .line 1148
    :cond_25
    move v2, v0

    .line 1149
    .local v2, "p":I
    const/16 v3, 0x30

    if-gez v2, :cond_2d

    .line 1150
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1152
    :cond_2d
    :goto_2d
    if-ltz v2, :cond_3f

    .line 1153
    iget v4, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    sub-int v4, v2, v4

    invoke-virtual {p0, v4}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v4

    add-int/2addr v4, v3

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1152
    add-int/lit8 v2, v2, -0x1

    goto :goto_2d

    .line 1155
    :cond_3f
    if-gez v1, :cond_46

    .line 1156
    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1158
    :cond_46
    :goto_46
    if-lt v2, v1, :cond_58

    .line 1159
    iget v4, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    sub-int v4, v2, v4

    invoke-virtual {p0, v4}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v4

    add-int/2addr v4, v3

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1158
    add-int/lit8 v2, v2, -0x1

    goto :goto_46

    .line 1162
    :cond_58
    iget v3, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    if-eqz v3, :cond_66

    .line 1163
    const/16 v3, 0x63

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1164
    iget v3, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1166
    :cond_66
    return-void
.end method


# virtual methods
.method public blacklist adjustExponent(I)V
    .registers 3
    .param p1, "delta"    # I

    .line 235
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    .line 236
    return-void
.end method

.method public blacklist adjustMagnitude(I)V
    .registers 4
    .param p1, "delta"    # I

    .line 220
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    if-eqz v0, :cond_1b

    .line 221
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    invoke-static {v0, p1}, Landroid/icu/impl/Utility;->addExact(II)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    .line 222
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->origDelta:I

    invoke-static {v0, p1}, Landroid/icu/impl/Utility;->addExact(II)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->origDelta:I

    .line 224
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    iget v1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    invoke-static {v0, v1}, Landroid/icu/impl/Utility;->addExact(II)I

    .line 226
    :cond_1b
    return-void
.end method

.method public blacklist appendDigit(BIZ)V
    .registers 6
    .param p1, "value"    # B
    .param p2, "leadingZeros"    # I
    .param p3, "appendAsInteger"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1006
    nop

    .line 1010
    if-nez p1, :cond_11

    .line 1011
    if-eqz p3, :cond_10

    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    if-eqz v0, :cond_10

    .line 1012
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    add-int/lit8 v1, p2, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    .line 1014
    :cond_10
    return-void

    .line 1018
    :cond_11
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    const/4 v1, 0x0

    if-lez v0, :cond_1d

    .line 1019
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    add-int/2addr p2, v0

    .line 1020
    if-eqz p3, :cond_1d

    .line 1021
    iput v1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    .line 1026
    :cond_1d
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->shiftLeft(I)V

    .line 1027
    invoke-virtual {p0, v1, p1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->setDigitPos(IB)V

    .line 1030
    if-eqz p3, :cond_2e

    .line 1031
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    add-int/lit8 v1, p2, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    .line 1033
    :cond_2e
    return-void
.end method

.method public blacklist applyMaxInteger(I)V
    .registers 4
    .param p1, "maxInt"    # I

    .line 148
    nop

    .line 150
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    if-nez v0, :cond_6

    .line 151
    return-void

    .line 154
    :cond_6
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    if-gt p1, v0, :cond_e

    .line 155
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->setBcdToZero()V

    .line 156
    return-void

    .line 159
    :cond_e
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getMagnitude()I

    move-result v0

    .line 160
    .local v0, "magnitude":I
    if-gt p1, v0, :cond_1e

    .line 161
    sub-int v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->popFromLeft(I)V

    .line 162
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->compact()V

    .line 164
    :cond_1e
    return-void
.end method

.method protected abstract blacklist bcdToBigDecimal()Ljava/math/BigDecimal;
.end method

.method public blacklist clear()Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;
    .registers 2

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    .line 114
    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    .line 115
    iput-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    .line 116
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->setBcdToZero()V

    .line 117
    return-object p0
.end method

.method protected abstract blacklist compact()V
.end method

.method protected abstract blacklist copyBcdFrom(Landroid/icu/impl/number/DecimalQuantity;)V
.end method

.method public blacklist copyFrom(Landroid/icu/impl/number/DecimalQuantity;)V
    .registers 5
    .param p1, "_other"    # Landroid/icu/impl/number/DecimalQuantity;

    .line 99
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->copyBcdFrom(Landroid/icu/impl/number/DecimalQuantity;)V

    .line 100
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;

    .line 101
    .local v0, "other":Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;
    iget v1, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    iput v1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    .line 102
    iget v1, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    iput v1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    .line 103
    iget v1, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    iput v1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    .line 104
    iget v1, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    iput v1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    .line 105
    iget-byte v1, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    iput-byte v1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    .line 106
    iget-wide v1, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->origDouble:D

    iput-wide v1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->origDouble:D

    .line 107
    iget v1, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->origDelta:I

    iput v1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->origDelta:I

    .line 108
    iget-boolean v1, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isApproximate:Z

    iput-boolean v1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isApproximate:Z

    .line 109
    iget v1, v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    iput v1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    .line 110
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "other"    # Ljava/lang/Object;

    .line 1170
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1171
    return v0

    .line 1173
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 1174
    return v1

    .line 1176
    :cond_8
    instance-of v2, p1, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;

    if-nez v2, :cond_d

    .line 1177
    return v1

    .line 1179
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;

    .line 1181
    .local v2, "_other":Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;
    iget v3, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    iget v4, v2, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    if-ne v3, v4, :cond_36

    iget v3, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    iget v4, v2, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    if-ne v3, v4, :cond_36

    iget-byte v3, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    iget-byte v4, v2, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    if-ne v3, v4, :cond_36

    iget v3, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    iget v4, v2, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    if-ne v3, v4, :cond_36

    iget v3, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    iget v4, v2, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    if-ne v3, v4, :cond_36

    iget-boolean v3, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isApproximate:Z

    iget-boolean v4, v2, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isApproximate:Z

    if-ne v3, v4, :cond_36

    move v3, v0

    goto :goto_37

    :cond_36
    move v3, v1

    .line 1188
    .local v3, "basicEquals":Z
    :goto_37
    if-nez v3, :cond_3a

    .line 1189
    return v1

    .line 1192
    :cond_3a
    iget v4, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    if-nez v4, :cond_3f

    .line 1193
    return v0

    .line 1194
    :cond_3f
    iget-boolean v4, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isApproximate:Z

    if-eqz v4, :cond_54

    .line 1195
    iget-wide v4, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->origDouble:D

    iget-wide v6, v2, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->origDouble:D

    cmpl-double v4, v4, v6

    if-nez v4, :cond_52

    iget v4, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->origDelta:I

    iget v5, v2, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->origDelta:I

    if-ne v4, v5, :cond_52

    goto :goto_53

    :cond_52
    move v0, v1

    :goto_53
    return v0

    .line 1197
    :cond_54
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getUpperDisplayMagnitude()I

    move-result v4

    .local v4, "m":I
    :goto_58
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getLowerDisplayMagnitude()I

    move-result v5

    if-lt v4, v5, :cond_6c

    .line 1198
    invoke-virtual {p0, v4}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigit(I)B

    move-result v5

    invoke-virtual {v2, v4}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigit(I)B

    move-result v6

    if-eq v5, v6, :cond_69

    .line 1199
    return v1

    .line 1197
    :cond_69
    add-int/lit8 v4, v4, -0x1

    goto :goto_58

    .line 1202
    .end local v4    # "m":I
    :cond_6c
    return v0
.end method

.method public blacklist fitsInLong()Z
    .registers 7

    .line 673
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isInfinite()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4b

    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_4b

    .line 676
    :cond_e
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isZeroish()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    .line 677
    return v2

    .line 679
    :cond_16
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    iget v3, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    add-int/2addr v0, v3

    if-gez v0, :cond_1e

    .line 680
    return v1

    .line 682
    :cond_1e
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getMagnitude()I

    move-result v0

    .line 683
    .local v0, "magnitude":I
    const/16 v3, 0x12

    if-ge v0, v3, :cond_27

    .line 684
    return v2

    .line 686
    :cond_27
    if-le v0, v3, :cond_2a

    .line 687
    return v1

    .line 691
    :cond_2a
    const/4 v3, 0x0

    .local v3, "p":I
    :goto_2b
    iget v4, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    if-ge v3, v4, :cond_46

    .line 692
    rsub-int/lit8 v4, v3, 0x12

    invoke-virtual {p0, v4}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigit(I)B

    move-result v4

    .line 693
    .local v4, "digit":B
    sget-object v5, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->INT64_BCD:[B

    aget-byte v5, v5, v3

    if-ge v4, v5, :cond_3c

    .line 694
    return v2

    .line 695
    :cond_3c
    sget-object v5, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->INT64_BCD:[B

    aget-byte v5, v5, v3

    if-le v4, v5, :cond_43

    .line 696
    return v1

    .line 691
    .end local v4    # "digit":B
    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 700
    .end local v3    # "p":I
    :cond_46
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isNegative()Z

    move-result v1

    return v1

    .line 674
    .end local v0    # "magnitude":I
    :cond_4b
    :goto_4b
    return v1
.end method

.method public blacklist getDigit(I)B
    .registers 3
    .param p1, "magnitude"    # I

    .line 323
    nop

    .line 325
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v0

    return v0
.end method

.method protected abstract blacklist getDigitPos(I)B
.end method

.method public blacklist getExponent()I
    .registers 2

    .line 230
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    return v0
.end method

.method public blacklist getLowerDisplayMagnitude()I
    .registers 3

    .line 312
    nop

    .line 314
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    .line 315
    .local v0, "magnitude":I
    iget v1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    if-ge v1, v0, :cond_a

    iget v1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    goto :goto_b

    :cond_a
    move v1, v0

    .line 316
    .local v1, "result":I
    :goto_b
    return v1
.end method

.method public blacklist getMagnitude()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .line 211
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    if-eqz v0, :cond_c

    .line 214
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    iget v1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 212
    :cond_c
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Magnitude is not well-defined for zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getPluralOperand(Landroid/icu/text/PluralRules$Operand;)D
    .registers 4
    .param p1, "operand"    # Landroid/icu/text/PluralRules$Operand;

    .line 265
    nop

    .line 267
    sget-object v0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD$1;->$SwitchMap$android$icu$text$PluralRules$Operand:[I

    invoke-virtual {p1}, Landroid/icu/text/PluralRules$Operand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_4e

    .line 285
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->toDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0

    .line 283
    :pswitch_16
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getExponent()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 280
    :pswitch_1c
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getExponent()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 278
    :pswitch_22
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->fractionCountWithoutTrailingZeros()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 276
    :pswitch_28
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->fractionCount()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 274
    :pswitch_2e
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->toFractionLong(Z)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 272
    :pswitch_35
    invoke-virtual {p0, v1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->toFractionLong(Z)J

    move-result-wide v0

    long-to-double v0, v0

    return-wide v0

    .line 270
    :pswitch_3b
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-virtual {p0, v1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->toLong(Z)J

    move-result-wide v0

    neg-long v0, v0

    goto :goto_4b

    :cond_47
    invoke-virtual {p0, v1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->toLong(Z)J

    move-result-wide v0

    :goto_4b
    long-to-double v0, v0

    return-wide v0

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_35
        :pswitch_2e
        :pswitch_28
        :pswitch_22
        :pswitch_1c
        :pswitch_16
    .end packed-switch
.end method

.method public blacklist getPositionFingerprint()J
    .registers 6

    .line 168
    const-wide/16 v0, 0x0

    .line 169
    .local v0, "fingerprint":J
    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    xor-long/2addr v0, v2

    .line 170
    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    .line 171
    return-wide v0
.end method

.method public blacklist getStandardPlural(Landroid/icu/text/PluralRules;)Landroid/icu/impl/StandardPlural;
    .registers 4
    .param p1, "rules"    # Landroid/icu/text/PluralRules;

    .line 251
    if-nez p1, :cond_5

    .line 253
    sget-object v0, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    return-object v0

    .line 256
    :cond_5
    invoke-virtual {p1, p0}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "ruleString":Ljava/lang/String;
    invoke-static {v0}, Landroid/icu/impl/StandardPlural;->orOtherFromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getUpperDisplayMagnitude()I
    .registers 4

    .line 301
    nop

    .line 303
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    iget v1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    add-int/2addr v0, v1

    .line 304
    .local v0, "magnitude":I
    iget v1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    if-le v1, v0, :cond_d

    iget v1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    goto :goto_e

    :cond_d
    move v1, v0

    .line 305
    .local v1, "result":I
    :goto_e
    add-int/lit8 v2, v1, -0x1

    return v2
.end method

.method public blacklist isHasIntegerValue()Z
    .registers 2

    .line 246
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist isInfinite()Z
    .registers 2

    .line 358
    iget-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isNaN()Z
    .registers 2

    .line 363
    iget-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist isNegative()Z
    .registers 3

    .line 338
    iget-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public blacklist isZeroish()Z
    .registers 2

    .line 368
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist multiplyBy(Ljava/math/BigDecimal;)V
    .registers 3
    .param p1, "multiplicand"    # Ljava/math/BigDecimal;

    .line 196
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isZeroish()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 197
    return-void

    .line 199
    :cond_7
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    .line 200
    .local v0, "temp":Ljava/math/BigDecimal;
    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 201
    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->setToBigDecimal(Ljava/math/BigDecimal;)V

    .line 202
    return-void
.end method

.method public blacklist negate()V
    .registers 2

    .line 206
    iget-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    xor-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    .line 207
    return-void
.end method

.method protected abstract blacklist popFromLeft(I)V
.end method

.method public blacklist populateUFieldPosition(Ljava/text/FieldPosition;)V
    .registers 6
    .param p1, "fp"    # Ljava/text/FieldPosition;

    .line 291
    instance-of v0, p1, Landroid/icu/text/UFieldPosition;

    if-eqz v0, :cond_18

    .line 292
    move-object v0, p1

    check-cast v0, Landroid/icu/text/UFieldPosition;

    sget-object v1, Landroid/icu/text/PluralRules$Operand;->v:Landroid/icu/text/PluralRules$Operand;

    invoke-virtual {p0, v1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getPluralOperand(Landroid/icu/text/PluralRules$Operand;)D

    move-result-wide v1

    double-to-int v1, v1

    sget-object v2, Landroid/icu/text/PluralRules$Operand;->f:Landroid/icu/text/PluralRules$Operand;

    .line 293
    invoke-virtual {p0, v2}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getPluralOperand(Landroid/icu/text/PluralRules$Operand;)D

    move-result-wide v2

    double-to-long v2, v2

    .line 292
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/UFieldPosition;->setFractionDigits(IJ)V

    .line 295
    :cond_18
    return-void
.end method

.method protected abstract blacklist readBigIntegerToBcd(Ljava/math/BigInteger;)V
.end method

.method protected abstract blacklist readIntToBcd(I)V
.end method

.method protected abstract blacklist readLongToBcd(J)V
.end method

.method public blacklist resetExponent()V
    .registers 2

    .line 240
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->adjustMagnitude(I)V

    .line 241
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    .line 242
    return-void
.end method

.method public blacklist roundToIncrement(Ljava/math/BigDecimal;Ljava/math/MathContext;)V
    .registers 6
    .param p1, "roundingIncrement"    # Ljava/math/BigDecimal;
    .param p2, "mathContext"    # Ljava/math/MathContext;

    .line 180
    nop

    .line 183
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    .line 184
    .local v0, "temp":Ljava/math/BigDecimal;
    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 185
    invoke-virtual {v1, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 186
    invoke-virtual {v1, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    if-nez v1, :cond_20

    .line 188
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->setBcdToZero()V

    goto :goto_23

    .line 190
    :cond_20
    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->setToBigDecimal(Ljava/math/BigDecimal;)V

    .line 192
    :goto_23
    return-void
.end method

.method public blacklist roundToInfinity()V
    .registers 2

    .line 978
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isApproximate:Z

    if-eqz v0, :cond_7

    .line 979
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->convertToAccurateDouble()V

    .line 981
    :cond_7
    return-void
.end method

.method public blacklist roundToMagnitude(ILjava/math/MathContext;)V
    .registers 4
    .param p1, "magnitude"    # I
    .param p2, "mathContext"    # Ljava/math/MathContext;

    .line 763
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->roundToMagnitude(ILjava/math/MathContext;Z)V

    .line 764
    return-void
.end method

.method public blacklist roundToNickel(ILjava/math/MathContext;)V
    .registers 4
    .param p1, "magnitude"    # I
    .param p2, "mathContext"    # Ljava/math/MathContext;

    .line 758
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->roundToMagnitude(ILjava/math/MathContext;Z)V

    .line 759
    return-void
.end method

.method protected abstract blacklist setBcdToZero()V
.end method

.method protected abstract blacklist setDigitPos(IB)V
.end method

.method public blacklist setMinFraction(I)V
    .registers 3
    .param p1, "minFrac"    # I

    .line 138
    nop

    .line 142
    neg-int v0, p1

    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    .line 143
    return-void
.end method

.method public blacklist setMinInteger(I)V
    .registers 3
    .param p1, "minInt"    # I

    .line 123
    nop

    .line 127
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    if-ge p1, v0, :cond_7

    .line 128
    iget p1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    .line 132
    :cond_7
    iput p1, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    .line 133
    return-void
.end method

.method public blacklist setToBigDecimal(Ljava/math/BigDecimal;)V
    .registers 4
    .param p1, "n"    # Ljava/math/BigDecimal;

    .line 599
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->setBcdToZero()V

    .line 600
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    .line 601
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    .line 602
    iget-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    .line 603
    invoke-virtual {p1}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object p1

    .line 605
    :cond_18
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-eqz v0, :cond_24

    .line 606
    invoke-direct {p0, p1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToBigDecimal(Ljava/math/BigDecimal;)V

    .line 607
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->compact()V

    .line 609
    :cond_24
    return-void
.end method

.method public blacklist setToBigInteger(Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "n"    # Ljava/math/BigInteger;

    .line 416
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->setBcdToZero()V

    .line 417
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    .line 418
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    .line 419
    iget-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    .line 420
    invoke-virtual {p1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p1

    .line 422
    :cond_18
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-eqz v0, :cond_24

    .line 423
    invoke-direct {p0, p1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToBigInteger(Ljava/math/BigInteger;)V

    .line 424
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->compact()V

    .line 426
    :cond_24
    return-void
.end method

.method public blacklist setToDouble(D)V
    .registers 7
    .param p1, "n"    # D

    .line 445
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->setBcdToZero()V

    .line 446
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    .line 450
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_18

    .line 451
    iget-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    .line 452
    neg-double p1, p1

    .line 454
    :cond_18
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 455
    iget-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    goto :goto_40

    .line 456
    :cond_26
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 457
    iget-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    goto :goto_40

    .line 458
    :cond_34
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_40

    .line 459
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToDoubleFast(D)V

    .line 460
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->compact()V

    .line 462
    :cond_40
    :goto_40
    return-void
.end method

.method public blacklist setToInt(I)V
    .registers 3
    .param p1, "n"    # I

    .line 372
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->setBcdToZero()V

    .line 373
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    .line 374
    if-gez p1, :cond_10

    .line 375
    iget-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    .line 376
    neg-int p1, p1

    .line 378
    :cond_10
    if-eqz p1, :cond_18

    .line 379
    invoke-direct {p0, p1}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToInt(I)V

    .line 380
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->compact()V

    .line 382
    :cond_18
    return-void
.end method

.method public blacklist setToLong(J)V
    .registers 6
    .param p1, "n"    # J

    .line 393
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->setBcdToZero()V

    .line 394
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    .line 395
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_14

    .line 396
    iget-byte v2, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->flags:B

    .line 397
    neg-long p1, p1

    .line 399
    :cond_14
    cmp-long v0, p1, v0

    if-eqz v0, :cond_1e

    .line 400
    invoke-direct {p0, p1, p2}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->_setToLong(J)V

    .line 401
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->compact()V

    .line 403
    :cond_1e
    return-void
.end method

.method protected abstract blacklist shiftLeft(I)V
.end method

.method protected abstract blacklist shiftRight(I)V
.end method

.method public blacklist signum()Landroid/icu/impl/number/Modifier$Signum;
    .registers 4

    .line 343
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isZeroish()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 344
    .local v0, "isZero":Z
    :goto_f
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isNegative()Z

    move-result v1

    .line 345
    .local v1, "isNeg":Z
    if-eqz v0, :cond_1a

    if-eqz v1, :cond_1a

    .line 346
    sget-object v2, Landroid/icu/impl/number/Modifier$Signum;->NEG_ZERO:Landroid/icu/impl/number/Modifier$Signum;

    return-object v2

    .line 347
    :cond_1a
    if-eqz v0, :cond_1f

    .line 348
    sget-object v2, Landroid/icu/impl/number/Modifier$Signum;->POS_ZERO:Landroid/icu/impl/number/Modifier$Signum;

    return-object v2

    .line 349
    :cond_1f
    if-eqz v1, :cond_24

    .line 350
    sget-object v2, Landroid/icu/impl/number/Modifier$Signum;->NEG:Landroid/icu/impl/number/Modifier$Signum;

    return-object v2

    .line 352
    :cond_24
    sget-object v2, Landroid/icu/impl/number/Modifier$Signum;->POS:Landroid/icu/impl/number/Modifier$Signum;

    return-object v2
.end method

.method public blacklist toBigDecimal()Ljava/math/BigDecimal;
    .registers 2

    .line 728
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isApproximate:Z

    if-eqz v0, :cond_7

    .line 730
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->convertToAccurateDouble()V

    .line 732
    :cond_7
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->bcdToBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toDouble()D
    .registers 4

    .line 713
    nop

    .line 715
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 716
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 717
    :cond_a
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 718
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_19

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_1b

    :cond_19
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_1b
    return-wide v0

    .line 721
    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 722
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->toScientificString(Ljava/lang/StringBuilder;)V

    .line 723
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    return-wide v1
.end method

.method public blacklist toExponentString()Ljava/lang/String;
    .registers 3

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1129
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->toExponentString(Ljava/lang/StringBuilder;)V

    .line 1130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist toFractionLong(Z)J
    .registers 12
    .param p1, "includeTrailingZeros"    # Z

    .line 648
    const-wide/16 v0, 0x0

    .line 649
    .local v0, "result":J
    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    rsub-int/lit8 v2, v2, -0x1

    .line 650
    .local v2, "magnitude":I
    iget v3, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    .line 651
    .local v3, "lowerMagnitude":I
    if-eqz p1, :cond_10

    .line 652
    iget v4, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 655
    :cond_10
    :goto_10
    const-wide/16 v4, 0xa

    if-lt v2, v3, :cond_2d

    long-to-double v6, v0

    const-wide v8, 0x4376345785d8a000L    # 1.0E17

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_2d

    .line 656
    mul-long/2addr v4, v0

    iget v6, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    sub-int v6, v2, v6

    invoke-virtual {p0, v6}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v6

    int-to-long v6, v6

    add-long v0, v4, v6

    .line 655
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 659
    :cond_2d
    if-nez p1, :cond_3d

    .line 660
    :goto_2f
    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-lez v8, :cond_3d

    rem-long v8, v0, v4

    cmp-long v6, v8, v6

    if-nez v6, :cond_3d

    .line 661
    div-long/2addr v0, v4

    goto :goto_2f

    .line 664
    :cond_3d
    return-wide v0
.end method

.method public blacklist toLong(Z)J
    .registers 10
    .param p1, "truncateIfOverflow"    # Z

    .line 624
    nop

    .line 625
    const-wide/16 v0, 0x0

    .line 626
    .local v0, "result":J
    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    iget v3, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    add-int/2addr v2, v3

    iget v3, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 627
    .local v2, "upperMagnitude":I
    if-eqz p1, :cond_15

    .line 628
    const/16 v3, 0x11

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 630
    :cond_15
    move v3, v2

    .local v3, "magnitude":I
    :goto_16
    if-ltz v3, :cond_2c

    .line 631
    const-wide/16 v4, 0xa

    mul-long/2addr v4, v0

    iget v6, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    sub-int v6, v3, v6

    iget v7, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    sub-int/2addr v6, v7

    invoke-virtual {p0, v6}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v6

    int-to-long v6, v6

    add-long v0, v4, v6

    .line 630
    add-int/lit8 v3, v3, -0x1

    goto :goto_16

    .line 633
    .end local v3    # "magnitude":I
    :cond_2c
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isNegative()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 634
    neg-long v0, v0

    .line 636
    :cond_33
    return-wide v0
.end method

.method public blacklist toPlainString()Ljava/lang/String;
    .registers 3

    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1038
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->toPlainString(Ljava/lang/StringBuilder;)V

    .line 1039
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist toPlainString(Ljava/lang/StringBuilder;)V
    .registers 8
    .param p1, "result"    # Ljava/lang/StringBuilder;

    .line 1043
    nop

    .line 1044
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isNegative()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1045
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1047
    :cond_c
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    const/16 v1, 0x30

    if-nez v0, :cond_16

    .line 1048
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1049
    return-void

    .line 1052
    :cond_16
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    add-int/2addr v0, v2

    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    .line 1053
    .local v0, "upper":I
    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    iget v3, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    add-int/2addr v2, v3

    .line 1054
    .local v2, "lower":I
    iget v3, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2f

    .line 1055
    iget v3, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->lReqPos:I

    add-int/lit8 v0, v3, -0x1

    .line 1057
    :cond_2f
    iget v3, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    if-le v2, v3, :cond_35

    .line 1058
    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->rReqPos:I

    .line 1061
    :cond_35
    move v3, v0

    .line 1062
    .local v3, "p":I
    if-gez v3, :cond_3b

    .line 1063
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1065
    :cond_3b
    :goto_3b
    if-ltz v3, :cond_50

    .line 1066
    iget v4, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    sub-int v4, v3, v4

    iget v5, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v4

    add-int/2addr v4, v1

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1065
    add-int/lit8 v3, v3, -0x1

    goto :goto_3b

    .line 1068
    :cond_50
    if-gez v2, :cond_57

    .line 1069
    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1071
    :cond_57
    :goto_57
    if-lt v3, v2, :cond_6c

    .line 1072
    iget v4, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    sub-int v4, v3, v4

    iget v5, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v4

    add-int/2addr v4, v1

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1071
    add-int/lit8 v3, v3, -0x1

    goto :goto_57

    .line 1074
    :cond_6c
    return-void
.end method

.method public blacklist toScientificString()Ljava/lang/String;
    .registers 3

    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1078
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->toScientificString(Ljava/lang/StringBuilder;)V

    .line 1079
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist toScientificString(Ljava/lang/StringBuilder;)V
    .registers 10
    .param p1, "result"    # Ljava/lang/StringBuilder;

    .line 1083
    nop

    .line 1084
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->isNegative()Z

    move-result v0

    const/16 v1, 0x2d

    if-eqz v0, :cond_c

    .line 1085
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1087
    :cond_c
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    if-nez v0, :cond_16

    .line 1088
    const-string v0, "0E+0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    return-void

    .line 1093
    :cond_16
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->precision:I

    add-int/lit8 v0, v0, -0x1

    .line 1094
    .local v0, "upperPos":I
    const/4 v2, 0x0

    .line 1095
    .local v2, "lowerPos":I
    move v3, v0

    .line 1096
    .local v3, "p":I
    invoke-virtual {p0, v3}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v4

    const/16 v5, 0x30

    add-int/2addr v4, v5

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1097
    add-int/lit8 v3, v3, -0x1

    if-lt v3, v2, :cond_3e

    .line 1098
    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1099
    :goto_30
    if-lt v3, v2, :cond_3e

    .line 1100
    invoke-virtual {p0, v3}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->getDigitPos(I)B

    move-result v4

    add-int/2addr v4, v5

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1099
    add-int/lit8 v3, v3, -0x1

    goto :goto_30

    .line 1103
    :cond_3e
    const/16 v4, 0x45

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1104
    iget v4, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    add-int/2addr v4, v0

    iget v6, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->exponent:I

    add-int/2addr v4, v6

    .line 1105
    .local v4, "_scale":I
    const/high16 v6, -0x80000000

    if-ne v4, v6, :cond_53

    .line 1106
    const-string v1, "-2147483648"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    return-void

    .line 1108
    :cond_53
    if-gez v4, :cond_5b

    .line 1109
    mul-int/lit8 v4, v4, -0x1

    .line 1110
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_60

    .line 1112
    :cond_5b
    const/16 v1, 0x2b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1114
    :goto_60
    if-nez v4, :cond_65

    .line 1115
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1117
    :cond_65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 1118
    .local v1, "insertIndex":I
    :goto_69
    if-lez v4, :cond_77

    .line 1119
    div-int/lit8 v5, v4, 0xa

    .line 1120
    .local v5, "quot":I
    rem-int/lit8 v6, v4, 0xa

    .line 1121
    .local v6, "rem":I
    add-int/lit8 v7, v6, 0x30

    int-to-char v7, v7

    invoke-virtual {p1, v1, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1122
    move v4, v5

    .line 1123
    .end local v5    # "quot":I
    .end local v6    # "rem":I
    goto :goto_69

    .line 1124
    :cond_77
    return-void
.end method

.method public blacklist truncate()V
    .registers 2

    .line 749
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    if-gez v0, :cond_10

    .line 750
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    neg-int v0, v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->shiftRight(I)V

    .line 751
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->scale:I

    .line 752
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;->compact()V

    .line 754
    :cond_10
    return-void
.end method
