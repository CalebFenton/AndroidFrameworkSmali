.class final Landroid/icu/number/NumberSkeletonImpl$GeneratorHelpers;
.super Ljava/lang/Object;
.source "NumberSkeletonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/number/NumberSkeletonImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "GeneratorHelpers"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdecimal(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$GeneratorHelpers;->decimal(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgrouping(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$GeneratorHelpers;->grouping(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smintegerWidth(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$GeneratorHelpers;->integerWidth(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnotation(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$GeneratorHelpers;->notation(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smprecision(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$GeneratorHelpers;->precision(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smroundingMode(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$GeneratorHelpers;->roundingMode(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smscale(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$GeneratorHelpers;->scale(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsign(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$GeneratorHelpers;->sign(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsymbols(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$GeneratorHelpers;->symbols(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smunit(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$GeneratorHelpers;->unit(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smunitWidth(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$GeneratorHelpers;->unitWidth(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smusage(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/number/NumberSkeletonImpl$GeneratorHelpers;->usage(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1491
    const-class v0, Landroid/icu/number/NumberSkeletonImpl;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 1491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist decimal(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .registers 4
    .param p0, "macros"    # Landroid/icu/impl/number/MacroProps;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 1685
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    sget-object v1, Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;->AUTO:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    if-ne v0, v1, :cond_8

    .line 1686
    const/4 v0, 0x0

    return v0

    .line 1688
    :cond_8
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->decimal:Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;

    invoke-static {v0, p1}, Landroid/icu/number/NumberSkeletonImpl$EnumToStemString;->-$$Nest$smdecimalSeparatorDisplay(Landroid/icu/number/NumberFormatter$DecimalSeparatorDisplay;Ljava/lang/StringBuilder;)V

    .line 1689
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist grouping(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .registers 4
    .param p0, "macros"    # Landroid/icu/impl/number/MacroProps;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 1624
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    instance-of v0, v0, Landroid/icu/number/NumberFormatter$GroupingStrategy;

    if-eqz v0, :cond_17

    .line 1625
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    sget-object v1, Landroid/icu/number/NumberFormatter$GroupingStrategy;->AUTO:Landroid/icu/number/NumberFormatter$GroupingStrategy;

    if-ne v0, v1, :cond_e

    .line 1626
    const/4 v0, 0x0

    return v0

    .line 1628
    :cond_e
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->grouping:Ljava/lang/Object;

    check-cast v0, Landroid/icu/number/NumberFormatter$GroupingStrategy;

    invoke-static {v0, p1}, Landroid/icu/number/NumberSkeletonImpl$EnumToStemString;->-$$Nest$smgroupingStrategy(Landroid/icu/number/NumberFormatter$GroupingStrategy;Ljava/lang/StringBuilder;)V

    .line 1629
    const/4 v0, 0x1

    return v0

    .line 1631
    :cond_17
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot generate number skeleton with custom Grouper"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist integerWidth(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .registers 5
    .param p0, "macros"    # Landroid/icu/impl/number/MacroProps;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 1637
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    sget-object v1, Landroid/icu/number/IntegerWidth;->DEFAULT:Landroid/icu/number/IntegerWidth;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1638
    const/4 v0, 0x0

    return v0

    .line 1640
    :cond_c
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    iget v0, v0, Landroid/icu/number/IntegerWidth;->minInt:I

    const/4 v1, 0x1

    if-nez v0, :cond_1f

    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    iget v0, v0, Landroid/icu/number/IntegerWidth;->maxInt:I

    if-nez v0, :cond_1f

    .line 1641
    const-string v0, "integer-width-trunc"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1642
    return v1

    .line 1644
    :cond_1f
    const-string v0, "integer-width/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1645
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    iget v0, v0, Landroid/icu/number/IntegerWidth;->minInt:I

    iget-object v2, p0, Landroid/icu/impl/number/MacroProps;->integerWidth:Landroid/icu/number/IntegerWidth;

    iget v2, v2, Landroid/icu/number/IntegerWidth;->maxInt:I

    invoke-static {v0, v2, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->-$$Nest$smgenerateIntegerWidthOption(IILjava/lang/StringBuilder;)V

    .line 1648
    return v1
.end method

.method private static blacklist notation(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .registers 7
    .param p0, "macros"    # Landroid/icu/impl/number/MacroProps;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 1494
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    instance-of v0, v0, Landroid/icu/number/CompactNotation;

    const/4 v1, 0x1

    if-eqz v0, :cond_2b

    .line 1495
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    invoke-static {}, Landroid/icu/number/Notation;->compactLong()Landroid/icu/number/CompactNotation;

    move-result-object v2

    if-ne v0, v2, :cond_15

    .line 1496
    const-string v0, "compact-long"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1497
    return v1

    .line 1498
    :cond_15
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    invoke-static {}, Landroid/icu/number/Notation;->compactShort()Landroid/icu/number/CompactNotation;

    move-result-object v2

    if-ne v0, v2, :cond_23

    .line 1499
    const-string v0, "compact-short"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    return v1

    .line 1504
    :cond_23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot generate number skeleton with custom compact data"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1507
    :cond_2b
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    instance-of v0, v0, Landroid/icu/number/ScientificNotation;

    if-eqz v0, :cond_62

    .line 1508
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->notation:Landroid/icu/number/Notation;

    check-cast v0, Landroid/icu/number/ScientificNotation;

    .line 1509
    .local v0, "impl":Landroid/icu/number/ScientificNotation;
    iget v2, v0, Landroid/icu/number/ScientificNotation;->engineeringInterval:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_40

    .line 1510
    const-string v2, "engineering"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 1512
    :cond_40
    const-string v2, "scientific"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1514
    :goto_45
    iget v2, v0, Landroid/icu/number/ScientificNotation;->minExponentDigits:I

    const/16 v3, 0x2f

    if-le v2, v1, :cond_53

    .line 1515
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1516
    iget v2, v0, Landroid/icu/number/ScientificNotation;->minExponentDigits:I

    invoke-static {v2, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->-$$Nest$smgenerateExponentWidthOption(ILjava/lang/StringBuilder;)V

    .line 1518
    :cond_53
    iget-object v2, v0, Landroid/icu/number/ScientificNotation;->exponentSignDisplay:Landroid/icu/number/NumberFormatter$SignDisplay;

    sget-object v4, Landroid/icu/number/NumberFormatter$SignDisplay;->AUTO:Landroid/icu/number/NumberFormatter$SignDisplay;

    if-eq v2, v4, :cond_61

    .line 1519
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1520
    iget-object v2, v0, Landroid/icu/number/ScientificNotation;->exponentSignDisplay:Landroid/icu/number/NumberFormatter$SignDisplay;

    invoke-static {v2, p1}, Landroid/icu/number/NumberSkeletonImpl$EnumToStemString;->-$$Nest$smsignDisplay(Landroid/icu/number/NumberFormatter$SignDisplay;Ljava/lang/StringBuilder;)V

    .line 1522
    :cond_61
    return v1

    .line 1524
    .end local v0    # "impl":Landroid/icu/number/ScientificNotation;
    :cond_62
    nop

    .line 1526
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist precision(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .registers 6
    .param p0, "macros"    # Landroid/icu/impl/number/MacroProps;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 1567
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    instance-of v0, v0, Landroid/icu/number/Precision$InfiniteRounderImpl;

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 1568
    const-string v0, "precision-unlimited"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a5

    .line 1569
    :cond_e
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    instance-of v0, v0, Landroid/icu/number/Precision$FractionRounderImpl;

    if-eqz v0, :cond_21

    .line 1570
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    check-cast v0, Landroid/icu/number/Precision$FractionRounderImpl;

    .line 1571
    .local v0, "impl":Landroid/icu/number/Precision$FractionRounderImpl;
    iget v2, v0, Landroid/icu/number/Precision$FractionRounderImpl;->minFrac:I

    iget v3, v0, Landroid/icu/number/Precision$FractionRounderImpl;->maxFrac:I

    invoke-static {v2, v3, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->-$$Nest$smgenerateFractionStem(IILjava/lang/StringBuilder;)V

    .line 1572
    .end local v0    # "impl":Landroid/icu/number/Precision$FractionRounderImpl;
    goto/16 :goto_a5

    :cond_21
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    instance-of v0, v0, Landroid/icu/number/Precision$SignificantRounderImpl;

    if-eqz v0, :cond_34

    .line 1573
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    check-cast v0, Landroid/icu/number/Precision$SignificantRounderImpl;

    .line 1574
    .local v0, "impl":Landroid/icu/number/Precision$SignificantRounderImpl;
    iget v2, v0, Landroid/icu/number/Precision$SignificantRounderImpl;->minSig:I

    iget v3, v0, Landroid/icu/number/Precision$SignificantRounderImpl;->maxSig:I

    invoke-static {v2, v3, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->-$$Nest$smgenerateDigitsStem(IILjava/lang/StringBuilder;)V

    .line 1575
    .end local v0    # "impl":Landroid/icu/number/Precision$SignificantRounderImpl;
    goto/16 :goto_a5

    :cond_34
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    instance-of v0, v0, Landroid/icu/number/Precision$FracSigRounderImpl;

    if-eqz v0, :cond_7a

    .line 1576
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    check-cast v0, Landroid/icu/number/Precision$FracSigRounderImpl;

    .line 1577
    .local v0, "impl":Landroid/icu/number/Precision$FracSigRounderImpl;
    iget v2, v0, Landroid/icu/number/Precision$FracSigRounderImpl;->minFrac:I

    iget v3, v0, Landroid/icu/number/Precision$FracSigRounderImpl;->maxFrac:I

    invoke-static {v2, v3, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->-$$Nest$smgenerateFractionStem(IILjava/lang/StringBuilder;)V

    .line 1578
    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1579
    iget-boolean v2, v0, Landroid/icu/number/Precision$FracSigRounderImpl;->retain:Z

    if-eqz v2, :cond_61

    .line 1580
    iget-object v2, v0, Landroid/icu/number/Precision$FracSigRounderImpl;->priority:Landroid/icu/number/NumberFormatter$RoundingPriority;

    sget-object v3, Landroid/icu/number/NumberFormatter$RoundingPriority;->RELAXED:Landroid/icu/number/NumberFormatter$RoundingPriority;

    if-ne v2, v3, :cond_5b

    .line 1581
    iget v2, v0, Landroid/icu/number/Precision$FracSigRounderImpl;->maxSig:I

    const/4 v3, -0x1

    invoke-static {v2, v3, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->-$$Nest$smgenerateDigitsStem(IILjava/lang/StringBuilder;)V

    goto :goto_79

    .line 1583
    :cond_5b
    iget v2, v0, Landroid/icu/number/Precision$FracSigRounderImpl;->maxSig:I

    invoke-static {v1, v2, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->-$$Nest$smgenerateDigitsStem(IILjava/lang/StringBuilder;)V

    goto :goto_79

    .line 1586
    :cond_61
    iget v2, v0, Landroid/icu/number/Precision$FracSigRounderImpl;->minSig:I

    iget v3, v0, Landroid/icu/number/Precision$FracSigRounderImpl;->maxSig:I

    invoke-static {v2, v3, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->-$$Nest$smgenerateDigitsStem(IILjava/lang/StringBuilder;)V

    .line 1587
    iget-object v2, v0, Landroid/icu/number/Precision$FracSigRounderImpl;->priority:Landroid/icu/number/NumberFormatter$RoundingPriority;

    sget-object v3, Landroid/icu/number/NumberFormatter$RoundingPriority;->RELAXED:Landroid/icu/number/NumberFormatter$RoundingPriority;

    if-ne v2, v3, :cond_74

    .line 1588
    const/16 v2, 0x72

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_79

    .line 1590
    :cond_74
    const/16 v2, 0x73

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1593
    .end local v0    # "impl":Landroid/icu/number/Precision$FracSigRounderImpl;
    :goto_79
    goto :goto_a5

    :cond_7a
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    instance-of v0, v0, Landroid/icu/number/Precision$IncrementRounderImpl;

    if-eqz v0, :cond_8f

    .line 1594
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    check-cast v0, Landroid/icu/number/Precision$IncrementRounderImpl;

    .line 1595
    .local v0, "impl":Landroid/icu/number/Precision$IncrementRounderImpl;
    const-string v2, "precision-increment/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    iget-object v2, v0, Landroid/icu/number/Precision$IncrementRounderImpl;->increment:Ljava/math/BigDecimal;

    invoke-static {v2, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->-$$Nest$smgenerateIncrementOption(Ljava/math/BigDecimal;Ljava/lang/StringBuilder;)V

    .line 1597
    .end local v0    # "impl":Landroid/icu/number/Precision$IncrementRounderImpl;
    goto :goto_a5

    .line 1598
    :cond_8f
    nop

    .line 1599
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    check-cast v0, Landroid/icu/number/Precision$CurrencyRounderImpl;

    .line 1600
    .local v0, "impl":Landroid/icu/number/Precision$CurrencyRounderImpl;
    iget-object v2, v0, Landroid/icu/number/Precision$CurrencyRounderImpl;->usage:Landroid/icu/util/Currency$CurrencyUsage;

    sget-object v3, Landroid/icu/util/Currency$CurrencyUsage;->STANDARD:Landroid/icu/util/Currency$CurrencyUsage;

    if-ne v2, v3, :cond_a0

    .line 1601
    const-string v2, "precision-currency-standard"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a5

    .line 1603
    :cond_a0
    const-string v2, "precision-currency-cash"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1607
    .end local v0    # "impl":Landroid/icu/number/Precision$CurrencyRounderImpl;
    :goto_a5
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->precision:Landroid/icu/number/Precision;

    iget-object v0, v0, Landroid/icu/number/Precision;->trailingZeroDisplay:Landroid/icu/number/NumberFormatter$TrailingZeroDisplay;

    sget-object v2, Landroid/icu/number/NumberFormatter$TrailingZeroDisplay;->HIDE_IF_WHOLE:Landroid/icu/number/NumberFormatter$TrailingZeroDisplay;

    if-ne v0, v2, :cond_b2

    .line 1608
    const-string v0, "/w"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    :cond_b2
    return v1
.end method

.method private static blacklist roundingMode(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .registers 4
    .param p0, "macros"    # Landroid/icu/impl/number/MacroProps;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 1616
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->roundingMode:Ljava/math/RoundingMode;

    sget-object v1, Landroid/icu/impl/number/RoundingUtils;->DEFAULT_ROUNDING_MODE:Ljava/math/RoundingMode;

    if-ne v0, v1, :cond_8

    .line 1617
    const/4 v0, 0x0

    return v0

    .line 1619
    :cond_8
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->roundingMode:Ljava/math/RoundingMode;

    invoke-static {v0, p1}, Landroid/icu/number/NumberSkeletonImpl$EnumToStemString;->-$$Nest$smroundingMode(Ljava/math/RoundingMode;Ljava/lang/StringBuilder;)V

    .line 1620
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist scale(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .registers 3
    .param p0, "macros"    # Landroid/icu/impl/number/MacroProps;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 1693
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->scale:Landroid/icu/number/Scale;

    invoke-virtual {v0}, Landroid/icu/number/Scale;->isValid()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1694
    const/4 v0, 0x0

    return v0

    .line 1696
    :cond_a
    const-string v0, "scale/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1697
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->scale:Landroid/icu/number/Scale;

    invoke-static {v0, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->-$$Nest$smgenerateScaleOption(Landroid/icu/number/Scale;Ljava/lang/StringBuilder;)V

    .line 1698
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist sign(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .registers 4
    .param p0, "macros"    # Landroid/icu/impl/number/MacroProps;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 1677
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    sget-object v1, Landroid/icu/number/NumberFormatter$SignDisplay;->AUTO:Landroid/icu/number/NumberFormatter$SignDisplay;

    if-ne v0, v1, :cond_8

    .line 1678
    const/4 v0, 0x0

    return v0

    .line 1680
    :cond_8
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->sign:Landroid/icu/number/NumberFormatter$SignDisplay;

    invoke-static {v0, p1}, Landroid/icu/number/NumberSkeletonImpl$EnumToStemString;->-$$Nest$smsignDisplay(Landroid/icu/number/NumberFormatter$SignDisplay;Ljava/lang/StringBuilder;)V

    .line 1681
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist symbols(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .registers 5
    .param p0, "macros"    # Landroid/icu/impl/number/MacroProps;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 1652
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    instance-of v0, v0, Landroid/icu/text/NumberingSystem;

    if-eqz v0, :cond_26

    .line 1653
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->symbols:Ljava/lang/Object;

    check-cast v0, Landroid/icu/text/NumberingSystem;

    .line 1654
    .local v0, "ns":Landroid/icu/text/NumberingSystem;
    invoke-virtual {v0}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "latn"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1655
    const-string v1, "latin"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_24

    .line 1657
    :cond_1c
    const-string v1, "numbering-system/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1658
    invoke-static {v0, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->-$$Nest$smgenerateNumberingSystemOption(Landroid/icu/text/NumberingSystem;Ljava/lang/StringBuilder;)V

    .line 1660
    :goto_24
    const/4 v1, 0x1

    return v1

    .line 1662
    .end local v0    # "ns":Landroid/icu/text/NumberingSystem;
    :cond_26
    nop

    .line 1663
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot generate number skeleton with custom DecimalFormatSymbols"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist unit(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .registers 5
    .param p0, "macros"    # Landroid/icu/impl/number/MacroProps;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 1531
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    .line 1532
    .local v0, "unit":Landroid/icu/util/MeasureUnit;
    iget-object v1, p0, Landroid/icu/impl/number/MacroProps;->perUnit:Landroid/icu/util/MeasureUnit;

    if-eqz v1, :cond_25

    .line 1533
    iget-object v1, p0, Landroid/icu/impl/number/MacroProps;->unit:Landroid/icu/util/MeasureUnit;

    instance-of v1, v1, Landroid/icu/util/Currency;

    if-nez v1, :cond_1d

    iget-object v1, p0, Landroid/icu/impl/number/MacroProps;->perUnit:Landroid/icu/util/MeasureUnit;

    instance-of v1, v1, Landroid/icu/util/Currency;

    if-nez v1, :cond_1d

    .line 1537
    iget-object v1, p0, Landroid/icu/impl/number/MacroProps;->perUnit:Landroid/icu/util/MeasureUnit;

    invoke-virtual {v1}, Landroid/icu/util/MeasureUnit;->reciprocal()Landroid/icu/util/MeasureUnit;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/util/MeasureUnit;->product(Landroid/icu/util/MeasureUnit;)Landroid/icu/util/MeasureUnit;

    move-result-object v0

    goto :goto_25

    .line 1534
    :cond_1d
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Cannot generate number skeleton with currency unit and per-unit"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1539
    :cond_25
    :goto_25
    instance-of v1, v0, Landroid/icu/util/Currency;

    const/4 v2, 0x1

    if-eqz v1, :cond_36

    .line 1540
    const-string v1, "currency/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1541
    move-object v1, v0

    check-cast v1, Landroid/icu/util/Currency;

    invoke-static {v1, p1}, Landroid/icu/number/NumberSkeletonImpl$BlueprintHelpers;->-$$Nest$smgenerateCurrencyOption(Landroid/icu/util/Currency;Ljava/lang/StringBuilder;)V

    .line 1542
    return v2

    .line 1543
    :cond_36
    sget-object v1, Landroid/icu/util/MeasureUnit;->PERCENT:Landroid/icu/util/MeasureUnit;

    invoke-virtual {v0, v1}, Landroid/icu/util/MeasureUnit;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1544
    const-string v1, "percent"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1545
    return v2

    .line 1546
    :cond_44
    sget-object v1, Landroid/icu/util/MeasureUnit;->PERMILLE:Landroid/icu/util/MeasureUnit;

    invoke-virtual {v0, v1}, Landroid/icu/util/MeasureUnit;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 1547
    const-string v1, "permille"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1548
    return v2

    .line 1550
    :cond_52
    const-string v1, "unit/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    invoke-virtual {v0}, Landroid/icu/util/MeasureUnit;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    return v2
.end method

.method private static blacklist unitWidth(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .registers 4
    .param p0, "macros"    # Landroid/icu/impl/number/MacroProps;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 1669
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    sget-object v1, Landroid/icu/number/NumberFormatter$UnitWidth;->SHORT:Landroid/icu/number/NumberFormatter$UnitWidth;

    if-ne v0, v1, :cond_8

    .line 1670
    const/4 v0, 0x0

    return v0

    .line 1672
    :cond_8
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    invoke-static {v0, p1}, Landroid/icu/number/NumberSkeletonImpl$EnumToStemString;->-$$Nest$smunitWidth(Landroid/icu/number/NumberFormatter$UnitWidth;Ljava/lang/StringBuilder;)V

    .line 1673
    const/4 v0, 0x1

    return v0
.end method

.method private static blacklist usage(Landroid/icu/impl/number/MacroProps;Ljava/lang/StringBuilder;)Z
    .registers 3
    .param p0, "macros"    # Landroid/icu/impl/number/MacroProps;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 1557
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    .line 1558
    const-string v0, "usage/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    iget-object v0, p0, Landroid/icu/impl/number/MacroProps;->usage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1561
    const/4 v0, 0x1

    return v0

    .line 1563
    :cond_18
    const/4 v0, 0x0

    return v0
.end method
