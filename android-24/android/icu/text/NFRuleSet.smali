.class final Landroid/icu/text/NFRuleSet;
.super Ljava/lang/Object;
.source "NFRuleSet.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final IMPROPER_FRACTION_RULE_INDEX:I = 0x1

.field static final INFINITY_RULE_INDEX:I = 0x4

.field static final MASTER_RULE_INDEX:I = 0x3

.field static final NAN_RULE_INDEX:I = 0x5

.field static final NEGATIVE_RULE_INDEX:I = 0x0

.field static final PROPER_FRACTION_RULE_INDEX:I = 0x2

.field private static final RECURSION_LIMIT:I = 0x40


# instance fields
.field fractionRules:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/icu/text/NFRule;",
            ">;"
        }
    .end annotation
.end field

.field private isFractionRuleSet:Z

.field private final isParseable:Z

.field private final name:Ljava/lang/String;

.field final nonNumericalRules:[Landroid/icu/text/NFRule;

.field final owner:Landroid/icu/text/RuleBasedNumberFormat;

.field private rules:[Landroid/icu/text/NFRule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/text/NFRuleSet;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/text/NFRuleSet;->-assertionsDisabled:Z

    #@b
    .line 26
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(Landroid/icu/text/RuleBasedNumberFormat;[Ljava/lang/String;I)V
    .locals 7
    .param p1, "owner"    # Landroid/icu/text/RuleBasedNumberFormat;
    .param p2, "descriptions"    # [Ljava/lang/String;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 44
    const/4 v5, 0x6

    #@6
    new-array v5, v5, [Landroid/icu/text/NFRule;

    #@8
    iput-object v5, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    #@a
    .line 78
    iput-boolean v4, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    #@c
    .line 104
    iput-object p1, p0, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    #@e
    .line 105
    aget-object v0, p2, p3

    #@10
    .line 107
    .local v0, "description":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@13
    move-result v5

    #@14
    if-nez v5, :cond_0

    #@16
    .line 108
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v4, "Empty rule set description"

    #@1b
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v3

    #@1f
    .line 115
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    #@22
    move-result v5

    #@23
    const/16 v6, 0x25

    #@25
    if-ne v5, v6, :cond_6

    #@27
    .line 116
    const/16 v5, 0x3a

    #@29
    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    #@2c
    move-result v2

    #@2d
    .line 117
    .local v2, "pos":I
    const/4 v5, -0x1

    #@2e
    if-ne v2, v5, :cond_1

    #@30
    .line 118
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@32
    const-string/jumbo v4, "Rule set name doesn\'t end in colon"

    #@35
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@38
    throw v3

    #@39
    .line 121
    :cond_1
    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    .line 122
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v5, "@noparse"

    #@40
    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@43
    move-result v5

    #@44
    if-eqz v5, :cond_2

    #@46
    move v3, v4

    #@47
    :cond_2
    iput-boolean v3, p0, Landroid/icu/text/NFRuleSet;->isParseable:Z

    #@49
    .line 123
    iget-boolean v3, p0, Landroid/icu/text/NFRuleSet;->isParseable:Z

    #@4b
    if-nez v3, :cond_3

    #@4d
    .line 124
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@50
    move-result v3

    #@51
    add-int/lit8 v3, v3, -0x8

    #@53
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@56
    move-result-object v1

    #@57
    .line 126
    :cond_3
    iput-object v1, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    #@59
    .line 129
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@5c
    move-result v3

    #@5d
    if-ge v2, v3, :cond_5

    #@5f
    add-int/lit8 v2, v2, 0x1

    #@61
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    #@64
    move-result v3

    #@65
    invoke-static {v3}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@68
    move-result v3

    #@69
    if-nez v3, :cond_4

    #@6b
    .line 131
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@6e
    move-result-object v0

    #@6f
    .line 132
    aput-object v0, p2, p3

    #@71
    .line 142
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "pos":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@74
    move-result v3

    #@75
    if-nez v3, :cond_7

    #@77
    .line 143
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@79
    const-string/jumbo v4, "Empty rule set description"

    #@7c
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7f
    throw v3

    #@80
    .line 138
    :cond_6
    const-string/jumbo v4, "%default"

    #@83
    iput-object v4, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    #@85
    .line 139
    iput-boolean v3, p0, Landroid/icu/text/NFRuleSet;->isParseable:Z

    #@87
    goto :goto_0

    #@88
    .line 103
    :cond_7
    return-void
.end method

.method private findFractionRuleSetRule(D)Landroid/icu/text/NFRule;
    .locals 15
    .param p1, "number"    # D

    #@0
    .prologue
    .line 628
    iget-object v10, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@2
    const/4 v11, 0x0

    #@3
    aget-object v10, v10, v11

    #@5
    invoke-virtual {v10}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@8
    move-result-wide v4

    #@9
    .line 629
    .local v4, "leastCommonMultiple":J
    const/4 v2, 0x1

    #@a
    .local v2, "i":I
    :goto_0
    iget-object v10, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@c
    array-length v10, v10

    #@d
    if-ge v2, v10, :cond_0

    #@f
    .line 630
    iget-object v10, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@11
    aget-object v10, v10, v2

    #@13
    invoke-virtual {v10}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@16
    move-result-wide v10

    #@17
    invoke-static {v4, v5, v10, v11}, Landroid/icu/text/NFRuleSet;->lcm(JJ)J

    #@1a
    move-result-wide v4

    #@1b
    .line 629
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 632
    :cond_0
    long-to-double v10, v4

    #@1f
    mul-double v10, v10, p1

    #@21
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    #@24
    move-result-wide v6

    #@25
    .line 636
    .local v6, "numerator":J
    const-wide v0, 0x7fffffffffffffffL

    #@2a
    .line 637
    .local v0, "difference":J
    const/4 v3, 0x0

    #@2b
    .line 638
    .local v3, "winner":I
    const/4 v2, 0x0

    #@2c
    :goto_1
    iget-object v10, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@2e
    array-length v10, v10

    #@2f
    if-ge v2, v10, :cond_2

    #@31
    .line 645
    iget-object v10, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@33
    aget-object v10, v10, v2

    #@35
    invoke-virtual {v10}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@38
    move-result-wide v10

    #@39
    mul-long/2addr v10, v6

    #@3a
    rem-long v8, v10, v4

    #@3c
    .line 650
    .local v8, "tempDifference":J
    sub-long v10, v4, v8

    #@3e
    cmp-long v10, v10, v8

    #@40
    if-gez v10, :cond_1

    #@42
    .line 651
    sub-long v8, v4, v8

    #@44
    .line 658
    :cond_1
    cmp-long v10, v8, v0

    #@46
    if-gez v10, :cond_5

    #@48
    .line 659
    move-wide v0, v8

    #@49
    .line 660
    move v3, v2

    #@4a
    .line 661
    const-wide/16 v10, 0x0

    #@4c
    cmp-long v10, v8, v10

    #@4e
    if-nez v10, :cond_5

    #@50
    .line 673
    .end local v8    # "tempDifference":J
    :cond_2
    add-int/lit8 v10, v3, 0x1

    #@52
    iget-object v11, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@54
    array-length v11, v11

    #@55
    if-ge v10, v11, :cond_4

    #@57
    .line 674
    iget-object v10, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@59
    add-int/lit8 v11, v3, 0x1

    #@5b
    aget-object v10, v10, v11

    #@5d
    invoke-virtual {v10}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@60
    move-result-wide v10

    #@61
    iget-object v12, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@63
    aget-object v12, v12, v3

    #@65
    invoke-virtual {v12}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@68
    move-result-wide v12

    #@69
    cmp-long v10, v10, v12

    #@6b
    if-nez v10, :cond_4

    #@6d
    .line 675
    iget-object v10, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@6f
    aget-object v10, v10, v3

    #@71
    invoke-virtual {v10}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@74
    move-result-wide v10

    #@75
    long-to-double v10, v10

    #@76
    mul-double v10, v10, p1

    #@78
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    #@7b
    move-result-wide v10

    #@7c
    const-wide/16 v12, 0x1

    #@7e
    cmp-long v10, v10, v12

    #@80
    if-ltz v10, :cond_3

    #@82
    .line 676
    iget-object v10, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@84
    aget-object v10, v10, v3

    #@86
    invoke-virtual {v10}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@89
    move-result-wide v10

    #@8a
    long-to-double v10, v10

    #@8b
    mul-double v10, v10, p1

    #@8d
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    #@90
    move-result-wide v10

    #@91
    const-wide/16 v12, 0x2

    #@93
    cmp-long v10, v10, v12

    #@95
    if-ltz v10, :cond_4

    #@97
    .line 677
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@99
    .line 682
    :cond_4
    iget-object v10, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@9b
    aget-object v10, v10, v3

    #@9d
    return-object v10

    #@9e
    .line 638
    .restart local v8    # "tempDifference":J
    :cond_5
    add-int/lit8 v2, v2, 0x1

    #@a0
    goto :goto_1
.end method

.method private findNormalRule(J)Landroid/icu/text/NFRule;
    .locals 9
    .param p1, "number"    # J

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 538
    iget-boolean v6, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    #@3
    if-eqz v6, :cond_0

    #@5
    .line 539
    long-to-double v6, p1

    #@6
    invoke-direct {p0, v6, v7}, Landroid/icu/text/NFRuleSet;->findFractionRuleSetRule(D)Landroid/icu/text/NFRule;

    #@9
    move-result-object v6

    #@a
    return-object v6

    #@b
    .line 544
    :cond_0
    const-wide/16 v6, 0x0

    #@d
    cmp-long v6, p1, v6

    #@f
    if-gez v6, :cond_2

    #@11
    .line 545
    iget-object v6, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    #@13
    aget-object v6, v6, v8

    #@15
    if-eqz v6, :cond_1

    #@17
    .line 546
    iget-object v6, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    #@19
    aget-object v6, v6, v8

    #@1b
    return-object v6

    #@1c
    .line 548
    :cond_1
    neg-long p1, p1

    #@1d
    .line 564
    :cond_2
    const/4 v1, 0x0

    #@1e
    .line 565
    .local v1, "lo":I
    iget-object v6, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@20
    array-length v0, v6

    #@21
    .line 566
    .local v0, "hi":I
    if-lez v0, :cond_9

    #@23
    .line 567
    :goto_0
    if-ge v1, v0, :cond_5

    #@25
    .line 568
    add-int v6, v1, v0

    #@27
    ushr-int/lit8 v2, v6, 0x1

    #@29
    .line 569
    .local v2, "mid":I
    iget-object v6, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@2b
    aget-object v6, v6, v2

    #@2d
    invoke-virtual {v6}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@30
    move-result-wide v4

    #@31
    .line 570
    .local v4, "ruleBaseValue":J
    cmp-long v6, v4, p1

    #@33
    if-nez v6, :cond_3

    #@35
    .line 571
    iget-object v6, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@37
    aget-object v6, v6, v2

    #@39
    return-object v6

    #@3a
    .line 573
    :cond_3
    cmp-long v6, v4, p1

    #@3c
    if-lez v6, :cond_4

    #@3e
    .line 574
    move v0, v2

    #@3f
    goto :goto_0

    #@40
    .line 577
    :cond_4
    add-int/lit8 v1, v2, 0x1

    #@42
    goto :goto_0

    #@43
    .line 580
    .end local v2    # "mid":I
    .end local v4    # "ruleBaseValue":J
    :cond_5
    if-nez v0, :cond_6

    #@45
    .line 581
    new-instance v6, Ljava/lang/IllegalStateException;

    #@47
    new-instance v7, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v8, "The rule set "

    #@4f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v7

    #@53
    iget-object v8, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    #@55
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v7

    #@59
    const-string/jumbo v8, " cannot format the value "

    #@5c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v7

    #@60
    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@63
    move-result-object v7

    #@64
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v7

    #@68
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v6

    #@6c
    .line 583
    :cond_6
    iget-object v6, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@6e
    add-int/lit8 v7, v0, -0x1

    #@70
    aget-object v3, v6, v7

    #@72
    .line 590
    .local v3, "result":Landroid/icu/text/NFRule;
    long-to-double v6, p1

    #@73
    invoke-virtual {v3, v6, v7}, Landroid/icu/text/NFRule;->shouldRollBack(D)Z

    #@76
    move-result v6

    #@77
    if-eqz v6, :cond_8

    #@79
    .line 591
    const/4 v6, 0x1

    #@7a
    if-ne v0, v6, :cond_7

    #@7c
    .line 592
    new-instance v6, Ljava/lang/IllegalStateException;

    #@7e
    new-instance v7, Ljava/lang/StringBuilder;

    #@80
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@83
    const-string/jumbo v8, "The rule set "

    #@86
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@89
    move-result-object v7

    #@8a
    iget-object v8, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    #@8c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v7

    #@90
    const-string/jumbo v8, " cannot roll back from the rule \'"

    #@93
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v7

    #@97
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v7

    #@9b
    .line 593
    const-string/jumbo v8, "\'"

    #@9e
    .line 592
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v7

    #@a2
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a5
    move-result-object v7

    #@a6
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@a9
    throw v6

    #@aa
    .line 595
    :cond_7
    iget-object v6, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@ac
    add-int/lit8 v7, v0, -0x2

    #@ae
    aget-object v3, v6, v7

    #@b0
    .line 597
    :cond_8
    return-object v3

    #@b1
    .line 600
    .end local v3    # "result":Landroid/icu/text/NFRule;
    :cond_9
    iget-object v6, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    #@b3
    const/4 v7, 0x3

    #@b4
    aget-object v6, v6, v7

    #@b6
    return-object v6
.end method

.method private static lcm(JJ)J
    .locals 14
    .param p0, "x"    # J
    .param p2, "y"    # J

    #@0
    .prologue
    .line 691
    move-wide v6, p0

    #@1
    .line 692
    .local v6, "x1":J
    move-wide/from16 v8, p2

    #@3
    .line 694
    .local v8, "y1":J
    const/4 v2, 0x0

    #@4
    .line 695
    .local v2, "p2":I
    :goto_0
    const-wide/16 v10, 0x1

    #@6
    and-long/2addr v10, v6

    #@7
    const-wide/16 v12, 0x0

    #@9
    cmp-long v3, v10, v12

    #@b
    if-nez v3, :cond_0

    #@d
    const-wide/16 v10, 0x1

    #@f
    and-long/2addr v10, v8

    #@10
    const-wide/16 v12, 0x0

    #@12
    cmp-long v3, v10, v12

    #@14
    if-nez v3, :cond_0

    #@16
    .line 696
    add-int/lit8 v2, v2, 0x1

    #@18
    .line 697
    const/4 v3, 0x1

    #@19
    shr-long/2addr v6, v3

    #@1a
    .line 698
    const/4 v3, 0x1

    #@1b
    shr-long/2addr v8, v3

    #@1c
    goto :goto_0

    #@1d
    .line 702
    :cond_0
    const-wide/16 v10, 0x1

    #@1f
    and-long/2addr v10, v6

    #@20
    const-wide/16 v12, 0x1

    #@22
    cmp-long v3, v10, v12

    #@24
    if-nez v3, :cond_1

    #@26
    .line 703
    neg-long v4, v8

    #@27
    .line 708
    .local v4, "t":J
    :goto_1
    const-wide/16 v10, 0x0

    #@29
    cmp-long v3, v4, v10

    #@2b
    if-eqz v3, :cond_4

    #@2d
    .line 709
    :goto_2
    const-wide/16 v10, 0x1

    #@2f
    and-long/2addr v10, v4

    #@30
    const-wide/16 v12, 0x0

    #@32
    cmp-long v3, v10, v12

    #@34
    if-nez v3, :cond_2

    #@36
    .line 710
    const/4 v3, 0x1

    #@37
    shr-long/2addr v4, v3

    #@38
    goto :goto_2

    #@39
    .line 705
    .end local v4    # "t":J
    :cond_1
    move-wide v4, v6

    #@3a
    .restart local v4    # "t":J
    goto :goto_1

    #@3b
    .line 712
    :cond_2
    const-wide/16 v10, 0x0

    #@3d
    cmp-long v3, v4, v10

    #@3f
    if-lez v3, :cond_3

    #@41
    .line 713
    move-wide v6, v4

    #@42
    .line 717
    :goto_3
    sub-long v4, v6, v8

    #@44
    goto :goto_1

    #@45
    .line 715
    :cond_3
    neg-long v8, v4

    #@46
    goto :goto_3

    #@47
    .line 719
    :cond_4
    shl-long v0, v6, v2

    #@49
    .line 722
    .local v0, "gcd":J
    div-long v10, p0, v0

    #@4b
    mul-long v10, v10, p2

    #@4d
    return-wide v10
.end method

.method private setBestFractionRule(ILandroid/icu/text/NFRule;Z)V
    .locals 4
    .param p1, "originalIndex"    # I
    .param p2, "newRule"    # Landroid/icu/text/NFRule;
    .param p3, "rememberRule"    # Z

    #@0
    .prologue
    .line 264
    if-eqz p3, :cond_1

    #@2
    .line 265
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->fractionRules:Ljava/util/LinkedList;

    #@4
    if-nez v2, :cond_0

    #@6
    .line 266
    new-instance v2, Ljava/util/LinkedList;

    #@8
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    #@b
    iput-object v2, p0, Landroid/icu/text/NFRuleSet;->fractionRules:Ljava/util/LinkedList;

    #@d
    .line 268
    :cond_0
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->fractionRules:Ljava/util/LinkedList;

    #@f
    invoke-virtual {v2, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@12
    .line 270
    :cond_1
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    #@14
    aget-object v0, v2, p1

    #@16
    .line 271
    .local v0, "bestResult":Landroid/icu/text/NFRule;
    if-nez v0, :cond_3

    #@18
    .line 272
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    #@1a
    aput-object p2, v2, p1

    #@1c
    .line 263
    :cond_2
    :goto_0
    return-void

    #@1d
    .line 276
    :cond_3
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    #@1f
    invoke-virtual {v2}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    #@22
    move-result-object v1

    #@23
    .line 277
    .local v1, "decimalFormatSymbols":Landroid/icu/text/DecimalFormatSymbols;
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparator()C

    #@26
    move-result v2

    #@27
    invoke-virtual {p2}, Landroid/icu/text/NFRule;->getDecimalPoint()C

    #@2a
    move-result v3

    #@2b
    if-ne v2, v3, :cond_2

    #@2d
    .line 278
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    #@2f
    aput-object p2, v2, p1

    #@31
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 307
    instance-of v2, p1, Landroid/icu/text/NFRuleSet;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 308
    return v4

    #@6
    :cond_0
    move-object v1, p1

    #@7
    .line 311
    nop

    #@8
    nop

    #@9
    .line 313
    .local v1, "that2":Landroid/icu/text/NFRuleSet;
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    #@b
    iget-object v3, v1, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 314
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@15
    array-length v2, v2

    #@16
    iget-object v3, v1, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@18
    array-length v3, v3

    #@19
    if-eq v2, v3, :cond_2

    #@1b
    .line 317
    :cond_1
    return v4

    #@1c
    .line 315
    :cond_2
    iget-boolean v2, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    #@1e
    iget-boolean v3, v1, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    #@20
    if-ne v2, v3, :cond_1

    #@22
    .line 321
    const/4 v0, 0x0

    #@23
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    #@25
    array-length v2, v2

    #@26
    if-ge v0, v2, :cond_4

    #@28
    .line 322
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    #@2a
    aget-object v2, v2, v0

    #@2c
    iget-object v3, v1, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    #@2e
    aget-object v3, v3, v0

    #@30
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@33
    move-result v2

    #@34
    if-nez v2, :cond_3

    #@36
    .line 323
    return v4

    #@37
    .line 321
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 328
    :cond_4
    const/4 v0, 0x0

    #@3b
    :goto_1
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@3d
    array-length v2, v2

    #@3e
    if-ge v0, v2, :cond_6

    #@40
    .line 329
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@42
    aget-object v2, v2, v0

    #@44
    iget-object v3, v1, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@46
    aget-object v3, v3, v0

    #@48
    invoke-virtual {v2, v3}, Landroid/icu/text/NFRule;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v2

    #@4c
    if-nez v2, :cond_5

    #@4e
    .line 330
    return v4

    #@4f
    .line 328
    :cond_5
    add-int/lit8 v0, v0, 0x1

    #@51
    goto :goto_1

    #@52
    .line 335
    :cond_6
    const/4 v2, 0x1

    #@53
    return v2
.end method

.method findRule(D)Landroid/icu/text/NFRule;
    .locals 9
    .param p1, "number"    # D

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    const/4 v6, 0x2

    #@2
    const/4 v5, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 463
    iget-boolean v1, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 464
    invoke-direct {p0, p1, p2}, Landroid/icu/text/NFRuleSet;->findFractionRuleSetRule(D)Landroid/icu/text/NFRule;

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 467
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_2

    #@13
    .line 468
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    #@15
    const/4 v2, 0x5

    #@16
    aget-object v0, v1, v2

    #@18
    .line 469
    .local v0, "rule":Landroid/icu/text/NFRule;
    if-nez v0, :cond_1

    #@1a
    .line 470
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    #@1c
    invoke-virtual {v1}, Landroid/icu/text/RuleBasedNumberFormat;->getDefaultNaNRule()Landroid/icu/text/NFRule;

    #@1f
    move-result-object v0

    #@20
    .line 472
    :cond_1
    return-object v0

    #@21
    .line 478
    .end local v0    # "rule":Landroid/icu/text/NFRule;
    :cond_2
    const-wide/16 v2, 0x0

    #@23
    cmpg-double v1, p1, v2

    #@25
    if-gez v1, :cond_4

    #@27
    .line 479
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    #@29
    aget-object v1, v1, v4

    #@2b
    if-eqz v1, :cond_3

    #@2d
    .line 480
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    #@2f
    aget-object v1, v1, v4

    #@31
    return-object v1

    #@32
    .line 482
    :cond_3
    neg-double p1, p1

    #@33
    .line 486
    :cond_4
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    #@36
    move-result v1

    #@37
    if-eqz v1, :cond_6

    #@39
    .line 487
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    #@3b
    const/4 v2, 0x4

    #@3c
    aget-object v0, v1, v2

    #@3e
    .line 488
    .restart local v0    # "rule":Landroid/icu/text/NFRule;
    if-nez v0, :cond_5

    #@40
    .line 489
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    #@42
    invoke-virtual {v1}, Landroid/icu/text/RuleBasedNumberFormat;->getDefaultInfinityRule()Landroid/icu/text/NFRule;

    #@45
    move-result-object v0

    #@46
    .line 491
    :cond_5
    return-object v0

    #@47
    .line 495
    .end local v0    # "rule":Landroid/icu/text/NFRule;
    :cond_6
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    #@49
    if-eqz v1, :cond_8

    #@4b
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    #@4e
    move-result-wide v2

    #@4f
    cmpl-double v1, p1, v2

    #@51
    if-eqz v1, :cond_8

    #@53
    .line 496
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@55
    cmpg-double v1, p1, v2

    #@57
    if-gez v1, :cond_7

    #@59
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    #@5b
    aget-object v1, v1, v6

    #@5d
    if-eqz v1, :cond_7

    #@5f
    .line 499
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    #@61
    aget-object v1, v1, v6

    #@63
    return-object v1

    #@64
    .line 501
    :cond_7
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    #@66
    aget-object v1, v1, v5

    #@68
    if-eqz v1, :cond_8

    #@6a
    .line 503
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    #@6c
    aget-object v1, v1, v5

    #@6e
    return-object v1

    #@6f
    .line 508
    :cond_8
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    #@71
    if-eqz v1, :cond_9

    #@73
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    #@75
    aget-object v1, v1, v7

    #@77
    if-eqz v1, :cond_9

    #@79
    .line 509
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    #@7b
    aget-object v1, v1, v7

    #@7d
    return-object v1

    #@7e
    .line 514
    :cond_9
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    #@81
    move-result-wide v2

    #@82
    invoke-direct {p0, v2, v3}, Landroid/icu/text/NFRuleSet;->findNormalRule(J)Landroid/icu/text/NFRule;

    #@85
    move-result-object v1

    #@86
    return-object v1
.end method

.method public format(DLjava/lang/StringBuffer;II)V
    .locals 7
    .param p1, "number"    # D
    .param p3, "toInsertInto"    # Ljava/lang/StringBuffer;
    .param p4, "pos"    # I
    .param p5, "recursionCount"    # I

    #@0
    .prologue
    .line 449
    const/16 v0, 0x40

    #@2
    if-lt p5, v0, :cond_0

    #@4
    .line 450
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "Recursion limit exceeded when applying ruleSet "

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    iget-object v3, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 452
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/NFRuleSet;->findRule(D)Landroid/icu/text/NFRule;

    #@23
    move-result-object v1

    #@24
    .line 453
    .local v1, "applicableRule":Landroid/icu/text/NFRule;
    add-int/lit8 p5, p5, 0x1

    #@26
    move-wide v2, p1

    #@27
    move-object v4, p3

    #@28
    move v5, p4

    #@29
    move v6, p5

    #@2a
    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFRule;->doFormat(DLjava/lang/StringBuffer;II)V

    #@2d
    .line 448
    return-void
.end method

.method public format(JLjava/lang/StringBuffer;II)V
    .locals 7
    .param p1, "number"    # J
    .param p3, "toInsertInto"    # Ljava/lang/StringBuffer;
    .param p4, "pos"    # I
    .param p5, "recursionCount"    # I

    #@0
    .prologue
    .line 433
    const/16 v0, 0x40

    #@2
    if-lt p5, v0, :cond_0

    #@4
    .line 434
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    new-instance v2, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v3, "Recursion limit exceeded when applying ruleSet "

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    iget-object v3, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0

    #@20
    .line 436
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/icu/text/NFRuleSet;->findNormalRule(J)Landroid/icu/text/NFRule;

    #@23
    move-result-object v1

    #@24
    .line 437
    .local v1, "applicableRule":Landroid/icu/text/NFRule;
    add-int/lit8 p5, p5, 0x1

    #@26
    move-wide v2, p1

    #@27
    move-object v4, p3

    #@28
    move v5, p4

    #@29
    move v6, p5

    #@2a
    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFRule;->doFormat(JLjava/lang/StringBuffer;II)V

    #@2d
    .line 432
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 401
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 340
    sget-boolean v0, Landroid/icu/text/NFRuleSet;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/AssertionError;

    #@6
    const-string/jumbo v1, "hashCode not designed"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@c
    throw v0

    #@d
    .line 341
    :cond_0
    const/16 v0, 0x2a

    #@f
    return v0
.end method

.method public isFractionSet()Z
    .locals 1

    #@0
    .prologue
    .line 393
    iget-boolean v0, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    #@2
    return v0
.end method

.method public isParseable()Z
    .locals 1

    #@0
    .prologue
    .line 417
    iget-boolean v0, p0, Landroid/icu/text/NFRuleSet;->isParseable:Z

    #@2
    return v0
.end method

.method public isPublic()Z
    .locals 2

    #@0
    .prologue
    .line 409
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    #@2
    const-string/jumbo v1, "%%"

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    const/4 v0, 0x0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x1

    #@e
    goto :goto_0
.end method

.method public makeIntoFractionRuleSet()V
    .locals 1

    #@0
    .prologue
    .line 293
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    #@3
    .line 292
    return-void
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;D)Ljava/lang/Number;
    .locals 13
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "parsePosition"    # Ljava/text/ParsePosition;
    .param p3, "upperBound"    # D

    #@0
    .prologue
    .line 755
    new-instance v8, Ljava/text/ParsePosition;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v8, v1}, Ljava/text/ParsePosition;-><init>(I)V

    #@6
    .line 756
    .local v8, "highWaterMark":Ljava/text/ParsePosition;
    sget-object v10, Landroid/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    #@8
    .line 760
    .local v10, "result":Ljava/lang/Number;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    .line 761
    return-object v10

    #@f
    .line 765
    :cond_0
    iget-object v7, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    #@11
    const/4 v1, 0x0

    #@12
    array-length v12, v7

    #@13
    move v6, v1

    #@14
    :goto_0
    if-ge v6, v12, :cond_3

    #@16
    aget-object v0, v7, v6

    #@18
    .line 766
    .local v0, "fractionRule":Landroid/icu/text/NFRule;
    if-eqz v0, :cond_2

    #@1a
    .line 767
    const/4 v3, 0x0

    #@1b
    move-object v1, p1

    #@1c
    move-object v2, p2

    #@1d
    move-wide/from16 v4, p3

    #@1f
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/NFRule;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;ZD)Ljava/lang/Number;

    #@22
    move-result-object v11

    #@23
    .line 768
    .local v11, "tempResult":Ljava/lang/Number;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@26
    move-result v1

    #@27
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    #@2a
    move-result v2

    #@2b
    if-le v1, v2, :cond_1

    #@2d
    .line 769
    move-object v10, v11

    #@2e
    .line 770
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@31
    move-result v1

    #@32
    invoke-virtual {v8, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@35
    .line 776
    :cond_1
    const/4 v1, 0x0

    #@36
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@39
    .line 765
    .end local v11    # "tempResult":Ljava/lang/Number;
    :cond_2
    add-int/lit8 v1, v6, 0x1

    #@3b
    move v6, v1

    #@3c
    goto :goto_0

    #@3d
    .line 789
    .end local v0    # "fractionRule":Landroid/icu/text/NFRule;
    :cond_3
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@3f
    array-length v1, v1

    #@40
    add-int/lit8 v9, v1, -0x1

    #@42
    .local v9, "i":I
    :goto_1
    if-ltz v9, :cond_6

    #@44
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    #@47
    move-result v1

    #@48
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4b
    move-result v2

    #@4c
    if-ge v1, v2, :cond_6

    #@4e
    .line 790
    iget-boolean v1, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    #@50
    if-nez v1, :cond_4

    #@52
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@54
    aget-object v1, v1, v9

    #@56
    invoke-virtual {v1}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@59
    move-result-wide v2

    #@5a
    long-to-double v2, v2

    #@5b
    cmpl-double v1, v2, p3

    #@5d
    if-ltz v1, :cond_4

    #@5f
    .line 789
    :goto_2
    add-int/lit8 v9, v9, -0x1

    #@61
    goto :goto_1

    #@62
    .line 794
    :cond_4
    iget-object v1, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@64
    aget-object v2, v1, v9

    #@66
    iget-boolean v5, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    #@68
    move-object v3, p1

    #@69
    move-object v4, p2

    #@6a
    move-wide/from16 v6, p3

    #@6c
    invoke-virtual/range {v2 .. v7}, Landroid/icu/text/NFRule;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;ZD)Ljava/lang/Number;

    #@6f
    move-result-object v11

    #@70
    .line 795
    .restart local v11    # "tempResult":Ljava/lang/Number;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@73
    move-result v1

    #@74
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    #@77
    move-result v2

    #@78
    if-le v1, v2, :cond_5

    #@7a
    .line 796
    move-object v10, v11

    #@7b
    .line 797
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@7e
    move-result v1

    #@7f
    invoke-virtual {v8, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@82
    .line 803
    :cond_5
    const/4 v1, 0x0

    #@83
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@86
    goto :goto_2

    #@87
    .line 809
    .end local v11    # "tempResult":Ljava/lang/Number;
    :cond_6
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    #@8a
    move-result v1

    #@8b
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@8e
    .line 815
    return-object v10
.end method

.method public parseRules(Ljava/lang/String;)V
    .locals 14
    .param p1, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 162
    new-instance v10, Ljava/util/ArrayList;

    #@2
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 166
    .local v10, "tempRules":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/NFRule;>;"
    const/4 v7, 0x0

    #@6
    .line 171
    .local v7, "predecessor":Landroid/icu/text/NFRule;
    const/4 v5, 0x0

    #@7
    .line 172
    .local v5, "oldP":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@a
    move-result v4

    #@b
    .line 175
    .end local v7    # "predecessor":Landroid/icu/text/NFRule;
    .local v4, "descriptionLen":I
    :cond_0
    const/16 v11, 0x3b

    #@d
    invoke-virtual {p1, v11, v5}, Ljava/lang/String;->indexOf(II)I

    #@10
    move-result v6

    #@11
    .line 176
    .local v6, "p":I
    if-gez v6, :cond_1

    #@13
    .line 177
    move v6, v4

    #@14
    .line 183
    :cond_1
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@17
    move-result-object v11

    #@18
    .line 184
    iget-object v12, p0, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    #@1a
    .line 183
    invoke-static {v11, p0, v7, v12, v10}, Landroid/icu/text/NFRule;->makeRules(Ljava/lang/String;Landroid/icu/text/NFRuleSet;Landroid/icu/text/NFRule;Landroid/icu/text/RuleBasedNumberFormat;Ljava/util/List;)V

    #@1d
    .line 185
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    #@20
    move-result v11

    #@21
    if-nez v11, :cond_2

    #@23
    .line 186
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@26
    move-result v11

    #@27
    add-int/lit8 v11, v11, -0x1

    #@29
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v7

    #@2d
    check-cast v7, Landroid/icu/text/NFRule;

    #@2f
    .line 189
    :cond_2
    add-int/lit8 v5, v6, 0x1

    #@31
    .line 191
    if-lt v5, v4, :cond_0

    #@33
    .line 197
    const-wide/16 v2, 0x0

    #@35
    .line 199
    .local v2, "defaultBaseValue":J
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@38
    move-result-object v9

    #@39
    .local v9, "rule$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@3c
    move-result v11

    #@3d
    if-eqz v11, :cond_6

    #@3f
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@42
    move-result-object v8

    #@43
    check-cast v8, Landroid/icu/text/NFRule;

    #@45
    .line 200
    .local v8, "rule":Landroid/icu/text/NFRule;
    invoke-virtual {v8}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@48
    move-result-wide v0

    #@49
    .line 201
    .local v0, "baseValue":J
    const-wide/16 v12, 0x0

    #@4b
    cmp-long v11, v0, v12

    #@4d
    if-nez v11, :cond_4

    #@4f
    .line 207
    invoke-virtual {v8, v2, v3}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    #@52
    .line 219
    :goto_1
    iget-boolean v11, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    #@54
    if-nez v11, :cond_3

    #@56
    .line 220
    const-wide/16 v12, 0x1

    #@58
    add-long/2addr v2, v12

    #@59
    goto :goto_0

    #@5a
    .line 213
    :cond_4
    cmp-long v11, v0, v2

    #@5c
    if-gez v11, :cond_5

    #@5e
    .line 214
    new-instance v11, Ljava/lang/IllegalArgumentException;

    #@60
    new-instance v12, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v13, "Rules are not in order, base: "

    #@68
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v12

    #@6c
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v12

    #@70
    .line 215
    const-string/jumbo v13, " < "

    #@73
    .line 214
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v12

    #@77
    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v12

    #@7b
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v12

    #@7f
    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@82
    throw v11

    #@83
    .line 217
    :cond_5
    move-wide v2, v0

    #@84
    goto :goto_1

    #@85
    .line 226
    .end local v0    # "baseValue":J
    .end local v8    # "rule":Landroid/icu/text/NFRule;
    :cond_6
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@88
    move-result v11

    #@89
    new-array v11, v11, [Landroid/icu/text/NFRule;

    #@8b
    iput-object v11, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@8d
    .line 227
    iget-object v11, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@8f
    invoke-interface {v10, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@92
    .line 159
    return-void
.end method

.method public setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V
    .locals 8
    .param p1, "newSymbols"    # Landroid/icu/text/DecimalFormatSymbols;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 819
    iget-object v5, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@3
    array-length v6, v5

    #@4
    move v4, v3

    #@5
    :goto_0
    if-ge v4, v6, :cond_0

    #@7
    aget-object v1, v5, v4

    #@9
    .line 820
    .local v1, "rule":Landroid/icu/text/NFRule;
    invoke-virtual {v1, p1}, Landroid/icu/text/NFRule;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    #@c
    .line 819
    add-int/lit8 v4, v4, 0x1

    #@e
    goto :goto_0

    #@f
    .line 823
    .end local v1    # "rule":Landroid/icu/text/NFRule;
    :cond_0
    iget-object v4, p0, Landroid/icu/text/NFRuleSet;->fractionRules:Ljava/util/LinkedList;

    #@11
    if-eqz v4, :cond_3

    #@13
    .line 824
    const/4 v0, 0x1

    #@14
    .local v0, "nonNumericalIdx":I
    :goto_1
    const/4 v4, 0x3

    #@15
    if-gt v0, v4, :cond_3

    #@17
    .line 825
    iget-object v4, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    #@19
    aget-object v4, v4, v0

    #@1b
    if-eqz v4, :cond_2

    #@1d
    .line 826
    iget-object v4, p0, Landroid/icu/text/NFRuleSet;->fractionRules:Ljava/util/LinkedList;

    #@1f
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@22
    move-result-object v2

    #@23
    .local v2, "rule$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@26
    move-result v4

    #@27
    if-eqz v4, :cond_2

    #@29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v1

    #@2d
    check-cast v1, Landroid/icu/text/NFRule;

    #@2f
    .line 827
    .restart local v1    # "rule":Landroid/icu/text/NFRule;
    iget-object v4, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    #@31
    aget-object v4, v4, v0

    #@33
    invoke-virtual {v4}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@36
    move-result-wide v4

    #@37
    invoke-virtual {v1}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@3a
    move-result-wide v6

    #@3b
    cmp-long v4, v4, v6

    #@3d
    if-nez v4, :cond_1

    #@3f
    .line 828
    invoke-direct {p0, v0, v1, v3}, Landroid/icu/text/NFRuleSet;->setBestFractionRule(ILandroid/icu/text/NFRule;Z)V

    #@42
    goto :goto_2

    #@43
    .line 824
    .end local v1    # "rule":Landroid/icu/text/NFRule;
    .end local v2    # "rule$iterator":Ljava/util/Iterator;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@45
    goto :goto_1

    #@46
    .line 835
    .end local v0    # "nonNumericalIdx":I
    :cond_3
    iget-object v4, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    #@48
    array-length v5, v4

    #@49
    :goto_3
    if-ge v3, v5, :cond_5

    #@4b
    aget-object v1, v4, v3

    #@4d
    .line 836
    .restart local v1    # "rule":Landroid/icu/text/NFRule;
    if-eqz v1, :cond_4

    #@4f
    .line 837
    invoke-virtual {v1, p1}, Landroid/icu/text/NFRule;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    #@52
    .line 835
    :cond_4
    add-int/lit8 v3, v3, 0x1

    #@54
    goto :goto_3

    #@55
    .line 818
    .end local v1    # "rule":Landroid/icu/text/NFRule;
    :cond_5
    return-void
.end method

.method setNonNumericalRule(Landroid/icu/text/NFRule;)V
    .locals 5
    .param p1, "rule"    # Landroid/icu/text/NFRule;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 235
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@4
    move-result-wide v0

    #@5
    .line 236
    .local v0, "baseValue":J
    const-wide/16 v2, -0x1

    #@7
    cmp-long v2, v0, v2

    #@9
    if-nez v2, :cond_1

    #@b
    .line 237
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    #@d
    const/4 v3, 0x0

    #@e
    aput-object p1, v2, v3

    #@10
    .line 234
    :cond_0
    :goto_0
    return-void

    #@11
    .line 239
    :cond_1
    const-wide/16 v2, -0x2

    #@13
    cmp-long v2, v0, v2

    #@15
    if-nez v2, :cond_2

    #@17
    .line 240
    invoke-direct {p0, v4, p1, v4}, Landroid/icu/text/NFRuleSet;->setBestFractionRule(ILandroid/icu/text/NFRule;Z)V

    #@1a
    goto :goto_0

    #@1b
    .line 242
    :cond_2
    const-wide/16 v2, -0x3

    #@1d
    cmp-long v2, v0, v2

    #@1f
    if-nez v2, :cond_3

    #@21
    .line 243
    const/4 v2, 0x2

    #@22
    invoke-direct {p0, v2, p1, v4}, Landroid/icu/text/NFRuleSet;->setBestFractionRule(ILandroid/icu/text/NFRule;Z)V

    #@25
    goto :goto_0

    #@26
    .line 245
    :cond_3
    const-wide/16 v2, -0x4

    #@28
    cmp-long v2, v0, v2

    #@2a
    if-nez v2, :cond_4

    #@2c
    .line 246
    const/4 v2, 0x3

    #@2d
    invoke-direct {p0, v2, p1, v4}, Landroid/icu/text/NFRuleSet;->setBestFractionRule(ILandroid/icu/text/NFRule;Z)V

    #@30
    goto :goto_0

    #@31
    .line 248
    :cond_4
    const-wide/16 v2, -0x5

    #@33
    cmp-long v2, v0, v2

    #@35
    if-nez v2, :cond_5

    #@37
    .line 249
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    #@39
    const/4 v3, 0x4

    #@3a
    aput-object p1, v2, v3

    #@3c
    goto :goto_0

    #@3d
    .line 251
    :cond_5
    const-wide/16 v2, -0x6

    #@3f
    cmp-long v2, v0, v2

    #@41
    if-nez v2, :cond_0

    #@43
    .line 252
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    #@45
    const/4 v3, 0x5

    #@46
    aput-object p1, v2, v3

    #@48
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 355
    .local v2, "result":Ljava/lang/StringBuilder;
    iget-object v5, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    #@8
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v5

    #@c
    const-string/jumbo v6, ":\n"

    #@f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    .line 358
    iget-object v6, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@14
    array-length v7, v6

    #@15
    move v5, v4

    #@16
    :goto_0
    if-ge v5, v7, :cond_0

    #@18
    aget-object v3, v6, v5

    #@1a
    .line 359
    .local v3, "rule":Landroid/icu/text/NFRule;
    invoke-virtual {v3}, Landroid/icu/text/NFRule;->toString()Ljava/lang/String;

    #@1d
    move-result-object v8

    #@1e
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v8

    #@22
    const-string/jumbo v9, "\n"

    #@25
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    .line 358
    add-int/lit8 v5, v5, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 363
    .end local v3    # "rule":Landroid/icu/text/NFRule;
    :cond_0
    iget-object v5, p0, Landroid/icu/text/NFRuleSet;->nonNumericalRules:[Landroid/icu/text/NFRule;

    #@2d
    array-length v6, v5

    #@2e
    :goto_1
    if-ge v4, v6, :cond_5

    #@30
    aget-object v3, v5, v4

    #@32
    .line 364
    .restart local v3    # "rule":Landroid/icu/text/NFRule;
    if-eqz v3, :cond_4

    #@34
    .line 365
    invoke-virtual {v3}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@37
    move-result-wide v8

    #@38
    const-wide/16 v10, -0x2

    #@3a
    cmp-long v7, v8, v10

    #@3c
    if-eqz v7, :cond_1

    #@3e
    .line 366
    invoke-virtual {v3}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@41
    move-result-wide v8

    #@42
    const-wide/16 v10, -0x3

    #@44
    cmp-long v7, v8, v10

    #@46
    if-nez v7, :cond_3

    #@48
    .line 369
    :cond_1
    iget-object v7, p0, Landroid/icu/text/NFRuleSet;->fractionRules:Ljava/util/LinkedList;

    #@4a
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4d
    move-result-object v1

    #@4e
    .local v1, "fractionRule$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@51
    move-result v7

    #@52
    if-eqz v7, :cond_4

    #@54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@57
    move-result-object v0

    #@58
    check-cast v0, Landroid/icu/text/NFRule;

    #@5a
    .line 370
    .local v0, "fractionRule":Landroid/icu/text/NFRule;
    invoke-virtual {v0}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@5d
    move-result-wide v8

    #@5e
    invoke-virtual {v3}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@61
    move-result-wide v10

    #@62
    cmp-long v7, v8, v10

    #@64
    if-nez v7, :cond_2

    #@66
    .line 371
    invoke-virtual {v0}, Landroid/icu/text/NFRule;->toString()Ljava/lang/String;

    #@69
    move-result-object v7

    #@6a
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v7

    #@6e
    const-string/jumbo v8, "\n"

    #@71
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    goto :goto_2

    #@75
    .line 367
    .end local v0    # "fractionRule":Landroid/icu/text/NFRule;
    .end local v1    # "fractionRule$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v3}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@78
    move-result-wide v8

    #@79
    const-wide/16 v10, -0x4

    #@7b
    cmp-long v7, v8, v10

    #@7d
    if-eqz v7, :cond_1

    #@7f
    .line 376
    invoke-virtual {v3}, Landroid/icu/text/NFRule;->toString()Ljava/lang/String;

    #@82
    move-result-object v7

    #@83
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v7

    #@87
    const-string/jumbo v8, "\n"

    #@8a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    .line 363
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@8f
    goto :goto_1

    #@90
    .line 381
    .end local v3    # "rule":Landroid/icu/text/NFRule;
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@93
    move-result-object v4

    #@94
    return-object v4
.end method
