.class final Landroid/icu/text/NFRuleSet;
.super Ljava/lang/Object;
.source "NFRuleSet.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final blacklist DEFAULT_RULE_INDEX:I = 0x3

.field static final greylist-max-o IMPROPER_FRACTION_RULE_INDEX:I = 0x1

.field static final greylist-max-o INFINITY_RULE_INDEX:I = 0x4

.field static final greylist-max-o NAN_RULE_INDEX:I = 0x5

.field static final greylist-max-o NEGATIVE_RULE_INDEX:I = 0x0

.field static final greylist-max-o PROPER_FRACTION_RULE_INDEX:I = 0x2

.field private static final greylist-max-o RECURSION_LIMIT:I = 0x40


# instance fields
.field greylist-max-o fractionRules:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/icu/text/NFRule;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o isFractionRuleSet:Z

.field private final greylist-max-o isParseable:Z

.field private final greylist-max-o name:Ljava/lang/String;

.field final greylist-max-o nonNumericalRules:[Landroid/icu/text/NFRule;

.field final greylist-max-o owner:Landroid/icu/text/RuleBasedNumberFormat;

.field private greylist-max-o rules:[Landroid/icu/text/NFRule;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 28
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/icu/text/RuleBasedNumberFormat;[Ljava/lang/String;I)V
    .registers 11
    .param p1, "owner"    # Landroid/icu/text/RuleBasedNumberFormat;
    .param p2, "descriptions"    # [Ljava/lang/String;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/icu/text/NFRule;

    iput-object v0, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    .line 106
    iput-object p1, p0, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    .line 107
    aget-object v1, p2, p3

    .line 109
    .local v1, "description":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Empty rule set description"

    if-eqz v2, :cond_7b

    .line 117
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x25

    const/4 v5, 0x1

    if-ne v2, v4, :cond_68

    .line 118
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 119
    .local v2, "pos":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_60

    .line 123
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "name":Ljava/lang/String;
    const-string v6, "@noparse"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    xor-int/2addr v5, v6

    iput-boolean v5, p0, Landroid/icu/text/NFRuleSet;->isParseable:Z

    .line 125
    iget-boolean v5, p0, Landroid/icu/text/NFRuleSet;->isParseable:Z

    if-nez v5, :cond_44

    .line 126
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x8

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 128
    :cond_44
    iput-object v4, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    .line 131
    :goto_46
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_59

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v0

    if-eqz v0, :cond_59

    goto :goto_46

    .line 133
    :cond_59
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    aput-object v1, p2, p3

    .line 136
    .end local v2    # "pos":I
    .end local v4    # "name":Ljava/lang/String;
    goto :goto_6e

    .line 120
    .restart local v2    # "pos":I
    :cond_60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Rule set name doesn\'t end in colon"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    .end local v2    # "pos":I
    :cond_68
    const-string v0, "%default"

    iput-object v0, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    .line 141
    iput-boolean v5, p0, Landroid/icu/text/NFRuleSet;->isParseable:Z

    .line 144
    :goto_6e
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_75

    .line 150
    return-void

    .line 145
    :cond_75
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_7b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o findFractionRuleSetRule(D)Landroid/icu/text/NFRule;
    .registers 15
    .param p1, "number"    # D

    .line 633
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v0

    .line 634
    .local v0, "leastCommonMultiple":J
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_a
    iget-object v3, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    array-length v3, v3

    if-ge v2, v3, :cond_1e

    .line 635
    iget-object v3, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Landroid/icu/text/NFRuleSet;->lcm(JJ)J

    move-result-wide v0

    .line 634
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 637
    .end local v2    # "i":I
    :cond_1e
    long-to-double v2, v0

    mul-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 641
    .local v2, "numerator":J
    const-wide v4, 0x7fffffffffffffffL

    .line 642
    .local v4, "difference":J
    const/4 v6, 0x0

    .line 643
    .local v6, "winner":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2b
    iget-object v8, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    array-length v8, v8

    if-ge v7, v8, :cond_52

    .line 650
    iget-object v8, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object v8, v8, v7

    invoke-virtual {v8}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v8

    mul-long/2addr v8, v2

    rem-long/2addr v8, v0

    .line 655
    .local v8, "tempDifference":J
    sub-long v10, v0, v8

    cmp-long v10, v10, v8

    if-gez v10, :cond_42

    .line 656
    sub-long v8, v0, v8

    .line 663
    :cond_42
    cmp-long v10, v8, v4

    if-gez v10, :cond_4f

    .line 664
    move-wide v4, v8

    .line 665
    move v6, v7

    .line 666
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-nez v10, :cond_4f

    .line 667
    goto :goto_52

    .line 643
    :cond_4f
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    .line 678
    .end local v7    # "i":I
    .end local v8    # "tempDifference":J
    :cond_52
    :goto_52
    add-int/lit8 v7, v6, 0x1

    iget-object v8, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    array-length v8, v8

    if-ge v7, v8, :cond_99

    iget-object v7, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    add-int/lit8 v8, v6, 0x1

    aget-object v7, v7, v8

    .line 679
    invoke-virtual {v7}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v7

    iget-object v9, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_99

    .line 680
    iget-object v7, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v7

    long-to-double v7, v7

    mul-double/2addr v7, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    const-wide/16 v9, 0x1

    cmp-long v7, v7, v9

    if-ltz v7, :cond_97

    iget-object v7, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object v7, v7, v6

    .line 681
    invoke-virtual {v7}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v7

    long-to-double v7, v7

    mul-double/2addr v7, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    const-wide/16 v9, 0x2

    cmp-long v7, v7, v9

    if-ltz v7, :cond_99

    .line 682
    :cond_97
    add-int/lit8 v6, v6, 0x1

    .line 687
    :cond_99
    iget-object v7, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object v7, v7, v6

    return-object v7
.end method

.method private greylist-max-o findNormalRule(J)Landroid/icu/text/NFRule;
    .registers 9
    .param p1, "number"    # J

    .line 543
    iget-boolean v0, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    if-eqz v0, :cond_a

    .line 544
    long-to-double v0, p1

    invoke-direct {p0, v0, v1}, Landroid/icu/text/NFRuleSet;->findFractionRuleSetRule(D)Landroid/icu/text/NFRule;

    move-result-object v0

    return-object v0

    .line 549
    :cond_a
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1d

    .line 550
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_1c

    .line 551
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aget-object v0, v0, v1

    return-object v0

    .line 553
    :cond_1c
    neg-long p1, p1

    .line 569
    :cond_1d
    const/4 v0, 0x0

    .line 570
    .local v0, "lo":I
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    array-length v1, v1

    .line 571
    .local v1, "hi":I
    if-lez v1, :cond_aa

    .line 572
    :goto_23
    const/4 v2, 0x1

    if-ge v0, v1, :cond_44

    .line 573
    add-int v3, v0, v1

    ushr-int/lit8 v2, v3, 0x1

    .line 574
    .local v2, "mid":I
    iget-object v3, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v3

    .line 575
    .local v3, "ruleBaseValue":J
    cmp-long v5, v3, p1

    if-nez v5, :cond_3b

    .line 576
    iget-object v5, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object v5, v5, v2

    return-object v5

    .line 578
    :cond_3b
    cmp-long v5, v3, p1

    if-lez v5, :cond_41

    .line 579
    move v1, v2

    goto :goto_43

    .line 582
    :cond_41
    add-int/lit8 v0, v2, 0x1

    .line 584
    .end local v2    # "mid":I
    .end local v3    # "ruleBaseValue":J
    :goto_43
    goto :goto_23

    .line 585
    :cond_44
    const-string v3, "The rule set "

    if-eqz v1, :cond_87

    .line 588
    iget-object v4, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    add-int/lit8 v5, v1, -0x1

    aget-object v4, v4, v5

    .line 595
    .local v4, "result":Landroid/icu/text/NFRule;
    invoke-virtual {v4, p1, p2}, Landroid/icu/text/NFRule;->shouldRollBack(J)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 596
    if-eq v1, v2, :cond_5d

    .line 600
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    add-int/lit8 v3, v1, -0x2

    aget-object v4, v2, v3

    goto :goto_86

    .line 597
    :cond_5d
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " cannot roll back from the rule \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 602
    :cond_86
    :goto_86
    return-object v4

    .line 586
    .end local v4    # "result":Landroid/icu/text/NFRule;
    :cond_87
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cannot format the value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 605
    :cond_aa
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    return-object v2
.end method

.method private static greylist-max-o lcm(JJ)J
    .registers 19
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 696
    move-wide v0, p0

    .line 697
    .local v0, "x1":J
    move-wide/from16 v2, p2

    .line 699
    .local v2, "y1":J
    const/4 v4, 0x0

    .line 700
    .local v4, "p2":I
    :goto_4
    const-wide/16 v5, 0x1

    and-long v7, v0, v5

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    const/4 v8, 0x1

    if-nez v7, :cond_1a

    and-long v11, v2, v5

    cmp-long v7, v11, v9

    if-nez v7, :cond_1a

    .line 701
    add-int/lit8 v4, v4, 0x1

    .line 702
    shr-long/2addr v0, v8

    .line 703
    shr-long/2addr v2, v8

    goto :goto_4

    .line 707
    :cond_1a
    and-long v11, v0, v5

    cmp-long v7, v11, v5

    if-nez v7, :cond_22

    .line 708
    neg-long v11, v2

    .local v11, "t":J
    goto :goto_23

    .line 710
    .end local v11    # "t":J
    :cond_22
    move-wide v11, v0

    .line 713
    .restart local v11    # "t":J
    :goto_23
    cmp-long v7, v11, v9

    if-eqz v7, :cond_39

    .line 714
    :goto_27
    and-long v13, v11, v5

    cmp-long v7, v13, v9

    if-nez v7, :cond_2f

    .line 715
    shr-long/2addr v11, v8

    goto :goto_27

    .line 717
    :cond_2f
    cmp-long v7, v11, v9

    if-lez v7, :cond_35

    .line 718
    move-wide v0, v11

    goto :goto_36

    .line 720
    :cond_35
    neg-long v2, v11

    .line 722
    :goto_36
    sub-long v11, v0, v2

    goto :goto_23

    .line 724
    :cond_39
    shl-long v5, v0, v4

    .line 727
    .local v5, "gcd":J
    div-long v7, p0, v5

    mul-long v7, v7, p2

    return-wide v7
.end method

.method private greylist-max-o setBestFractionRule(ILandroid/icu/text/NFRule;Z)V
    .registers 8
    .param p1, "originalIndex"    # I
    .param p2, "newRule"    # Landroid/icu/text/NFRule;
    .param p3, "rememberRule"    # Z

    .line 266
    if-eqz p3, :cond_12

    .line 267
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->fractionRules:Ljava/util/LinkedList;

    if-nez v0, :cond_d

    .line 268
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/icu/text/NFRuleSet;->fractionRules:Ljava/util/LinkedList;

    .line 270
    :cond_d
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->fractionRules:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_12
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aget-object v0, v0, p1

    .line 273
    .local v0, "bestResult":Landroid/icu/text/NFRule;
    if-nez v0, :cond_1d

    .line 274
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aput-object p2, v1, p1

    goto :goto_31

    .line 278
    :cond_1d
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v1}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v1

    .line 279
    .local v1, "decimalFormatSymbols":Landroid/icu/text/DecimalFormatSymbols;
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v2

    invoke-virtual {p2}, Landroid/icu/text/NFRule;->getDecimalPoint()C

    move-result v3

    if-ne v2, v3, :cond_31

    .line 280
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aput-object p2, v2, p1

    .line 284
    .end local v1    # "decimalFormatSymbols":Landroid/icu/text/DecimalFormatSymbols;
    :cond_31
    :goto_31
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "that"    # Ljava/lang/Object;

    .line 310
    instance-of v0, p1, Landroid/icu/text/NFRuleSet;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 311
    return v1

    .line 314
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/icu/text/NFRuleSet;

    .line 316
    .local v0, "that2":Landroid/icu/text/NFRuleSet;
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    array-length v2, v2

    iget-object v3, v0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    array-length v3, v3

    if-ne v2, v3, :cond_54

    iget-boolean v2, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    iget-boolean v3, v0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    if-eq v2, v3, :cond_22

    goto :goto_54

    .line 324
    :cond_22
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_23
    iget-object v3, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    array-length v3, v3

    if-ge v2, v3, :cond_3a

    .line 325
    iget-object v3, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aget-object v3, v3, v2

    iget-object v4, v0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aget-object v4, v4, v2

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_37

    .line 326
    return v1

    .line 324
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 331
    .end local v2    # "i":I
    :cond_3a
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3b
    iget-object v3, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    array-length v3, v3

    if-ge v2, v3, :cond_52

    .line 332
    iget-object v3, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object v3, v3, v2

    iget-object v4, v0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/icu/text/NFRule;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 333
    return v1

    .line 331
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 338
    .end local v2    # "i":I
    :cond_52
    const/4 v1, 0x1

    return v1

    .line 320
    :cond_54
    :goto_54
    return v1
.end method

.method greylist-max-o findRule(D)Landroid/icu/text/NFRule;
    .registers 5
    .param p1, "number"    # D

    .line 468
    iget-boolean v0, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    if-eqz v0, :cond_9

    .line 469
    invoke-direct {p0, p1, p2}, Landroid/icu/text/NFRuleSet;->findFractionRuleSetRule(D)Landroid/icu/text/NFRule;

    move-result-object v0

    return-object v0

    .line 472
    :cond_9
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 473
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 474
    .local v0, "rule":Landroid/icu/text/NFRule;
    if-nez v0, :cond_1c

    .line 475
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v1}, Landroid/icu/text/RuleBasedNumberFormat;->getDefaultNaNRule()Landroid/icu/text/NFRule;

    move-result-object v0

    .line 477
    :cond_1c
    return-object v0

    .line 483
    .end local v0    # "rule":Landroid/icu/text/NFRule;
    :cond_1d
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_30

    .line 484
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_2f

    .line 485
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aget-object v0, v0, v1

    return-object v0

    .line 487
    :cond_2f
    neg-double p1, p1

    .line 491
    :cond_30
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 492
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 493
    .restart local v0    # "rule":Landroid/icu/text/NFRule;
    if-nez v0, :cond_43

    .line 494
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v1}, Landroid/icu/text/RuleBasedNumberFormat;->getDefaultInfinityRule()Landroid/icu/text/NFRule;

    move-result-object v0

    .line 496
    :cond_43
    return-object v0

    .line 500
    .end local v0    # "rule":Landroid/icu/text/NFRule;
    :cond_44
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_6a

    .line 501
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_5e

    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-eqz v0, :cond_5e

    .line 504
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aget-object v0, v0, v1

    return-object v0

    .line 506
    :cond_5e
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_6a

    .line 508
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aget-object v0, v0, v1

    return-object v0

    .line 513
    :cond_6a
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    if-eqz v0, :cond_76

    .line 514
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aget-object v0, v0, v1

    return-object v0

    .line 519
    :cond_76
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/icu/text/NFRuleSet;->findNormalRule(J)Landroid/icu/text/NFRule;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o format(DLjava/lang/StringBuilder;II)V
    .registers 13
    .param p1, "number"    # D
    .param p3, "toInsertInto"    # Ljava/lang/StringBuilder;
    .param p4, "pos"    # I
    .param p5, "recursionCount"    # I

    .line 454
    const/16 v0, 0x40

    if-ge p5, v0, :cond_11

    .line 457
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/NFRuleSet;->findRule(D)Landroid/icu/text/NFRule;

    move-result-object v1

    .line 458
    .local v1, "applicableRule":Landroid/icu/text/NFRule;
    add-int/lit8 v6, p5, 0x1

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    .end local p1    # "number":D
    .end local p3    # "toInsertInto":Ljava/lang/StringBuilder;
    .end local p4    # "pos":I
    .end local p5    # "recursionCount":I
    .local v2, "number":D
    .local v4, "toInsertInto":Ljava/lang/StringBuilder;
    .local v5, "pos":I
    .local v6, "recursionCount":I
    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFRule;->doFormat(DLjava/lang/StringBuilder;II)V

    .line 459
    return-void

    .line 455
    .end local v1    # "applicableRule":Landroid/icu/text/NFRule;
    .end local v2    # "number":D
    .end local v4    # "toInsertInto":Ljava/lang/StringBuilder;
    .end local v5    # "pos":I
    .end local v6    # "recursionCount":I
    .restart local p1    # "number":D
    .restart local p3    # "toInsertInto":Ljava/lang/StringBuilder;
    .restart local p4    # "pos":I
    .restart local p5    # "recursionCount":I
    :cond_11
    move-wide v2, p1

    move-object v4, p3

    .end local p1    # "number":D
    .end local p3    # "toInsertInto":Ljava/lang/StringBuilder;
    .restart local v2    # "number":D
    .restart local v4    # "toInsertInto":Ljava/lang/StringBuilder;
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Recursion limit exceeded when applying ruleSet "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o format(JLjava/lang/StringBuilder;II)V
    .registers 13
    .param p1, "number"    # J
    .param p3, "toInsertInto"    # Ljava/lang/StringBuilder;
    .param p4, "pos"    # I
    .param p5, "recursionCount"    # I

    .line 438
    const/16 v0, 0x40

    if-ge p5, v0, :cond_11

    .line 441
    invoke-direct {p0, p1, p2}, Landroid/icu/text/NFRuleSet;->findNormalRule(J)Landroid/icu/text/NFRule;

    move-result-object v1

    .line 442
    .local v1, "applicableRule":Landroid/icu/text/NFRule;
    add-int/lit8 v6, p5, 0x1

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    .end local p1    # "number":J
    .end local p3    # "toInsertInto":Ljava/lang/StringBuilder;
    .end local p4    # "pos":I
    .end local p5    # "recursionCount":I
    .local v2, "number":J
    .local v4, "toInsertInto":Ljava/lang/StringBuilder;
    .local v5, "pos":I
    .local v6, "recursionCount":I
    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFRule;->doFormat(JLjava/lang/StringBuilder;II)V

    .line 443
    return-void

    .line 439
    .end local v1    # "applicableRule":Landroid/icu/text/NFRule;
    .end local v2    # "number":J
    .end local v4    # "toInsertInto":Ljava/lang/StringBuilder;
    .end local v5    # "pos":I
    .end local v6    # "recursionCount":I
    .restart local p1    # "number":J
    .restart local p3    # "toInsertInto":Ljava/lang/StringBuilder;
    .restart local p4    # "pos":I
    .restart local p5    # "recursionCount":I
    :cond_11
    move-wide v2, p1

    move-object v4, p3

    .end local p1    # "number":J
    .end local p3    # "toInsertInto":Ljava/lang/StringBuilder;
    .restart local v2    # "number":J
    .restart local v4    # "toInsertInto":Ljava/lang/StringBuilder;
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Recursion limit exceeded when applying ruleSet "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public greylist-max-o getName()Ljava/lang/String;
    .registers 2

    .line 406
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 344
    nop

    .line 345
    const/16 v0, 0x2a

    return v0
.end method

.method public greylist-max-o isFractionSet()Z
    .registers 2

    .line 398
    iget-boolean v0, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    return v0
.end method

.method public greylist-max-o isParseable()Z
    .registers 2

    .line 422
    iget-boolean v0, p0, Landroid/icu/text/NFRuleSet;->isParseable:Z

    return v0
.end method

.method public greylist-max-o isPublic()Z
    .registers 3

    .line 414
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    const-string v1, "%%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public greylist-max-o makeIntoFractionRuleSet()V
    .registers 2

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    .line 296
    return-void
.end method

.method public blacklist parse(Ljava/lang/String;Ljava/text/ParsePosition;DII)Ljava/lang/Number;
    .registers 20
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "parsePosition"    # Ljava/text/ParsePosition;
    .param p3, "upperBound"    # D
    .param p5, "nonNumericalExecutedRuleMask"    # I
    .param p6, "recursionCount"    # I

    .line 760
    move/from16 v8, p6

    new-instance v0, Ljava/text/ParsePosition;

    const/4 v9, 0x0

    invoke-direct {v0, v9}, Ljava/text/ParsePosition;-><init>(I)V

    move-object v10, v0

    .line 761
    .local v10, "highWaterMark":Ljava/text/ParsePosition;
    sget-object v0, Landroid/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    .line 765
    .local v0, "result":Ljava/lang/Number;
    const/16 v1, 0x40

    if-ge v8, v1, :cond_a7

    .line 770
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_16

    .line 771
    return-object v0

    .line 775
    :cond_16
    const/4 v1, 0x0

    move/from16 v6, p5

    move-object v11, v0

    move v12, v1

    .end local v0    # "result":Ljava/lang/Number;
    .end local p5    # "nonNumericalExecutedRuleMask":I
    .local v6, "nonNumericalExecutedRuleMask":I
    .local v11, "result":Ljava/lang/Number;
    .local v12, "nonNumericalRuleIdx":I
    :goto_1b
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v12, v0, :cond_53

    .line 776
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aget-object v0, v0, v12

    .line 777
    .local v0, "nonNumericalRule":Landroid/icu/text/NFRule;
    if-eqz v0, :cond_4f

    shr-int v2, v6, v12

    and-int/2addr v2, v1

    if-nez v2, :cond_4f

    .line 779
    shl-int/2addr v1, v12

    or-int/2addr v6, v1

    .line 781
    add-int/lit8 v7, v8, 0x1

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/icu/text/NFRule;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;ZDII)Ljava/lang/Number;

    move-result-object v3

    .line 782
    .local v3, "tempResult":Ljava/lang/Number;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    if-le v1, v4, :cond_4b

    .line 783
    move-object v11, v3

    .line 784
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v10, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 790
    :cond_4b
    invoke-virtual {p2, v9}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_50

    .line 777
    .end local v3    # "tempResult":Ljava/lang/Number;
    :cond_4f
    move-object v2, p2

    .line 775
    .end local v0    # "nonNumericalRule":Landroid/icu/text/NFRule;
    :goto_50
    add-int/lit8 v12, v12, 0x1

    goto :goto_1b

    :cond_53
    move-object v2, p2

    .line 803
    .end local v12    # "nonNumericalRuleIdx":I
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    array-length v0, v0

    sub-int/2addr v0, v1

    move-object v12, v11

    move v11, v0

    .local v11, "i":I
    .local v12, "result":Ljava/lang/Number;
    :goto_5a
    if-ltz v11, :cond_9f

    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_9f

    .line 804
    iget-boolean v0, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    if-nez v0, :cond_78

    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object v0, v0, v11

    invoke-virtual {v0}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v0

    long-to-double v0, v0

    cmpl-double v0, v0, p3

    if-ltz v0, :cond_78

    .line 805
    goto :goto_9c

    .line 808
    :cond_78
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    aget-object v0, v0, v11

    iget-boolean v3, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    add-int/lit8 v7, v8, 0x1

    move-object v1, p1

    move-wide/from16 v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/icu/text/NFRule;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;ZDII)Ljava/lang/Number;

    move-result-object v0

    .line 809
    .local v0, "tempResult":Ljava/lang/Number;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-le v1, v3, :cond_99

    .line 810
    move-object v12, v0

    .line 811
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v10, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 817
    :cond_99
    invoke-virtual {p2, v9}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 803
    .end local v0    # "tempResult":Ljava/lang/Number;
    :goto_9c
    add-int/lit8 v11, v11, -0x1

    goto :goto_5a

    .line 823
    .end local v11    # "i":I
    :cond_9f
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 829
    return-object v12

    .line 766
    .end local v6    # "nonNumericalExecutedRuleMask":I
    .end local v12    # "result":Ljava/lang/Number;
    .local v0, "result":Ljava/lang/Number;
    .restart local p5    # "nonNumericalExecutedRuleMask":I
    :cond_a7
    move-object v2, p2

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recursion limit exceeded when applying ruleSet "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o parseRules(Ljava/lang/String;)V
    .registers 15
    .param p1, "description"    # Ljava/lang/String;

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v0, "tempRules":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/NFRule;>;"
    const/4 v1, 0x0

    .line 173
    .local v1, "predecessor":Landroid/icu/text/NFRule;
    const/4 v2, 0x0

    .line 174
    .local v2, "oldP":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 177
    .local v3, "descriptionLen":I
    :cond_b
    const/16 v4, 0x3b

    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 178
    .local v4, "p":I
    if-gez v4, :cond_14

    .line 179
    move v4, v3

    .line 185
    :cond_14
    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-static {v5, p0, v1, v6, v0}, Landroid/icu/text/NFRule;->makeRules(Ljava/lang/String;Landroid/icu/text/NFRuleSet;Landroid/icu/text/NFRule;Landroid/icu/text/RuleBasedNumberFormat;Ljava/util/List;)V

    .line 187
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_30

    .line 188
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Landroid/icu/text/NFRule;

    .line 191
    :cond_30
    add-int/lit8 v2, v4, 0x1

    .line 193
    if-lt v2, v3, :cond_b

    .line 199
    const-wide/16 v5, 0x0

    .line 201
    .local v5, "defaultBaseValue":J
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_84

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/icu/text/NFRule;

    .line 202
    .local v8, "rule":Landroid/icu/text/NFRule;
    invoke-virtual {v8}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v9

    .line 203
    .local v9, "baseValue":J
    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-nez v11, :cond_54

    .line 209
    invoke-virtual {v8, v5, v6}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    goto :goto_59

    .line 215
    :cond_54
    cmp-long v11, v9, v5

    if-ltz v11, :cond_61

    .line 219
    move-wide v5, v9

    .line 221
    :goto_59
    iget-boolean v11, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    if-nez v11, :cond_60

    .line 222
    const-wide/16 v11, 0x1

    add-long/2addr v5, v11

    .line 224
    .end local v8    # "rule":Landroid/icu/text/NFRule;
    .end local v9    # "baseValue":J
    :cond_60
    goto :goto_3a

    .line 216
    .restart local v8    # "rule":Landroid/icu/text/NFRule;
    .restart local v9    # "baseValue":J
    :cond_61
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Rules are not in order, base: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " < "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 228
    .end local v8    # "rule":Landroid/icu/text/NFRule;
    .end local v9    # "baseValue":J
    :cond_84
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Landroid/icu/text/NFRule;

    iput-object v7, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    .line 229
    iget-object v7, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    invoke-interface {v0, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 230
    return-void
.end method

.method public greylist-max-o setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V
    .registers 10
    .param p1, "newSymbols"    # Landroid/icu/text/DecimalFormatSymbols;

    .line 833
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_f

    aget-object v4, v0, v3

    .line 834
    .local v4, "rule":Landroid/icu/text/NFRule;
    invoke-virtual {v4, p1}, Landroid/icu/text/NFRule;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    .line 833
    .end local v4    # "rule":Landroid/icu/text/NFRule;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 837
    :cond_f
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->fractionRules:Ljava/util/LinkedList;

    if-eqz v0, :cond_46

    .line 838
    const/4 v0, 0x1

    .local v0, "nonNumericalIdx":I
    :goto_14
    const/4 v1, 0x3

    if-gt v0, v1, :cond_46

    .line 839
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aget-object v1, v1, v0

    if-eqz v1, :cond_43

    .line 840
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->fractionRules:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/NFRule;

    .line 841
    .local v3, "rule":Landroid/icu/text/NFRule;
    iget-object v4, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_42

    .line 842
    invoke-direct {p0, v0, v3, v2}, Landroid/icu/text/NFRuleSet;->setBestFractionRule(ILandroid/icu/text/NFRule;Z)V

    .line 844
    .end local v3    # "rule":Landroid/icu/text/NFRule;
    :cond_42
    goto :goto_23

    .line 838
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 849
    .end local v0    # "nonNumericalIdx":I
    :cond_46
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    array-length v1, v0

    :goto_49
    if-ge v2, v1, :cond_55

    aget-object v3, v0, v2

    .line 850
    .restart local v3    # "rule":Landroid/icu/text/NFRule;
    if-eqz v3, :cond_52

    .line 851
    invoke-virtual {v3, p1}, Landroid/icu/text/NFRule;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    .line 849
    .end local v3    # "rule":Landroid/icu/text/NFRule;
    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 854
    :cond_55
    return-void
.end method

.method greylist-max-o setNonNumericalRule(Landroid/icu/text/NFRule;)V
    .registers 8
    .param p1, "rule"    # Landroid/icu/text/NFRule;

    .line 237
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v0

    .line 238
    .local v0, "baseValue":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 239
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    goto :goto_48

    .line 241
    :cond_10
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-nez v2, :cond_1b

    .line 242
    invoke-direct {p0, v3, p1, v3}, Landroid/icu/text/NFRuleSet;->setBestFractionRule(ILandroid/icu/text/NFRule;Z)V

    goto :goto_48

    .line 244
    :cond_1b
    const-wide/16 v4, -0x3

    cmp-long v2, v0, v4

    if-nez v2, :cond_26

    .line 245
    const/4 v2, 0x2

    invoke-direct {p0, v2, p1, v3}, Landroid/icu/text/NFRuleSet;->setBestFractionRule(ILandroid/icu/text/NFRule;Z)V

    goto :goto_48

    .line 247
    :cond_26
    const-wide/16 v4, -0x4

    cmp-long v2, v0, v4

    if-nez v2, :cond_31

    .line 248
    const/4 v2, 0x3

    invoke-direct {p0, v2, p1, v3}, Landroid/icu/text/NFRuleSet;->setBestFractionRule(ILandroid/icu/text/NFRule;Z)V

    goto :goto_48

    .line 250
    :cond_31
    const-wide/16 v2, -0x5

    cmp-long v2, v0, v2

    if-nez v2, :cond_3d

    .line 251
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    const/4 v3, 0x4

    aput-object p1, v2, v3

    goto :goto_48

    .line 253
    :cond_3d
    const-wide/16 v2, -0x6

    cmp-long v2, v0, v2

    if-nez v2, :cond_48

    .line 254
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    const/4 v3, 0x5

    aput-object p1, v2, v3

    .line 256
    :cond_48
    :goto_48
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 13

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    const-string v5, "\n"

    if-ge v4, v2, :cond_29

    aget-object v6, v1, v4

    .line 364
    .local v6, "rule":Landroid/icu/text/NFRule;
    invoke-virtual {v6}, Landroid/icu/text/NFRule;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .end local v6    # "rule":Landroid/icu/text/NFRule;
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 368
    :cond_29
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    array-length v2, v1

    :goto_2c
    if-ge v3, v2, :cond_8b

    aget-object v4, v1, v3

    .line 369
    .local v4, "rule":Landroid/icu/text/NFRule;
    if-eqz v4, :cond_88

    .line 370
    invoke-virtual {v4}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v6

    const-wide/16 v8, -0x2

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5d

    .line 371
    invoke-virtual {v4}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v6

    const-wide/16 v8, -0x3

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5d

    .line 372
    invoke-virtual {v4}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v6

    const-wide/16 v8, -0x4

    cmp-long v6, v6, v8

    if-nez v6, :cond_51

    goto :goto_5d

    .line 381
    :cond_51
    invoke-virtual {v4}, Landroid/icu/text/NFRule;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_88

    .line 374
    :cond_5d
    :goto_5d
    iget-object v6, p0, Landroid/icu/text/NFRuleSet;->fractionRules:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_63
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_87

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/icu/text/NFRule;

    .line 375
    .local v7, "fractionRule":Landroid/icu/text/NFRule;
    invoke-virtual {v7}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v8

    invoke-virtual {v4}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_86

    .line 376
    invoke-virtual {v7}, Landroid/icu/text/NFRule;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .end local v7    # "fractionRule":Landroid/icu/text/NFRule;
    :cond_86
    goto :goto_63

    :cond_87
    nop

    .line 368
    .end local v4    # "rule":Landroid/icu/text/NFRule;
    :cond_88
    :goto_88
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 386
    :cond_8b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
