.class public abstract Landroid/icu/number/Precision;
.super Ljava/lang/Object;
.source "Precision.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/number/Precision$InfiniteRounderImpl;,
        Landroid/icu/number/Precision$FractionRounderImpl;,
        Landroid/icu/number/Precision$SignificantRounderImpl;,
        Landroid/icu/number/Precision$FracSigRounderImpl;,
        Landroid/icu/number/Precision$IncrementFiveRounderImpl;,
        Landroid/icu/number/Precision$IncrementOneRounderImpl;,
        Landroid/icu/number/Precision$IncrementRounderImpl;,
        Landroid/icu/number/Precision$CurrencyRounderImpl;,
        Landroid/icu/number/Precision$BogusRounder;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field public static final blacklist BOGUS_PRECISION:Landroid/icu/number/Precision$BogusRounder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final blacklist COMPACT_STRATEGY:Landroid/icu/number/Precision$FracSigRounderImpl;

.field static final blacklist DEFAULT_MAX_FRAC_6:Landroid/icu/number/Precision$FractionRounderImpl;

.field static final blacklist FIXED_FRAC_0:Landroid/icu/number/Precision$FractionRounderImpl;

.field static final blacklist FIXED_FRAC_2:Landroid/icu/number/Precision$FractionRounderImpl;

.field static final blacklist FIXED_SIG_2:Landroid/icu/number/Precision$SignificantRounderImpl;

.field static final blacklist FIXED_SIG_3:Landroid/icu/number/Precision$SignificantRounderImpl;

.field static final blacklist MONETARY_CASH:Landroid/icu/number/Precision$CurrencyRounderImpl;

.field static final blacklist MONETARY_STANDARD:Landroid/icu/number/Precision$CurrencyRounderImpl;

.field static final blacklist NICKEL:Landroid/icu/number/Precision$IncrementFiveRounderImpl;

.field static final blacklist NONE:Landroid/icu/number/Precision$InfiniteRounderImpl;

.field static final blacklist RANGE_SIG_2_3:Landroid/icu/number/Precision$SignificantRounderImpl;


# instance fields
.field blacklist mathContext:Ljava/math/MathContext;

.field blacklist trailingZeroDisplay:Landroid/icu/number/NumberFormatter$TrailingZeroDisplay;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetDisplayMagnitudeFraction(I)I
    .registers 1

    invoke-static {p0}, Landroid/icu/number/Precision;->getDisplayMagnitudeFraction(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetDisplayMagnitudeSignificant(Landroid/icu/impl/number/DecimalQuantity;I)I
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/Precision;->getDisplayMagnitudeSignificant(Landroid/icu/impl/number/DecimalQuantity;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetRoundingMagnitudeFraction(I)I
    .registers 1

    invoke-static {p0}, Landroid/icu/number/Precision;->getRoundingMagnitudeFraction(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetRoundingMagnitudeSignificant(Landroid/icu/impl/number/DecimalQuantity;I)I
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/Precision;->getRoundingMagnitudeSignificant(Landroid/icu/impl/number/DecimalQuantity;I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 10

    .line 27
    nop

    .line 387
    new-instance v0, Landroid/icu/number/Precision$BogusRounder;

    invoke-direct {v0}, Landroid/icu/number/Precision$BogusRounder;-><init>()V

    sput-object v0, Landroid/icu/number/Precision;->BOGUS_PRECISION:Landroid/icu/number/Precision$BogusRounder;

    .line 389
    new-instance v0, Landroid/icu/number/Precision$InfiniteRounderImpl;

    invoke-direct {v0}, Landroid/icu/number/Precision$InfiniteRounderImpl;-><init>()V

    sput-object v0, Landroid/icu/number/Precision;->NONE:Landroid/icu/number/Precision$InfiniteRounderImpl;

    .line 391
    new-instance v0, Landroid/icu/number/Precision$FractionRounderImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/icu/number/Precision$FractionRounderImpl;-><init>(II)V

    sput-object v0, Landroid/icu/number/Precision;->FIXED_FRAC_0:Landroid/icu/number/Precision$FractionRounderImpl;

    .line 392
    new-instance v0, Landroid/icu/number/Precision$FractionRounderImpl;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v2}, Landroid/icu/number/Precision$FractionRounderImpl;-><init>(II)V

    sput-object v0, Landroid/icu/number/Precision;->FIXED_FRAC_2:Landroid/icu/number/Precision$FractionRounderImpl;

    .line 393
    new-instance v0, Landroid/icu/number/Precision$FractionRounderImpl;

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3}, Landroid/icu/number/Precision$FractionRounderImpl;-><init>(II)V

    sput-object v0, Landroid/icu/number/Precision;->DEFAULT_MAX_FRAC_6:Landroid/icu/number/Precision$FractionRounderImpl;

    .line 395
    new-instance v0, Landroid/icu/number/Precision$SignificantRounderImpl;

    invoke-direct {v0, v2, v2}, Landroid/icu/number/Precision$SignificantRounderImpl;-><init>(II)V

    sput-object v0, Landroid/icu/number/Precision;->FIXED_SIG_2:Landroid/icu/number/Precision$SignificantRounderImpl;

    .line 396
    new-instance v0, Landroid/icu/number/Precision$SignificantRounderImpl;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v1}, Landroid/icu/number/Precision$SignificantRounderImpl;-><init>(II)V

    sput-object v0, Landroid/icu/number/Precision;->FIXED_SIG_3:Landroid/icu/number/Precision$SignificantRounderImpl;

    .line 397
    new-instance v0, Landroid/icu/number/Precision$SignificantRounderImpl;

    invoke-direct {v0, v2, v1}, Landroid/icu/number/Precision$SignificantRounderImpl;-><init>(II)V

    sput-object v0, Landroid/icu/number/Precision;->RANGE_SIG_2_3:Landroid/icu/number/Precision$SignificantRounderImpl;

    .line 399
    new-instance v3, Landroid/icu/number/Precision$FracSigRounderImpl;

    sget-object v8, Landroid/icu/number/NumberFormatter$RoundingPriority;->RELAXED:Landroid/icu/number/NumberFormatter$RoundingPriority;

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    invoke-direct/range {v3 .. v9}, Landroid/icu/number/Precision$FracSigRounderImpl;-><init>(IIIILandroid/icu/number/NumberFormatter$RoundingPriority;Z)V

    sput-object v3, Landroid/icu/number/Precision;->COMPACT_STRATEGY:Landroid/icu/number/Precision$FracSigRounderImpl;

    .line 402
    new-instance v0, Landroid/icu/number/Precision$IncrementFiveRounderImpl;

    new-instance v1, Ljava/math/BigDecimal;

    const-string v3, "0.05"

    invoke-direct {v1, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2, v2}, Landroid/icu/number/Precision$IncrementFiveRounderImpl;-><init>(Ljava/math/BigDecimal;II)V

    sput-object v0, Landroid/icu/number/Precision;->NICKEL:Landroid/icu/number/Precision$IncrementFiveRounderImpl;

    .line 404
    new-instance v0, Landroid/icu/number/Precision$CurrencyRounderImpl;

    sget-object v1, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-direct {v0, v1}, Landroid/icu/number/Precision$CurrencyRounderImpl;-><init>(Landroid/icu/util/Currency$CurrencyUsage;)V

    sput-object v0, Landroid/icu/number/Precision;->MONETARY_STANDARD:Landroid/icu/number/Precision$CurrencyRounderImpl;

    .line 405
    new-instance v0, Landroid/icu/number/Precision$CurrencyRounderImpl;

    sget-object v1, Landroid/icu/util/Currency$CurrencyUsage;->CASH:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-direct {v0, v1}, Landroid/icu/number/Precision$CurrencyRounderImpl;-><init>(Landroid/icu/util/Currency$CurrencyUsage;)V

    sput-object v0, Landroid/icu/number/Precision;->MONETARY_CASH:Landroid/icu/number/Precision$CurrencyRounderImpl;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Landroid/icu/impl/number/RoundingUtils;->DEFAULT_MATH_CONTEXT_UNLIMITED:Ljava/math/MathContext;

    iput-object v0, p0, Landroid/icu/number/Precision;->mathContext:Ljava/math/MathContext;

    .line 34
    return-void
.end method

.method static blacklist constructCurrency(Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/number/CurrencyPrecision;
    .registers 2
    .param p0, "usage"    # Landroid/icu/util/Currency$CurrencyUsage;

    .line 473
    sget-object v0, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    if-ne p0, v0, :cond_7

    .line 474
    sget-object v0, Landroid/icu/number/Precision;->MONETARY_STANDARD:Landroid/icu/number/Precision$CurrencyRounderImpl;

    return-object v0

    .line 475
    :cond_7
    sget-object v0, Landroid/icu/util/Currency$CurrencyUsage;->CASH:Landroid/icu/util/Currency$CurrencyUsage;

    if-ne p0, v0, :cond_e

    .line 476
    sget-object v0, Landroid/icu/number/Precision;->MONETARY_CASH:Landroid/icu/number/Precision$CurrencyRounderImpl;

    return-object v0

    .line 478
    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static blacklist constructFraction(II)Landroid/icu/number/FractionPrecision;
    .registers 3
    .param p0, "minFrac"    # I
    .param p1, "maxFrac"    # I

    .line 412
    if-nez p0, :cond_7

    if-nez p1, :cond_7

    .line 413
    sget-object v0, Landroid/icu/number/Precision;->FIXED_FRAC_0:Landroid/icu/number/Precision$FractionRounderImpl;

    return-object v0

    .line 414
    :cond_7
    const/4 v0, 0x2

    if-ne p0, v0, :cond_f

    if-ne p1, v0, :cond_f

    .line 415
    sget-object v0, Landroid/icu/number/Precision;->FIXED_FRAC_2:Landroid/icu/number/Precision$FractionRounderImpl;

    return-object v0

    .line 416
    :cond_f
    if-nez p0, :cond_17

    const/4 v0, 0x6

    if-ne p1, v0, :cond_17

    .line 417
    sget-object v0, Landroid/icu/number/Precision;->DEFAULT_MAX_FRAC_6:Landroid/icu/number/Precision$FractionRounderImpl;

    return-object v0

    .line 419
    :cond_17
    new-instance v0, Landroid/icu/number/Precision$FractionRounderImpl;

    invoke-direct {v0, p0, p1}, Landroid/icu/number/Precision$FractionRounderImpl;-><init>(II)V

    return-object v0
.end method

.method static blacklist constructFractionSignificant(Landroid/icu/number/FractionPrecision;IILandroid/icu/number/NumberFormatter$RoundingPriority;Z)Landroid/icu/number/Precision;
    .registers 14
    .param p0, "base_"    # Landroid/icu/number/FractionPrecision;
    .param p1, "minSig"    # I
    .param p2, "maxSig"    # I
    .param p3, "priority"    # Landroid/icu/number/NumberFormatter$RoundingPriority;
    .param p4, "retain"    # Z

    .line 438
    nop

    .line 439
    move-object v0, p0

    check-cast v0, Landroid/icu/number/Precision$FractionRounderImpl;

    .line 441
    .local v0, "base":Landroid/icu/number/Precision$FractionRounderImpl;
    iget v1, v0, Landroid/icu/number/Precision$FractionRounderImpl;->minFrac:I

    if-nez v1, :cond_1f

    iget v1, v0, Landroid/icu/number/Precision$FractionRounderImpl;->maxFrac:I

    if-nez v1, :cond_1f

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1f

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1f

    sget-object v1, Landroid/icu/number/NumberFormatter$RoundingPriority;->RELAXED:Landroid/icu/number/NumberFormatter$RoundingPriority;

    if-ne p3, v1, :cond_1f

    if-nez p4, :cond_1f

    .line 443
    sget-object v1, Landroid/icu/number/Precision;->COMPACT_STRATEGY:Landroid/icu/number/Precision$FracSigRounderImpl;

    move v5, p1

    move v6, p2

    move-object v7, p3

    move v8, p4

    .local v1, "returnValue":Landroid/icu/number/Precision;
    goto :goto_2d

    .line 445
    .end local v1    # "returnValue":Landroid/icu/number/Precision;
    :cond_1f
    new-instance v2, Landroid/icu/number/Precision$FracSigRounderImpl;

    iget v3, v0, Landroid/icu/number/Precision$FractionRounderImpl;->minFrac:I

    iget v4, v0, Landroid/icu/number/Precision$FractionRounderImpl;->maxFrac:I

    move v5, p1

    move v6, p2

    move-object v7, p3

    move v8, p4

    .end local p1    # "minSig":I
    .end local p2    # "maxSig":I
    .end local p3    # "priority":Landroid/icu/number/NumberFormatter$RoundingPriority;
    .end local p4    # "retain":Z
    .local v5, "minSig":I
    .local v6, "maxSig":I
    .local v7, "priority":Landroid/icu/number/NumberFormatter$RoundingPriority;
    .local v8, "retain":Z
    invoke-direct/range {v2 .. v8}, Landroid/icu/number/Precision$FracSigRounderImpl;-><init>(IIIILandroid/icu/number/NumberFormatter$RoundingPriority;Z)V

    move-object v1, v2

    .line 447
    .restart local v1    # "returnValue":Landroid/icu/number/Precision;
    :goto_2d
    iget-object p1, v0, Landroid/icu/number/Precision$FractionRounderImpl;->mathContext:Ljava/math/MathContext;

    invoke-virtual {v1, p1}, Landroid/icu/number/Precision;->withMode(Ljava/math/MathContext;)Landroid/icu/number/Precision;

    move-result-object p1

    return-object p1
.end method

.method static blacklist constructFromCurrency(Landroid/icu/number/CurrencyPrecision;Landroid/icu/util/Currency;)Landroid/icu/number/Precision;
    .registers 7
    .param p0, "base_"    # Landroid/icu/number/CurrencyPrecision;
    .param p1, "currency"    # Landroid/icu/util/Currency;

    .line 483
    nop

    .line 484
    move-object v0, p0

    check-cast v0, Landroid/icu/number/Precision$CurrencyRounderImpl;

    .line 485
    .local v0, "base":Landroid/icu/number/Precision$CurrencyRounderImpl;
    iget-object v1, v0, Landroid/icu/number/Precision$CurrencyRounderImpl;->usage:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-virtual {p1, v1}, Landroid/icu/util/Currency;->getRoundingIncrement(Landroid/icu/util/Currency$CurrencyUsage;)D

    move-result-wide v1

    .line 487
    .local v1, "incrementDouble":D
    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_19

    .line 488
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v3

    .line 489
    .local v3, "increment":Ljava/math/BigDecimal;
    invoke-static {v3}, Landroid/icu/number/Precision;->constructIncrement(Ljava/math/BigDecimal;)Landroid/icu/number/Precision;

    move-result-object v3

    .line 490
    .local v3, "returnValue":Landroid/icu/number/Precision;
    goto :goto_24

    .line 491
    .end local v3    # "returnValue":Landroid/icu/number/Precision;
    :cond_19
    iget-object v3, v0, Landroid/icu/number/Precision$CurrencyRounderImpl;->usage:Landroid/icu/util/Currency$CurrencyUsage;

    invoke-virtual {p1, v3}, Landroid/icu/util/Currency;->getDefaultFractionDigits(Landroid/icu/util/Currency$CurrencyUsage;)I

    move-result v3

    .line 492
    .local v3, "minMaxFrac":I
    invoke-static {v3, v3}, Landroid/icu/number/Precision;->constructFraction(II)Landroid/icu/number/FractionPrecision;

    move-result-object v4

    move-object v3, v4

    .line 494
    .local v3, "returnValue":Landroid/icu/number/Precision;
    :goto_24
    iget-object v4, v0, Landroid/icu/number/Precision$CurrencyRounderImpl;->mathContext:Ljava/math/MathContext;

    invoke-virtual {v3, v4}, Landroid/icu/number/Precision;->withMode(Ljava/math/MathContext;)Landroid/icu/number/Precision;

    move-result-object v4

    return-object v4
.end method

.method static blacklist constructIncrement(Ljava/math/BigDecimal;)Landroid/icu/number/Precision;
    .registers 7
    .param p0, "increment"    # Ljava/math/BigDecimal;

    .line 452
    sget-object v0, Landroid/icu/number/Precision;->NICKEL:Landroid/icu/number/Precision$IncrementFiveRounderImpl;

    iget-object v0, v0, Landroid/icu/number/Precision$IncrementFiveRounderImpl;->increment:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 453
    sget-object v0, Landroid/icu/number/Precision;->NICKEL:Landroid/icu/number/Precision$IncrementFiveRounderImpl;

    return-object v0

    .line 458
    :cond_d
    invoke-virtual {p0}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v0

    .line 459
    .local v0, "reduced":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->precision()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3d

    .line 460
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    .line 461
    .local v1, "minFrac":I
    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v3

    .line 462
    .local v3, "maxFrac":I
    invoke-virtual {v0}, Ljava/math/BigDecimal;->unscaledValue()Ljava/math/BigInteger;

    move-result-object v4

    .line 463
    .local v4, "digit":Ljava/math/BigInteger;
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_30

    .line 464
    new-instance v2, Landroid/icu/number/Precision$IncrementOneRounderImpl;

    invoke-direct {v2, p0, v1, v3}, Landroid/icu/number/Precision$IncrementOneRounderImpl;-><init>(Ljava/math/BigDecimal;II)V

    return-object v2

    .line 465
    :cond_30
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    const/4 v5, 0x5

    if-ne v2, v5, :cond_3d

    .line 466
    new-instance v2, Landroid/icu/number/Precision$IncrementFiveRounderImpl;

    invoke-direct {v2, p0, v1, v3}, Landroid/icu/number/Precision$IncrementFiveRounderImpl;-><init>(Ljava/math/BigDecimal;II)V

    return-object v2

    .line 469
    .end local v1    # "minFrac":I
    .end local v3    # "maxFrac":I
    .end local v4    # "digit":Ljava/math/BigInteger;
    :cond_3d
    new-instance v1, Landroid/icu/number/Precision$IncrementRounderImpl;

    invoke-direct {v1, p0}, Landroid/icu/number/Precision$IncrementRounderImpl;-><init>(Ljava/math/BigDecimal;)V

    return-object v1
.end method

.method static blacklist constructInfinite()Landroid/icu/number/Precision;
    .registers 1

    .line 408
    sget-object v0, Landroid/icu/number/Precision;->NONE:Landroid/icu/number/Precision$InfiniteRounderImpl;

    return-object v0
.end method

.method static blacklist constructSignificant(II)Landroid/icu/number/Precision;
    .registers 4
    .param p0, "minSig"    # I
    .param p1, "maxSig"    # I

    .line 425
    const/4 v0, 0x2

    if-ne p0, v0, :cond_8

    if-ne p1, v0, :cond_8

    .line 426
    sget-object v0, Landroid/icu/number/Precision;->FIXED_SIG_2:Landroid/icu/number/Precision$SignificantRounderImpl;

    return-object v0

    .line 427
    :cond_8
    const/4 v1, 0x3

    if-ne p0, v1, :cond_10

    if-ne p1, v1, :cond_10

    .line 428
    sget-object v0, Landroid/icu/number/Precision;->FIXED_SIG_3:Landroid/icu/number/Precision$SignificantRounderImpl;

    return-object v0

    .line 429
    :cond_10
    if-ne p0, v0, :cond_17

    if-ne p1, v1, :cond_17

    .line 430
    sget-object v0, Landroid/icu/number/Precision;->RANGE_SIG_2_3:Landroid/icu/number/Precision$SignificantRounderImpl;

    return-object v0

    .line 432
    :cond_17
    new-instance v0, Landroid/icu/number/Precision$SignificantRounderImpl;

    invoke-direct {v0, p0, p1}, Landroid/icu/number/Precision$SignificantRounderImpl;-><init>(II)V

    return-object v0
.end method

.method public static whitelist test-api currency(Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/number/CurrencyPrecision;
    .registers 3
    .param p0, "currencyUsage"    # Landroid/icu/util/Currency$CurrencyUsage;

    .line 323
    if-eqz p0, :cond_7

    .line 324
    invoke-static {p0}, Landroid/icu/number/Precision;->constructCurrency(Landroid/icu/util/Currency$CurrencyUsage;)Landroid/icu/number/CurrencyPrecision;

    move-result-object v0

    return-object v0

    .line 326
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CurrencyUsage must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api fixedFraction(I)Landroid/icu/number/FractionPrecision;
    .registers 3
    .param p0, "minMaxFractionPlaces"    # I

    .line 97
    if-ltz p0, :cond_b

    const/16 v0, 0x3e7

    if-gt p0, v0, :cond_b

    .line 98
    invoke-static {p0, p0}, Landroid/icu/number/Precision;->constructFraction(II)Landroid/icu/number/FractionPrecision;

    move-result-object v0

    return-object v0

    .line 100
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fraction length must be between 0 and 999 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api fixedSignificantDigits(I)Landroid/icu/number/Precision;
    .registers 3
    .param p0, "minMaxSignificantDigits"    # I

    .line 196
    const/4 v0, 0x1

    if-lt p0, v0, :cond_c

    const/16 v0, 0x3e7

    if-gt p0, v0, :cond_c

    .line 197
    invoke-static {p0, p0}, Landroid/icu/number/Precision;->constructSignificant(II)Landroid/icu/number/Precision;

    move-result-object v0

    return-object v0

    .line 199
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Significant digits must be between 1 and 999 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist getDisplayMagnitudeFraction(I)I
    .registers 2
    .param p0, "minFrac"    # I

    .line 884
    if-nez p0, :cond_6

    .line 885
    const v0, 0x7fffffff

    return v0

    .line 887
    :cond_6
    neg-int v0, p0

    return v0
.end method

.method private static blacklist getDisplayMagnitudeSignificant(Landroid/icu/impl/number/DecimalQuantity;I)I
    .registers 4
    .param p0, "value"    # Landroid/icu/impl/number/DecimalQuantity;
    .param p1, "minSig"    # I

    .line 901
    invoke-interface {p0}, Landroid/icu/impl/number/DecimalQuantity;->isZeroish()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-interface {p0}, Landroid/icu/impl/number/DecimalQuantity;->getMagnitude()I

    move-result v0

    .line 902
    .local v0, "magnitude":I
    :goto_c
    sub-int v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private static blacklist getRoundingMagnitudeFraction(I)I
    .registers 2
    .param p0, "maxFrac"    # I

    .line 869
    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    .line 870
    const/high16 v0, -0x80000000

    return v0

    .line 872
    :cond_6
    neg-int v0, p0

    return v0
.end method

.method private static blacklist getRoundingMagnitudeSignificant(Landroid/icu/impl/number/DecimalQuantity;I)I
    .registers 4
    .param p0, "value"    # Landroid/icu/impl/number/DecimalQuantity;
    .param p1, "maxSig"    # I

    .line 876
    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    .line 877
    const/high16 v0, -0x80000000

    return v0

    .line 879
    :cond_6
    invoke-interface {p0}, Landroid/icu/impl/number/DecimalQuantity;->isZeroish()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    goto :goto_12

    :cond_e
    invoke-interface {p0}, Landroid/icu/impl/number/DecimalQuantity;->getMagnitude()I

    move-result v0

    .line 880
    .local v0, "magnitude":I
    :goto_12
    sub-int v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public static whitelist test-api increment(Ljava/math/BigDecimal;)Landroid/icu/number/Precision;
    .registers 3
    .param p0, "roundingIncrement"    # Ljava/math/BigDecimal;

    .line 296
    if-eqz p0, :cond_f

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-lez v0, :cond_f

    .line 297
    invoke-static {p0}, Landroid/icu/number/Precision;->constructIncrement(Ljava/math/BigDecimal;)Landroid/icu/number/Precision;

    move-result-object v0

    return-object v0

    .line 299
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Rounding increment must be positive and non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api integer()Landroid/icu/number/FractionPrecision;
    .registers 1

    .line 64
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/icu/number/Precision;->constructFraction(II)Landroid/icu/number/FractionPrecision;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api maxFraction(I)Landroid/icu/number/FractionPrecision;
    .registers 3
    .param p0, "maxFractionPlaces"    # I

    .line 144
    if-ltz p0, :cond_c

    const/16 v0, 0x3e7

    if-gt p0, v0, :cond_c

    .line 145
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/icu/number/Precision;->constructFraction(II)Landroid/icu/number/FractionPrecision;

    move-result-object v0

    return-object v0

    .line 147
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fraction length must be between 0 and 999 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api maxSignificantDigits(I)Landroid/icu/number/Precision;
    .registers 3
    .param p0, "maxSignificantDigits"    # I

    .line 239
    const/4 v0, 0x1

    if-lt p0, v0, :cond_c

    const/16 v1, 0x3e7

    if-gt p0, v1, :cond_c

    .line 240
    invoke-static {v0, p0}, Landroid/icu/number/Precision;->constructSignificant(II)Landroid/icu/number/Precision;

    move-result-object v0

    return-object v0

    .line 242
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Significant digits must be between 1 and 999 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api minFraction(I)Landroid/icu/number/FractionPrecision;
    .registers 3
    .param p0, "minFractionPlaces"    # I

    .line 122
    if-ltz p0, :cond_c

    const/16 v0, 0x3e7

    if-gt p0, v0, :cond_c

    .line 123
    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/icu/number/Precision;->constructFraction(II)Landroid/icu/number/FractionPrecision;

    move-result-object v0

    return-object v0

    .line 125
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fraction length must be between 0 and 999 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api minMaxFraction(II)Landroid/icu/number/FractionPrecision;
    .registers 4
    .param p0, "minFractionPlaces"    # I
    .param p1, "maxFractionPlaces"    # I

    .line 169
    if-ltz p0, :cond_d

    const/16 v0, 0x3e7

    if-gt p1, v0, :cond_d

    if-gt p0, p1, :cond_d

    .line 172
    invoke-static {p0, p1}, Landroid/icu/number/Precision;->constructFraction(II)Landroid/icu/number/FractionPrecision;

    move-result-object v0

    return-object v0

    .line 174
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Fraction length must be between 0 and 999 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api minMaxSignificantDigits(II)Landroid/icu/number/Precision;
    .registers 4
    .param p0, "minSignificantDigits"    # I
    .param p1, "maxSignificantDigits"    # I

    .line 261
    const/4 v0, 0x1

    if-lt p0, v0, :cond_e

    const/16 v0, 0x3e7

    if-gt p1, v0, :cond_e

    if-gt p0, p1, :cond_e

    .line 264
    invoke-static {p0, p1}, Landroid/icu/number/Precision;->constructSignificant(II)Landroid/icu/number/Precision;

    move-result-object v0

    return-object v0

    .line 266
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Significant digits must be between 1 and 999 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api minSignificantDigits(I)Landroid/icu/number/Precision;
    .registers 3
    .param p0, "minSignificantDigits"    # I

    .line 220
    const/4 v0, 0x1

    if-lt p0, v0, :cond_d

    const/16 v0, 0x3e7

    if-gt p0, v0, :cond_d

    .line 221
    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/icu/number/Precision;->constructSignificant(II)Landroid/icu/number/Precision;

    move-result-object v0

    return-object v0

    .line 223
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Significant digits must be between 1 and 999 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api unlimited()Landroid/icu/number/Precision;
    .registers 1

    .line 54
    invoke-static {}, Landroid/icu/number/Precision;->constructInfinite()Landroid/icu/number/Precision;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract blacklist apply(Landroid/icu/impl/number/DecimalQuantity;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method blacklist chooseMultiplierAndApply(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/number/MultiplierProducer;)I
    .registers 7
    .param p1, "input"    # Landroid/icu/impl/number/DecimalQuantity;
    .param p2, "producer"    # Landroid/icu/impl/number/MultiplierProducer;

    .line 533
    nop

    .line 536
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->getMagnitude()I

    move-result v0

    .line 537
    .local v0, "magnitude":I
    invoke-interface {p2, v0}, Landroid/icu/impl/number/MultiplierProducer;->getMultiplier(I)I

    move-result v1

    .line 538
    .local v1, "multiplier":I
    invoke-interface {p1, v1}, Landroid/icu/impl/number/DecimalQuantity;->adjustMagnitude(I)V

    .line 539
    invoke-virtual {p0, p1}, Landroid/icu/number/Precision;->apply(Landroid/icu/impl/number/DecimalQuantity;)V

    .line 542
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->isZeroish()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 543
    return v1

    .line 548
    :cond_16
    invoke-interface {p1}, Landroid/icu/impl/number/DecimalQuantity;->getMagnitude()I

    move-result v2

    add-int v3, v0, v1

    if-ne v2, v3, :cond_1f

    .line 549
    return v1

    .line 555
    :cond_1f
    add-int/lit8 v2, v0, 0x1

    invoke-interface {p2, v2}, Landroid/icu/impl/number/MultiplierProducer;->getMultiplier(I)I

    move-result v2

    .line 556
    .local v2, "_multiplier":I
    if-ne v1, v2, :cond_28

    .line 557
    return v1

    .line 562
    :cond_28
    sub-int v3, v2, v1

    invoke-interface {p1, v3}, Landroid/icu/impl/number/DecimalQuantity;->adjustMagnitude(I)V

    .line 563
    invoke-virtual {p0, p1}, Landroid/icu/number/Precision;->apply(Landroid/icu/impl/number/DecimalQuantity;)V

    .line 564
    return v2
.end method

.method abstract blacklist createCopy()Landroid/icu/number/Precision;
.end method

.method blacklist createCopyHelper(Landroid/icu/number/Precision;)V
    .registers 3
    .param p1, "copy"    # Landroid/icu/number/Precision;

    .line 367
    iget-object v0, p0, Landroid/icu/number/Precision;->mathContext:Ljava/math/MathContext;

    iput-object v0, p1, Landroid/icu/number/Precision;->mathContext:Ljava/math/MathContext;

    .line 368
    iget-object v0, p0, Landroid/icu/number/Precision;->trailingZeroDisplay:Landroid/icu/number/NumberFormatter$TrailingZeroDisplay;

    iput-object v0, p1, Landroid/icu/number/Precision;->trailingZeroDisplay:Landroid/icu/number/NumberFormatter$TrailingZeroDisplay;

    .line 369
    return-void
.end method

.method blacklist setResolvedMinFraction(Landroid/icu/impl/number/DecimalQuantity;I)V
    .registers 7
    .param p1, "value"    # Landroid/icu/impl/number/DecimalQuantity;
    .param p2, "resolvedMinFraction"    # I

    .line 891
    iget-object v0, p0, Landroid/icu/number/Precision;->trailingZeroDisplay:Landroid/icu/number/NumberFormatter$TrailingZeroDisplay;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/icu/number/Precision;->trailingZeroDisplay:Landroid/icu/number/NumberFormatter$TrailingZeroDisplay;

    sget-object v1, Landroid/icu/number/NumberFormatter$TrailingZeroDisplay;->AUTO:Landroid/icu/number/NumberFormatter$TrailingZeroDisplay;

    if-eq v0, v1, :cond_16

    sget-object v0, Landroid/icu/text/PluralRules$Operand;->t:Landroid/icu/text/PluralRules$Operand;

    .line 894
    invoke-interface {p1, v0}, Landroid/icu/impl/number/DecimalQuantity;->getPluralOperand(Landroid/icu/text/PluralRules$Operand;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_19

    .line 895
    :cond_16
    invoke-interface {p1, p2}, Landroid/icu/impl/number/DecimalQuantity;->setMinFraction(I)V

    .line 897
    :cond_19
    return-void
.end method

.method public whitelist test-api trailingZeroDisplay(Landroid/icu/number/NumberFormatter$TrailingZeroDisplay;)Landroid/icu/number/Precision;
    .registers 3
    .param p1, "trailingZeroDisplay"    # Landroid/icu/number/NumberFormatter$TrailingZeroDisplay;

    .line 337
    invoke-virtual {p0}, Landroid/icu/number/Precision;->createCopy()Landroid/icu/number/Precision;

    move-result-object v0

    .line 338
    .local v0, "result":Landroid/icu/number/Precision;
    iput-object p1, v0, Landroid/icu/number/Precision;->trailingZeroDisplay:Landroid/icu/number/NumberFormatter$TrailingZeroDisplay;

    .line 339
    return-object v0
.end method

.method blacklist withLocaleData(Landroid/icu/util/Currency;)Landroid/icu/number/Precision;
    .registers 3
    .param p1, "currency"    # Landroid/icu/util/Currency;

    .line 506
    instance-of v0, p0, Landroid/icu/number/CurrencyPrecision;

    if-eqz v0, :cond_c

    .line 507
    move-object v0, p0

    check-cast v0, Landroid/icu/number/CurrencyPrecision;

    invoke-virtual {v0, p1}, Landroid/icu/number/CurrencyPrecision;->withCurrency(Landroid/icu/util/Currency;)Landroid/icu/number/Precision;

    move-result-object v0

    return-object v0

    .line 509
    :cond_c
    return-object p0
.end method

.method public blacklist withMode(Ljava/math/MathContext;)Landroid/icu/number/Precision;
    .registers 3
    .param p1, "mathContext"    # Ljava/math/MathContext;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 350
    iget-object v0, p0, Landroid/icu/number/Precision;->mathContext:Ljava/math/MathContext;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 351
    return-object p0

    .line 353
    :cond_9
    invoke-virtual {p0}, Landroid/icu/number/Precision;->createCopy()Landroid/icu/number/Precision;

    move-result-object v0

    .line 354
    .local v0, "other":Landroid/icu/number/Precision;
    iput-object p1, v0, Landroid/icu/number/Precision;->mathContext:Ljava/math/MathContext;

    .line 355
    return-object v0
.end method
