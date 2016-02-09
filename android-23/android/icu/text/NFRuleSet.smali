.class final Landroid/icu/text/NFRuleSet;
.super Ljava/lang/Object;
.source "NFRuleSet.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final RECURSION_LIMIT:I = 0x32


# instance fields
.field private fractionRules:[Landroid/icu/text/NFRule;

.field private isFractionRuleSet:Z

.field private isParseable:Z

.field private name:Ljava/lang/String;

.field private negativeNumberRule:Landroid/icu/text/NFRule;

.field private recursionCount:I

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
    .line 24
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 5
    .param p1, "descriptions"    # [Ljava/lang/String;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 42
    const/4 v2, 0x0

    #@5
    iput-object v2, p0, Landroid/icu/text/NFRuleSet;->negativeNumberRule:Landroid/icu/text/NFRule;

    #@7
    .line 49
    const/4 v2, 0x3

    #@8
    new-array v2, v2, [Landroid/icu/text/NFRule;

    #@a
    iput-object v2, p0, Landroid/icu/text/NFRuleSet;->fractionRules:[Landroid/icu/text/NFRule;

    #@c
    .line 59
    iput-boolean v4, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    #@e
    .line 64
    const/4 v2, 0x1

    #@f
    iput-boolean v2, p0, Landroid/icu/text/NFRuleSet;->isParseable:Z

    #@11
    .line 69
    iput v4, p0, Landroid/icu/text/NFRuleSet;->recursionCount:I

    #@13
    .line 89
    aget-object v0, p1, p2

    #@15
    .line 91
    .local v0, "description":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@18
    move-result v2

    #@19
    if-nez v2, :cond_0

    #@1b
    .line 92
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1d
    const-string/jumbo v3, "Empty rule set description"

    #@20
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@23
    throw v2

    #@24
    .line 99
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    #@27
    move-result v2

    #@28
    const/16 v3, 0x25

    #@2a
    if-ne v2, v3, :cond_4

    #@2c
    .line 100
    const/16 v2, 0x3a

    #@2e
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    #@31
    move-result v1

    #@32
    .line 101
    .local v1, "pos":I
    const/4 v2, -0x1

    #@33
    if-ne v1, v2, :cond_1

    #@35
    .line 102
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@37
    const-string/jumbo v3, "Rule set name doesn\'t end in colon"

    #@3a
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3d
    throw v2

    #@3e
    .line 105
    :cond_1
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    iput-object v2, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    #@44
    .line 106
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@47
    move-result v2

    #@48
    if-ge v1, v2, :cond_3

    #@4a
    add-int/lit8 v1, v1, 0x1

    #@4c
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@4f
    move-result v2

    #@50
    invoke-static {v2}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@53
    move-result v2

    #@54
    if-nez v2, :cond_2

    #@56
    .line 108
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@59
    move-result-object v0

    #@5a
    .line 109
    aput-object v0, p1, p2

    #@5c
    .line 118
    .end local v1    # "pos":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@5f
    move-result v2

    #@60
    if-nez v2, :cond_5

    #@62
    .line 119
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@64
    const-string/jumbo v3, "Empty rule set description"

    #@67
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@6a
    throw v2

    #@6b
    .line 115
    :cond_4
    const-string/jumbo v2, "%default"

    #@6e
    iput-object v2, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    #@70
    goto :goto_0

    #@71
    .line 122
    :cond_5
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    #@73
    const-string/jumbo v3, "@noparse"

    #@76
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@79
    move-result v2

    #@7a
    if-eqz v2, :cond_6

    #@7c
    .line 123
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    #@7e
    iget-object v3, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    #@80
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@83
    move-result v3

    #@84
    add-int/lit8 v3, v3, -0x8

    #@86
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@89
    move-result-object v2

    #@8a
    iput-object v2, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    #@8c
    .line 124
    iput-boolean v4, p0, Landroid/icu/text/NFRuleSet;->isParseable:Z

    #@8e
    .line 88
    :cond_6
    return-void
.end method

.method private findFractionRuleSetRule(D)Landroid/icu/text/NFRule;
    .locals 15
    .param p1, "number"    # D

    #@0
    .prologue
    .line 579
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
    .line 580
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
    .line 581
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
    .line 580
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 583
    :cond_0
    long-to-double v10, v4

    #@1f
    mul-double v10, v10, p1

    #@21
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    #@24
    move-result-wide v6

    #@25
    .line 587
    .local v6, "numerator":J
    const-wide v0, 0x7fffffffffffffffL

    #@2a
    .line 588
    .local v0, "difference":J
    const/4 v3, 0x0

    #@2b
    .line 589
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
    .line 596
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
    .line 601
    .local v8, "tempDifference":J
    sub-long v10, v4, v8

    #@3e
    cmp-long v10, v10, v8

    #@40
    if-gez v10, :cond_1

    #@42
    .line 602
    sub-long v8, v4, v8

    #@44
    .line 609
    :cond_1
    cmp-long v10, v8, v0

    #@46
    if-gez v10, :cond_5

    #@48
    .line 610
    move-wide v0, v8

    #@49
    .line 611
    move v3, v2

    #@4a
    .line 612
    const-wide/16 v10, 0x0

    #@4c
    cmp-long v10, v0, v10

    #@4e
    if-nez v10, :cond_5

    #@50
    .line 624
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
    .line 625
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
    .line 626
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
    .line 627
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
    .line 628
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@99
    .line 633
    :cond_4
    iget-object v10, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@9b
    aget-object v10, v10, v3

    #@9d
    return-object v10

    #@9e
    .line 589
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
    .line 489
    iget-boolean v6, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    #@2
    if-eqz v6, :cond_0

    #@4
    .line 490
    long-to-double v6, p1

    #@5
    invoke-direct {p0, v6, v7}, Landroid/icu/text/NFRuleSet;->findFractionRuleSetRule(D)Landroid/icu/text/NFRule;

    #@8
    move-result-object v6

    #@9
    return-object v6

    #@a
    .line 495
    :cond_0
    const-wide/16 v6, 0x0

    #@c
    cmp-long v6, p1, v6

    #@e
    if-gez v6, :cond_2

    #@10
    .line 496
    iget-object v6, p0, Landroid/icu/text/NFRuleSet;->negativeNumberRule:Landroid/icu/text/NFRule;

    #@12
    if-eqz v6, :cond_1

    #@14
    .line 497
    iget-object v6, p0, Landroid/icu/text/NFRuleSet;->negativeNumberRule:Landroid/icu/text/NFRule;

    #@16
    return-object v6

    #@17
    .line 499
    :cond_1
    neg-long p1, p1

    #@18
    .line 515
    :cond_2
    const/4 v1, 0x0

    #@19
    .line 516
    .local v1, "lo":I
    iget-object v6, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@1b
    array-length v0, v6

    #@1c
    .line 517
    .local v0, "hi":I
    if-lez v0, :cond_9

    #@1e
    .line 518
    :goto_0
    if-ge v1, v0, :cond_5

    #@20
    .line 519
    add-int v6, v1, v0

    #@22
    ushr-int/lit8 v2, v6, 0x1

    #@24
    .line 520
    .local v2, "mid":I
    iget-object v6, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@26
    aget-object v6, v6, v2

    #@28
    invoke-virtual {v6}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@2b
    move-result-wide v4

    #@2c
    .line 521
    .local v4, "ruleBaseValue":J
    cmp-long v6, v4, p1

    #@2e
    if-nez v6, :cond_3

    #@30
    .line 522
    iget-object v6, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@32
    aget-object v6, v6, v2

    #@34
    return-object v6

    #@35
    .line 524
    :cond_3
    cmp-long v6, v4, p1

    #@37
    if-lez v6, :cond_4

    #@39
    .line 525
    move v0, v2

    #@3a
    goto :goto_0

    #@3b
    .line 528
    :cond_4
    add-int/lit8 v1, v2, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 531
    .end local v2    # "mid":I
    .end local v4    # "ruleBaseValue":J
    :cond_5
    if-nez v0, :cond_6

    #@40
    .line 532
    new-instance v6, Ljava/lang/IllegalStateException;

    #@42
    new-instance v7, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v8, "The rule set "

    #@4a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v7

    #@4e
    iget-object v8, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    #@50
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v7

    #@54
    const-string/jumbo v8, " cannot format the value "

    #@57
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v7

    #@5b
    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v7

    #@5f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v7

    #@63
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@66
    throw v6

    #@67
    .line 534
    :cond_6
    iget-object v6, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@69
    add-int/lit8 v7, v0, -0x1

    #@6b
    aget-object v3, v6, v7

    #@6d
    .line 541
    .local v3, "result":Landroid/icu/text/NFRule;
    long-to-double v6, p1

    #@6e
    invoke-virtual {v3, v6, v7}, Landroid/icu/text/NFRule;->shouldRollBack(D)Z

    #@71
    move-result v6

    #@72
    if-eqz v6, :cond_8

    #@74
    .line 542
    const/4 v6, 0x1

    #@75
    if-ne v0, v6, :cond_7

    #@77
    .line 543
    new-instance v6, Ljava/lang/IllegalStateException;

    #@79
    new-instance v7, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    const-string/jumbo v8, "The rule set "

    #@81
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v7

    #@85
    iget-object v8, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    #@87
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v7

    #@8b
    const-string/jumbo v8, " cannot roll back from the rule \'"

    #@8e
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v7

    #@92
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v7

    #@96
    .line 544
    const-string/jumbo v8, "\'"

    #@99
    .line 543
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v7

    #@9d
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v7

    #@a1
    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@a4
    throw v6

    #@a5
    .line 546
    :cond_7
    iget-object v6, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@a7
    add-int/lit8 v7, v0, -0x2

    #@a9
    aget-object v3, v6, v7

    #@ab
    .line 548
    :cond_8
    return-object v3

    #@ac
    .line 551
    .end local v3    # "result":Landroid/icu/text/NFRule;
    :cond_9
    iget-object v6, p0, Landroid/icu/text/NFRuleSet;->fractionRules:[Landroid/icu/text/NFRule;

    #@ae
    const/4 v7, 0x2

    #@af
    aget-object v6, v6, v7

    #@b1
    return-object v6
.end method

.method private findRule(D)Landroid/icu/text/NFRule;
    .locals 5
    .param p1, "number"    # D

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 429
    iget-boolean v0, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 430
    invoke-direct {p0, p1, p2}, Landroid/icu/text/NFRuleSet;->findFractionRuleSetRule(D)Landroid/icu/text/NFRule;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 436
    :cond_0
    const-wide/16 v0, 0x0

    #@e
    cmpg-double v0, p1, v0

    #@10
    if-gez v0, :cond_2

    #@12
    .line 437
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->negativeNumberRule:Landroid/icu/text/NFRule;

    #@14
    if-eqz v0, :cond_1

    #@16
    .line 438
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->negativeNumberRule:Landroid/icu/text/NFRule;

    #@18
    return-object v0

    #@19
    .line 440
    :cond_1
    neg-double p1, p1

    #@1a
    .line 445
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    #@1d
    move-result-wide v0

    #@1e
    cmpl-double v0, p1, v0

    #@20
    if-eqz v0, :cond_4

    #@22
    .line 448
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    #@24
    cmpg-double v0, p1, v0

    #@26
    if-gez v0, :cond_3

    #@28
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->fractionRules:[Landroid/icu/text/NFRule;

    #@2a
    aget-object v0, v0, v3

    #@2c
    if-eqz v0, :cond_3

    #@2e
    .line 449
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->fractionRules:[Landroid/icu/text/NFRule;

    #@30
    aget-object v0, v0, v3

    #@32
    return-object v0

    #@33
    .line 453
    :cond_3
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->fractionRules:[Landroid/icu/text/NFRule;

    #@35
    aget-object v0, v0, v2

    #@37
    if-eqz v0, :cond_4

    #@39
    .line 454
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->fractionRules:[Landroid/icu/text/NFRule;

    #@3b
    aget-object v0, v0, v2

    #@3d
    return-object v0

    #@3e
    .line 459
    :cond_4
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->fractionRules:[Landroid/icu/text/NFRule;

    #@40
    aget-object v0, v0, v4

    #@42
    if-eqz v0, :cond_5

    #@44
    .line 460
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->fractionRules:[Landroid/icu/text/NFRule;

    #@46
    aget-object v0, v0, v4

    #@48
    return-object v0

    #@49
    .line 465
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    #@4c
    move-result-wide v0

    #@4d
    invoke-direct {p0, v0, v1}, Landroid/icu/text/NFRuleSet;->findNormalRule(J)Landroid/icu/text/NFRule;

    #@50
    move-result-object v0

    #@51
    return-object v0
.end method

.method private static lcm(JJ)J
    .locals 14
    .param p0, "x"    # J
    .param p2, "y"    # J

    #@0
    .prologue
    .line 642
    move-wide v6, p0

    #@1
    .line 643
    .local v6, "x1":J
    move-wide/from16 v8, p2

    #@3
    .line 645
    .local v8, "y1":J
    const/4 v2, 0x0

    #@4
    .line 646
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
    .line 647
    add-int/lit8 v2, v2, 0x1

    #@18
    .line 648
    const/4 v3, 0x1

    #@19
    shr-long/2addr v6, v3

    #@1a
    .line 649
    const/4 v3, 0x1

    #@1b
    shr-long/2addr v8, v3

    #@1c
    goto :goto_0

    #@1d
    .line 653
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
    .line 654
    neg-long v4, v8

    #@27
    .line 659
    .local v4, "t":J
    :goto_1
    const-wide/16 v10, 0x0

    #@29
    cmp-long v3, v4, v10

    #@2b
    if-eqz v3, :cond_4

    #@2d
    .line 660
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
    .line 661
    const/4 v3, 0x1

    #@37
    shr-long/2addr v4, v3

    #@38
    goto :goto_2

    #@39
    .line 656
    .end local v4    # "t":J
    :cond_1
    move-wide v4, v6

    #@3a
    .restart local v4    # "t":J
    goto :goto_1

    #@3b
    .line 663
    :cond_2
    const-wide/16 v10, 0x0

    #@3d
    cmp-long v3, v4, v10

    #@3f
    if-lez v3, :cond_3

    #@41
    .line 664
    move-wide v6, v4

    #@42
    .line 668
    :goto_3
    sub-long v4, v6, v8

    #@44
    goto :goto_1

    #@45
    .line 666
    :cond_3
    neg-long v8, v4

    #@46
    goto :goto_3

    #@47
    .line 670
    :cond_4
    shl-long v0, v6, v2

    #@49
    .line 673
    .local v0, "gcd":J
    div-long v10, p0, v0

    #@4b
    mul-long v10, v10, p2

    #@4d
    return-wide v10
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 275
    instance-of v2, p1, Landroid/icu/text/NFRuleSet;

    #@5
    if-nez v2, :cond_0

    #@7
    .line 276
    return v4

    #@8
    :cond_0
    move-object v1, p1

    #@9
    .line 279
    check-cast v1, Landroid/icu/text/NFRuleSet;

    #@b
    .line 281
    .local v1, "that2":Landroid/icu/text/NFRuleSet;
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    #@d
    iget-object v3, v1, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 282
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->negativeNumberRule:Landroid/icu/text/NFRule;

    #@17
    iget-object v3, v1, Landroid/icu/text/NFRuleSet;->negativeNumberRule:Landroid/icu/text/NFRule;

    #@19
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_1

    #@1f
    .line 283
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->fractionRules:[Landroid/icu/text/NFRule;

    #@21
    aget-object v2, v2, v4

    #@23
    iget-object v3, v1, Landroid/icu/text/NFRuleSet;->fractionRules:[Landroid/icu/text/NFRule;

    #@25
    aget-object v3, v3, v4

    #@27
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2a
    move-result v2

    #@2b
    if-eqz v2, :cond_1

    #@2d
    .line 284
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->fractionRules:[Landroid/icu/text/NFRule;

    #@2f
    aget-object v2, v2, v5

    #@31
    iget-object v3, v1, Landroid/icu/text/NFRuleSet;->fractionRules:[Landroid/icu/text/NFRule;

    #@33
    aget-object v3, v3, v5

    #@35
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_1

    #@3b
    .line 285
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->fractionRules:[Landroid/icu/text/NFRule;

    #@3d
    aget-object v2, v2, v6

    #@3f
    iget-object v3, v1, Landroid/icu/text/NFRuleSet;->fractionRules:[Landroid/icu/text/NFRule;

    #@41
    aget-object v3, v3, v6

    #@43
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@46
    move-result v2

    #@47
    if-eqz v2, :cond_1

    #@49
    .line 286
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@4b
    array-length v2, v2

    #@4c
    iget-object v3, v1, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@4e
    array-length v3, v3

    #@4f
    if-eq v2, v3, :cond_2

    #@51
    .line 289
    :cond_1
    return v4

    #@52
    .line 287
    :cond_2
    iget-boolean v2, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    #@54
    iget-boolean v3, v1, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    #@56
    if-ne v2, v3, :cond_1

    #@58
    .line 293
    const/4 v0, 0x0

    #@59
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@5b
    array-length v2, v2

    #@5c
    if-ge v0, v2, :cond_4

    #@5e
    .line 294
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@60
    aget-object v2, v2, v0

    #@62
    iget-object v3, v1, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@64
    aget-object v3, v3, v0

    #@66
    invoke-virtual {v2, v3}, Landroid/icu/text/NFRule;->equals(Ljava/lang/Object;)Z

    #@69
    move-result v2

    #@6a
    if-nez v2, :cond_3

    #@6c
    .line 295
    return v4

    #@6d
    .line 293
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@6f
    goto :goto_0

    #@70
    .line 300
    :cond_4
    return v5
.end method

.method public format(DLjava/lang/StringBuffer;I)V
    .locals 5
    .param p1, "number"    # D
    .param p3, "toInsertInto"    # Ljava/lang/StringBuffer;
    .param p4, "pos"    # I

    #@0
    .prologue
    .line 412
    invoke-direct {p0, p1, p2}, Landroid/icu/text/NFRuleSet;->findRule(D)Landroid/icu/text/NFRule;

    #@3
    move-result-object v0

    #@4
    .line 414
    .local v0, "applicableRule":Landroid/icu/text/NFRule;
    iget v1, p0, Landroid/icu/text/NFRuleSet;->recursionCount:I

    #@6
    add-int/lit8 v1, v1, 0x1

    #@8
    iput v1, p0, Landroid/icu/text/NFRuleSet;->recursionCount:I

    #@a
    const/16 v2, 0x32

    #@c
    if-lt v1, v2, :cond_0

    #@e
    .line 415
    const/4 v1, 0x0

    #@f
    iput v1, p0, Landroid/icu/text/NFRuleSet;->recursionCount:I

    #@11
    .line 416
    new-instance v1, Ljava/lang/IllegalStateException;

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "Recursion limit exceeded when applying ruleSet "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    iget-object v3, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1

    #@2d
    .line 418
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/icu/text/NFRule;->doFormat(DLjava/lang/StringBuffer;I)V

    #@30
    .line 419
    iget v1, p0, Landroid/icu/text/NFRuleSet;->recursionCount:I

    #@32
    add-int/lit8 v1, v1, -0x1

    #@34
    iput v1, p0, Landroid/icu/text/NFRuleSet;->recursionCount:I

    #@36
    .line 411
    return-void
.end method

.method public format(JLjava/lang/StringBuffer;I)V
    .locals 5
    .param p1, "number"    # J
    .param p3, "toInsertInto"    # Ljava/lang/StringBuffer;
    .param p4, "pos"    # I

    #@0
    .prologue
    .line 393
    invoke-direct {p0, p1, p2}, Landroid/icu/text/NFRuleSet;->findNormalRule(J)Landroid/icu/text/NFRule;

    #@3
    move-result-object v0

    #@4
    .line 395
    .local v0, "applicableRule":Landroid/icu/text/NFRule;
    iget v1, p0, Landroid/icu/text/NFRuleSet;->recursionCount:I

    #@6
    add-int/lit8 v1, v1, 0x1

    #@8
    iput v1, p0, Landroid/icu/text/NFRuleSet;->recursionCount:I

    #@a
    const/16 v2, 0x32

    #@c
    if-lt v1, v2, :cond_0

    #@e
    .line 396
    const/4 v1, 0x0

    #@f
    iput v1, p0, Landroid/icu/text/NFRuleSet;->recursionCount:I

    #@11
    .line 397
    new-instance v1, Ljava/lang/IllegalStateException;

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "Recursion limit exceeded when applying ruleSet "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    iget-object v3, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v1

    #@2d
    .line 399
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/icu/text/NFRule;->doFormat(JLjava/lang/StringBuffer;I)V

    #@30
    .line 400
    iget v1, p0, Landroid/icu/text/NFRuleSet;->recursionCount:I

    #@32
    add-int/lit8 v1, v1, -0x1

    #@34
    iput v1, p0, Landroid/icu/text/NFRuleSet;->recursionCount:I

    #@36
    .line 392
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 361
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 305
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
    .line 306
    :cond_0
    const/16 v0, 0x2a

    #@f
    return v0
.end method

.method public isFractionSet()Z
    .locals 1

    #@0
    .prologue
    .line 353
    iget-boolean v0, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    #@2
    return v0
.end method

.method public isParseable()Z
    .locals 1

    #@0
    .prologue
    .line 377
    iget-boolean v0, p0, Landroid/icu/text/NFRuleSet;->isParseable:Z

    #@2
    return v0
.end method

.method public isPublic()Z
    .locals 2

    #@0
    .prologue
    .line 369
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
    .line 261
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    #@3
    .line 260
    return-void
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;D)Ljava/lang/Number;
    .locals 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "parsePosition"    # Ljava/text/ParsePosition;
    .param p3, "upperBound"    # D

    #@0
    .prologue
    .line 706
    new-instance v6, Ljava/text/ParsePosition;

    #@2
    const/4 v0, 0x0

    #@3
    invoke-direct {v6, v0}, Ljava/text/ParsePosition;-><init>(I)V

    #@6
    .line 707
    .local v6, "highWaterMark":Ljava/text/ParsePosition;
    const-wide/16 v0, 0x0

    #@8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@b
    move-result-object v8

    #@c
    .line 708
    .local v8, "result":Ljava/lang/Number;
    const/4 v9, 0x0

    #@d
    .line 711
    .local v9, "tempResult":Ljava/lang/Number;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@10
    move-result v0

    #@11
    if-nez v0, :cond_0

    #@13
    .line 712
    return-object v8

    #@14
    .line 716
    :cond_0
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->negativeNumberRule:Landroid/icu/text/NFRule;

    #@16
    if-eqz v0, :cond_2

    #@18
    .line 717
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->negativeNumberRule:Landroid/icu/text/NFRule;

    #@1a
    const/4 v3, 0x0

    #@1b
    move-object v1, p1

    #@1c
    move-object v2, p2

    #@1d
    move-wide v4, p3

    #@1e
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/NFRule;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;ZD)Ljava/lang/Number;

    #@21
    move-result-object v9

    #@22
    .line 718
    .local v9, "tempResult":Ljava/lang/Number;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@25
    move-result v0

    #@26
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@29
    move-result v1

    #@2a
    if-le v0, v1, :cond_1

    #@2c
    .line 719
    move-object v8, v9

    #@2d
    .line 720
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@30
    move-result v0

    #@31
    invoke-virtual {v6, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    #@34
    .line 726
    :cond_1
    const/4 v0, 0x0

    #@35
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    #@38
    .line 730
    .end local v9    # "tempResult":Ljava/lang/Number;
    :cond_2
    const/4 v7, 0x0

    #@39
    .local v7, "i":I
    :goto_0
    const/4 v0, 0x3

    #@3a
    if-ge v7, v0, :cond_5

    #@3c
    .line 731
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->fractionRules:[Landroid/icu/text/NFRule;

    #@3e
    aget-object v0, v0, v7

    #@40
    if-eqz v0, :cond_4

    #@42
    .line 732
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->fractionRules:[Landroid/icu/text/NFRule;

    #@44
    aget-object v0, v0, v7

    #@46
    const/4 v3, 0x0

    #@47
    move-object v1, p1

    #@48
    move-object v2, p2

    #@49
    move-wide v4, p3

    #@4a
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/NFRule;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;ZD)Ljava/lang/Number;

    #@4d
    move-result-object v9

    #@4e
    .line 733
    .restart local v9    # "tempResult":Ljava/lang/Number;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@51
    move-result v0

    #@52
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@55
    move-result v1

    #@56
    if-le v0, v1, :cond_3

    #@58
    .line 734
    move-object v8, v9

    #@59
    .line 735
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@5c
    move-result v0

    #@5d
    invoke-virtual {v6, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    #@60
    .line 741
    :cond_3
    const/4 v0, 0x0

    #@61
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    #@64
    .line 730
    .end local v9    # "tempResult":Ljava/lang/Number;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    #@66
    goto :goto_0

    #@67
    .line 754
    :cond_5
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@69
    array-length v0, v0

    #@6a
    add-int/lit8 v7, v0, -0x1

    #@6c
    :goto_1
    if-ltz v7, :cond_8

    #@6e
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@71
    move-result v0

    #@72
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@75
    move-result v1

    #@76
    if-ge v0, v1, :cond_8

    #@78
    .line 755
    iget-boolean v0, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    #@7a
    if-nez v0, :cond_6

    #@7c
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@7e
    aget-object v0, v0, v7

    #@80
    invoke-virtual {v0}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@83
    move-result-wide v0

    #@84
    long-to-double v0, v0

    #@85
    cmpl-double v0, v0, p3

    #@87
    if-ltz v0, :cond_6

    #@89
    .line 754
    :goto_2
    add-int/lit8 v7, v7, -0x1

    #@8b
    goto :goto_1

    #@8c
    .line 759
    :cond_6
    iget-object v0, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@8e
    aget-object v0, v0, v7

    #@90
    iget-boolean v3, p0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    #@92
    move-object v1, p1

    #@93
    move-object v2, p2

    #@94
    move-wide v4, p3

    #@95
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/NFRule;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;ZD)Ljava/lang/Number;

    #@98
    move-result-object v9

    #@99
    .line 760
    .restart local v9    # "tempResult":Ljava/lang/Number;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@9c
    move-result v0

    #@9d
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@a0
    move-result v1

    #@a1
    if-le v0, v1, :cond_7

    #@a3
    .line 761
    move-object v8, v9

    #@a4
    .line 762
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@a7
    move-result v0

    #@a8
    invoke-virtual {v6, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    #@ab
    .line 768
    :cond_7
    const/4 v0, 0x0

    #@ac
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    #@af
    goto :goto_2

    #@b0
    .line 774
    .end local v9    # "tempResult":Ljava/lang/Number;
    :cond_8
    invoke-virtual {v6}, Ljava/text/ParsePosition;->getIndex()I

    #@b3
    move-result v0

    #@b4
    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    #@b7
    .line 780
    return-object v8
.end method

.method public parseRules(Ljava/lang/String;Landroid/icu/text/RuleBasedNumberFormat;)V
    .locals 16
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "owner"    # Landroid/icu/text/RuleBasedNumberFormat;

    #@0
    .prologue
    .line 145
    new-instance v10, Ljava/util/ArrayList;

    #@2
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 149
    .local v10, "tempRules":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/text/NFRule;>;"
    const/4 v8, 0x0

    #@6
    .line 154
    .local v8, "predecessor":Landroid/icu/text/NFRule;
    const/4 v6, 0x0

    #@7
    .line 155
    .local v6, "oldP":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@a
    move-result v4

    #@b
    .line 158
    .end local v8    # "predecessor":Landroid/icu/text/NFRule;
    .local v4, "descriptionLen":I
    :cond_0
    const/16 v11, 0x3b

    #@d
    move-object/from16 v0, p1

    #@f
    invoke-virtual {v0, v11, v6}, Ljava/lang/String;->indexOf(II)I

    #@12
    move-result v7

    #@13
    .line 159
    .local v7, "p":I
    if-gez v7, :cond_1

    #@15
    .line 160
    move v7, v4

    #@16
    .line 166
    :cond_1
    move-object/from16 v0, p1

    #@18
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1b
    move-result-object v11

    #@1c
    move-object/from16 v0, p0

    #@1e
    move-object/from16 v1, p2

    #@20
    invoke-static {v11, v0, v8, v1, v10}, Landroid/icu/text/NFRule;->makeRules(Ljava/lang/String;Landroid/icu/text/NFRuleSet;Landroid/icu/text/NFRule;Landroid/icu/text/RuleBasedNumberFormat;Ljava/util/List;)V

    #@23
    .line 168
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@26
    move-result v11

    #@27
    add-int/lit8 v11, v11, -0x1

    #@29
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2c
    move-result-object v8

    #@2d
    check-cast v8, Landroid/icu/text/NFRule;

    #@2f
    .line 170
    .local v8, "predecessor":Landroid/icu/text/NFRule;
    add-int/lit8 v6, v7, 0x1

    #@31
    .line 172
    if-lt v6, v4, :cond_0

    #@33
    .line 178
    const-wide/16 v2, 0x0

    #@35
    .line 183
    .local v2, "defaultBaseValue":J
    const/4 v5, 0x0

    #@36
    .line 184
    .local v5, "i":I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@39
    move-result v11

    #@3a
    if-ge v5, v11, :cond_5

    #@3c
    .line 185
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3f
    move-result-object v9

    #@40
    check-cast v9, Landroid/icu/text/NFRule;

    #@42
    .line 187
    .local v9, "rule":Landroid/icu/text/NFRule;
    invoke-virtual {v9}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@45
    move-result-wide v12

    #@46
    long-to-int v11, v12

    #@47
    packed-switch v11, :pswitch_data_0

    #@4a
    .line 233
    invoke-virtual {v9}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@4d
    move-result-wide v12

    #@4e
    cmp-long v11, v12, v2

    #@50
    if-gez v11, :cond_3

    #@52
    .line 234
    new-instance v11, Ljava/lang/IllegalArgumentException;

    #@54
    new-instance v12, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v13, "Rules are not in order, base: "

    #@5c
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v12

    #@60
    .line 235
    invoke-virtual {v9}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@63
    move-result-wide v14

    #@64
    .line 234
    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@67
    move-result-object v12

    #@68
    .line 235
    const-string/jumbo v13, " < "

    #@6b
    .line 234
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v12

    #@6f
    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@72
    move-result-object v12

    #@73
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v12

    #@77
    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v11

    #@7b
    .line 194
    :pswitch_0
    invoke-virtual {v9, v2, v3}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    #@7e
    .line 195
    move-object/from16 v0, p0

    #@80
    iget-boolean v11, v0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    #@82
    if-nez v11, :cond_2

    #@84
    .line 196
    const-wide/16 v12, 0x1

    #@86
    add-long/2addr v2, v12

    #@87
    .line 198
    :cond_2
    add-int/lit8 v5, v5, 0x1

    #@89
    .line 199
    goto :goto_0

    #@8a
    .line 204
    :pswitch_1
    move-object/from16 v0, p0

    #@8c
    iput-object v9, v0, Landroid/icu/text/NFRuleSet;->negativeNumberRule:Landroid/icu/text/NFRule;

    #@8e
    .line 205
    invoke-interface {v10, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@91
    goto :goto_0

    #@92
    .line 211
    :pswitch_2
    move-object/from16 v0, p0

    #@94
    iget-object v11, v0, Landroid/icu/text/NFRuleSet;->fractionRules:[Landroid/icu/text/NFRule;

    #@96
    const/4 v12, 0x0

    #@97
    aput-object v9, v11, v12

    #@99
    .line 212
    invoke-interface {v10, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@9c
    goto :goto_0

    #@9d
    .line 218
    :pswitch_3
    move-object/from16 v0, p0

    #@9f
    iget-object v11, v0, Landroid/icu/text/NFRuleSet;->fractionRules:[Landroid/icu/text/NFRule;

    #@a1
    const/4 v12, 0x1

    #@a2
    aput-object v9, v11, v12

    #@a4
    .line 219
    invoke-interface {v10, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@a7
    goto :goto_0

    #@a8
    .line 225
    :pswitch_4
    move-object/from16 v0, p0

    #@aa
    iget-object v11, v0, Landroid/icu/text/NFRuleSet;->fractionRules:[Landroid/icu/text/NFRule;

    #@ac
    const/4 v12, 0x2

    #@ad
    aput-object v9, v11, v12

    #@af
    .line 226
    invoke-interface {v10, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@b2
    goto :goto_0

    #@b3
    .line 237
    :cond_3
    invoke-virtual {v9}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@b6
    move-result-wide v2

    #@b7
    .line 238
    move-object/from16 v0, p0

    #@b9
    iget-boolean v11, v0, Landroid/icu/text/NFRuleSet;->isFractionRuleSet:Z

    #@bb
    if-nez v11, :cond_4

    #@bd
    .line 239
    const-wide/16 v12, 0x1

    #@bf
    add-long/2addr v2, v12

    #@c0
    .line 241
    :cond_4
    add-int/lit8 v5, v5, 0x1

    #@c2
    .line 242
    goto/16 :goto_0

    #@c4
    .line 248
    .end local v9    # "rule":Landroid/icu/text/NFRule;
    :cond_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    #@c7
    move-result v11

    #@c8
    new-array v11, v11, [Landroid/icu/text/NFRule;

    #@ca
    move-object/from16 v0, p0

    #@cc
    iput-object v11, v0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@ce
    .line 249
    move-object/from16 v0, p0

    #@d0
    iget-object v11, v0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@d2
    invoke-interface {v10, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@d5
    .line 142
    return-void

    #@d6
    .line 187
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    .line 320
    .local v1, "result":Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->name:Ljava/lang/String;

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v2

    #@e
    const-string/jumbo v3, ":\n"

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 323
    const/4 v0, 0x0

    #@15
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@17
    array-length v2, v2

    #@18
    if-ge v0, v2, :cond_0

    #@1a
    .line 324
    const-string/jumbo v2, "    "

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    iget-object v3, p0, Landroid/icu/text/NFRuleSet;->rules:[Landroid/icu/text/NFRule;

    #@23
    aget-object v3, v3, v0

    #@25
    invoke-virtual {v3}, Landroid/icu/text/NFRule;->toString()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    const-string/jumbo v3, "\n"

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 323
    add-int/lit8 v0, v0, 0x1

    #@35
    goto :goto_0

    #@36
    .line 328
    :cond_0
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->negativeNumberRule:Landroid/icu/text/NFRule;

    #@38
    if-eqz v2, :cond_1

    #@3a
    .line 329
    const-string/jumbo v2, "    "

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    iget-object v3, p0, Landroid/icu/text/NFRuleSet;->negativeNumberRule:Landroid/icu/text/NFRule;

    #@43
    invoke-virtual {v3}, Landroid/icu/text/NFRule;->toString()Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v2

    #@4b
    const-string/jumbo v3, "\n"

    #@4e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    .line 331
    :cond_1
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->fractionRules:[Landroid/icu/text/NFRule;

    #@53
    aget-object v2, v2, v4

    #@55
    if-eqz v2, :cond_2

    #@57
    .line 332
    const-string/jumbo v2, "    "

    #@5a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v2

    #@5e
    iget-object v3, p0, Landroid/icu/text/NFRuleSet;->fractionRules:[Landroid/icu/text/NFRule;

    #@60
    aget-object v3, v3, v4

    #@62
    invoke-virtual {v3}, Landroid/icu/text/NFRule;->toString()Ljava/lang/String;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v2

    #@6a
    const-string/jumbo v3, "\n"

    #@6d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@70
    .line 334
    :cond_2
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->fractionRules:[Landroid/icu/text/NFRule;

    #@72
    aget-object v2, v2, v5

    #@74
    if-eqz v2, :cond_3

    #@76
    .line 335
    const-string/jumbo v2, "    "

    #@79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v2

    #@7d
    iget-object v3, p0, Landroid/icu/text/NFRuleSet;->fractionRules:[Landroid/icu/text/NFRule;

    #@7f
    aget-object v3, v3, v5

    #@81
    invoke-virtual {v3}, Landroid/icu/text/NFRule;->toString()Ljava/lang/String;

    #@84
    move-result-object v3

    #@85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v2

    #@89
    const-string/jumbo v3, "\n"

    #@8c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    .line 337
    :cond_3
    iget-object v2, p0, Landroid/icu/text/NFRuleSet;->fractionRules:[Landroid/icu/text/NFRule;

    #@91
    aget-object v2, v2, v6

    #@93
    if-eqz v2, :cond_4

    #@95
    .line 338
    const-string/jumbo v2, "    "

    #@98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v2

    #@9c
    iget-object v3, p0, Landroid/icu/text/NFRuleSet;->fractionRules:[Landroid/icu/text/NFRule;

    #@9e
    aget-object v3, v3, v6

    #@a0
    invoke-virtual {v3}, Landroid/icu/text/NFRule;->toString()Ljava/lang/String;

    #@a3
    move-result-object v3

    #@a4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v2

    #@a8
    const-string/jumbo v3, "\n"

    #@ab
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    .line 341
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1
    move-result-object v2

    #@b2
    return-object v2
.end method
