.class public final Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;
.super Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;
.source "DecimalQuantity_DualStorageBCD.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private greylist-max-o bcdBytes:[B

.field private greylist-max-o bcdLong:J

.field private greylist-max-o usingBytes:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 15
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    .line 37
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setBcdToZero()V

    .line 38
    iput-byte v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->flags:B

    .line 39
    return-void
.end method

.method public constructor blacklist <init>(D)V
    .registers 5
    .param p1, "input"    # D

    .line 49
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    .line 50
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToDouble(D)V

    .line 51
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "input"    # I

    .line 45
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    .line 46
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToInt(I)V

    .line 47
    return-void
.end method

.method public constructor blacklist <init>(J)V
    .registers 5
    .param p1, "input"    # J

    .line 41
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    .line 42
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToLong(J)V

    .line 43
    return-void
.end method

.method public constructor blacklist <init>(Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;)V
    .registers 4
    .param p1, "other"    # Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    .line 61
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    .line 62
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->copyFrom(Landroid/icu/impl/number/DecimalQuantity;)V

    .line 63
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Number;)V
    .registers 5
    .param p1, "number"    # Ljava/lang/Number;

    .line 65
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    .line 68
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_16

    .line 69
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToLong(J)V

    goto :goto_5e

    .line 70
    :cond_16
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_22

    .line 71
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToInt(I)V

    goto :goto_5e

    .line 72
    :cond_22
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_2e

    .line 73
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToDouble(D)V

    goto :goto_5e

    .line 74
    :cond_2e
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_3a

    .line 75
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToDouble(D)V

    goto :goto_5e

    .line 76
    :cond_3a
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_45

    .line 77
    move-object v0, p1

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToBigInteger(Ljava/math/BigInteger;)V

    goto :goto_5e

    .line 78
    :cond_45
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_50

    .line 79
    move-object v0, p1

    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToBigDecimal(Ljava/math/BigDecimal;)V

    goto :goto_5e

    .line 80
    :cond_50
    instance-of v0, p1, Landroid/icu/math/BigDecimal;

    if-eqz v0, :cond_5f

    .line 81
    move-object v0, p1

    check-cast v0, Landroid/icu/math/BigDecimal;

    invoke-virtual {v0}, Landroid/icu/math/BigDecimal;->toBigDecimal()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToBigDecimal(Ljava/math/BigDecimal;)V

    .line 86
    :goto_5e
    return-void

    .line 83
    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Number is of an unsupported type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Ljava/math/BigDecimal;)V
    .registers 4
    .param p1, "input"    # Ljava/math/BigDecimal;

    .line 57
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    .line 58
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToBigDecimal(Ljava/math/BigDecimal;)V

    .line 59
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "input"    # Ljava/math/BigInteger;

    .line 53
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_AbstractBCD;-><init>()V

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    .line 54
    invoke-virtual {p0, p1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setToBigInteger(Ljava/math/BigInteger;)V

    .line 55
    return-void
.end method

.method private greylist-max-o ensureCapacity()V
    .registers 2

    .line 362
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->ensureCapacity(I)V

    .line 363
    return-void
.end method

.method private greylist-max-o ensureCapacity(I)V
    .registers 6
    .param p1, "capacity"    # I

    .line 366
    if-nez p1, :cond_3

    .line 367
    return-void

    .line 368
    :cond_3
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    array-length v0, v0

    goto :goto_d

    :cond_c
    move v0, v1

    .line 369
    .local v0, "oldCapacity":I
    :goto_d
    iget-boolean v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    if-nez v2, :cond_16

    .line 370
    new-array v1, p1, [B

    iput-object v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    goto :goto_23

    .line 371
    :cond_16
    if-ge v0, p1, :cond_23

    .line 372
    mul-int/lit8 v2, p1, 0x2

    new-array v2, v2, [B

    .line 373
    .local v2, "bcd1":[B
    iget-object v3, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 374
    iput-object v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    .line 376
    .end local v2    # "bcd1":[B
    :cond_23
    :goto_23
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    .line 377
    return-void
.end method

.method public static blacklist fromExponentString(Ljava/lang/String;)Landroid/icu/impl/number/DecimalQuantity;
    .registers 9
    .param p0, "num"    # Ljava/lang/String;

    .line 99
    const-string v0, "e"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "c"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 100
    const-string v0, "E"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "C"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_33

    .line 125
    :cond_21
    invoke-static {p0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->getVisibleFractionCount(Ljava/lang/String;)I

    move-result v0

    .line 126
    .local v0, "numFracDigit":I
    new-instance v1, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/math/BigDecimal;)V

    .line 127
    .local v1, "dq":Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;
    invoke-virtual {v1, v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setMinFraction(I)V

    .line 128
    return-object v1

    .line 101
    .end local v0    # "numFracDigit":I
    .end local v1    # "dq":Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;
    :cond_33
    :goto_33
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 102
    .local v0, "ePos":I
    if-gez v0, :cond_41

    .line 103
    const/16 v1, 0x63

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 105
    :cond_41
    if-gez v0, :cond_49

    .line 106
    const/16 v1, 0x45

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 108
    :cond_49
    if-gez v0, :cond_51

    .line 109
    const/16 v1, 0x43

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 111
    :cond_51
    add-int/lit8 v1, v0, 0x1

    .line 112
    .local v1, "expNumPos":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "exponentStr":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 115
    .local v3, "exponent":I
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, "fractionStr":Ljava/lang/String;
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 118
    .local v5, "fraction":Ljava/math/BigDecimal;
    new-instance v6, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v6, v5}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/math/BigDecimal;)V

    .line 119
    .local v6, "dq":Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;
    invoke-static {v4}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->getVisibleFractionCount(Ljava/lang/String;)I

    move-result v7

    .line 120
    .local v7, "numFracDigit":I
    invoke-virtual {v6, v7}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setMinFraction(I)V

    .line 121
    invoke-virtual {v6, v3}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->adjustExponent(I)V

    .line 123
    return-object v6
.end method

.method private static blacklist getVisibleFractionCount(Ljava/lang/String;)I
    .registers 3
    .param p0, "value"    # Ljava/lang/String;

    .line 133
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 134
    .local v0, "decimalPos":I
    if-nez v0, :cond_c

    .line 135
    const/4 v1, 0x0

    return v1

    .line 137
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method private greylist-max-o switchStorage()V
    .registers 8

    .line 381
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_28

    .line 383
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 384
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_d
    if-ltz v0, :cond_21

    .line 385
    iget-wide v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    shl-long/2addr v2, v1

    iput-wide v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 386
    iget-wide v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    iget-object v4, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    aget-byte v4, v4, v0

    int-to-long v4, v4

    or-long/2addr v2, v4

    iput-wide v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 384
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 388
    .end local v0    # "i":I
    :cond_21
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    .line 389
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    goto :goto_44

    .line 392
    :cond_28
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->ensureCapacity()V

    .line 393
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2c
    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-ge v0, v2, :cond_43

    .line 394
    iget-object v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    iget-wide v3, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    const-wide/16 v5, 0xf

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 395
    iget-wide v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    ushr-long/2addr v2, v1

    iput-wide v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 397
    .end local v0    # "i":I
    :cond_43
    nop

    .line 399
    :goto_44
    return-void
.end method

.method private blacklist toNumberString()Ljava/lang/String;
    .registers 4

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    if-eqz v1, :cond_23

    .line 499
    iget v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-nez v1, :cond_12

    .line 500
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 502
    :cond_12
    iget v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_16
    if-ltz v1, :cond_22

    .line 503
    iget-object v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    aget-byte v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 502
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .end local v1    # "i":I
    :cond_22
    goto :goto_2c

    .line 506
    :cond_23
    iget-wide v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    :goto_2c
    const-string v1, "E"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    iget v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected blacklist bcdToBigDecimal()Ljava/math/BigDecimal;
    .registers 8

    .line 290
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    if-eqz v0, :cond_18

    .line 292
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->toNumberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, "result":Ljava/math/BigDecimal;
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 294
    invoke-virtual {v0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    .line 296
    :cond_17
    return-object v0

    .line 298
    .end local v0    # "result":Ljava/math/BigDecimal;
    :cond_18
    const-wide/16 v0, 0x0

    .line 299
    .local v0, "tempLong":J
    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "shift":I
    :goto_1e
    if-ltz v2, :cond_2d

    .line 300
    const-wide/16 v3, 0xa

    mul-long/2addr v3, v0

    invoke-virtual {p0, v2}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v5

    int-to-long v5, v5

    add-long v0, v3, v5

    .line 299
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    .line 302
    .end local v2    # "shift":I
    :cond_2d
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v2

    .line 304
    .local v2, "result":Ljava/math/BigDecimal;
    invoke-virtual {v2}, Ljava/math/BigDecimal;->scale()I

    move-result v3

    iget v4, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->exponent:I

    add-int/2addr v3, v4

    int-to-long v3, v3

    .line 305
    .local v3, "newScale":J
    const-wide/32 v5, -0x80000000

    cmp-long v5, v3, v5

    if-gtz v5, :cond_46

    .line 306
    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    goto :goto_4f

    .line 308
    :cond_46
    iget v5, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    iget v6, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->exponent:I

    add-int/2addr v5, v6

    invoke-virtual {v2, v5}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    move-result-object v2

    .line 310
    :goto_4f
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->isNegative()Z

    move-result v5

    if-eqz v5, :cond_59

    .line 311
    invoke-virtual {v2}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v2

    .line 313
    :cond_59
    return-object v2
.end method

.method public blacklist checkHealth()Ljava/lang/String;
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 422
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    const/16 v1, 0xa

    const-string v2, "Least significant digit is zero in long mode"

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_68

    .line 423
    iget-wide v6, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_14

    .line 424
    const-string v0, "Value in bcdLong but we are in byte mode"

    return-object v0

    .line 425
    :cond_14
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-nez v0, :cond_1b

    .line 426
    const-string v0, "Zero precision but we are in byte mode"

    return-object v0

    .line 427
    :cond_1b
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    iget-object v4, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    array-length v4, v4

    if-le v0, v4, :cond_25

    .line 428
    const-string v0, "Precision exceeds length of byte array"

    return-object v0

    .line 429
    :cond_25
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v0

    if-nez v0, :cond_32

    .line 430
    const-string v0, "Most significant digit is zero in byte mode"

    return-object v0

    .line 431
    :cond_32
    invoke-virtual {p0, v3}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v0

    if-nez v0, :cond_39

    .line 432
    return-object v2

    .line 433
    :cond_39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3a
    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-ge v0, v2, :cond_53

    .line 434
    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v2

    if-lt v2, v1, :cond_47

    .line 435
    const-string v1, "Digit exceeding 10 in byte array"

    return-object v1

    .line 436
    :cond_47
    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v2

    if-gez v2, :cond_50

    .line 437
    const-string v1, "Digit below 0 in byte array"

    return-object v1

    .line 433
    :cond_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 439
    .end local v0    # "i":I
    :cond_53
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    .restart local v0    # "i":I
    :goto_55
    iget-object v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    array-length v1, v1

    if-ge v0, v1, :cond_66

    .line 440
    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v1

    if-eqz v1, :cond_63

    .line 441
    const-string v1, "Nonzero digits outside of range in byte array"

    return-object v1

    .line 439
    :cond_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .end local v0    # "i":I
    :cond_66
    goto/16 :goto_da

    .line 444
    :cond_68
    iget-object v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    if-eqz v0, :cond_7e

    .line 445
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6d
    iget-object v6, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    array-length v6, v6

    if-ge v0, v6, :cond_7e

    .line 446
    iget-object v6, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    aget-byte v6, v6, v0

    if-eqz v6, :cond_7b

    .line 447
    const-string v1, "Nonzero digits in byte array but we are in long mode"

    return-object v1

    .line 445
    :cond_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    .line 450
    .end local v0    # "i":I
    :cond_7e
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-nez v0, :cond_8b

    iget-wide v6, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_8b

    .line 451
    const-string v0, "Value in bcdLong even though precision is zero"

    return-object v0

    .line 452
    :cond_8b
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    const/16 v4, 0x10

    if-le v0, v4, :cond_94

    .line 453
    const-string v0, "Precision exceeds length of long"

    return-object v0

    .line 454
    :cond_94
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-eqz v0, :cond_a5

    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v0

    if-nez v0, :cond_a5

    .line 455
    const-string v0, "Most significant digit is zero in long mode"

    return-object v0

    .line 456
    :cond_a5
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-eqz v0, :cond_b0

    invoke-virtual {p0, v3}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v0

    if-nez v0, :cond_b0

    .line 457
    return-object v2

    .line 458
    :cond_b0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_b1
    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-ge v0, v2, :cond_ca

    .line 459
    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v2

    if-lt v2, v1, :cond_be

    .line 460
    const-string v1, "Digit exceeding 10 in long"

    return-object v1

    .line 461
    :cond_be
    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v2

    if-gez v2, :cond_c7

    .line 462
    const-string v1, "Digit below 0 in long (?!)"

    return-object v1

    .line 458
    :cond_c7
    add-int/lit8 v0, v0, 0x1

    goto :goto_b1

    .line 464
    .end local v0    # "i":I
    :cond_ca
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    .restart local v0    # "i":I
    :goto_cc
    if-ge v0, v4, :cond_da

    .line 465
    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->getDigitPos(I)B

    move-result v1

    if-eqz v1, :cond_d7

    .line 466
    const-string v1, "Nonzero digits outside of range in long"

    return-object v1

    .line 464
    :cond_d7
    add-int/lit8 v0, v0, 0x1

    goto :goto_cc

    .line 470
    .end local v0    # "i":I
    :cond_da
    :goto_da
    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist compact()V
    .registers 7

    .line 319
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    const/16 v1, 0x10

    if-eqz v0, :cond_3a

    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, "delta":I
    :goto_7
    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-ge v0, v2, :cond_14

    iget-object v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    aget-byte v2, v2, v0

    if-nez v2, :cond_14

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 323
    :cond_14
    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-ne v0, v2, :cond_1c

    .line 325
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setBcdToZero()V

    .line 326
    return-void

    .line 329
    :cond_1c
    invoke-virtual {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->shiftRight(I)V

    .line 333
    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    add-int/lit8 v2, v2, -0x1

    .line 334
    .local v2, "leading":I
    :goto_23
    if-ltz v2, :cond_2e

    iget-object v3, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    aget-byte v3, v3, v2

    if-nez v3, :cond_2e

    add-int/lit8 v2, v2, -0x1

    goto :goto_23

    .line 336
    :cond_2e
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    .line 339
    iget v3, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-gt v3, v1, :cond_39

    .line 340
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->switchStorage()V

    .line 343
    .end local v0    # "delta":I
    .end local v2    # "leading":I
    :cond_39
    goto :goto_65

    .line 344
    :cond_3a
    iget-wide v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_46

    .line 346
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setBcdToZero()V

    .line 347
    return-void

    .line 351
    :cond_46
    iget-wide v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 352
    .restart local v0    # "delta":I
    iget-wide v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    mul-int/lit8 v4, v0, 0x4

    ushr-long/2addr v2, v4

    iput-wide v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 353
    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    .line 356
    iget-wide v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    .line 358
    .end local v0    # "delta":I
    :goto_65
    return-void
.end method

.method protected blacklist copyBcdFrom(Landroid/icu/impl/number/DecimalQuantity;)V
    .registers 7
    .param p1, "_other"    # Landroid/icu/impl/number/DecimalQuantity;

    .line 403
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    .line 404
    .local v0, "other":Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->setBcdToZero()V

    .line 405
    iget-boolean v1, v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    if-eqz v1, :cond_1a

    .line 406
    iget v1, v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    invoke-direct {p0, v1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->ensureCapacity(I)V

    .line 407
    iget-object v1, v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    iget-object v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    iget v3, v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1e

    .line 409
    :cond_1a
    iget-wide v1, v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    iput-wide v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 411
    :goto_1e
    return-void
.end method

.method public blacklist createCopy()Landroid/icu/impl/number/DecimalQuantity;
    .registers 2

    .line 90
    new-instance v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-direct {v0, p0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;)V

    return-object v0
.end method

.method protected blacklist getDigitPos(I)B
    .registers 6
    .param p1, "position"    # I

    .line 143
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 144
    if-ltz p1, :cond_11

    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-lt p1, v0, :cond_c

    goto :goto_11

    .line 146
    :cond_c
    iget-object v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    aget-byte v0, v0, p1

    return v0

    .line 145
    :cond_11
    :goto_11
    return v1

    .line 148
    :cond_12
    if-ltz p1, :cond_24

    const/16 v0, 0x10

    if-lt p1, v0, :cond_19

    goto :goto_24

    .line 150
    :cond_19
    iget-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    mul-int/lit8 v2, p1, 0x4

    ushr-long/2addr v0, v2

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0

    .line 149
    :cond_24
    :goto_24
    return v1
.end method

.method public blacklist isUsingBytes()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 483
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    return v0
.end method

.method public blacklist maxRepresentableDigits()I
    .registers 2

    .line 33
    const v0, 0x7fffffff

    return v0
.end method

.method protected blacklist popFromLeft(I)V
    .registers 9
    .param p1, "numDigits"    # I

    .line 205
    nop

    .line 206
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    if-eqz v0, :cond_17

    .line 207
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    add-int/lit8 v0, v0, -0x1

    .line 208
    .local v0, "i":I
    :goto_9
    iget v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    sub-int/2addr v1, p1

    if-lt v0, v1, :cond_16

    .line 209
    iget-object v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    .line 208
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 211
    .end local v0    # "i":I
    :cond_16
    goto :goto_26

    .line 212
    :cond_17
    iget-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    sub-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0x4

    const-wide/16 v3, 0x1

    shl-long v5, v3, v2

    sub-long/2addr v5, v3

    and-long/2addr v0, v5

    iput-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 214
    :goto_26
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    .line 215
    return-void
.end method

.method protected blacklist readBigIntegerToBcd(Ljava/math/BigInteger;)V
    .registers 7
    .param p1, "n"    # Ljava/math/BigInteger;

    .line 275
    nop

    .line 276
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->ensureCapacity()V

    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, "i":I
    :goto_5
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 279
    sget-object v1, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v1

    .line 280
    .local v1, "temp":[Ljava/math/BigInteger;
    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, v3}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->ensureCapacity(I)V

    .line 281
    iget-object v3, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->byteValue()B

    move-result v4

    aput-byte v4, v3, v0

    .line 282
    aget-object p1, v1, v2

    .line 278
    .end local v1    # "temp":[Ljava/math/BigInteger;
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 284
    :cond_27
    iput v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    .line 285
    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    .line 286
    return-void
.end method

.method protected blacklist readIntToBcd(I)V
    .registers 11
    .param p1, "n"    # I

    .line 234
    nop

    .line 236
    const-wide/16 v0, 0x0

    .line 237
    .local v0, "result":J
    const/16 v2, 0x10

    .line 238
    .local v2, "i":I
    :goto_5
    if-eqz p1, :cond_18

    .line 239
    const/4 v3, 0x4

    ushr-long v3, v0, v3

    int-to-long v5, p1

    const-wide/16 v7, 0xa

    rem-long/2addr v5, v7

    const/16 v7, 0x3c

    shl-long/2addr v5, v7

    add-long v0, v3, v5

    .line 238
    div-int/lit8 p1, p1, 0xa

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    .line 241
    :cond_18
    nop

    .line 242
    mul-int/lit8 v3, v2, 0x4

    ushr-long v3, v0, v3

    iput-wide v3, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 243
    const/4 v3, 0x0

    iput v3, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    .line 244
    rsub-int/lit8 v3, v2, 0x10

    iput v3, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    .line 245
    return-void
.end method

.method protected blacklist readLongToBcd(J)V
    .registers 16
    .param p1, "n"    # J

    .line 249
    nop

    .line 250
    const-wide v0, 0x2386f26fc10000L

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    if-ltz v0, :cond_29

    .line 251
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->ensureCapacity()V

    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, "i":I
    :goto_13
    cmp-long v6, p1, v2

    if-eqz v6, :cond_23

    .line 254
    iget-object v6, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    rem-long v7, p1, v4

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v6, v0

    .line 253
    div-long/2addr p1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 256
    :cond_23
    nop

    .line 257
    iput v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    .line 258
    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    .line 259
    .end local v0    # "i":I
    goto :goto_4d

    .line 260
    :cond_29
    const-wide/16 v6, 0x0

    .line 261
    .local v6, "result":J
    const/16 v0, 0x10

    .line 262
    .restart local v0    # "i":I
    :goto_2d
    cmp-long v8, p1, v2

    if-eqz v8, :cond_3f

    .line 263
    const/4 v8, 0x4

    ushr-long v8, v6, v8

    rem-long v10, p1, v4

    const/16 v12, 0x3c

    shl-long/2addr v10, v12

    add-long v6, v8, v10

    .line 262
    div-long/2addr p1, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_2d

    .line 265
    :cond_3f
    nop

    .line 266
    nop

    .line 267
    mul-int/lit8 v2, v0, 0x4

    ushr-long v2, v6, v2

    iput-wide v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 268
    iput v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    .line 269
    rsub-int/lit8 v1, v0, 0x10

    iput v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    .line 271
    .end local v0    # "i":I
    .end local v6    # "result":J
    :goto_4d
    return-void
.end method

.method protected blacklist setBcdToZero()V
    .registers 5

    .line 219
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    .line 221
    iput-boolean v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    .line 223
    :cond_a
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 224
    iput v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    .line 225
    iput v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    .line 226
    iput-boolean v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->isApproximate:Z

    .line 227
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->origDouble:D

    .line 228
    iput v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->origDelta:I

    .line 229
    iput v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->exponent:I

    .line 230
    return-void
.end method

.method protected blacklist setDigitPos(IB)V
    .registers 8
    .param p1, "position"    # I
    .param p2, "value"    # B

    .line 156
    nop

    .line 157
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    if-eqz v0, :cond_f

    .line 158
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->ensureCapacity(I)V

    .line 159
    iget-object v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    aput-byte p2, v0, p1

    goto :goto_2e

    .line 160
    :cond_f
    const/16 v0, 0x10

    if-lt p1, v0, :cond_20

    .line 161
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->switchStorage()V

    .line 162
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->ensureCapacity(I)V

    .line 163
    iget-object v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    aput-byte p2, v0, p1

    goto :goto_2e

    .line 165
    :cond_20
    mul-int/lit8 v0, p1, 0x4

    .line 166
    .local v0, "shift":I
    iget-wide v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    const-wide/16 v3, 0xf

    shl-long/2addr v3, v0

    not-long v3, v3

    and-long/2addr v1, v3

    int-to-long v3, p2

    shl-long/2addr v3, v0

    or-long/2addr v1, v3

    iput-wide v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 168
    .end local v0    # "shift":I
    :goto_2e
    return-void
.end method

.method protected blacklist shiftLeft(I)V
    .registers 6
    .param p1, "numDigits"    # I

    .line 172
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    if-nez v0, :cond_e

    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    add-int/2addr v0, p1

    const/16 v1, 0x10

    if-le v0, v1, :cond_e

    .line 173
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->switchStorage()V

    .line 175
    :cond_e
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    if-eqz v0, :cond_28

    .line 176
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->ensureCapacity(I)V

    .line 177
    iget-object v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    iget-object v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    iget v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    iget-object v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    invoke-static {v0, v3, p1, v3}, Ljava/util/Arrays;->fill([BIIB)V

    goto :goto_2f

    .line 180
    :cond_28
    iget-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    mul-int/lit8 v2, p1, 0x4

    shl-long/2addr v0, v2

    iput-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 182
    :goto_2f
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    .line 183
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    .line 184
    return-void
.end method

.method protected blacklist shiftRight(I)V
    .registers 6
    .param p1, "numDigits"    # I

    .line 188
    iget-boolean v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    if-eqz v0, :cond_24

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "i":I
    :goto_5
    iget v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    sub-int/2addr v1, p1

    if-ge v0, v1, :cond_17

    .line 191
    iget-object v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    iget-object v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    add-int v3, v0, p1

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 193
    :cond_17
    :goto_17
    iget v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    if-ge v0, v1, :cond_23

    .line 194
    iget-object v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdBytes:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v0

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 196
    .end local v0    # "i":I
    :cond_23
    goto :goto_2b

    .line 197
    :cond_24
    iget-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    mul-int/lit8 v2, p1, 0x4

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->bcdLong:J

    .line 199
    :goto_2b
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->scale:I

    .line 200
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->precision:I

    .line 201
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 488
    iget v0, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->lReqPos:I

    .line 489
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->rReqPos:I

    .line 490
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 491
    iget-boolean v2, p0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->usingBytes:Z

    if-eqz v2, :cond_13

    const-string v2, "bytes"

    goto :goto_15

    :cond_13
    const-string v2, "long"

    .line 492
    :goto_15
    invoke-virtual {p0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->isNegative()Z

    move-result v3

    if-eqz v3, :cond_1e

    const-string v3, "-"

    goto :goto_20

    :cond_1e
    const-string v3, ""

    .line 493
    :goto_20
    invoke-direct {p0}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;->toNumberString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 488
    const-string v1, "<DecimalQuantity %d:%d %s %s%s>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
