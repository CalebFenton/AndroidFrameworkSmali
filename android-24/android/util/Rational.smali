.class public final Landroid/util/Rational;
.super Ljava/lang/Number;
.source "Rational.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/util/Rational;",
        ">;"
    }
.end annotation


# static fields
.field public static final NEGATIVE_INFINITY:Landroid/util/Rational;

.field public static final NaN:Landroid/util/Rational;

.field public static final POSITIVE_INFINITY:Landroid/util/Rational;

.field public static final ZERO:Landroid/util/Rational;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mDenominator:I

.field private final mNumerator:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 40
    new-instance v0, Landroid/util/Rational;

    #@4
    invoke-direct {v0, v2, v2}, Landroid/util/Rational;-><init>(II)V

    #@7
    sput-object v0, Landroid/util/Rational;->NaN:Landroid/util/Rational;

    #@9
    .line 48
    new-instance v0, Landroid/util/Rational;

    #@b
    invoke-direct {v0, v3, v2}, Landroid/util/Rational;-><init>(II)V

    #@e
    sput-object v0, Landroid/util/Rational;->POSITIVE_INFINITY:Landroid/util/Rational;

    #@10
    .line 56
    new-instance v0, Landroid/util/Rational;

    #@12
    const/4 v1, -0x1

    #@13
    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    #@16
    sput-object v0, Landroid/util/Rational;->NEGATIVE_INFINITY:Landroid/util/Rational;

    #@18
    .line 64
    new-instance v0, Landroid/util/Rational;

    #@1a
    invoke-direct {v0, v2, v3}, Landroid/util/Rational;-><init>(II)V

    #@1d
    sput-object v0, Landroid/util/Rational;->ZERO:Landroid/util/Rational;

    #@1f
    .line 29
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "numerator"    # I
    .param p2, "denominator"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 101
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@5
    .line 103
    if-gez p2, :cond_0

    #@7
    .line 104
    neg-int p1, p1

    #@8
    .line 105
    neg-int p2, p2

    #@9
    .line 109
    :cond_0
    if-nez p2, :cond_1

    #@b
    if-lez p1, :cond_1

    #@d
    .line 110
    iput v1, p0, Landroid/util/Rational;->mNumerator:I

    #@f
    .line 111
    iput v2, p0, Landroid/util/Rational;->mDenominator:I

    #@11
    .line 101
    :goto_0
    return-void

    #@12
    .line 112
    :cond_1
    if-nez p2, :cond_2

    #@14
    if-gez p1, :cond_2

    #@16
    .line 113
    const/4 v1, -0x1

    #@17
    iput v1, p0, Landroid/util/Rational;->mNumerator:I

    #@19
    .line 114
    iput v2, p0, Landroid/util/Rational;->mDenominator:I

    #@1b
    goto :goto_0

    #@1c
    .line 115
    :cond_2
    if-nez p2, :cond_3

    #@1e
    if-nez p1, :cond_3

    #@20
    .line 116
    iput v2, p0, Landroid/util/Rational;->mNumerator:I

    #@22
    .line 117
    iput v2, p0, Landroid/util/Rational;->mDenominator:I

    #@24
    goto :goto_0

    #@25
    .line 118
    :cond_3
    if-nez p1, :cond_4

    #@27
    .line 119
    iput v2, p0, Landroid/util/Rational;->mNumerator:I

    #@29
    .line 120
    iput v1, p0, Landroid/util/Rational;->mDenominator:I

    #@2b
    goto :goto_0

    #@2c
    .line 122
    :cond_4
    invoke-static {p1, p2}, Landroid/util/Rational;->gcd(II)I

    #@2f
    move-result v0

    #@30
    .line 124
    .local v0, "gcd":I
    div-int v1, p1, v0

    #@32
    iput v1, p0, Landroid/util/Rational;->mNumerator:I

    #@34
    .line 125
    div-int v1, p2, v0

    #@36
    iput v1, p0, Landroid/util/Rational;->mDenominator:I

    #@38
    goto :goto_0
.end method

.method private equals(Landroid/util/Rational;)Z
    .locals 3
    .param p1, "other"    # Landroid/util/Rational;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 244
    iget v1, p0, Landroid/util/Rational;->mNumerator:I

    #@3
    iget v2, p1, Landroid/util/Rational;->mNumerator:I

    #@5
    if-ne v1, v2, :cond_0

    #@7
    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    #@9
    iget v2, p1, Landroid/util/Rational;->mDenominator:I

    #@b
    if-ne v1, v2, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    :cond_0
    return v0
.end method

.method public static gcd(II)I
    .locals 4
    .param p0, "numerator"    # I
    .param p1, "denominator"    # I

    #@0
    .prologue
    .line 314
    move v0, p0

    #@1
    .line 315
    .local v0, "a":I
    move v1, p1

    #@2
    .line 317
    .local v1, "b":I
    :goto_0
    if-eqz v1, :cond_0

    #@4
    .line 318
    move v2, v1

    #@5
    .line 320
    .local v2, "oldB":I
    rem-int v1, v0, v1

    #@7
    .line 321
    move v0, v2

    #@8
    goto :goto_0

    #@9
    .line 324
    .end local v2    # "oldB":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    #@c
    move-result v3

    #@d
    return v3
.end method

.method private static invalidRational(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 545
    new-instance v0, Ljava/lang/NumberFormatException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Invalid Rational: \""

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, "\""

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0
.end method

.method private isNegInf()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 206
    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    #@3
    if-nez v1, :cond_0

    #@5
    iget v1, p0, Landroid/util/Rational;->mNumerator:I

    #@7
    if-gez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method private isPosInf()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 202
    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    #@3
    if-nez v1, :cond_0

    #@5
    iget v1, p0, Landroid/util/Rational;->mNumerator:I

    #@7
    if-lez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public static parseRational(Ljava/lang/String;)Landroid/util/Rational;
    .locals 5
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    .line 578
    const-string/jumbo v2, "string must not be null"

    #@3
    invoke-static {p0, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 580
    const-string/jumbo v2, "NaN"

    #@9
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 581
    sget-object v2, Landroid/util/Rational;->NaN:Landroid/util/Rational;

    #@11
    return-object v2

    #@12
    .line 582
    :cond_0
    const-string/jumbo v2, "Infinity"

    #@15
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 583
    sget-object v2, Landroid/util/Rational;->POSITIVE_INFINITY:Landroid/util/Rational;

    #@1d
    return-object v2

    #@1e
    .line 584
    :cond_1
    const-string/jumbo v2, "-Infinity"

    #@21
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_2

    #@27
    .line 585
    sget-object v2, Landroid/util/Rational;->NEGATIVE_INFINITY:Landroid/util/Rational;

    #@29
    return-object v2

    #@2a
    .line 588
    :cond_2
    const/16 v2, 0x3a

    #@2c
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    #@2f
    move-result v1

    #@30
    .line 589
    .local v1, "sep_ix":I
    if-gez v1, :cond_3

    #@32
    .line 590
    const/16 v2, 0x2f

    #@34
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    #@37
    move-result v1

    #@38
    .line 592
    :cond_3
    if-gez v1, :cond_4

    #@3a
    .line 593
    invoke-static {p0}, Landroid/util/Rational;->invalidRational(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@3d
    move-result-object v2

    #@3e
    throw v2

    #@3f
    .line 596
    :cond_4
    :try_start_0
    new-instance v2, Landroid/util/Rational;

    #@41
    const/4 v3, 0x0

    #@42
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@49
    move-result v3

    #@4a
    .line 597
    add-int/lit8 v4, v1, 0x1

    #@4c
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@53
    move-result v4

    #@54
    .line 596
    invoke-direct {v2, v3, v4}, Landroid/util/Rational;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@57
    return-object v2

    #@58
    .line 598
    :catch_0
    move-exception v0

    #@59
    .line 599
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {p0}, Landroid/util/Rational;->invalidRational(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    #@5c
    move-result-object v2

    #@5d
    throw v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 514
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 524
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    #@6
    if-nez v0, :cond_2

    #@8
    .line 525
    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    #@a
    if-eq v0, v2, :cond_0

    #@c
    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    #@e
    if-nez v0, :cond_1

    #@10
    .line 526
    :cond_0
    return-void

    #@11
    .line 528
    :cond_1
    new-instance v0, Ljava/io/InvalidObjectException;

    #@13
    .line 529
    const-string/jumbo v1, "Rational must be deserialized from a reduced form for zero values"

    #@16
    .line 528
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 530
    :cond_2
    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    #@1c
    if-nez v0, :cond_5

    #@1e
    .line 531
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    #@20
    if-eq v0, v2, :cond_3

    #@22
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    #@24
    const/4 v1, -0x1

    #@25
    if-ne v0, v1, :cond_4

    #@27
    .line 532
    :cond_3
    return-void

    #@28
    .line 534
    :cond_4
    new-instance v0, Ljava/io/InvalidObjectException;

    #@2a
    .line 535
    const-string/jumbo v1, "Rational must be deserialized from a reduced form for infinity values"

    #@2d
    .line 534
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0

    #@31
    .line 537
    :cond_5
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    #@33
    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    #@35
    invoke-static {v0, v1}, Landroid/util/Rational;->gcd(II)I

    #@38
    move-result v0

    #@39
    if-le v0, v2, :cond_6

    #@3b
    .line 538
    new-instance v0, Ljava/io/InvalidObjectException;

    #@3d
    .line 539
    const-string/jumbo v1, "Rational must be deserialized from a reduced form for finite values"

    #@40
    .line 538
    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    #@43
    throw v0

    #@44
    .line 513
    :cond_6
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/util/Rational;)I
    .locals 11
    .param p1, "another"    # Landroid/util/Rational;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v9, 0x1

    #@2
    const/4 v8, -0x1

    #@3
    .line 467
    const-string/jumbo v4, "another must not be null"

    #@6
    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 469
    invoke-direct {p0, p1}, Landroid/util/Rational;->equals(Landroid/util/Rational;)Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_0

    #@f
    .line 470
    return v10

    #@10
    .line 471
    :cond_0
    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_1

    #@16
    .line 472
    return v9

    #@17
    .line 473
    :cond_1
    invoke-virtual {p1}, Landroid/util/Rational;->isNaN()Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_2

    #@1d
    .line 474
    return v8

    #@1e
    .line 475
    :cond_2
    invoke-direct {p0}, Landroid/util/Rational;->isPosInf()Z

    #@21
    move-result v4

    #@22
    if-nez v4, :cond_3

    #@24
    invoke-direct {p1}, Landroid/util/Rational;->isNegInf()Z

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_4

    #@2a
    .line 476
    :cond_3
    return v9

    #@2b
    .line 477
    :cond_4
    invoke-direct {p0}, Landroid/util/Rational;->isNegInf()Z

    #@2e
    move-result v4

    #@2f
    if-nez v4, :cond_5

    #@31
    invoke-direct {p1}, Landroid/util/Rational;->isPosInf()Z

    #@34
    move-result v4

    #@35
    if-eqz v4, :cond_6

    #@37
    .line 478
    :cond_5
    return v8

    #@38
    .line 484
    :cond_6
    iget v4, p0, Landroid/util/Rational;->mNumerator:I

    #@3a
    int-to-long v4, v4

    #@3b
    iget v6, p1, Landroid/util/Rational;->mDenominator:I

    #@3d
    int-to-long v6, v6

    #@3e
    mul-long v2, v4, v6

    #@40
    .line 485
    .local v2, "thisNumerator":J
    iget v4, p1, Landroid/util/Rational;->mNumerator:I

    #@42
    int-to-long v4, v4

    #@43
    iget v6, p0, Landroid/util/Rational;->mDenominator:I

    #@45
    int-to-long v6, v6

    #@46
    mul-long v0, v4, v6

    #@48
    .line 488
    .local v0, "otherNumerator":J
    cmp-long v4, v2, v0

    #@4a
    if-gez v4, :cond_7

    #@4c
    .line 489
    return v8

    #@4d
    .line 490
    :cond_7
    cmp-long v4, v2, v0

    #@4f
    if-lez v4, :cond_8

    #@51
    .line 491
    return v9

    #@52
    .line 494
    :cond_8
    return v10
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 466
    check-cast p1, Landroid/util/Rational;

    #@2
    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/util/Rational;->compareTo(Landroid/util/Rational;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public doubleValue()D
    .locals 6

    #@0
    .prologue
    .line 338
    iget v4, p0, Landroid/util/Rational;->mNumerator:I

    #@2
    int-to-double v2, v4

    #@3
    .line 339
    .local v2, "num":D
    iget v4, p0, Landroid/util/Rational;->mDenominator:I

    #@5
    int-to-double v0, v4

    #@6
    .line 341
    .local v0, "den":D
    div-double v4, v2, v0

    #@8
    return-wide v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 240
    instance-of v0, p1, Landroid/util/Rational;

    #@2
    if-eqz v0, :cond_0

    #@4
    check-cast p1, Landroid/util/Rational;

    #@6
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-direct {p0, p1}, Landroid/util/Rational;->equals(Landroid/util/Rational;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public floatValue()F
    .locals 3

    #@0
    .prologue
    .line 355
    iget v2, p0, Landroid/util/Rational;->mNumerator:I

    #@2
    int-to-float v1, v2

    #@3
    .line 356
    .local v1, "num":F
    iget v2, p0, Landroid/util/Rational;->mDenominator:I

    #@5
    int-to-float v0, v2

    #@6
    .line 358
    .local v0, "den":F
    div-float v2, v1, v0

    #@8
    return v2
.end method

.method public getDenominator()I
    .locals 1

    #@0
    .prologue
    .line 149
    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    #@2
    return v0
.end method

.method public getNumerator()I
    .locals 1

    #@0
    .prologue
    .line 136
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 290
    iget v1, p0, Landroid/util/Rational;->mNumerator:I

    #@2
    shl-int/lit8 v1, v1, 0x10

    #@4
    iget v2, p0, Landroid/util/Rational;->mNumerator:I

    #@6
    ushr-int/lit8 v2, v2, 0x10

    #@8
    or-int v0, v1, v2

    #@a
    .line 292
    .local v0, "numeratorFlipped":I
    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    #@c
    xor-int/2addr v1, v0

    #@d
    return v1
.end method

.method public intValue()I
    .locals 2

    #@0
    .prologue
    .line 384
    invoke-direct {p0}, Landroid/util/Rational;->isPosInf()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 385
    const v0, 0x7fffffff

    #@9
    return v0

    #@a
    .line 386
    :cond_0
    invoke-direct {p0}, Landroid/util/Rational;->isNegInf()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 387
    const/high16 v0, -0x80000000

    #@12
    return v0

    #@13
    .line 388
    :cond_1
    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 389
    const/4 v0, 0x0

    #@1a
    return v0

    #@1b
    .line 391
    :cond_2
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    #@1d
    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    #@1f
    div-int/2addr v0, v1

    #@20
    return v0
.end method

.method public isFinite()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 186
    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public isInfinite()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 173
    iget v1, p0, Landroid/util/Rational;->mNumerator:I

    #@3
    if-eqz v1, :cond_0

    #@5
    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public isNaN()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 161
    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    #@3
    if-nez v1, :cond_0

    #@5
    iget v1, p0, Landroid/util/Rational;->mNumerator:I

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public isZero()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 198
    invoke-virtual {p0}, Landroid/util/Rational;->isFinite()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    iget v1, p0, Landroid/util/Rational;->mNumerator:I

    #@9
    if-nez v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :cond_0
    return v0
.end method

.method public longValue()J
    .locals 2

    #@0
    .prologue
    .line 418
    invoke-direct {p0}, Landroid/util/Rational;->isPosInf()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 419
    const-wide v0, 0x7fffffffffffffffL

    #@b
    return-wide v0

    #@c
    .line 420
    :cond_0
    invoke-direct {p0}, Landroid/util/Rational;->isNegInf()Z

    #@f
    move-result v0

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 421
    const-wide/high16 v0, -0x8000000000000000L

    #@14
    return-wide v0

    #@15
    .line 422
    :cond_1
    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_2

    #@1b
    .line 423
    const-wide/16 v0, 0x0

    #@1d
    return-wide v0

    #@1e
    .line 425
    :cond_2
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    #@20
    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    #@22
    div-int/2addr v0, v1

    #@23
    int-to-long v0, v0

    #@24
    return-wide v0
.end method

.method public shortValue()S
    .locals 1

    #@0
    .prologue
    .line 440
    invoke-virtual {p0}, Landroid/util/Rational;->intValue()I

    #@3
    move-result v0

    #@4
    int-to-short v0, v0

    #@5
    return v0
.end method

.method public toFloat()F
    .locals 1

    #@0
    .prologue
    .line 281
    invoke-virtual {p0}, Landroid/util/Rational;->floatValue()F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 262
    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 263
    const-string/jumbo v0, "NaN"

    #@9
    return-object v0

    #@a
    .line 264
    :cond_0
    invoke-direct {p0}, Landroid/util/Rational;->isPosInf()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 265
    const-string/jumbo v0, "Infinity"

    #@13
    return-object v0

    #@14
    .line 266
    :cond_1
    invoke-direct {p0}, Landroid/util/Rational;->isNegInf()Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_2

    #@1a
    .line 267
    const-string/jumbo v0, "-Infinity"

    #@1d
    return-object v0

    #@1e
    .line 269
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    iget v1, p0, Landroid/util/Rational;->mNumerator:I

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    const-string/jumbo v1, "/"

    #@2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    return-object v0
.end method
