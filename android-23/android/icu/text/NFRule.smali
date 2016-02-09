.class final Landroid/icu/text/NFRule;
.super Ljava/lang/Object;
.source "NFRule.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final IMPROPER_FRACTION_RULE:I = -0x2

.field public static final MASTER_RULE:I = -0x4

.field public static final NEGATIVE_NUMBER_RULE:I = -0x1

.field public static final PROPER_FRACTION_RULE:I = -0x3

.field private static final RULE_PREFIXES:[Ljava/lang/String;


# instance fields
.field private baseValue:J

.field private exponent:S

.field private final formatter:Landroid/icu/text/RuleBasedNumberFormat;

.field private radix:I

.field private rulePatternFormat:Landroid/icu/text/PluralFormat;

.field private ruleText:Ljava/lang/String;

.field private sub1:Landroid/icu/text/NFSubstitution;

.field private sub2:Landroid/icu/text/NFSubstitution;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    const-class v0, Landroid/icu/text/NFRule;

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    move v0, v1

    #@b
    :goto_0
    sput-boolean v0, Landroid/icu/text/NFRule;->-assertionsDisabled:Z

    #@d
    .line 407
    const/16 v0, 0xb

    #@f
    new-array v0, v0, [Ljava/lang/String;

    #@11
    .line 408
    const-string/jumbo v3, "<<"

    #@14
    aput-object v3, v0, v1

    #@16
    const-string/jumbo v1, "<%"

    #@19
    aput-object v1, v0, v2

    #@1b
    const-string/jumbo v1, "<#"

    #@1e
    const/4 v2, 0x2

    #@1f
    aput-object v1, v0, v2

    #@21
    const-string/jumbo v1, "<0"

    #@24
    const/4 v2, 0x3

    #@25
    aput-object v1, v0, v2

    #@27
    .line 409
    const-string/jumbo v1, ">>"

    #@2a
    const/4 v2, 0x4

    #@2b
    aput-object v1, v0, v2

    #@2d
    const-string/jumbo v1, ">%"

    #@30
    const/4 v2, 0x5

    #@31
    aput-object v1, v0, v2

    #@33
    const-string/jumbo v1, ">#"

    #@36
    const/4 v2, 0x6

    #@37
    aput-object v1, v0, v2

    #@39
    const-string/jumbo v1, ">0"

    #@3c
    const/4 v2, 0x7

    #@3d
    aput-object v1, v0, v2

    #@3f
    .line 410
    const-string/jumbo v1, "=%"

    #@42
    const/16 v2, 0x8

    #@44
    aput-object v1, v0, v2

    #@46
    const-string/jumbo v1, "=#"

    #@49
    const/16 v2, 0x9

    #@4b
    aput-object v1, v0, v2

    #@4d
    const-string/jumbo v1, "=0"

    #@50
    const/16 v2, 0xa

    #@52
    aput-object v1, v0, v2

    #@54
    .line 407
    sput-object v0, Landroid/icu/text/NFRule;->RULE_PREFIXES:[Ljava/lang/String;

    #@56
    .line 20
    return-void

    #@57
    :cond_0
    move v0, v2

    #@58
    goto :goto_0
.end method

.method public constructor <init>(Landroid/icu/text/RuleBasedNumberFormat;)V
    .locals 2
    .param p1, "formatter"    # Landroid/icu/text/RuleBasedNumberFormat;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 58
    const/16 v0, 0xa

    #@6
    iput v0, p0, Landroid/icu/text/NFRule;->radix:I

    #@8
    .line 64
    const/4 v0, 0x0

    #@9
    iput-short v0, p0, Landroid/icu/text/NFRule;->exponent:S

    #@b
    .line 71
    iput-object v1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@d
    .line 78
    iput-object v1, p0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    #@f
    .line 84
    iput-object v1, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@11
    .line 90
    iput-object v1, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@13
    .line 221
    iput-object p1, p0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    #@15
    .line 220
    return-void
.end method

.method private allIgnorable(Ljava/lang/String;)Z
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1200
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 1201
    const/4 v1, 0x1

    #@8
    return v1

    #@9
    .line 1203
    :cond_0
    iget-object v2, p0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    #@b
    invoke-virtual {v2}, Landroid/icu/text/RuleBasedNumberFormat;->getLenientScanner()Landroid/icu/text/RbnfLenientScanner;

    #@e
    move-result-object v0

    #@f
    .line 1204
    .local v0, "scanner":Landroid/icu/text/RbnfLenientScanner;
    if-eqz v0, :cond_1

    #@11
    invoke-interface {v0, p1}, Landroid/icu/text/RbnfLenientScanner;->allIgnorable(Ljava/lang/String;)Z

    #@14
    move-result v1

    #@15
    :cond_1
    return v1
.end method

.method private expectedExponent()S
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 528
    iget v1, p0, Landroid/icu/text/NFRule;->radix:I

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-wide v2, p0, Landroid/icu/text/NFRule;->baseValue:J

    #@7
    const-wide/16 v4, 0x1

    #@9
    cmp-long v1, v2, v4

    #@b
    if-gez v1, :cond_1

    #@d
    .line 529
    :cond_0
    return v6

    #@e
    .line 535
    :cond_1
    iget-wide v2, p0, Landroid/icu/text/NFRule;->baseValue:J

    #@10
    long-to-double v2, v2

    #@11
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    #@14
    move-result-wide v2

    #@15
    iget v1, p0, Landroid/icu/text/NFRule;->radix:I

    #@17
    int-to-double v4, v1

    #@18
    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    #@1b
    move-result-wide v4

    #@1c
    div-double/2addr v2, v4

    #@1d
    double-to-int v1, v2

    #@1e
    int-to-short v0, v1

    #@1f
    .line 536
    .local v0, "tempResult":S
    iget v1, p0, Landroid/icu/text/NFRule;->radix:I

    #@21
    int-to-double v2, v1

    #@22
    add-int/lit8 v1, v0, 0x1

    #@24
    int-to-double v4, v1

    #@25
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    #@28
    move-result-wide v2

    #@29
    iget-wide v4, p0, Landroid/icu/text/NFRule;->baseValue:J

    #@2b
    long-to-double v4, v4

    #@2c
    cmpg-double v1, v2, v4

    #@2e
    if-gtz v1, :cond_2

    #@30
    .line 537
    add-int/lit8 v1, v0, 0x1

    #@32
    int-to-short v1, v1

    #@33
    return v1

    #@34
    .line 539
    :cond_2
    return v0
.end method

.method private extractSubstitution(Landroid/icu/text/NFRuleSet;Landroid/icu/text/NFRule;)Landroid/icu/text/NFSubstitution;
    .locals 9
    .param p1, "owner"    # Landroid/icu/text/NFRuleSet;
    .param p2, "predecessor"    # Landroid/icu/text/NFRule;

    #@0
    .prologue
    const/4 v3, -0x1

    #@1
    .line 432
    iget-object v1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@3
    sget-object v2, Landroid/icu/text/NFRule;->RULE_PREFIXES:[Ljava/lang/String;

    #@5
    invoke-static {v1, v2}, Landroid/icu/text/NFRule;->indexOfAny(Ljava/lang/String;[Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    .line 436
    .local v0, "subStart":I
    if-ne v0, v3, :cond_0

    #@b
    .line 437
    iget-object v1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@d
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@10
    move-result v0

    #@11
    .line 438
    .end local v0    # "subStart":I
    iget-object v4, p0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    #@13
    const-string/jumbo v5, ""

    #@16
    move-object v1, p0

    #@17
    move-object v2, p2

    #@18
    move-object v3, p1

    #@19
    .line 437
    invoke-static/range {v0 .. v5}, Landroid/icu/text/NFSubstitution;->makeSubstitution(ILandroid/icu/text/NFRule;Landroid/icu/text/NFRule;Landroid/icu/text/NFRuleSet;Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)Landroid/icu/text/NFSubstitution;

    #@1c
    move-result-object v1

    #@1d
    return-object v1

    #@1e
    .line 443
    .restart local v0    # "subStart":I
    :cond_0
    iget-object v1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@20
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    const-string/jumbo v2, ">>>"

    #@27
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_2

    #@2d
    .line 444
    add-int/lit8 v8, v0, 0x2

    #@2f
    .line 464
    .local v8, "subEnd":I
    :cond_1
    :goto_0
    if-ne v8, v3, :cond_3

    #@31
    .line 465
    iget-object v1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@33
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@36
    move-result v0

    #@37
    .line 466
    .end local v0    # "subStart":I
    iget-object v4, p0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    #@39
    const-string/jumbo v5, ""

    #@3c
    move-object v1, p0

    #@3d
    move-object v2, p2

    #@3e
    move-object v3, p1

    #@3f
    .line 465
    invoke-static/range {v0 .. v5}, Landroid/icu/text/NFSubstitution;->makeSubstitution(ILandroid/icu/text/NFRule;Landroid/icu/text/NFRule;Landroid/icu/text/NFRuleSet;Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)Landroid/icu/text/NFSubstitution;

    #@42
    move-result-object v1

    #@43
    return-object v1

    #@44
    .line 449
    .end local v8    # "subEnd":I
    .restart local v0    # "subStart":I
    :cond_2
    iget-object v1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@46
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    #@49
    move-result v6

    #@4a
    .line 450
    .local v6, "c":C
    iget-object v1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@4c
    add-int/lit8 v2, v0, 0x1

    #@4e
    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->indexOf(II)I

    #@51
    move-result v8

    #@52
    .line 452
    .restart local v8    # "subEnd":I
    const/16 v1, 0x3c

    #@54
    if-ne v6, v1, :cond_1

    #@56
    if-eq v8, v3, :cond_1

    #@58
    iget-object v1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@5a
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@5d
    move-result v1

    #@5e
    add-int/lit8 v1, v1, -0x1

    #@60
    if-ge v8, v1, :cond_1

    #@62
    iget-object v1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@64
    add-int/lit8 v2, v8, 0x1

    #@66
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@69
    move-result v1

    #@6a
    if-ne v1, v6, :cond_1

    #@6c
    .line 457
    add-int/lit8 v8, v8, 0x1

    #@6e
    goto :goto_0

    #@6f
    .line 473
    .end local v6    # "c":C
    :cond_3
    iget-object v4, p0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    #@71
    iget-object v1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@73
    add-int/lit8 v2, v8, 0x1

    #@75
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@78
    move-result-object v5

    #@79
    move-object v1, p0

    #@7a
    move-object v2, p2

    #@7b
    move-object v3, p1

    #@7c
    .line 472
    invoke-static/range {v0 .. v5}, Landroid/icu/text/NFSubstitution;->makeSubstitution(ILandroid/icu/text/NFRule;Landroid/icu/text/NFRule;Landroid/icu/text/NFRuleSet;Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)Landroid/icu/text/NFSubstitution;

    #@7f
    move-result-object v7

    #@80
    .line 476
    .local v7, "result":Landroid/icu/text/NFSubstitution;
    new-instance v1, Ljava/lang/StringBuilder;

    #@82
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@85
    iget-object v2, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@87
    const/4 v3, 0x0

    #@88
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@8b
    move-result-object v2

    #@8c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v1

    #@90
    iget-object v2, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@92
    add-int/lit8 v3, v8, 0x1

    #@94
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@97
    move-result-object v2

    #@98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v1

    #@9c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v1

    #@a0
    iput-object v1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@a2
    .line 477
    return-object v7
.end method

.method private extractSubstitutions(Landroid/icu/text/NFRuleSet;Ljava/lang/String;Landroid/icu/text/NFRule;)V
    .locals 8
    .param p1, "owner"    # Landroid/icu/text/NFRuleSet;
    .param p2, "ruleText"    # Ljava/lang/String;
    .param p3, "predecessor"    # Landroid/icu/text/NFRule;

    #@0
    .prologue
    .line 373
    iput-object p2, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@2
    .line 374
    const/4 v5, 0x0

    #@3
    iput-object v5, p0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    #@5
    .line 375
    invoke-direct {p0, p1, p3}, Landroid/icu/text/NFRule;->extractSubstitution(Landroid/icu/text/NFRuleSet;Landroid/icu/text/NFRule;)Landroid/icu/text/NFSubstitution;

    #@8
    move-result-object v5

    #@9
    iput-object v5, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@b
    .line 376
    iget-object v5, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@d
    invoke-virtual {v5}, Landroid/icu/text/NFSubstitution;->isNullSubstitution()Z

    #@10
    move-result v5

    #@11
    if-eqz v5, :cond_0

    #@13
    .line 378
    iget-object v5, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@15
    iput-object v5, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@17
    .line 383
    :goto_0
    iget-object p2, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@19
    .line 384
    const-string/jumbo v5, "$("

    #@1c
    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@1f
    move-result v2

    #@20
    .line 385
    .local v2, "pluralRuleStart":I
    if-ltz v2, :cond_1

    #@22
    const-string/jumbo v5, ")$"

    #@25
    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@28
    move-result v1

    #@29
    .line 386
    .local v1, "pluralRuleEnd":I
    :goto_1
    if-ltz v1, :cond_3

    #@2b
    .line 387
    const/16 v5, 0x2c

    #@2d
    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->indexOf(II)I

    #@30
    move-result v0

    #@31
    .line 388
    .local v0, "endType":I
    if-gez v0, :cond_2

    #@33
    .line 389
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@35
    new-instance v6, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v7, "Rule \""

    #@3d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    const-string/jumbo v7, "\" does not have a defined type"

    #@48
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v6

    #@4c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v6

    #@50
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@53
    throw v5

    #@54
    .line 381
    .end local v0    # "endType":I
    .end local v1    # "pluralRuleEnd":I
    .end local v2    # "pluralRuleStart":I
    :cond_0
    invoke-direct {p0, p1, p3}, Landroid/icu/text/NFRule;->extractSubstitution(Landroid/icu/text/NFRuleSet;Landroid/icu/text/NFRule;)Landroid/icu/text/NFSubstitution;

    #@57
    move-result-object v5

    #@58
    iput-object v5, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@5a
    goto :goto_0

    #@5b
    .line 385
    .restart local v2    # "pluralRuleStart":I
    :cond_1
    const/4 v1, -0x1

    #@5c
    .restart local v1    # "pluralRuleEnd":I
    goto :goto_1

    #@5d
    .line 391
    .restart local v0    # "endType":I
    :cond_2
    iget-object v5, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@5f
    add-int/lit8 v6, v2, 0x2

    #@61
    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    .line 393
    .local v4, "type":Ljava/lang/String;
    const-string/jumbo v5, "cardinal"

    #@68
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v5

    #@6c
    if-eqz v5, :cond_4

    #@6e
    .line 394
    sget-object v3, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    #@70
    .line 402
    .local v3, "pluralType":Landroid/icu/text/PluralRules$PluralType;
    :goto_2
    iget-object v5, p0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    #@72
    .line 403
    add-int/lit8 v6, v0, 0x1

    #@74
    invoke-virtual {p2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@77
    move-result-object v6

    #@78
    .line 402
    invoke-virtual {v5, v3, v6}, Landroid/icu/text/RuleBasedNumberFormat;->createPluralFormat(Landroid/icu/text/PluralRules$PluralType;Ljava/lang/String;)Landroid/icu/text/PluralFormat;

    #@7b
    move-result-object v5

    #@7c
    iput-object v5, p0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    #@7e
    .line 372
    .end local v0    # "endType":I
    .end local v3    # "pluralType":Landroid/icu/text/PluralRules$PluralType;
    .end local v4    # "type":Ljava/lang/String;
    :cond_3
    return-void

    #@7f
    .line 396
    .restart local v0    # "endType":I
    .restart local v4    # "type":Ljava/lang/String;
    :cond_4
    const-string/jumbo v5, "ordinal"

    #@82
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@85
    move-result v5

    #@86
    if-eqz v5, :cond_5

    #@88
    .line 397
    sget-object v3, Landroid/icu/text/PluralRules$PluralType;->ORDINAL:Landroid/icu/text/PluralRules$PluralType;

    #@8a
    .restart local v3    # "pluralType":Landroid/icu/text/PluralRules$PluralType;
    goto :goto_2

    #@8b
    .line 400
    .end local v3    # "pluralType":Landroid/icu/text/PluralRules$PluralType;
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@8d
    new-instance v6, Ljava/lang/StringBuilder;

    #@8f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@92
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v6

    #@96
    const-string/jumbo v7, " is an unknown type"

    #@99
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v6

    #@9d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a0
    move-result-object v6

    #@a1
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a4
    throw v5
.end method

.method private findText(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/PluralFormat;I)[I
    .locals 11
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "pluralFormatKey"    # Landroid/icu/text/PluralFormat;
    .param p4, "startingAt"    # I

    #@0
    .prologue
    .line 1159
    iget-object v8, p0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    #@2
    invoke-virtual {v8}, Landroid/icu/text/RuleBasedNumberFormat;->getLenientScanner()Landroid/icu/text/RbnfLenientScanner;

    #@5
    move-result-object v5

    #@6
    .line 1160
    .local v5, "scanner":Landroid/icu/text/RbnfLenientScanner;
    if-eqz p3, :cond_1

    #@8
    .line 1161
    new-instance v3, Ljava/text/FieldPosition;

    #@a
    const/4 v8, 0x0

    #@b
    invoke-direct {v3, v8}, Ljava/text/FieldPosition;-><init>(I)V

    #@e
    .line 1162
    .local v3, "position":Ljava/text/FieldPosition;
    invoke-virtual {v3, p4}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@11
    .line 1163
    invoke-virtual {p3, p1, v5, v3}, Landroid/icu/text/PluralFormat;->parseType(Ljava/lang/String;Landroid/icu/text/RbnfLenientScanner;Ljava/text/FieldPosition;)Ljava/lang/String;

    #@14
    .line 1164
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@17
    move-result v6

    #@18
    .line 1165
    .local v6, "start":I
    if-ltz v6, :cond_0

    #@1a
    .line 1166
    iget-object v8, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@1c
    const-string/jumbo v9, "$("

    #@1f
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@22
    move-result v1

    #@23
    .line 1167
    .local v1, "pluralRuleStart":I
    iget-object v8, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@25
    const-string/jumbo v9, ")$"

    #@28
    invoke-virtual {v8, v9, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@2b
    move-result v8

    #@2c
    add-int/lit8 v2, v8, 0x2

    #@2e
    .line 1168
    .local v2, "pluralRuleSuffix":I
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getEndIndex()I

    #@31
    move-result v8

    #@32
    sub-int v0, v8, v6

    #@34
    .line 1169
    .local v0, "matchLen":I
    iget-object v8, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@36
    const/4 v9, 0x0

    #@37
    invoke-virtual {v8, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    .line 1170
    .local v4, "prefix":Ljava/lang/String;
    iget-object v8, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@3d
    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@40
    move-result-object v7

    #@41
    .line 1171
    .local v7, "suffix":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@44
    move-result v8

    #@45
    sub-int v8, v6, v8

    #@47
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@4a
    move-result v9

    #@4b
    const/4 v10, 0x0

    #@4c
    invoke-virtual {p1, v8, v4, v10, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@4f
    move-result v8

    #@50
    if-eqz v8, :cond_0

    #@52
    .line 1172
    add-int v8, v6, v0

    #@54
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@57
    move-result v9

    #@58
    const/4 v10, 0x0

    #@59
    invoke-virtual {p1, v8, v7, v10, v9}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@5c
    move-result v8

    #@5d
    .line 1171
    if-eqz v8, :cond_0

    #@5f
    .line 1174
    const/4 v8, 0x2

    #@60
    new-array v8, v8, [I

    #@62
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@65
    move-result v9

    #@66
    sub-int v9, v6, v9

    #@68
    const/4 v10, 0x0

    #@69
    aput v9, v8, v10

    #@6b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@6e
    move-result v9

    #@6f
    add-int/2addr v9, v0

    #@70
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    #@73
    move-result v10

    #@74
    add-int/2addr v9, v10

    #@75
    const/4 v10, 0x1

    #@76
    aput v9, v8, v10

    #@78
    return-object v8

    #@79
    .line 1177
    .end local v0    # "matchLen":I
    .end local v1    # "pluralRuleStart":I
    .end local v2    # "pluralRuleSuffix":I
    .end local v4    # "prefix":Ljava/lang/String;
    .end local v7    # "suffix":Ljava/lang/String;
    :cond_0
    const/4 v8, -0x1

    #@7a
    const/4 v9, 0x0

    #@7b
    filled-new-array {v8, v9}, [I

    #@7e
    move-result-object v8

    #@7f
    return-object v8

    #@80
    .line 1180
    .end local v3    # "position":Ljava/text/FieldPosition;
    .end local v6    # "start":I
    :cond_1
    if-eqz v5, :cond_2

    #@82
    .line 1183
    invoke-interface {v5, p1, p2, p4}, Landroid/icu/text/RbnfLenientScanner;->findText(Ljava/lang/String;Ljava/lang/String;I)[I

    #@85
    move-result-object v8

    #@86
    return-object v8

    #@87
    .line 1187
    :cond_2
    const/4 v8, 0x2

    #@88
    new-array v8, v8, [I

    #@8a
    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@8d
    move-result v9

    #@8e
    const/4 v10, 0x0

    #@8f
    aput v9, v8, v10

    #@91
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@94
    move-result v9

    #@95
    const/4 v10, 0x1

    #@96
    aput v9, v8, v10

    #@98
    return-object v8
.end method

.method private static indexOfAny(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p0, "ruleText"    # Ljava/lang/String;
    .param p1, "strings"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v5, -0x1

    #@2
    .line 553
    const/4 v1, -0x1

    #@3
    .line 554
    .local v1, "result":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v4

    #@7
    if-lez v4, :cond_2

    #@9
    .line 556
    array-length v4, p1

    #@a
    :goto_0
    if-ge v3, v4, :cond_2

    #@c
    aget-object v2, p1, v3

    #@e
    .line 557
    .local v2, "string":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@11
    move-result v0

    #@12
    .line 558
    .local v0, "pos":I
    if-eq v0, v5, :cond_1

    #@14
    if-eq v1, v5, :cond_0

    #@16
    if-ge v0, v1, :cond_1

    #@18
    .line 559
    :cond_0
    move v1, v0

    #@19
    .line 556
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 563
    .end local v0    # "pos":I
    .end local v2    # "string":Ljava/lang/String;
    :cond_2
    return v1
.end method

.method public static makeRules(Ljava/lang/String;Landroid/icu/text/NFRuleSet;Landroid/icu/text/NFRule;Landroid/icu/text/RuleBasedNumberFormat;Ljava/util/List;)V
    .locals 14
    .param p0, "description"    # Ljava/lang/String;
    .param p1, "owner"    # Landroid/icu/text/NFRuleSet;
    .param p2, "predecessor"    # Landroid/icu/text/NFRule;
    .param p3, "ownersOwner"    # Landroid/icu/text/RuleBasedNumberFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/icu/text/NFRuleSet;",
            "Landroid/icu/text/NFRule;",
            "Landroid/icu/text/RuleBasedNumberFormat;",
            "Ljava/util/List",
            "<",
            "Landroid/icu/text/NFRule;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 120
    .local p4, "returnList":Ljava/util/List;, "Ljava/util/List<Lcom/ibm/icu/text/NFRule;>;"
    new-instance v4, Landroid/icu/text/NFRule;

    #@2
    move-object/from16 v0, p3

    #@4
    invoke-direct {v4, v0}, Landroid/icu/text/NFRule;-><init>(Landroid/icu/text/RuleBasedNumberFormat;)V

    #@7
    .line 121
    .local v4, "rule1":Landroid/icu/text/NFRule;
    invoke-direct {v4, p0}, Landroid/icu/text/NFRule;->parseRuleDescriptor(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object p0

    #@b
    .line 125
    const-string/jumbo v7, "["

    #@e
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@11
    move-result v2

    #@12
    .line 126
    .local v2, "brack1":I
    const-string/jumbo v7, "]"

    #@15
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@18
    move-result v3

    #@19
    .line 132
    .local v3, "brack2":I
    const/4 v7, -0x1

    #@1a
    if-eq v2, v7, :cond_0

    #@1c
    const/4 v7, -0x1

    #@1d
    if-ne v3, v7, :cond_2

    #@1f
    .line 136
    :cond_0
    move-object/from16 v0, p2

    #@21
    invoke-direct {v4, p1, p0, v0}, Landroid/icu/text/NFRule;->extractSubstitutions(Landroid/icu/text/NFRuleSet;Ljava/lang/String;Landroid/icu/text/NFRule;)V

    #@24
    .line 213
    :cond_1
    :goto_0
    move-object/from16 v0, p4

    #@26
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@29
    .line 115
    return-void

    #@2a
    .line 132
    :cond_2
    if-gt v2, v3, :cond_0

    #@2c
    .line 133
    invoke-virtual {v4}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@2f
    move-result-wide v8

    #@30
    const-wide/16 v10, -0x3

    #@32
    cmp-long v7, v8, v10

    #@34
    if-eqz v7, :cond_0

    #@36
    .line 134
    invoke-virtual {v4}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@39
    move-result-wide v8

    #@3a
    const-wide/16 v10, -0x1

    #@3c
    cmp-long v7, v8, v10

    #@3e
    if-eqz v7, :cond_0

    #@40
    .line 141
    const/4 v5, 0x0

    #@41
    .line 142
    .local v5, "rule2":Landroid/icu/text/NFRule;
    new-instance v6, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    .line 147
    .local v6, "sbuf":Ljava/lang/StringBuilder;
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    #@48
    const-wide/16 v10, 0x0

    #@4a
    cmp-long v7, v8, v10

    #@4c
    if-lez v7, :cond_8

    #@4e
    .line 148
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    #@50
    long-to-double v8, v8

    #@51
    iget v7, v4, Landroid/icu/text/NFRule;->radix:I

    #@53
    int-to-double v10, v7

    #@54
    iget-short v7, v4, Landroid/icu/text/NFRule;->exponent:S

    #@56
    int-to-double v12, v7

    #@57
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    #@5a
    move-result-wide v10

    #@5b
    rem-double/2addr v8, v10

    #@5c
    const-wide/16 v10, 0x0

    #@5e
    cmpl-double v7, v8, v10

    #@60
    if-nez v7, :cond_8

    #@62
    .line 158
    :cond_3
    :goto_1
    new-instance v5, Landroid/icu/text/NFRule;

    #@64
    .end local v5    # "rule2":Landroid/icu/text/NFRule;
    move-object/from16 v0, p3

    #@66
    invoke-direct {v5, v0}, Landroid/icu/text/NFRule;-><init>(Landroid/icu/text/RuleBasedNumberFormat;)V

    #@69
    .line 159
    .local v5, "rule2":Landroid/icu/text/NFRule;
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    #@6b
    const-wide/16 v10, 0x0

    #@6d
    cmp-long v7, v8, v10

    #@6f
    if-ltz v7, :cond_9

    #@71
    .line 160
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    #@73
    iput-wide v8, v5, Landroid/icu/text/NFRule;->baseValue:J

    #@75
    .line 161
    invoke-virtual {p1}, Landroid/icu/text/NFRuleSet;->isFractionSet()Z

    #@78
    move-result v7

    #@79
    if-nez v7, :cond_4

    #@7b
    .line 162
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    #@7d
    const-wide/16 v10, 0x1

    #@7f
    add-long/2addr v8, v10

    #@80
    iput-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    #@82
    .line 181
    :cond_4
    :goto_2
    iget v7, v4, Landroid/icu/text/NFRule;->radix:I

    #@84
    iput v7, v5, Landroid/icu/text/NFRule;->radix:I

    #@86
    .line 182
    iget-short v7, v4, Landroid/icu/text/NFRule;->exponent:S

    #@88
    iput-short v7, v5, Landroid/icu/text/NFRule;->exponent:S

    #@8a
    .line 186
    const/4 v7, 0x0

    #@8b
    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@8e
    move-result-object v7

    #@8f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    .line 187
    add-int/lit8 v7, v3, 0x1

    #@94
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@97
    move-result v8

    #@98
    if-ge v7, v8, :cond_5

    #@9a
    .line 188
    add-int/lit8 v7, v3, 0x1

    #@9c
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@9f
    move-result-object v7

    #@a0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    .line 190
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v7

    #@a7
    move-object/from16 v0, p2

    #@a9
    invoke-direct {v5, p1, v7, v0}, Landroid/icu/text/NFRule;->extractSubstitutions(Landroid/icu/text/NFRuleSet;Ljava/lang/String;Landroid/icu/text/NFRule;)V

    #@ac
    .line 196
    .end local v5    # "rule2":Landroid/icu/text/NFRule;
    :cond_6
    const/4 v7, 0x0

    #@ad
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    #@b0
    .line 197
    const/4 v7, 0x0

    #@b1
    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b4
    move-result-object v7

    #@b5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    .line 198
    add-int/lit8 v7, v2, 0x1

    #@ba
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@bd
    move-result-object v7

    #@be
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    .line 199
    add-int/lit8 v7, v3, 0x1

    #@c3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@c6
    move-result v8

    #@c7
    if-ge v7, v8, :cond_7

    #@c9
    .line 200
    add-int/lit8 v7, v3, 0x1

    #@cb
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@ce
    move-result-object v7

    #@cf
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    .line 202
    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d5
    move-result-object v7

    #@d6
    move-object/from16 v0, p2

    #@d8
    invoke-direct {v4, p1, v7, v0}, Landroid/icu/text/NFRule;->extractSubstitutions(Landroid/icu/text/NFRuleSet;Ljava/lang/String;Landroid/icu/text/NFRule;)V

    #@db
    .line 209
    if-eqz v5, :cond_1

    #@dd
    .line 210
    move-object/from16 v0, p4

    #@df
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@e2
    goto/16 :goto_0

    #@e4
    .line 149
    .local v5, "rule2":Landroid/icu/text/NFRule;
    :cond_8
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    #@e6
    const-wide/16 v10, -0x2

    #@e8
    cmp-long v7, v8, v10

    #@ea
    if-eqz v7, :cond_3

    #@ec
    .line 150
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    #@ee
    const-wide/16 v10, -0x4

    #@f0
    cmp-long v7, v8, v10

    #@f2
    if-nez v7, :cond_6

    #@f4
    goto/16 :goto_1

    #@f6
    .line 165
    .local v5, "rule2":Landroid/icu/text/NFRule;
    :cond_9
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    #@f8
    const-wide/16 v10, -0x2

    #@fa
    cmp-long v7, v8, v10

    #@fc
    if-nez v7, :cond_a

    #@fe
    .line 169
    const-wide/16 v8, -0x3

    #@100
    iput-wide v8, v5, Landroid/icu/text/NFRule;->baseValue:J

    #@102
    goto :goto_2

    #@103
    .line 171
    :cond_a
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    #@105
    const-wide/16 v10, -0x4

    #@107
    cmp-long v7, v8, v10

    #@109
    if-nez v7, :cond_4

    #@10b
    .line 175
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    #@10d
    iput-wide v8, v5, Landroid/icu/text/NFRule;->baseValue:J

    #@10f
    .line 176
    const-wide/16 v8, -0x2

    #@111
    iput-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    #@113
    goto/16 :goto_2
.end method

.method private matchToDelimiter(Ljava/lang/String;IDLjava/lang/String;Landroid/icu/text/PluralFormat;Ljava/text/ParsePosition;Landroid/icu/text/NFSubstitution;D)Ljava/lang/Number;
    .locals 23
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "startPos"    # I
    .param p3, "baseVal"    # D
    .param p5, "delimiter"    # Ljava/lang/String;
    .param p6, "pluralFormatDelimiter"    # Landroid/icu/text/PluralFormat;
    .param p7, "pp"    # Ljava/text/ParsePosition;
    .param p8, "sub"    # Landroid/icu/text/NFSubstitution;
    .param p9, "upperBound"    # D

    #@0
    .prologue
    .line 1023
    move-object/from16 v0, p0

    #@2
    move-object/from16 v1, p5

    #@4
    invoke-direct {v0, v1}, Landroid/icu/text/NFRule;->allIgnorable(Ljava/lang/String;)Z

    #@7
    move-result v7

    #@8
    if-nez v7, :cond_2

    #@a
    .line 1024
    new-instance v9, Ljava/text/ParsePosition;

    #@c
    const/4 v7, 0x0

    #@d
    invoke-direct {v9, v7}, Ljava/text/ParsePosition;-><init>(I)V

    #@10
    .line 1031
    .local v9, "tempPP":Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    #@12
    move-object/from16 v1, p1

    #@14
    move-object/from16 v2, p5

    #@16
    move-object/from16 v3, p6

    #@18
    move/from16 v4, p2

    #@1a
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/NFRule;->findText(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/PluralFormat;I)[I

    #@1d
    move-result-object v21

    #@1e
    .line 1032
    .local v21, "temp":[I
    const/4 v7, 0x0

    #@1f
    aget v19, v21, v7

    #@21
    .line 1033
    .local v19, "dPos":I
    const/4 v7, 0x1

    #@22
    aget v6, v21, v7

    #@24
    .line 1037
    .local v6, "dLen":I
    :goto_0
    if-ltz v19, :cond_1

    #@26
    .line 1038
    const/4 v7, 0x0

    #@27
    move-object/from16 v0, p1

    #@29
    move/from16 v1, v19

    #@2b
    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2e
    move-result-object v8

    #@2f
    .line 1039
    .local v8, "subText":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@32
    move-result v7

    #@33
    if-lez v7, :cond_0

    #@35
    .line 1041
    move-object/from16 v0, p0

    #@37
    iget-object v7, v0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    #@39
    invoke-virtual {v7}, Landroid/icu/text/RuleBasedNumberFormat;->lenientParseEnabled()Z

    #@3c
    move-result v14

    #@3d
    move-object/from16 v7, p8

    #@3f
    move-wide/from16 v10, p3

    #@41
    move-wide/from16 v12, p9

    #@43
    .line 1040
    invoke-virtual/range {v7 .. v14}, Landroid/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;

    #@46
    move-result-object v22

    #@47
    .line 1049
    .local v22, "tempResult":Ljava/lang/Number;
    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    #@4a
    move-result v7

    #@4b
    move/from16 v0, v19

    #@4d
    if-ne v7, v0, :cond_0

    #@4f
    .line 1050
    add-int v7, v19, v6

    #@51
    move-object/from16 v0, p7

    #@53
    invoke-virtual {v0, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    #@56
    .line 1051
    return-object v22

    #@57
    .line 1066
    .end local v22    # "tempResult":Ljava/lang/Number;
    :cond_0
    const/4 v7, 0x0

    #@58
    invoke-virtual {v9, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    #@5b
    .line 1067
    add-int v7, v19, v6

    #@5d
    move-object/from16 v0, p0

    #@5f
    move-object/from16 v1, p1

    #@61
    move-object/from16 v2, p5

    #@63
    move-object/from16 v3, p6

    #@65
    invoke-direct {v0, v1, v2, v3, v7}, Landroid/icu/text/NFRule;->findText(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/PluralFormat;I)[I

    #@68
    move-result-object v21

    #@69
    .line 1068
    const/4 v7, 0x0

    #@6a
    aget v19, v21, v7

    #@6c
    .line 1069
    const/4 v7, 0x1

    #@6d
    aget v6, v21, v7

    #@6f
    goto :goto_0

    #@70
    .line 1073
    .end local v8    # "subText":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    #@71
    move-object/from16 v0, p7

    #@73
    invoke-virtual {v0, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    #@76
    .line 1074
    const-wide/16 v10, 0x0

    #@78
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@7b
    move-result-object v7

    #@7c
    return-object v7

    #@7d
    .line 1081
    .end local v6    # "dLen":I
    .end local v9    # "tempPP":Ljava/text/ParsePosition;
    .end local v19    # "dPos":I
    .end local v21    # "temp":[I
    :cond_2
    new-instance v9, Ljava/text/ParsePosition;

    #@7f
    const/4 v7, 0x0

    #@80
    invoke-direct {v9, v7}, Ljava/text/ParsePosition;-><init>(I)V

    #@83
    .line 1082
    .restart local v9    # "tempPP":Ljava/text/ParsePosition;
    const-wide/16 v10, 0x0

    #@85
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@88
    move-result-object v20

    #@89
    .line 1087
    .local v20, "result":Ljava/lang/Number;
    move-object/from16 v0, p0

    #@8b
    iget-object v7, v0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    #@8d
    invoke-virtual {v7}, Landroid/icu/text/RuleBasedNumberFormat;->lenientParseEnabled()Z

    #@90
    move-result v18

    #@91
    move-object/from16 v11, p8

    #@93
    move-object/from16 v12, p1

    #@95
    move-object v13, v9

    #@96
    move-wide/from16 v14, p3

    #@98
    move-wide/from16 v16, p9

    #@9a
    .line 1086
    invoke-virtual/range {v11 .. v18}, Landroid/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;

    #@9d
    move-result-object v22

    #@9e
    .line 1088
    .restart local v22    # "tempResult":Ljava/lang/Number;
    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    #@a1
    move-result v7

    #@a2
    if-nez v7, :cond_3

    #@a4
    invoke-virtual/range {p8 .. p8}, Landroid/icu/text/NFSubstitution;->isNullSubstitution()Z

    #@a7
    move-result v7

    #@a8
    if-eqz v7, :cond_4

    #@aa
    .line 1093
    :cond_3
    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    #@ad
    move-result v7

    #@ae
    move-object/from16 v0, p7

    #@b0
    invoke-virtual {v0, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    #@b3
    .line 1094
    if-eqz v22, :cond_4

    #@b5
    .line 1095
    move-object/from16 v20, v22

    #@b7
    .line 1105
    :cond_4
    return-object v20
.end method

.method private parseRuleDescriptor(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 242
    const-string/jumbo v6, ":"

    #@3
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@6
    move-result v3

    #@7
    .line 243
    .local v3, "p":I
    const/4 v6, -0x1

    #@8
    if-ne v3, v6, :cond_2

    #@a
    .line 244
    const-wide/16 v6, 0x0

    #@c
    invoke-virtual {p0, v6, v7}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    #@f
    .line 353
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@12
    move-result v6

    #@13
    if-lez v6, :cond_1

    #@15
    const/4 v6, 0x0

    #@16
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    #@19
    move-result v6

    #@1a
    const/16 v7, 0x27

    #@1c
    if-ne v6, v7, :cond_1

    #@1e
    .line 354
    const/4 v6, 0x1

    #@1f
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@22
    move-result-object p1

    #@23
    .line 359
    :cond_1
    return-object p1

    #@24
    .line 250
    :cond_2
    const/4 v6, 0x0

    #@25
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    .line 251
    .local v1, "descriptor":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    #@2b
    .line 252
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@2e
    move-result v6

    #@2f
    if-ge v3, v6, :cond_3

    #@31
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    #@34
    move-result v6

    #@35
    invoke-static {v6}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@38
    move-result v6

    #@39
    if-eqz v6, :cond_3

    #@3b
    .line 253
    add-int/lit8 v3, v3, 0x1

    #@3d
    goto :goto_1

    #@3e
    .line 255
    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@41
    move-result-object p1

    #@42
    .line 260
    const-string/jumbo v6, "0.x"

    #@45
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@48
    move-result v6

    #@49
    if-eqz v6, :cond_4

    #@4b
    .line 261
    const-wide/16 v6, -0x3

    #@4d
    invoke-virtual {p0, v6, v7}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    #@50
    goto :goto_0

    #@51
    .line 263
    :cond_4
    const/4 v6, 0x0

    #@52
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    #@55
    move-result v6

    #@56
    const/16 v7, 0x30

    #@58
    if-lt v6, v7, :cond_10

    #@5a
    const/4 v6, 0x0

    #@5b
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    #@5e
    move-result v6

    #@5f
    const/16 v7, 0x39

    #@61
    if-gt v6, v7, :cond_10

    #@63
    .line 266
    const-wide/16 v4, 0x0

    #@65
    .line 267
    .local v4, "tempValue":J
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@68
    move-result v2

    #@69
    .line 268
    .local v2, "descriptorLength":I
    const/4 v0, 0x0

    #@6a
    .line 269
    .local v0, "c":C
    const/4 v3, 0x0

    #@6b
    .line 275
    .end local v0    # "c":C
    :goto_2
    if-ge v3, v2, :cond_7

    #@6d
    .line 276
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    #@70
    move-result v0

    #@71
    .line 277
    .local v0, "c":C
    const/16 v6, 0x30

    #@73
    if-lt v0, v6, :cond_6

    #@75
    const/16 v6, 0x39

    #@77
    if-gt v0, v6, :cond_6

    #@79
    .line 278
    const-wide/16 v6, 0xa

    #@7b
    mul-long/2addr v6, v4

    #@7c
    add-int/lit8 v8, v0, -0x30

    #@7e
    int-to-long v8, v8

    #@7f
    add-long v4, v6, v8

    #@81
    .line 286
    :cond_5
    add-int/lit8 v3, v3, 0x1

    #@83
    goto :goto_2

    #@84
    .line 280
    :cond_6
    const/16 v6, 0x2f

    #@86
    if-eq v0, v6, :cond_7

    #@88
    const/16 v6, 0x3e

    #@8a
    if-ne v0, v6, :cond_9

    #@8c
    .line 290
    .end local v0    # "c":C
    :cond_7
    invoke-virtual {p0, v4, v5}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    #@8f
    .line 296
    const/16 v6, 0x2f

    #@91
    if-ne v0, v6, :cond_e

    #@93
    .line 297
    const-wide/16 v4, 0x0

    #@95
    .line 298
    add-int/lit8 v3, v3, 0x1

    #@97
    .line 299
    :goto_3
    if-ge v3, v2, :cond_b

    #@99
    .line 300
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    #@9c
    move-result v0

    #@9d
    .line 301
    .restart local v0    # "c":C
    const/16 v6, 0x30

    #@9f
    if-lt v0, v6, :cond_a

    #@a1
    const/16 v6, 0x39

    #@a3
    if-gt v0, v6, :cond_a

    #@a5
    .line 302
    const-wide/16 v6, 0xa

    #@a7
    mul-long/2addr v6, v4

    #@a8
    add-int/lit8 v8, v0, -0x30

    #@aa
    int-to-long v8, v8

    #@ab
    add-long v4, v6, v8

    #@ad
    .line 310
    :cond_8
    add-int/lit8 v3, v3, 0x1

    #@af
    goto :goto_3

    #@b0
    .line 283
    :cond_9
    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@b3
    move-result v6

    #@b4
    if-nez v6, :cond_5

    #@b6
    const/16 v6, 0x2c

    #@b8
    if-eq v0, v6, :cond_5

    #@ba
    const/16 v6, 0x2e

    #@bc
    if-eq v0, v6, :cond_5

    #@be
    .line 284
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@c0
    new-instance v7, Ljava/lang/StringBuilder;

    #@c2
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@c5
    const-string/jumbo v8, "Illegal character "

    #@c8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v7

    #@cc
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v7

    #@d0
    const-string/jumbo v8, " in rule descriptor"

    #@d3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v7

    #@d7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@da
    move-result-object v7

    #@db
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@de
    throw v6

    #@df
    .line 304
    :cond_a
    const/16 v6, 0x3e

    #@e1
    if-ne v0, v6, :cond_c

    #@e3
    .line 315
    .end local v0    # "c":C
    :cond_b
    long-to-int v6, v4

    #@e4
    iput v6, p0, Landroid/icu/text/NFRule;->radix:I

    #@e6
    .line 316
    iget v6, p0, Landroid/icu/text/NFRule;->radix:I

    #@e8
    if-nez v6, :cond_d

    #@ea
    .line 317
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@ec
    const-string/jumbo v7, "Rule can\'t have radix of 0"

    #@ef
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f2
    throw v6

    #@f3
    .line 307
    .restart local v0    # "c":C
    :cond_c
    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@f6
    move-result v6

    #@f7
    if-nez v6, :cond_8

    #@f9
    const/16 v6, 0x2c

    #@fb
    if-eq v0, v6, :cond_8

    #@fd
    const/16 v6, 0x2e

    #@ff
    if-eq v0, v6, :cond_8

    #@101
    .line 308
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@103
    new-instance v7, Ljava/lang/StringBuilder;

    #@105
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@108
    const-string/jumbo v8, "Illegal character "

    #@10b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v7

    #@10f
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@112
    move-result-object v7

    #@113
    const-string/jumbo v8, " in rule descriptor"

    #@116
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v7

    #@11a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11d
    move-result-object v7

    #@11e
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@121
    throw v6

    #@122
    .line 319
    .end local v0    # "c":C
    :cond_d
    invoke-direct {p0}, Landroid/icu/text/NFRule;->expectedExponent()S

    #@125
    move-result v6

    #@126
    iput-short v6, p0, Landroid/icu/text/NFRule;->exponent:S

    #@128
    .line 327
    :cond_e
    const/16 v6, 0x3e

    #@12a
    if-ne v0, v6, :cond_0

    #@12c
    .line 328
    :goto_4
    if-ge v3, v2, :cond_0

    #@12e
    .line 329
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    #@131
    move-result v0

    #@132
    .line 330
    .restart local v0    # "c":C
    const/16 v6, 0x3e

    #@134
    if-ne v0, v6, :cond_f

    #@136
    iget-short v6, p0, Landroid/icu/text/NFRule;->exponent:S

    #@138
    if-lez v6, :cond_f

    #@13a
    .line 331
    iget-short v6, p0, Landroid/icu/text/NFRule;->exponent:S

    #@13c
    add-int/lit8 v6, v6, -0x1

    #@13e
    int-to-short v6, v6

    #@13f
    iput-short v6, p0, Landroid/icu/text/NFRule;->exponent:S

    #@141
    .line 335
    add-int/lit8 v3, v3, 0x1

    #@143
    goto :goto_4

    #@144
    .line 333
    :cond_f
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@146
    const-string/jumbo v7, "Illegal character in rule descriptor"

    #@149
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14c
    throw v6

    #@14d
    .line 339
    .end local v0    # "c":C
    .end local v2    # "descriptorLength":I
    .end local v4    # "tempValue":J
    :cond_10
    const-string/jumbo v6, "-x"

    #@150
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@153
    move-result v6

    #@154
    if-eqz v6, :cond_11

    #@156
    .line 340
    const-wide/16 v6, -0x1

    #@158
    invoke-virtual {p0, v6, v7}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    #@15b
    goto/16 :goto_0

    #@15d
    .line 342
    :cond_11
    const-string/jumbo v6, "x.x"

    #@160
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@163
    move-result v6

    #@164
    if-eqz v6, :cond_12

    #@166
    .line 343
    const-wide/16 v6, -0x2

    #@168
    invoke-virtual {p0, v6, v7}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    #@16b
    goto/16 :goto_0

    #@16d
    .line 345
    :cond_12
    const-string/jumbo v6, "x.0"

    #@170
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@173
    move-result v6

    #@174
    if-eqz v6, :cond_0

    #@176
    .line 346
    const-wide/16 v6, -0x4

    #@178
    invoke-virtual {p0, v6, v7}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    #@17b
    goto/16 :goto_0
.end method

.method private prefixLength(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1126
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 1127
    return v2

    #@8
    .line 1130
    :cond_0
    iget-object v1, p0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    #@a
    invoke-virtual {v1}, Landroid/icu/text/RuleBasedNumberFormat;->getLenientScanner()Landroid/icu/text/RbnfLenientScanner;

    #@d
    move-result-object v0

    #@e
    .line 1131
    .local v0, "scanner":Landroid/icu/text/RbnfLenientScanner;
    if-eqz v0, :cond_1

    #@10
    .line 1132
    invoke-interface {v0, p1, p2}, Landroid/icu/text/RbnfLenientScanner;->prefixLength(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    move-result v1

    #@14
    return v1

    #@15
    .line 1137
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_2

    #@1b
    .line 1138
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@1e
    move-result v1

    #@1f
    return v1

    #@20
    .line 1140
    :cond_2
    return v2
.end method

.method private stripPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "pp"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 970
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 971
    return-object p1

    #@7
    .line 977
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/icu/text/NFRule;->prefixLength(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    .line 978
    .local v0, "pfl":I
    if-eqz v0, :cond_1

    #@d
    .line 981
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    #@10
    move-result v1

    #@11
    add-int/2addr v1, v0

    #@12
    invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@15
    .line 982
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    return-object v1

    #@1a
    .line 986
    :cond_1
    return-object p1
.end method


# virtual methods
.method public doFormat(DLjava/lang/StringBuffer;I)V
    .locals 11
    .param p1, "number"    # D
    .param p3, "toInsertInto"    # Ljava/lang/StringBuffer;
    .param p4, "pos"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 735
    iget-object v4, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@6
    move-result v3

    #@7
    .line 736
    .local v3, "pluralRuleStart":I
    const/4 v1, 0x0

    #@8
    .line 737
    .local v1, "lengthOffset":I
    iget-object v4, p0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    #@a
    if-nez v4, :cond_2

    #@c
    .line 738
    iget-object v4, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@e
    invoke-virtual {p3, p4, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@11
    .line 753
    :goto_0
    iget-object v4, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@13
    invoke-virtual {v4}, Landroid/icu/text/NFSubstitution;->isNullSubstitution()Z

    #@16
    move-result v4

    #@17
    if-nez v4, :cond_0

    #@19
    .line 754
    iget-object v6, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@1b
    iget-object v4, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@1d
    invoke-virtual {v4}, Landroid/icu/text/NFSubstitution;->getPos()I

    #@20
    move-result v4

    #@21
    if-le v4, v3, :cond_5

    #@23
    move v4, v1

    #@24
    :goto_1
    sub-int v4, p4, v4

    #@26
    invoke-virtual {v6, p1, p2, p3, v4}, Landroid/icu/text/NFSubstitution;->doSubstitution(DLjava/lang/StringBuffer;I)V

    #@29
    .line 756
    :cond_0
    iget-object v4, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@2b
    invoke-virtual {v4}, Landroid/icu/text/NFSubstitution;->isNullSubstitution()Z

    #@2e
    move-result v4

    #@2f
    if-nez v4, :cond_1

    #@31
    .line 757
    iget-object v4, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@33
    iget-object v6, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@35
    invoke-virtual {v6}, Landroid/icu/text/NFSubstitution;->getPos()I

    #@38
    move-result v6

    #@39
    if-le v6, v3, :cond_6

    #@3b
    .end local v1    # "lengthOffset":I
    :goto_2
    sub-int v5, p4, v1

    #@3d
    invoke-virtual {v4, p1, p2, p3, v5}, Landroid/icu/text/NFSubstitution;->doSubstitution(DLjava/lang/StringBuffer;I)V

    #@40
    .line 728
    :cond_1
    return-void

    #@41
    .line 741
    .restart local v1    # "lengthOffset":I
    :cond_2
    iget-object v4, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@43
    const-string/jumbo v6, "$("

    #@46
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@49
    move-result v3

    #@4a
    .line 742
    iget-object v4, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@4c
    const-string/jumbo v6, ")$"

    #@4f
    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@52
    move-result v2

    #@53
    .line 743
    .local v2, "pluralRuleEnd":I
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    #@56
    move-result v0

    #@57
    .line 744
    .local v0, "initialLength":I
    iget-object v4, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@59
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@5c
    move-result v4

    #@5d
    add-int/lit8 v4, v4, -0x1

    #@5f
    if-ge v2, v4, :cond_3

    #@61
    .line 745
    iget-object v4, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@63
    add-int/lit8 v6, v2, 0x2

    #@65
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@68
    move-result-object v4

    #@69
    invoke-virtual {p3, p4, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@6c
    .line 747
    :cond_3
    iget-object v4, p0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    #@6e
    iget v6, p0, Landroid/icu/text/NFRule;->radix:I

    #@70
    int-to-double v6, v6

    #@71
    iget-short v8, p0, Landroid/icu/text/NFRule;->exponent:S

    #@73
    int-to-double v8, v8

    #@74
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    #@77
    move-result-wide v6

    #@78
    div-double v6, p1, v6

    #@7a
    double-to-long v6, v6

    #@7b
    long-to-double v6, v6

    #@7c
    invoke-virtual {v4, v6, v7}, Landroid/icu/text/PluralFormat;->format(D)Ljava/lang/String;

    #@7f
    move-result-object v4

    #@80
    invoke-virtual {p3, p4, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@83
    .line 748
    if-lez v3, :cond_4

    #@85
    .line 749
    iget-object v4, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@87
    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@8a
    move-result-object v4

    #@8b
    invoke-virtual {p3, p4, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@8e
    .line 751
    :cond_4
    iget-object v4, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@90
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@93
    move-result v4

    #@94
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    #@97
    move-result v6

    #@98
    sub-int/2addr v6, v0

    #@99
    sub-int v1, v4, v6

    #@9b
    goto/16 :goto_0

    #@9d
    .end local v0    # "initialLength":I
    .end local v2    # "pluralRuleEnd":I
    :cond_5
    move v4, v5

    #@9e
    .line 754
    goto :goto_1

    #@9f
    :cond_6
    move v1, v5

    #@a0
    .line 757
    goto :goto_2
.end method

.method public doFormat(JLjava/lang/StringBuffer;I)V
    .locals 17
    .param p1, "number"    # J
    .param p3, "toInsertInto"    # Ljava/lang/StringBuffer;
    .param p4, "pos"    # I

    #@0
    .prologue
    .line 693
    move-object/from16 v0, p0

    #@2
    iget-object v8, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@4
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@7
    move-result v7

    #@8
    .line 694
    .local v7, "pluralRuleStart":I
    const/4 v5, 0x0

    #@9
    .line 695
    .local v5, "lengthOffset":I
    move-object/from16 v0, p0

    #@b
    iget-object v8, v0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    #@d
    if-nez v8, :cond_2

    #@f
    .line 696
    move-object/from16 v0, p0

    #@11
    iget-object v8, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@13
    move-object/from16 v0, p3

    #@15
    move/from16 v1, p4

    #@17
    invoke-virtual {v0, v1, v8}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@1a
    .line 711
    :goto_0
    move-object/from16 v0, p0

    #@1c
    iget-object v8, v0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@1e
    invoke-virtual {v8}, Landroid/icu/text/NFSubstitution;->isNullSubstitution()Z

    #@21
    move-result v8

    #@22
    if-nez v8, :cond_0

    #@24
    .line 712
    move-object/from16 v0, p0

    #@26
    iget-object v9, v0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@28
    move-object/from16 v0, p0

    #@2a
    iget-object v8, v0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@2c
    invoke-virtual {v8}, Landroid/icu/text/NFSubstitution;->getPos()I

    #@2f
    move-result v8

    #@30
    if-le v8, v7, :cond_5

    #@32
    move v8, v5

    #@33
    :goto_1
    sub-int v8, p4, v8

    #@35
    move-wide/from16 v0, p1

    #@37
    move-object/from16 v2, p3

    #@39
    invoke-virtual {v9, v0, v1, v2, v8}, Landroid/icu/text/NFSubstitution;->doSubstitution(JLjava/lang/StringBuffer;I)V

    #@3c
    .line 714
    :cond_0
    move-object/from16 v0, p0

    #@3e
    iget-object v8, v0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@40
    invoke-virtual {v8}, Landroid/icu/text/NFSubstitution;->isNullSubstitution()Z

    #@43
    move-result v8

    #@44
    if-nez v8, :cond_1

    #@46
    .line 715
    move-object/from16 v0, p0

    #@48
    iget-object v8, v0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@4a
    move-object/from16 v0, p0

    #@4c
    iget-object v9, v0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@4e
    invoke-virtual {v9}, Landroid/icu/text/NFSubstitution;->getPos()I

    #@51
    move-result v9

    #@52
    if-le v9, v7, :cond_6

    #@54
    .end local v5    # "lengthOffset":I
    :goto_2
    sub-int v9, p4, v5

    #@56
    move-wide/from16 v0, p1

    #@58
    move-object/from16 v2, p3

    #@5a
    invoke-virtual {v8, v0, v1, v2, v9}, Landroid/icu/text/NFSubstitution;->doSubstitution(JLjava/lang/StringBuffer;I)V

    #@5d
    .line 687
    :cond_1
    return-void

    #@5e
    .line 699
    .restart local v5    # "lengthOffset":I
    :cond_2
    move-object/from16 v0, p0

    #@60
    iget-object v8, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@62
    const-string/jumbo v9, "$("

    #@65
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@68
    move-result v7

    #@69
    .line 700
    move-object/from16 v0, p0

    #@6b
    iget-object v8, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@6d
    const-string/jumbo v9, ")$"

    #@70
    invoke-virtual {v8, v9, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@73
    move-result v6

    #@74
    .line 701
    .local v6, "pluralRuleEnd":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@77
    move-result v4

    #@78
    .line 702
    .local v4, "initialLength":I
    move-object/from16 v0, p0

    #@7a
    iget-object v8, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@7c
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@7f
    move-result v8

    #@80
    add-int/lit8 v8, v8, -0x1

    #@82
    if-ge v6, v8, :cond_3

    #@84
    .line 703
    move-object/from16 v0, p0

    #@86
    iget-object v8, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@88
    add-int/lit8 v9, v6, 0x2

    #@8a
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@8d
    move-result-object v8

    #@8e
    move-object/from16 v0, p3

    #@90
    move/from16 v1, p4

    #@92
    invoke-virtual {v0, v1, v8}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@95
    .line 705
    :cond_3
    move-object/from16 v0, p0

    #@97
    iget-object v8, v0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    #@99
    move-wide/from16 v0, p1

    #@9b
    long-to-double v10, v0

    #@9c
    move-object/from16 v0, p0

    #@9e
    iget v9, v0, Landroid/icu/text/NFRule;->radix:I

    #@a0
    int-to-double v12, v9

    #@a1
    move-object/from16 v0, p0

    #@a3
    iget-short v9, v0, Landroid/icu/text/NFRule;->exponent:S

    #@a5
    int-to-double v14, v9

    #@a6
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    #@a9
    move-result-wide v12

    #@aa
    div-double/2addr v10, v12

    #@ab
    double-to-long v10, v10

    #@ac
    long-to-double v10, v10

    #@ad
    invoke-virtual {v8, v10, v11}, Landroid/icu/text/PluralFormat;->format(D)Ljava/lang/String;

    #@b0
    move-result-object v8

    #@b1
    move-object/from16 v0, p3

    #@b3
    move/from16 v1, p4

    #@b5
    invoke-virtual {v0, v1, v8}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@b8
    .line 706
    if-lez v7, :cond_4

    #@ba
    .line 707
    move-object/from16 v0, p0

    #@bc
    iget-object v8, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@be
    const/4 v9, 0x0

    #@bf
    invoke-virtual {v8, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@c2
    move-result-object v8

    #@c3
    move-object/from16 v0, p3

    #@c5
    move/from16 v1, p4

    #@c7
    invoke-virtual {v0, v1, v8}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@ca
    .line 709
    :cond_4
    move-object/from16 v0, p0

    #@cc
    iget-object v8, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@ce
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@d1
    move-result v8

    #@d2
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@d5
    move-result v9

    #@d6
    sub-int/2addr v9, v4

    #@d7
    sub-int v5, v8, v9

    #@d9
    goto/16 :goto_0

    #@db
    .line 712
    .end local v4    # "initialLength":I
    .end local v6    # "pluralRuleEnd":I
    :cond_5
    const/4 v8, 0x0

    #@dc
    goto/16 :goto_1

    #@de
    .line 715
    :cond_6
    const/4 v5, 0x0

    #@df
    goto/16 :goto_2
.end method

.method public doParse(Ljava/lang/String;Ljava/text/ParsePosition;ZD)Ljava/lang/Number;
    .locals 26
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "parsePosition"    # Ljava/text/ParsePosition;
    .param p3, "isFractionRule"    # Z
    .param p4, "upperBound"    # D

    #@0
    .prologue
    .line 817
    new-instance v10, Ljava/text/ParsePosition;

    #@2
    const/4 v3, 0x0

    #@3
    invoke-direct {v10, v3}, Ljava/text/ParsePosition;-><init>(I)V

    #@6
    .line 823
    .local v10, "pp":Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    #@8
    iget-object v3, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@a
    move-object/from16 v0, p0

    #@c
    iget-object v8, v0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@e
    invoke-virtual {v8}, Landroid/icu/text/NFSubstitution;->getPos()I

    #@11
    move-result v8

    #@12
    const/4 v9, 0x0

    #@13
    invoke-virtual {v3, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    move-object/from16 v0, p0

    #@19
    move-object/from16 v1, p1

    #@1b
    invoke-direct {v0, v1, v3, v10}, Landroid/icu/text/NFRule;->stripPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    .line 824
    .local v4, "workText":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@22
    move-result v3

    #@23
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@26
    move-result v8

    #@27
    sub-int v22, v3, v8

    #@29
    .line 826
    .local v22, "prefixLength":I
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    #@2c
    move-result v3

    #@2d
    if-nez v3, :cond_0

    #@2f
    move-object/from16 v0, p0

    #@31
    iget-object v3, v0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@33
    invoke-virtual {v3}, Landroid/icu/text/NFSubstitution;->getPos()I

    #@36
    move-result v3

    #@37
    if-eqz v3, :cond_0

    #@39
    .line 829
    const-wide/16 v8, 0x0

    #@3b
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3e
    move-result-object v3

    #@3f
    return-object v3

    #@40
    .line 861
    :cond_0
    const/4 v2, 0x0

    #@41
    .line 862
    .local v2, "highWaterMark":I
    const-wide/16 v24, 0x0

    #@43
    .line 863
    .local v24, "result":D
    const/4 v5, 0x0

    #@44
    .line 864
    .local v5, "start":I
    const-wide/16 v8, 0x0

    #@46
    move-object/from16 v0, p0

    #@48
    iget-wide v0, v0, Landroid/icu/text/NFRule;->baseValue:J

    #@4a
    move-wide/from16 v16, v0

    #@4c
    move-wide/from16 v0, v16

    #@4e
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    #@51
    move-result-wide v8

    #@52
    long-to-double v6, v8

    #@53
    .line 871
    .local v6, "tempBaseValue":D
    :cond_1
    const/4 v3, 0x0

    #@54
    invoke-virtual {v10, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    #@57
    .line 873
    move-object/from16 v0, p0

    #@59
    iget-object v3, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@5b
    move-object/from16 v0, p0

    #@5d
    iget-object v8, v0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@5f
    invoke-virtual {v8}, Landroid/icu/text/NFSubstitution;->getPos()I

    #@62
    move-result v8

    #@63
    move-object/from16 v0, p0

    #@65
    iget-object v9, v0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@67
    invoke-virtual {v9}, Landroid/icu/text/NFSubstitution;->getPos()I

    #@6a
    move-result v9

    #@6b
    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@6e
    move-result-object v8

    #@6f
    move-object/from16 v0, p0

    #@71
    iget-object v9, v0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    #@73
    .line 874
    move-object/from16 v0, p0

    #@75
    iget-object v11, v0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@77
    move-object/from16 v3, p0

    #@79
    move-wide/from16 v12, p4

    #@7b
    .line 872
    invoke-direct/range {v3 .. v13}, Landroid/icu/text/NFRule;->matchToDelimiter(Ljava/lang/String;IDLjava/lang/String;Landroid/icu/text/PluralFormat;Ljava/text/ParsePosition;Landroid/icu/text/NFSubstitution;D)Ljava/lang/Number;

    #@7e
    move-result-object v3

    #@7f
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    #@82
    move-result-wide v14

    #@83
    .line 880
    .local v14, "partialResult":D
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    #@86
    move-result v3

    #@87
    if-nez v3, :cond_2

    #@89
    move-object/from16 v0, p0

    #@8b
    iget-object v3, v0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@8d
    invoke-virtual {v3}, Landroid/icu/text/NFSubstitution;->isNullSubstitution()Z

    #@90
    move-result v3

    #@91
    if-eqz v3, :cond_4

    #@93
    .line 881
    :cond_2
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    #@96
    move-result v5

    #@97
    .line 883
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    #@9a
    move-result v3

    #@9b
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@9e
    move-result-object v12

    #@9f
    .line 884
    .local v12, "workText2":Ljava/lang/String;
    new-instance v18, Ljava/text/ParsePosition;

    #@a1
    const/4 v3, 0x0

    #@a2
    move-object/from16 v0, v18

    #@a4
    invoke-direct {v0, v3}, Ljava/text/ParsePosition;-><init>(I)V

    #@a7
    .line 891
    .local v18, "pp2":Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    #@a9
    iget-object v3, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@ab
    move-object/from16 v0, p0

    #@ad
    iget-object v8, v0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@af
    invoke-virtual {v8}, Landroid/icu/text/NFSubstitution;->getPos()I

    #@b2
    move-result v8

    #@b3
    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@b6
    move-result-object v16

    #@b7
    move-object/from16 v0, p0

    #@b9
    iget-object v0, v0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    #@bb
    move-object/from16 v17, v0

    #@bd
    move-object/from16 v0, p0

    #@bf
    iget-object v0, v0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@c1
    move-object/from16 v19, v0

    #@c3
    .line 890
    const/4 v13, 0x0

    #@c4
    move-object/from16 v11, p0

    #@c6
    move-wide/from16 v20, p4

    #@c8
    invoke-direct/range {v11 .. v21}, Landroid/icu/text/NFRule;->matchToDelimiter(Ljava/lang/String;IDLjava/lang/String;Landroid/icu/text/PluralFormat;Ljava/text/ParsePosition;Landroid/icu/text/NFSubstitution;D)Ljava/lang/Number;

    #@cb
    move-result-object v3

    #@cc
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    #@cf
    move-result-wide v14

    #@d0
    .line 897
    invoke-virtual/range {v18 .. v18}, Ljava/text/ParsePosition;->getIndex()I

    #@d3
    move-result v3

    #@d4
    if-nez v3, :cond_3

    #@d6
    move-object/from16 v0, p0

    #@d8
    iget-object v3, v0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@da
    invoke-virtual {v3}, Landroid/icu/text/NFSubstitution;->isNullSubstitution()Z

    #@dd
    move-result v3

    #@de
    if-eqz v3, :cond_4

    #@e0
    .line 898
    :cond_3
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    #@e3
    move-result v3

    #@e4
    add-int v3, v3, v22

    #@e6
    invoke-virtual/range {v18 .. v18}, Ljava/text/ParsePosition;->getIndex()I

    #@e9
    move-result v8

    #@ea
    add-int/2addr v3, v8

    #@eb
    if-le v3, v2, :cond_4

    #@ed
    .line 899
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    #@f0
    move-result v3

    #@f1
    add-int v3, v3, v22

    #@f3
    invoke-virtual/range {v18 .. v18}, Ljava/text/ParsePosition;->getIndex()I

    #@f6
    move-result v8

    #@f7
    add-int v2, v3, v8

    #@f9
    .line 900
    move-wide/from16 v24, v14

    #@fb
    .line 921
    .end local v12    # "workText2":Ljava/lang/String;
    .end local v18    # "pp2":Ljava/text/ParsePosition;
    :cond_4
    move-object/from16 v0, p0

    #@fd
    iget-object v3, v0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@ff
    invoke-virtual {v3}, Landroid/icu/text/NFSubstitution;->getPos()I

    #@102
    move-result v3

    #@103
    move-object/from16 v0, p0

    #@105
    iget-object v8, v0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@107
    invoke-virtual {v8}, Landroid/icu/text/NFSubstitution;->getPos()I

    #@10a
    move-result v8

    #@10b
    if-eq v3, v8, :cond_5

    #@10d
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    #@110
    move-result v3

    #@111
    if-lez v3, :cond_5

    #@113
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    #@116
    move-result v3

    #@117
    .line 922
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@11a
    move-result v8

    #@11b
    .line 921
    if-ge v3, v8, :cond_5

    #@11d
    .line 922
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    #@120
    move-result v3

    #@121
    if-ne v3, v5, :cond_1

    #@123
    .line 928
    :cond_5
    move-object/from16 v0, p2

    #@125
    invoke-virtual {v0, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    #@128
    .line 940
    if-eqz p3, :cond_6

    #@12a
    if-lez v2, :cond_6

    #@12c
    move-object/from16 v0, p0

    #@12e
    iget-object v3, v0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@130
    invoke-virtual {v3}, Landroid/icu/text/NFSubstitution;->isNullSubstitution()Z

    #@133
    move-result v3

    #@134
    if-eqz v3, :cond_6

    #@136
    .line 941
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    #@138
    div-double v24, v8, v24

    #@13a
    .line 945
    :cond_6
    move-wide/from16 v0, v24

    #@13c
    double-to-long v8, v0

    #@13d
    long-to-double v8, v8

    #@13e
    cmpl-double v3, v24, v8

    #@140
    if-nez v3, :cond_7

    #@142
    .line 946
    move-wide/from16 v0, v24

    #@144
    double-to-long v8, v0

    #@145
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@148
    move-result-object v3

    #@149
    return-object v3

    #@14a
    .line 948
    :cond_7
    new-instance v3, Ljava/lang/Double;

    #@14c
    move-wide/from16 v0, v24

    #@14e
    invoke-direct {v3, v0, v1}, Ljava/lang/Double;-><init>(D)V

    #@151
    return-object v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 576
    instance-of v2, p1, Landroid/icu/text/NFRule;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 577
    check-cast v0, Landroid/icu/text/NFRule;

    #@8
    .line 579
    .local v0, "that2":Landroid/icu/text/NFRule;
    iget-wide v2, p0, Landroid/icu/text/NFRule;->baseValue:J

    #@a
    iget-wide v4, v0, Landroid/icu/text/NFRule;->baseValue:J

    #@c
    cmp-long v2, v2, v4

    #@e
    if-nez v2, :cond_0

    #@10
    .line 580
    iget v2, p0, Landroid/icu/text/NFRule;->radix:I

    #@12
    iget v3, v0, Landroid/icu/text/NFRule;->radix:I

    #@14
    if-ne v2, v3, :cond_0

    #@16
    .line 581
    iget-short v2, p0, Landroid/icu/text/NFRule;->exponent:S

    #@18
    iget-short v3, v0, Landroid/icu/text/NFRule;->exponent:S

    #@1a
    if-ne v2, v3, :cond_0

    #@1c
    .line 582
    iget-object v2, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@1e
    iget-object v3, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v2

    #@24
    .line 579
    if-eqz v2, :cond_0

    #@26
    .line 583
    iget-object v2, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@28
    iget-object v3, v0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@2a
    invoke-virtual {v2, v3}, Landroid/icu/text/NFSubstitution;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v2

    #@2e
    .line 579
    if-eqz v2, :cond_0

    #@30
    .line 584
    iget-object v1, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@32
    iget-object v2, v0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@34
    invoke-virtual {v1, v2}, Landroid/icu/text/NFSubstitution;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v1

    #@38
    .line 579
    :cond_0
    return v1

    #@39
    .line 586
    .end local v0    # "that2":Landroid/icu/text/NFRule;
    :cond_1
    return v1
.end method

.method public final getBaseValue()J
    .locals 2

    #@0
    .prologue
    .line 662
    iget-wide v0, p0, Landroid/icu/text/NFRule;->baseValue:J

    #@2
    return-wide v0
.end method

.method public getDivisor()D
    .locals 4

    #@0
    .prologue
    .line 671
    iget v0, p0, Landroid/icu/text/NFRule;->radix:I

    #@2
    int-to-double v0, v0

    #@3
    iget-short v2, p0, Landroid/icu/text/NFRule;->exponent:S

    #@5
    int-to-double v2, v2

    #@6
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    #@9
    move-result-wide v0

    #@a
    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 590
    sget-boolean v0, Landroid/icu/text/NFRule;->-assertionsDisabled:Z

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
    .line 591
    :cond_0
    const/16 v0, 0x2a

    #@f
    return v0
.end method

.method final setBaseValue(J)V
    .locals 5
    .param p1, "newBaseValue"    # J

    #@0
    .prologue
    const/16 v4, 0xa

    #@2
    .line 489
    iput-wide p1, p0, Landroid/icu/text/NFRule;->baseValue:J

    #@4
    .line 496
    iget-wide v0, p0, Landroid/icu/text/NFRule;->baseValue:J

    #@6
    const-wide/16 v2, 0x1

    #@8
    cmp-long v0, v0, v2

    #@a
    if-ltz v0, :cond_2

    #@c
    .line 497
    iput v4, p0, Landroid/icu/text/NFRule;->radix:I

    #@e
    .line 498
    invoke-direct {p0}, Landroid/icu/text/NFRule;->expectedExponent()S

    #@11
    move-result v0

    #@12
    iput-short v0, p0, Landroid/icu/text/NFRule;->exponent:S

    #@14
    .line 504
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 505
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@1a
    iget v1, p0, Landroid/icu/text/NFRule;->radix:I

    #@1c
    iget-short v2, p0, Landroid/icu/text/NFRule;->exponent:S

    #@1e
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/NFSubstitution;->setDivisor(II)V

    #@21
    .line 507
    :cond_0
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@23
    if-eqz v0, :cond_1

    #@25
    .line 508
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@27
    iget v1, p0, Landroid/icu/text/NFRule;->radix:I

    #@29
    iget-short v2, p0, Landroid/icu/text/NFRule;->exponent:S

    #@2b
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/NFSubstitution;->setDivisor(II)V

    #@2e
    .line 487
    :cond_1
    :goto_0
    return-void

    #@2f
    .line 514
    :cond_2
    iput v4, p0, Landroid/icu/text/NFRule;->radix:I

    #@31
    .line 515
    const/4 v0, 0x0

    #@32
    iput-short v0, p0, Landroid/icu/text/NFRule;->exponent:S

    #@34
    goto :goto_0
.end method

.method public shouldRollBack(D)Z
    .locals 11
    .param p1, "number"    # D

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const-wide/16 v8, 0x0

    #@3
    .line 786
    iget-object v1, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@5
    invoke-virtual {v1}, Landroid/icu/text/NFSubstitution;->isModulusSubstitution()Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    iget-object v1, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@d
    invoke-virtual {v1}, Landroid/icu/text/NFSubstitution;->isModulusSubstitution()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 787
    :cond_0
    iget v1, p0, Landroid/icu/text/NFRule;->radix:I

    #@15
    int-to-double v2, v1

    #@16
    iget-short v1, p0, Landroid/icu/text/NFRule;->exponent:S

    #@18
    int-to-double v4, v1

    #@19
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    #@1c
    move-result-wide v2

    #@1d
    rem-double v2, p1, v2

    #@1f
    cmpl-double v1, v2, v8

    #@21
    if-nez v1, :cond_1

    #@23
    iget-wide v2, p0, Landroid/icu/text/NFRule;->baseValue:J

    #@25
    long-to-double v2, v2

    #@26
    iget v1, p0, Landroid/icu/text/NFRule;->radix:I

    #@28
    int-to-double v4, v1

    #@29
    iget-short v1, p0, Landroid/icu/text/NFRule;->exponent:S

    #@2b
    int-to-double v6, v1

    #@2c
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@2f
    move-result-wide v4

    #@30
    rem-double/2addr v2, v4

    #@31
    cmpl-double v1, v2, v8

    #@33
    if-eqz v1, :cond_1

    #@35
    const/4 v0, 0x1

    #@36
    .line 786
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    .line 601
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 604
    .local v2, "result":Ljava/lang/StringBuilder;
    iget-wide v4, p0, Landroid/icu/text/NFRule;->baseValue:J

    #@7
    const-wide/16 v6, -0x1

    #@9
    cmp-long v4, v4, v6

    #@b
    if-nez v4, :cond_2

    #@d
    .line 605
    const-string/jumbo v4, "-x: "

    #@10
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 636
    :goto_0
    iget-object v4, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@15
    const-string/jumbo v5, " "

    #@18
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1b
    move-result v4

    #@1c
    if-eqz v4, :cond_1

    #@1e
    iget-object v4, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@20
    if-eqz v4, :cond_0

    #@22
    iget-object v4, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@24
    invoke-virtual {v4}, Landroid/icu/text/NFSubstitution;->getPos()I

    #@27
    move-result v4

    #@28
    if-eqz v4, :cond_1

    #@2a
    .line 637
    :cond_0
    const-string/jumbo v4, "\'"

    #@2d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    .line 642
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@32
    iget-object v4, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@34
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@37
    .line 643
    .local v3, "ruleTextCopy":Ljava/lang/StringBuilder;
    iget-object v4, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@39
    invoke-virtual {v4}, Landroid/icu/text/NFSubstitution;->getPos()I

    #@3c
    move-result v4

    #@3d
    iget-object v5, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@3f
    invoke-virtual {v5}, Landroid/icu/text/NFSubstitution;->toString()Ljava/lang/String;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    .line 644
    iget-object v4, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@48
    invoke-virtual {v4}, Landroid/icu/text/NFSubstitution;->getPos()I

    #@4b
    move-result v4

    #@4c
    iget-object v5, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@4e
    invoke-virtual {v5}, Landroid/icu/text/NFSubstitution;->toString()Ljava/lang/String;

    #@51
    move-result-object v5

    #@52
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 645
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    .line 649
    const/16 v4, 0x3b

    #@5e
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@61
    .line 650
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v4

    #@65
    return-object v4

    #@66
    .line 607
    .end local v3    # "ruleTextCopy":Ljava/lang/StringBuilder;
    :cond_2
    iget-wide v4, p0, Landroid/icu/text/NFRule;->baseValue:J

    #@68
    const-wide/16 v6, -0x2

    #@6a
    cmp-long v4, v4, v6

    #@6c
    if-nez v4, :cond_3

    #@6e
    .line 608
    const-string/jumbo v4, "x.x: "

    #@71
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    goto :goto_0

    #@75
    .line 610
    :cond_3
    iget-wide v4, p0, Landroid/icu/text/NFRule;->baseValue:J

    #@77
    const-wide/16 v6, -0x3

    #@79
    cmp-long v4, v4, v6

    #@7b
    if-nez v4, :cond_4

    #@7d
    .line 611
    const-string/jumbo v4, "0.x: "

    #@80
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    goto :goto_0

    #@84
    .line 613
    :cond_4
    iget-wide v4, p0, Landroid/icu/text/NFRule;->baseValue:J

    #@86
    const-wide/16 v6, -0x4

    #@88
    cmp-long v4, v4, v6

    #@8a
    if-nez v4, :cond_5

    #@8c
    .line 614
    const-string/jumbo v4, "x.0: "

    #@8f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    goto :goto_0

    #@93
    .line 623
    :cond_5
    iget-wide v4, p0, Landroid/icu/text/NFRule;->baseValue:J

    #@95
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@98
    move-result-object v4

    #@99
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9c
    .line 624
    iget v4, p0, Landroid/icu/text/NFRule;->radix:I

    #@9e
    const/16 v5, 0xa

    #@a0
    if-eq v4, v5, :cond_6

    #@a2
    .line 625
    const/16 v4, 0x2f

    #@a4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v4

    #@a8
    iget v5, p0, Landroid/icu/text/NFRule;->radix:I

    #@aa
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ad
    .line 627
    :cond_6
    invoke-direct {p0}, Landroid/icu/text/NFRule;->expectedExponent()S

    #@b0
    move-result v4

    #@b1
    iget-short v5, p0, Landroid/icu/text/NFRule;->exponent:S

    #@b3
    sub-int v1, v4, v5

    #@b5
    .line 628
    .local v1, "numCarets":I
    const/4 v0, 0x0

    #@b6
    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_7

    #@b8
    .line 629
    const/16 v4, 0x3e

    #@ba
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@bd
    .line 628
    add-int/lit8 v0, v0, 0x1

    #@bf
    goto :goto_1

    #@c0
    .line 630
    :cond_7
    const-string/jumbo v4, ": "

    #@c3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    goto/16 :goto_0
.end method
