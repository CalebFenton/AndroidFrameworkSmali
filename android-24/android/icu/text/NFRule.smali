.class final Landroid/icu/text/NFRule;
.super Ljava/lang/Object;
.source "NFRule.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final IMPROPER_FRACTION_RULE:I = -0x2

.field static final INFINITY_RULE:I = -0x5

.field static final MASTER_RULE:I = -0x4

.field static final NAN_RULE:I = -0x6

.field static final NEGATIVE_NUMBER_RULE:I = -0x1

.field static final PROPER_FRACTION_RULE:I = -0x3

.field private static final RULE_PREFIXES:[Ljava/lang/String;

.field static final ZERO:Ljava/lang/Long;


# instance fields
.field private baseValue:J

.field private decimalPoint:C

.field private exponent:S

.field private final formatter:Landroid/icu/text/RuleBasedNumberFormat;

.field private radix:I

.field private rulePatternFormat:Landroid/icu/text/PluralFormat;

.field private ruleText:Ljava/lang/String;

.field private sub1:Landroid/icu/text/NFSubstitution;

.field private sub2:Landroid/icu/text/NFSubstitution;


# direct methods
.method static constructor <clinit>()V
    .locals 6

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
    .line 57
    const-wide/16 v4, 0x0

    #@f
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@12
    move-result-object v0

    #@13
    sput-object v0, Landroid/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    #@15
    .line 576
    const/16 v0, 0xb

    #@17
    new-array v0, v0, [Ljava/lang/String;

    #@19
    .line 577
    const-string/jumbo v3, "<<"

    #@1c
    aput-object v3, v0, v1

    #@1e
    const-string/jumbo v1, "<%"

    #@21
    aput-object v1, v0, v2

    #@23
    const-string/jumbo v1, "<#"

    #@26
    const/4 v2, 0x2

    #@27
    aput-object v1, v0, v2

    #@29
    const-string/jumbo v1, "<0"

    #@2c
    const/4 v2, 0x3

    #@2d
    aput-object v1, v0, v2

    #@2f
    .line 578
    const-string/jumbo v1, ">>"

    #@32
    const/4 v2, 0x4

    #@33
    aput-object v1, v0, v2

    #@35
    const-string/jumbo v1, ">%"

    #@38
    const/4 v2, 0x5

    #@39
    aput-object v1, v0, v2

    #@3b
    const-string/jumbo v1, ">#"

    #@3e
    const/4 v2, 0x6

    #@3f
    aput-object v1, v0, v2

    #@41
    const-string/jumbo v1, ">0"

    #@44
    const/4 v2, 0x7

    #@45
    aput-object v1, v0, v2

    #@47
    .line 579
    const-string/jumbo v1, "=%"

    #@4a
    const/16 v2, 0x8

    #@4c
    aput-object v1, v0, v2

    #@4e
    const-string/jumbo v1, "=#"

    #@51
    const/16 v2, 0x9

    #@53
    aput-object v1, v0, v2

    #@55
    const-string/jumbo v1, "=0"

    #@58
    const/16 v2, 0xa

    #@5a
    aput-object v1, v0, v2

    #@5c
    .line 576
    sput-object v0, Landroid/icu/text/NFRule;->RULE_PREFIXES:[Ljava/lang/String;

    #@5e
    .line 22
    return-void

    #@5f
    :cond_0
    move v0, v2

    #@60
    goto :goto_0
.end method

.method public constructor <init>(Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
    .locals 3
    .param p1, "formatter"    # Landroid/icu/text/RuleBasedNumberFormat;
    .param p2, "ruleText"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 72
    const/16 v1, 0xa

    #@7
    iput v1, p0, Landroid/icu/text/NFRule;->radix:I

    #@9
    .line 78
    iput-short v2, p0, Landroid/icu/text/NFRule;->exponent:S

    #@b
    .line 83
    iput-char v2, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    #@d
    .line 90
    iput-object v0, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@f
    .line 97
    iput-object v0, p0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    #@11
    .line 103
    iput-object v0, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@13
    .line 109
    iput-object v0, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@15
    .line 252
    iput-object p1, p0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    #@17
    .line 253
    if-nez p2, :cond_0

    #@19
    :goto_0
    iput-object v0, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@1b
    .line 251
    return-void

    #@1c
    .line 253
    :cond_0
    invoke-direct {p0, p2}, Landroid/icu/text/NFRule;->parseRuleDescriptor(Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    goto :goto_0
.end method

.method private allIgnorable(Ljava/lang/String;)Z
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1279
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 1280
    const/4 v1, 0x1

    #@8
    return v1

    #@9
    .line 1282
    :cond_0
    iget-object v2, p0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    #@b
    invoke-virtual {v2}, Landroid/icu/text/RuleBasedNumberFormat;->getLenientScanner()Landroid/icu/text/RbnfLenientScanner;

    #@e
    move-result-object v0

    #@f
    .line 1283
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
    .line 561
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
    .line 562
    :cond_0
    return v6

    #@e
    .line 568
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
    .line 569
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
    .line 570
    add-int/lit8 v1, v0, 0x1

    #@32
    int-to-short v1, v1

    #@33
    return v1

    #@34
    .line 572
    :cond_2
    return v0
.end method

.method private extractSubstitution(Landroid/icu/text/NFRuleSet;Landroid/icu/text/NFRule;)Landroid/icu/text/NFSubstitution;
    .locals 9
    .param p1, "owner"    # Landroid/icu/text/NFRuleSet;
    .param p2, "predecessor"    # Landroid/icu/text/NFRule;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, -0x1

    #@2
    .line 468
    iget-object v1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@4
    invoke-static {v1}, Landroid/icu/text/NFRule;->indexOfAnyRulePrefix(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    .line 472
    .local v0, "subStart":I
    if-ne v0, v3, :cond_0

    #@a
    .line 473
    return-object v4

    #@b
    .line 478
    :cond_0
    iget-object v1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@d
    const-string/jumbo v2, ">>>"

    #@10
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_2

    #@16
    .line 479
    add-int/lit8 v8, v0, 0x2

    #@18
    .line 499
    .local v8, "subEnd":I
    :cond_1
    :goto_0
    if-ne v8, v3, :cond_3

    #@1a
    .line 500
    return-object v4

    #@1b
    .line 484
    .end local v8    # "subEnd":I
    :cond_2
    iget-object v1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@1d
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    #@20
    move-result v6

    #@21
    .line 485
    .local v6, "c":C
    iget-object v1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@23
    add-int/lit8 v2, v0, 0x1

    #@25
    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->indexOf(II)I

    #@28
    move-result v8

    #@29
    .line 487
    .restart local v8    # "subEnd":I
    const/16 v1, 0x3c

    #@2b
    if-ne v6, v1, :cond_1

    #@2d
    if-eq v8, v3, :cond_1

    #@2f
    iget-object v1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@31
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@34
    move-result v1

    #@35
    add-int/lit8 v1, v1, -0x1

    #@37
    if-ge v8, v1, :cond_1

    #@39
    iget-object v1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@3b
    add-int/lit8 v2, v8, 0x1

    #@3d
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    #@40
    move-result v1

    #@41
    if-ne v1, v6, :cond_1

    #@43
    .line 492
    add-int/lit8 v8, v8, 0x1

    #@45
    goto :goto_0

    #@46
    .line 507
    .end local v6    # "c":C
    :cond_3
    iget-object v4, p0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    #@48
    iget-object v1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@4a
    add-int/lit8 v2, v8, 0x1

    #@4c
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    move-object v1, p0

    #@51
    move-object v2, p2

    #@52
    move-object v3, p1

    #@53
    .line 506
    invoke-static/range {v0 .. v5}, Landroid/icu/text/NFSubstitution;->makeSubstitution(ILandroid/icu/text/NFRule;Landroid/icu/text/NFRule;Landroid/icu/text/NFRuleSet;Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)Landroid/icu/text/NFSubstitution;

    #@56
    move-result-object v7

    #@57
    .line 510
    .local v7, "result":Landroid/icu/text/NFSubstitution;
    new-instance v1, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    iget-object v2, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@5e
    const/4 v3, 0x0

    #@5f
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@62
    move-result-object v2

    #@63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v1

    #@67
    iget-object v2, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@69
    add-int/lit8 v3, v8, 0x1

    #@6b
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v1

    #@77
    iput-object v1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@79
    .line 511
    return-object v7
.end method

.method private extractSubstitutions(Landroid/icu/text/NFRuleSet;Ljava/lang/String;Landroid/icu/text/NFRule;)V
    .locals 8
    .param p1, "owner"    # Landroid/icu/text/NFRuleSet;
    .param p2, "ruleText"    # Ljava/lang/String;
    .param p3, "predecessor"    # Landroid/icu/text/NFRule;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 416
    iput-object p2, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@3
    .line 417
    invoke-direct {p0, p1, p3}, Landroid/icu/text/NFRule;->extractSubstitution(Landroid/icu/text/NFRuleSet;Landroid/icu/text/NFRule;)Landroid/icu/text/NFSubstitution;

    #@6
    move-result-object v5

    #@7
    iput-object v5, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@9
    .line 418
    iget-object v5, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@b
    if-nez v5, :cond_0

    #@d
    .line 420
    iput-object v6, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@f
    .line 425
    :goto_0
    iget-object p2, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@11
    .line 426
    const-string/jumbo v5, "$("

    #@14
    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@17
    move-result v2

    #@18
    .line 427
    .local v2, "pluralRuleStart":I
    if-ltz v2, :cond_1

    #@1a
    const-string/jumbo v5, ")$"

    #@1d
    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@20
    move-result v1

    #@21
    .line 428
    .local v1, "pluralRuleEnd":I
    :goto_1
    if-ltz v1, :cond_3

    #@23
    .line 429
    const/16 v5, 0x2c

    #@25
    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->indexOf(II)I

    #@28
    move-result v0

    #@29
    .line 430
    .local v0, "endType":I
    if-gez v0, :cond_2

    #@2b
    .line 431
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@2d
    new-instance v6, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v7, "Rule \""

    #@35
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v6

    #@39
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v6

    #@3d
    const-string/jumbo v7, "\" does not have a defined type"

    #@40
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v6

    #@44
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47
    move-result-object v6

    #@48
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v5

    #@4c
    .line 423
    .end local v0    # "endType":I
    .end local v1    # "pluralRuleEnd":I
    .end local v2    # "pluralRuleStart":I
    :cond_0
    invoke-direct {p0, p1, p3}, Landroid/icu/text/NFRule;->extractSubstitution(Landroid/icu/text/NFRuleSet;Landroid/icu/text/NFRule;)Landroid/icu/text/NFSubstitution;

    #@4f
    move-result-object v5

    #@50
    iput-object v5, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@52
    goto :goto_0

    #@53
    .line 427
    .restart local v2    # "pluralRuleStart":I
    :cond_1
    const/4 v1, -0x1

    #@54
    goto :goto_1

    #@55
    .line 433
    .restart local v0    # "endType":I
    .restart local v1    # "pluralRuleEnd":I
    :cond_2
    iget-object v5, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@57
    add-int/lit8 v6, v2, 0x2

    #@59
    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5c
    move-result-object v4

    #@5d
    .line 435
    .local v4, "type":Ljava/lang/String;
    const-string/jumbo v5, "cardinal"

    #@60
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v5

    #@64
    if-eqz v5, :cond_4

    #@66
    .line 436
    sget-object v3, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    #@68
    .line 444
    .local v3, "pluralType":Landroid/icu/text/PluralRules$PluralType;
    :goto_2
    iget-object v5, p0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    #@6a
    .line 445
    add-int/lit8 v6, v0, 0x1

    #@6c
    invoke-virtual {p2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@6f
    move-result-object v6

    #@70
    .line 444
    invoke-virtual {v5, v3, v6}, Landroid/icu/text/RuleBasedNumberFormat;->createPluralFormat(Landroid/icu/text/PluralRules$PluralType;Ljava/lang/String;)Landroid/icu/text/PluralFormat;

    #@73
    move-result-object v5

    #@74
    iput-object v5, p0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    #@76
    .line 415
    .end local v0    # "endType":I
    .end local v3    # "pluralType":Landroid/icu/text/PluralRules$PluralType;
    .end local v4    # "type":Ljava/lang/String;
    :cond_3
    return-void

    #@77
    .line 438
    .restart local v0    # "endType":I
    .restart local v4    # "type":Ljava/lang/String;
    :cond_4
    const-string/jumbo v5, "ordinal"

    #@7a
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7d
    move-result v5

    #@7e
    if-eqz v5, :cond_5

    #@80
    .line 439
    sget-object v3, Landroid/icu/text/PluralRules$PluralType;->ORDINAL:Landroid/icu/text/PluralRules$PluralType;

    #@82
    .restart local v3    # "pluralType":Landroid/icu/text/PluralRules$PluralType;
    goto :goto_2

    #@83
    .line 442
    .end local v3    # "pluralType":Landroid/icu/text/PluralRules$PluralType;
    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@85
    new-instance v6, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v6

    #@8e
    const-string/jumbo v7, " is an unknown type"

    #@91
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v6

    #@95
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@98
    move-result-object v6

    #@99
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9c
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
    .line 1238
    iget-object v8, p0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    #@2
    invoke-virtual {v8}, Landroid/icu/text/RuleBasedNumberFormat;->getLenientScanner()Landroid/icu/text/RbnfLenientScanner;

    #@5
    move-result-object v5

    #@6
    .line 1239
    .local v5, "scanner":Landroid/icu/text/RbnfLenientScanner;
    if-eqz p3, :cond_1

    #@8
    .line 1240
    new-instance v3, Ljava/text/FieldPosition;

    #@a
    const/4 v8, 0x0

    #@b
    invoke-direct {v3, v8}, Ljava/text/FieldPosition;-><init>(I)V

    #@e
    .line 1241
    .local v3, "position":Ljava/text/FieldPosition;
    invoke-virtual {v3, p4}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@11
    .line 1242
    invoke-virtual {p3, p1, v5, v3}, Landroid/icu/text/PluralFormat;->parseType(Ljava/lang/String;Landroid/icu/text/RbnfLenientScanner;Ljava/text/FieldPosition;)Ljava/lang/String;

    #@14
    .line 1243
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@17
    move-result v6

    #@18
    .line 1244
    .local v6, "start":I
    if-ltz v6, :cond_0

    #@1a
    .line 1245
    iget-object v8, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@1c
    const-string/jumbo v9, "$("

    #@1f
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@22
    move-result v1

    #@23
    .line 1246
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
    .line 1247
    .local v2, "pluralRuleSuffix":I
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getEndIndex()I

    #@31
    move-result v8

    #@32
    sub-int v0, v8, v6

    #@34
    .line 1248
    .local v0, "matchLen":I
    iget-object v8, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@36
    const/4 v9, 0x0

    #@37
    invoke-virtual {v8, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@3a
    move-result-object v4

    #@3b
    .line 1249
    .local v4, "prefix":Ljava/lang/String;
    iget-object v8, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@3d
    invoke-virtual {v8, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@40
    move-result-object v7

    #@41
    .line 1250
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
    .line 1251
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
    .line 1250
    if-eqz v8, :cond_0

    #@5f
    .line 1253
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
    .line 1256
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
    .line 1259
    .end local v3    # "position":Ljava/text/FieldPosition;
    .end local v6    # "start":I
    :cond_1
    if-eqz v5, :cond_2

    #@82
    .line 1262
    invoke-interface {v5, p1, p2, p4}, Landroid/icu/text/RbnfLenientScanner;->findText(Ljava/lang/String;Ljava/lang/String;I)[I

    #@85
    move-result-object v8

    #@86
    return-object v8

    #@87
    .line 1266
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

.method private static indexOfAnyRulePrefix(Ljava/lang/String;)I
    .locals 7
    .param p0, "ruleText"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v6, -0x1

    #@2
    .line 590
    const/4 v1, -0x1

    #@3
    .line 591
    .local v1, "result":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@6
    move-result v4

    #@7
    if-lez v4, :cond_2

    #@9
    .line 593
    sget-object v4, Landroid/icu/text/NFRule;->RULE_PREFIXES:[Ljava/lang/String;

    #@b
    array-length v5, v4

    #@c
    :goto_0
    if-ge v3, v5, :cond_2

    #@e
    aget-object v2, v4, v3

    #@10
    .line 594
    .local v2, "string":Ljava/lang/String;
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@13
    move-result v0

    #@14
    .line 595
    .local v0, "pos":I
    if-eq v0, v6, :cond_1

    #@16
    if-eq v1, v6, :cond_0

    #@18
    if-ge v0, v1, :cond_1

    #@1a
    .line 596
    :cond_0
    move v1, v0

    #@1b
    .line 593
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 600
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
    .line 139
    .local p4, "returnList":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/NFRule;>;"
    new-instance v4, Landroid/icu/text/NFRule;

    #@2
    move-object/from16 v0, p3

    #@4
    invoke-direct {v4, v0, p0}, Landroid/icu/text/NFRule;-><init>(Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    #@7
    .line 140
    .local v4, "rule1":Landroid/icu/text/NFRule;
    iget-object p0, v4, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@9
    .line 144
    const/16 v7, 0x5b

    #@b
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    #@e
    move-result v2

    #@f
    .line 145
    .local v2, "brack1":I
    if-gez v2, :cond_2

    #@11
    const/4 v3, -0x1

    #@12
    .line 151
    .local v3, "brack2":I
    :goto_0
    if-ltz v3, :cond_0

    #@14
    if-le v2, v3, :cond_3

    #@16
    .line 157
    :cond_0
    move-object/from16 v0, p2

    #@18
    invoke-direct {v4, p1, p0, v0}, Landroid/icu/text/NFRule;->extractSubstitutions(Landroid/icu/text/NFRuleSet;Ljava/lang/String;Landroid/icu/text/NFRule;)V

    #@1b
    .line 239
    :cond_1
    :goto_1
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    #@1d
    const-wide/16 v10, 0x0

    #@1f
    cmp-long v7, v8, v10

    #@21
    if-ltz v7, :cond_d

    #@23
    .line 240
    move-object/from16 v0, p4

    #@25
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@28
    .line 134
    :goto_2
    return-void

    #@29
    .line 145
    .end local v3    # "brack2":I
    :cond_2
    const/16 v7, 0x5d

    #@2b
    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    #@2e
    move-result v3

    #@2f
    goto :goto_0

    #@30
    .line 152
    .restart local v3    # "brack2":I
    :cond_3
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    #@32
    const-wide/16 v10, -0x3

    #@34
    cmp-long v7, v8, v10

    #@36
    if-eqz v7, :cond_0

    #@38
    .line 153
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    #@3a
    const-wide/16 v10, -0x1

    #@3c
    cmp-long v7, v8, v10

    #@3e
    if-eqz v7, :cond_0

    #@40
    .line 154
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    #@42
    const-wide/16 v10, -0x5

    #@44
    cmp-long v7, v8, v10

    #@46
    if-eqz v7, :cond_0

    #@48
    .line 155
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    #@4a
    const-wide/16 v10, -0x6

    #@4c
    cmp-long v7, v8, v10

    #@4e
    if-eqz v7, :cond_0

    #@50
    .line 162
    const/4 v5, 0x0

    #@51
    .line 163
    .local v5, "rule2":Landroid/icu/text/NFRule;
    new-instance v6, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    .line 168
    .local v6, "sbuf":Ljava/lang/StringBuilder;
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    #@58
    const-wide/16 v10, 0x0

    #@5a
    cmp-long v7, v8, v10

    #@5c
    if-lez v7, :cond_9

    #@5e
    .line 169
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    #@60
    long-to-double v8, v8

    #@61
    iget v7, v4, Landroid/icu/text/NFRule;->radix:I

    #@63
    int-to-double v10, v7

    #@64
    iget-short v7, v4, Landroid/icu/text/NFRule;->exponent:S

    #@66
    int-to-double v12, v7

    #@67
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    #@6a
    move-result-wide v10

    #@6b
    rem-double/2addr v8, v10

    #@6c
    const-wide/16 v10, 0x0

    #@6e
    cmpl-double v7, v8, v10

    #@70
    if-nez v7, :cond_9

    #@72
    .line 179
    :cond_4
    :goto_3
    new-instance v5, Landroid/icu/text/NFRule;

    #@74
    .end local v5    # "rule2":Landroid/icu/text/NFRule;
    const/4 v7, 0x0

    #@75
    move-object/from16 v0, p3

    #@77
    invoke-direct {v5, v0, v7}, Landroid/icu/text/NFRule;-><init>(Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    #@7a
    .line 180
    .local v5, "rule2":Landroid/icu/text/NFRule;
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    #@7c
    const-wide/16 v10, 0x0

    #@7e
    cmp-long v7, v8, v10

    #@80
    if-ltz v7, :cond_a

    #@82
    .line 181
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    #@84
    iput-wide v8, v5, Landroid/icu/text/NFRule;->baseValue:J

    #@86
    .line 182
    invoke-virtual {p1}, Landroid/icu/text/NFRuleSet;->isFractionSet()Z

    #@89
    move-result v7

    #@8a
    if-nez v7, :cond_5

    #@8c
    .line 183
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    #@8e
    const-wide/16 v10, 0x1

    #@90
    add-long/2addr v8, v10

    #@91
    iput-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    #@93
    .line 202
    :cond_5
    :goto_4
    iget v7, v4, Landroid/icu/text/NFRule;->radix:I

    #@95
    iput v7, v5, Landroid/icu/text/NFRule;->radix:I

    #@97
    .line 203
    iget-short v7, v4, Landroid/icu/text/NFRule;->exponent:S

    #@99
    iput-short v7, v5, Landroid/icu/text/NFRule;->exponent:S

    #@9b
    .line 207
    const/4 v7, 0x0

    #@9c
    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@9f
    move-result-object v7

    #@a0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    .line 208
    add-int/lit8 v7, v3, 0x1

    #@a5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@a8
    move-result v8

    #@a9
    if-ge v7, v8, :cond_6

    #@ab
    .line 209
    add-int/lit8 v7, v3, 0x1

    #@ad
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@b0
    move-result-object v7

    #@b1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    .line 211
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b7
    move-result-object v7

    #@b8
    move-object/from16 v0, p2

    #@ba
    invoke-direct {v5, p1, v7, v0}, Landroid/icu/text/NFRule;->extractSubstitutions(Landroid/icu/text/NFRuleSet;Ljava/lang/String;Landroid/icu/text/NFRule;)V

    #@bd
    .line 217
    .end local v5    # "rule2":Landroid/icu/text/NFRule;
    :cond_7
    const/4 v7, 0x0

    #@be
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    #@c1
    .line 218
    const/4 v7, 0x0

    #@c2
    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@c5
    move-result-object v7

    #@c6
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    .line 219
    add-int/lit8 v7, v2, 0x1

    #@cb
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@ce
    move-result-object v7

    #@cf
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d2
    .line 220
    add-int/lit8 v7, v3, 0x1

    #@d4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@d7
    move-result v8

    #@d8
    if-ge v7, v8, :cond_8

    #@da
    .line 221
    add-int/lit8 v7, v3, 0x1

    #@dc
    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@df
    move-result-object v7

    #@e0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    .line 223
    :cond_8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e6
    move-result-object v7

    #@e7
    move-object/from16 v0, p2

    #@e9
    invoke-direct {v4, p1, v7, v0}, Landroid/icu/text/NFRule;->extractSubstitutions(Landroid/icu/text/NFRuleSet;Ljava/lang/String;Landroid/icu/text/NFRule;)V

    #@ec
    .line 230
    if-eqz v5, :cond_1

    #@ee
    .line 231
    iget-wide v8, v5, Landroid/icu/text/NFRule;->baseValue:J

    #@f0
    const-wide/16 v10, 0x0

    #@f2
    cmp-long v7, v8, v10

    #@f4
    if-ltz v7, :cond_c

    #@f6
    .line 232
    move-object/from16 v0, p4

    #@f8
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@fb
    goto/16 :goto_1

    #@fd
    .line 170
    .local v5, "rule2":Landroid/icu/text/NFRule;
    :cond_9
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    #@ff
    const-wide/16 v10, -0x2

    #@101
    cmp-long v7, v8, v10

    #@103
    if-eqz v7, :cond_4

    #@105
    .line 171
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    #@107
    const-wide/16 v10, -0x4

    #@109
    cmp-long v7, v8, v10

    #@10b
    if-nez v7, :cond_7

    #@10d
    goto/16 :goto_3

    #@10f
    .line 186
    .local v5, "rule2":Landroid/icu/text/NFRule;
    :cond_a
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    #@111
    const-wide/16 v10, -0x2

    #@113
    cmp-long v7, v8, v10

    #@115
    if-nez v7, :cond_b

    #@117
    .line 190
    const-wide/16 v8, -0x3

    #@119
    iput-wide v8, v5, Landroid/icu/text/NFRule;->baseValue:J

    #@11b
    goto/16 :goto_4

    #@11d
    .line 192
    :cond_b
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    #@11f
    const-wide/16 v10, -0x4

    #@121
    cmp-long v7, v8, v10

    #@123
    if-nez v7, :cond_5

    #@125
    .line 196
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    #@127
    iput-wide v8, v5, Landroid/icu/text/NFRule;->baseValue:J

    #@129
    .line 197
    const-wide/16 v8, -0x2

    #@12b
    iput-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    #@12d
    goto/16 :goto_4

    #@12f
    .line 235
    .end local v5    # "rule2":Landroid/icu/text/NFRule;
    :cond_c
    invoke-virtual {p1, v5}, Landroid/icu/text/NFRuleSet;->setNonNumericalRule(Landroid/icu/text/NFRule;)V

    #@132
    goto/16 :goto_1

    #@134
    .line 243
    .end local v6    # "sbuf":Ljava/lang/StringBuilder;
    :cond_d
    invoke-virtual {p1, v4}, Landroid/icu/text/NFRuleSet;->setNonNumericalRule(Landroid/icu/text/NFRule;)V

    #@137
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
    .line 1100
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
    .line 1101
    new-instance v9, Ljava/text/ParsePosition;

    #@c
    const/4 v7, 0x0

    #@d
    invoke-direct {v9, v7}, Ljava/text/ParsePosition;-><init>(I)V

    #@10
    .line 1108
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
    .line 1109
    .local v21, "temp":[I
    const/4 v7, 0x0

    #@1f
    aget v19, v21, v7

    #@21
    .line 1110
    .local v19, "dPos":I
    const/4 v7, 0x1

    #@22
    aget v6, v21, v7

    #@24
    .line 1114
    .local v6, "dLen":I
    :goto_0
    if-ltz v19, :cond_1

    #@26
    .line 1115
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
    .line 1116
    .local v8, "subText":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    #@32
    move-result v7

    #@33
    if-lez v7, :cond_0

    #@35
    .line 1118
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
    .line 1117
    invoke-virtual/range {v7 .. v14}, Landroid/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;

    #@46
    move-result-object v22

    #@47
    .line 1126
    .local v22, "tempResult":Ljava/lang/Number;
    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    #@4a
    move-result v7

    #@4b
    move/from16 v0, v19

    #@4d
    if-ne v7, v0, :cond_0

    #@4f
    .line 1127
    add-int v7, v19, v6

    #@51
    move-object/from16 v0, p7

    #@53
    invoke-virtual {v0, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    #@56
    .line 1128
    return-object v22

    #@57
    .line 1143
    .end local v22    # "tempResult":Ljava/lang/Number;
    :cond_0
    const/4 v7, 0x0

    #@58
    invoke-virtual {v9, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    #@5b
    .line 1144
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
    .line 1145
    const/4 v7, 0x0

    #@6a
    aget v19, v21, v7

    #@6c
    .line 1146
    const/4 v7, 0x1

    #@6d
    aget v6, v21, v7

    #@6f
    goto :goto_0

    #@70
    .line 1150
    .end local v8    # "subText":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    #@71
    move-object/from16 v0, p7

    #@73
    invoke-virtual {v0, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    #@76
    .line 1151
    sget-object v7, Landroid/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    #@78
    return-object v7

    #@79
    .line 1158
    .end local v6    # "dLen":I
    .end local v9    # "tempPP":Ljava/text/ParsePosition;
    .end local v19    # "dPos":I
    .end local v21    # "temp":[I
    :cond_2
    if-nez p8, :cond_3

    #@7b
    .line 1159
    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@7e
    move-result-object v7

    #@7f
    return-object v7

    #@80
    .line 1162
    :cond_3
    new-instance v9, Ljava/text/ParsePosition;

    #@82
    const/4 v7, 0x0

    #@83
    invoke-direct {v9, v7}, Ljava/text/ParsePosition;-><init>(I)V

    #@86
    .line 1163
    .restart local v9    # "tempPP":Ljava/text/ParsePosition;
    sget-object v20, Landroid/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    #@88
    .line 1166
    .local v20, "result":Ljava/lang/Number;
    move-object/from16 v0, p0

    #@8a
    iget-object v7, v0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    #@8c
    invoke-virtual {v7}, Landroid/icu/text/RuleBasedNumberFormat;->lenientParseEnabled()Z

    #@8f
    move-result v18

    #@90
    move-object/from16 v11, p8

    #@92
    move-object/from16 v12, p1

    #@94
    move-object v13, v9

    #@95
    move-wide/from16 v14, p3

    #@97
    move-wide/from16 v16, p9

    #@99
    .line 1165
    invoke-virtual/range {v11 .. v18}, Landroid/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;

    #@9c
    move-result-object v22

    #@9d
    .line 1167
    .restart local v22    # "tempResult":Ljava/lang/Number;
    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    #@a0
    move-result v7

    #@a1
    if-eqz v7, :cond_4

    #@a3
    .line 1172
    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    #@a6
    move-result v7

    #@a7
    move-object/from16 v0, p7

    #@a9
    invoke-virtual {v0, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    #@ac
    .line 1173
    if-eqz v22, :cond_4

    #@ae
    .line 1174
    move-object/from16 v20, v22

    #@b0
    .line 1184
    :cond_4
    return-object v20
.end method

.method private parseRuleDescriptor(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 274
    const-string/jumbo v8, ":"

    #@3
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@6
    move-result v5

    #@7
    .line 275
    .local v5, "p":I
    const/4 v8, -0x1

    #@8
    if-eq v5, v8, :cond_d

    #@a
    .line 279
    const/4 v8, 0x0

    #@b
    invoke-virtual {p1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 280
    .local v1, "descriptor":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    #@11
    .line 281
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@14
    move-result v8

    #@15
    if-ge v5, v8, :cond_0

    #@17
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v8

    #@1b
    invoke-static {v8}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@1e
    move-result v8

    #@1f
    if-eqz v8, :cond_0

    #@21
    .line 282
    add-int/lit8 v5, v5, 0x1

    #@23
    goto :goto_0

    #@24
    .line 284
    :cond_0
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@27
    move-result-object p1

    #@28
    .line 289
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@2b
    move-result v2

    #@2c
    .line 290
    .local v2, "descriptorLength":I
    const/4 v8, 0x0

    #@2d
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    #@30
    move-result v3

    #@31
    .line 291
    .local v3, "firstChar":C
    add-int/lit8 v8, v2, -0x1

    #@33
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    #@36
    move-result v4

    #@37
    .line 292
    .local v4, "lastChar":C
    const/16 v8, 0x30

    #@39
    if-lt v3, v8, :cond_c

    #@3b
    const/16 v8, 0x39

    #@3d
    if-gt v3, v8, :cond_c

    #@3f
    const/16 v8, 0x78

    #@41
    if-eq v4, v8, :cond_c

    #@43
    .line 295
    const-wide/16 v6, 0x0

    #@45
    .line 296
    .local v6, "tempValue":J
    const/4 v0, 0x0

    #@46
    .line 297
    .local v0, "c":C
    const/4 v5, 0x0

    #@47
    .line 303
    .end local v0    # "c":C
    :goto_1
    if-ge v5, v2, :cond_3

    #@49
    .line 304
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    #@4c
    move-result v0

    #@4d
    .line 305
    .local v0, "c":C
    const/16 v8, 0x30

    #@4f
    if-lt v0, v8, :cond_2

    #@51
    const/16 v8, 0x39

    #@53
    if-gt v0, v8, :cond_2

    #@55
    .line 306
    const-wide/16 v8, 0xa

    #@57
    mul-long/2addr v8, v6

    #@58
    add-int/lit8 v10, v0, -0x30

    #@5a
    int-to-long v10, v10

    #@5b
    add-long v6, v8, v10

    #@5d
    .line 314
    :cond_1
    add-int/lit8 v5, v5, 0x1

    #@5f
    goto :goto_1

    #@60
    .line 308
    :cond_2
    const/16 v8, 0x2f

    #@62
    if-eq v0, v8, :cond_3

    #@64
    const/16 v8, 0x3e

    #@66
    if-ne v0, v8, :cond_5

    #@68
    .line 318
    .end local v0    # "c":C
    :cond_3
    invoke-virtual {p0, v6, v7}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    #@6b
    .line 324
    const/16 v8, 0x2f

    #@6d
    if-ne v0, v8, :cond_a

    #@6f
    .line 325
    const-wide/16 v6, 0x0

    #@71
    .line 326
    add-int/lit8 v5, v5, 0x1

    #@73
    .line 327
    :goto_2
    if-ge v5, v2, :cond_7

    #@75
    .line 328
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    #@78
    move-result v0

    #@79
    .line 329
    .restart local v0    # "c":C
    const/16 v8, 0x30

    #@7b
    if-lt v0, v8, :cond_6

    #@7d
    const/16 v8, 0x39

    #@7f
    if-gt v0, v8, :cond_6

    #@81
    .line 330
    const-wide/16 v8, 0xa

    #@83
    mul-long/2addr v8, v6

    #@84
    add-int/lit8 v10, v0, -0x30

    #@86
    int-to-long v10, v10

    #@87
    add-long v6, v8, v10

    #@89
    .line 338
    :cond_4
    add-int/lit8 v5, v5, 0x1

    #@8b
    goto :goto_2

    #@8c
    .line 311
    :cond_5
    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@8f
    move-result v8

    #@90
    if-nez v8, :cond_1

    #@92
    const/16 v8, 0x2c

    #@94
    if-eq v0, v8, :cond_1

    #@96
    const/16 v8, 0x2e

    #@98
    if-eq v0, v8, :cond_1

    #@9a
    .line 312
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@9c
    new-instance v9, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v10, "Illegal character "

    #@a4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v9

    #@a8
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v9

    #@ac
    const-string/jumbo v10, " in rule descriptor"

    #@af
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v9

    #@b3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v9

    #@b7
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ba
    throw v8

    #@bb
    .line 332
    :cond_6
    const/16 v8, 0x3e

    #@bd
    if-ne v0, v8, :cond_8

    #@bf
    .line 343
    .end local v0    # "c":C
    :cond_7
    long-to-int v8, v6

    #@c0
    iput v8, p0, Landroid/icu/text/NFRule;->radix:I

    #@c2
    .line 344
    iget v8, p0, Landroid/icu/text/NFRule;->radix:I

    #@c4
    if-nez v8, :cond_9

    #@c6
    .line 345
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@c8
    const-string/jumbo v9, "Rule can\'t have radix of 0"

    #@cb
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ce
    throw v8

    #@cf
    .line 335
    .restart local v0    # "c":C
    :cond_8
    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    #@d2
    move-result v8

    #@d3
    if-nez v8, :cond_4

    #@d5
    const/16 v8, 0x2c

    #@d7
    if-eq v0, v8, :cond_4

    #@d9
    const/16 v8, 0x2e

    #@db
    if-eq v0, v8, :cond_4

    #@dd
    .line 336
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@df
    new-instance v9, Ljava/lang/StringBuilder;

    #@e1
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@e4
    const-string/jumbo v10, "Illegal character "

    #@e7
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v9

    #@eb
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v9

    #@ef
    const-string/jumbo v10, " in rule descriptor"

    #@f2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v9

    #@f6
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f9
    move-result-object v9

    #@fa
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@fd
    throw v8

    #@fe
    .line 347
    .end local v0    # "c":C
    :cond_9
    invoke-direct {p0}, Landroid/icu/text/NFRule;->expectedExponent()S

    #@101
    move-result v8

    #@102
    iput-short v8, p0, Landroid/icu/text/NFRule;->exponent:S

    #@104
    .line 355
    :cond_a
    const/16 v8, 0x3e

    #@106
    if-ne v0, v8, :cond_d

    #@108
    .line 356
    :goto_3
    if-ge v5, v2, :cond_d

    #@10a
    .line 357
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    #@10d
    move-result v0

    #@10e
    .line 358
    .restart local v0    # "c":C
    const/16 v8, 0x3e

    #@110
    if-ne v0, v8, :cond_b

    #@112
    iget-short v8, p0, Landroid/icu/text/NFRule;->exponent:S

    #@114
    if-lez v8, :cond_b

    #@116
    .line 359
    iget-short v8, p0, Landroid/icu/text/NFRule;->exponent:S

    #@118
    add-int/lit8 v8, v8, -0x1

    #@11a
    int-to-short v8, v8

    #@11b
    iput-short v8, p0, Landroid/icu/text/NFRule;->exponent:S

    #@11d
    .line 363
    add-int/lit8 v5, v5, 0x1

    #@11f
    goto :goto_3

    #@120
    .line 361
    :cond_b
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@122
    const-string/jumbo v9, "Illegal character in rule descriptor"

    #@125
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@128
    throw v8

    #@129
    .line 367
    .end local v0    # "c":C
    .end local v6    # "tempValue":J
    :cond_c
    const-string/jumbo v8, "-x"

    #@12c
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12f
    move-result v8

    #@130
    if-eqz v8, :cond_f

    #@132
    .line 368
    const-wide/16 v8, -0x1

    #@134
    invoke-virtual {p0, v8, v9}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    #@137
    .line 396
    .end local v1    # "descriptor":Ljava/lang/String;
    .end local v2    # "descriptorLength":I
    .end local v3    # "firstChar":C
    .end local v4    # "lastChar":C
    :cond_d
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@13a
    move-result v8

    #@13b
    if-lez v8, :cond_e

    #@13d
    const/4 v8, 0x0

    #@13e
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    #@141
    move-result v8

    #@142
    const/16 v9, 0x27

    #@144
    if-ne v8, v9, :cond_e

    #@146
    .line 397
    const/4 v8, 0x1

    #@147
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@14a
    move-result-object p1

    #@14b
    .line 402
    :cond_e
    return-object p1

    #@14c
    .line 370
    .restart local v1    # "descriptor":Ljava/lang/String;
    .restart local v2    # "descriptorLength":I
    .restart local v3    # "firstChar":C
    .restart local v4    # "lastChar":C
    :cond_f
    const/4 v8, 0x3

    #@14d
    if-ne v2, v8, :cond_d

    #@14f
    .line 371
    const/16 v8, 0x30

    #@151
    if-ne v3, v8, :cond_10

    #@153
    const/16 v8, 0x78

    #@155
    if-ne v4, v8, :cond_10

    #@157
    .line 372
    const-wide/16 v8, -0x3

    #@159
    invoke-virtual {p0, v8, v9}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    #@15c
    .line 373
    const/4 v8, 0x1

    #@15d
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    #@160
    move-result v8

    #@161
    iput-char v8, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    #@163
    goto :goto_4

    #@164
    .line 375
    :cond_10
    const/16 v8, 0x78

    #@166
    if-ne v3, v8, :cond_11

    #@168
    const/16 v8, 0x78

    #@16a
    if-ne v4, v8, :cond_11

    #@16c
    .line 376
    const-wide/16 v8, -0x2

    #@16e
    invoke-virtual {p0, v8, v9}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    #@171
    .line 377
    const/4 v8, 0x1

    #@172
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    #@175
    move-result v8

    #@176
    iput-char v8, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    #@178
    goto :goto_4

    #@179
    .line 379
    :cond_11
    const/16 v8, 0x78

    #@17b
    if-ne v3, v8, :cond_12

    #@17d
    const/16 v8, 0x30

    #@17f
    if-ne v4, v8, :cond_12

    #@181
    .line 380
    const-wide/16 v8, -0x4

    #@183
    invoke-virtual {p0, v8, v9}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    #@186
    .line 381
    const/4 v8, 0x1

    #@187
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    #@18a
    move-result v8

    #@18b
    iput-char v8, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    #@18d
    goto :goto_4

    #@18e
    .line 383
    :cond_12
    const-string/jumbo v8, "NaN"

    #@191
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@194
    move-result v8

    #@195
    if-eqz v8, :cond_13

    #@197
    .line 384
    const-wide/16 v8, -0x6

    #@199
    invoke-virtual {p0, v8, v9}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    #@19c
    goto :goto_4

    #@19d
    .line 386
    :cond_13
    const-string/jumbo v8, "Inf"

    #@1a0
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a3
    move-result v8

    #@1a4
    if-eqz v8, :cond_d

    #@1a6
    .line 387
    const-wide/16 v8, -0x5

    #@1a8
    invoke-virtual {p0, v8, v9}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    #@1ab
    goto :goto_4
.end method

.method private prefixLength(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1205
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 1206
    return v2

    #@8
    .line 1209
    :cond_0
    iget-object v1, p0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    #@a
    invoke-virtual {v1}, Landroid/icu/text/RuleBasedNumberFormat;->getLenientScanner()Landroid/icu/text/RbnfLenientScanner;

    #@d
    move-result-object v0

    #@e
    .line 1210
    .local v0, "scanner":Landroid/icu/text/RbnfLenientScanner;
    if-eqz v0, :cond_1

    #@10
    .line 1211
    invoke-interface {v0, p1, p2}, Landroid/icu/text/RbnfLenientScanner;->prefixLength(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    move-result v1

    #@14
    return v1

    #@15
    .line 1216
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_2

    #@1b
    .line 1217
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@1e
    move-result v1

    #@1f
    return v1

    #@20
    .line 1219
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
    .line 1047
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    if-nez v1, :cond_0

    #@6
    .line 1048
    return-object p1

    #@7
    .line 1054
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/icu/text/NFRule;->prefixLength(Ljava/lang/String;Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    .line 1055
    .local v0, "pfl":I
    if-eqz v0, :cond_1

    #@d
    .line 1058
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    #@10
    move-result v1

    #@11
    add-int/2addr v1, v0

    #@12
    invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    #@15
    .line 1059
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    return-object v1

    #@1a
    .line 1063
    :cond_1
    return-object p1
.end method


# virtual methods
.method public doFormat(DLjava/lang/StringBuffer;II)V
    .locals 15
    .param p1, "number"    # D
    .param p3, "toInsertInto"    # Ljava/lang/StringBuffer;
    .param p4, "pos"    # I
    .param p5, "recursionCount"    # I

    #@0
    .prologue
    .line 790
    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@5
    move-result v11

    #@6
    .line 791
    .local v11, "pluralRuleStart":I
    const/4 v9, 0x0

    #@7
    .line 792
    .local v9, "lengthOffset":I
    iget-object v3, p0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    #@9
    if-nez v3, :cond_2

    #@b
    .line 793
    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@d
    move-object/from16 v0, p3

    #@f
    move/from16 v1, p4

    #@11
    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@14
    .line 817
    :goto_0
    iget-object v3, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@16
    if-eqz v3, :cond_0

    #@18
    .line 818
    iget-object v3, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@1a
    iget-object v4, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@1c
    invoke-virtual {v4}, Landroid/icu/text/NFSubstitution;->getPos()I

    #@1f
    move-result v4

    #@20
    if-le v4, v11, :cond_6

    #@22
    move v4, v9

    #@23
    :goto_1
    sub-int v7, p4, v4

    #@25
    move-wide/from16 v4, p1

    #@27
    move-object/from16 v6, p3

    #@29
    move/from16 v8, p5

    #@2b
    invoke-virtual/range {v3 .. v8}, Landroid/icu/text/NFSubstitution;->doSubstitution(DLjava/lang/StringBuffer;II)V

    #@2e
    .line 820
    :cond_0
    iget-object v3, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@30
    if-eqz v3, :cond_1

    #@32
    .line 821
    iget-object v3, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@34
    iget-object v4, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@36
    invoke-virtual {v4}, Landroid/icu/text/NFSubstitution;->getPos()I

    #@39
    move-result v4

    #@3a
    if-le v4, v11, :cond_7

    #@3c
    .end local v9    # "lengthOffset":I
    :goto_2
    sub-int v7, p4, v9

    #@3e
    move-wide/from16 v4, p1

    #@40
    move-object/from16 v6, p3

    #@42
    move/from16 v8, p5

    #@44
    invoke-virtual/range {v3 .. v8}, Landroid/icu/text/NFSubstitution;->doSubstitution(DLjava/lang/StringBuffer;II)V

    #@47
    .line 783
    :cond_1
    return-void

    #@48
    .line 796
    .restart local v9    # "lengthOffset":I
    :cond_2
    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@4a
    const-string/jumbo v4, "$("

    #@4d
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@50
    move-result v11

    #@51
    .line 797
    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@53
    const-string/jumbo v4, ")$"

    #@56
    invoke-virtual {v3, v4, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@59
    move-result v10

    #@5a
    .line 798
    .local v10, "pluralRuleEnd":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@5d
    move-result v2

    #@5e
    .line 799
    .local v2, "initialLength":I
    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@60
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@63
    move-result v3

    #@64
    add-int/lit8 v3, v3, -0x1

    #@66
    if-ge v10, v3, :cond_3

    #@68
    .line 800
    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@6a
    add-int/lit8 v4, v10, 0x2

    #@6c
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@6f
    move-result-object v3

    #@70
    move-object/from16 v0, p3

    #@72
    move/from16 v1, p4

    #@74
    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@77
    .line 802
    :cond_3
    move-wide/from16 v12, p1

    #@79
    .line 803
    .local v12, "pluralVal":D
    const-wide/16 v4, 0x0

    #@7b
    cmpg-double v3, v4, p1

    #@7d
    if-gtz v3, :cond_5

    #@7f
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    #@81
    cmpg-double v3, p1, v4

    #@83
    if-gez v3, :cond_5

    #@85
    .line 806
    iget v3, p0, Landroid/icu/text/NFRule;->radix:I

    #@87
    int-to-double v4, v3

    #@88
    iget-short v3, p0, Landroid/icu/text/NFRule;->exponent:S

    #@8a
    int-to-double v6, v3

    #@8b
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@8e
    move-result-wide v4

    #@8f
    mul-double v4, v4, p1

    #@91
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    #@94
    move-result-wide v4

    #@95
    long-to-double v12, v4

    #@96
    .line 811
    :goto_3
    iget-object v3, p0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    #@98
    double-to-long v4, v12

    #@99
    long-to-double v4, v4

    #@9a
    invoke-virtual {v3, v4, v5}, Landroid/icu/text/PluralFormat;->format(D)Ljava/lang/String;

    #@9d
    move-result-object v3

    #@9e
    move-object/from16 v0, p3

    #@a0
    move/from16 v1, p4

    #@a2
    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@a5
    .line 812
    if-lez v11, :cond_4

    #@a7
    .line 813
    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@a9
    const/4 v4, 0x0

    #@aa
    invoke-virtual {v3, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@ad
    move-result-object v3

    #@ae
    move-object/from16 v0, p3

    #@b0
    move/from16 v1, p4

    #@b2
    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@b5
    .line 815
    :cond_4
    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@b7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@ba
    move-result v3

    #@bb
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@be
    move-result v4

    #@bf
    sub-int/2addr v4, v2

    #@c0
    sub-int v9, v3, v4

    #@c2
    goto/16 :goto_0

    #@c4
    .line 809
    :cond_5
    iget v3, p0, Landroid/icu/text/NFRule;->radix:I

    #@c6
    int-to-double v4, v3

    #@c7
    iget-short v3, p0, Landroid/icu/text/NFRule;->exponent:S

    #@c9
    int-to-double v6, v3

    #@ca
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@cd
    move-result-wide v4

    #@ce
    div-double v12, p1, v4

    #@d0
    goto :goto_3

    #@d1
    .line 818
    .end local v2    # "initialLength":I
    .end local v10    # "pluralRuleEnd":I
    .end local v12    # "pluralVal":D
    :cond_6
    const/4 v4, 0x0

    #@d2
    goto/16 :goto_1

    #@d4
    .line 821
    :cond_7
    const/4 v9, 0x0

    #@d5
    goto/16 :goto_2
.end method

.method public doFormat(JLjava/lang/StringBuffer;II)V
    .locals 15
    .param p1, "number"    # J
    .param p3, "toInsertInto"    # Ljava/lang/StringBuffer;
    .param p4, "pos"    # I
    .param p5, "recursionCount"    # I

    #@0
    .prologue
    .line 748
    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@5
    move-result v11

    #@6
    .line 749
    .local v11, "pluralRuleStart":I
    const/4 v9, 0x0

    #@7
    .line 750
    .local v9, "lengthOffset":I
    iget-object v3, p0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    #@9
    if-nez v3, :cond_2

    #@b
    .line 751
    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@d
    move-object/from16 v0, p3

    #@f
    move/from16 v1, p4

    #@11
    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@14
    .line 766
    :goto_0
    iget-object v3, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@16
    if-eqz v3, :cond_0

    #@18
    .line 767
    iget-object v3, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@1a
    iget-object v4, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@1c
    invoke-virtual {v4}, Landroid/icu/text/NFSubstitution;->getPos()I

    #@1f
    move-result v4

    #@20
    if-le v4, v11, :cond_5

    #@22
    move v4, v9

    #@23
    :goto_1
    sub-int v7, p4, v4

    #@25
    move-wide/from16 v4, p1

    #@27
    move-object/from16 v6, p3

    #@29
    move/from16 v8, p5

    #@2b
    invoke-virtual/range {v3 .. v8}, Landroid/icu/text/NFSubstitution;->doSubstitution(JLjava/lang/StringBuffer;II)V

    #@2e
    .line 769
    :cond_0
    iget-object v3, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@30
    if-eqz v3, :cond_1

    #@32
    .line 770
    iget-object v3, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@34
    iget-object v4, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@36
    invoke-virtual {v4}, Landroid/icu/text/NFSubstitution;->getPos()I

    #@39
    move-result v4

    #@3a
    if-le v4, v11, :cond_6

    #@3c
    .end local v9    # "lengthOffset":I
    :goto_2
    sub-int v7, p4, v9

    #@3e
    move-wide/from16 v4, p1

    #@40
    move-object/from16 v6, p3

    #@42
    move/from16 v8, p5

    #@44
    invoke-virtual/range {v3 .. v8}, Landroid/icu/text/NFSubstitution;->doSubstitution(JLjava/lang/StringBuffer;II)V

    #@47
    .line 742
    :cond_1
    return-void

    #@48
    .line 754
    .restart local v9    # "lengthOffset":I
    :cond_2
    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@4a
    const-string/jumbo v4, "$("

    #@4d
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@50
    move-result v11

    #@51
    .line 755
    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@53
    const-string/jumbo v4, ")$"

    #@56
    invoke-virtual {v3, v4, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@59
    move-result v10

    #@5a
    .line 756
    .local v10, "pluralRuleEnd":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@5d
    move-result v2

    #@5e
    .line 757
    .local v2, "initialLength":I
    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@60
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@63
    move-result v3

    #@64
    add-int/lit8 v3, v3, -0x1

    #@66
    if-ge v10, v3, :cond_3

    #@68
    .line 758
    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@6a
    add-int/lit8 v4, v10, 0x2

    #@6c
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@6f
    move-result-object v3

    #@70
    move-object/from16 v0, p3

    #@72
    move/from16 v1, p4

    #@74
    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@77
    .line 760
    :cond_3
    iget-object v3, p0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    #@79
    move-wide/from16 v0, p1

    #@7b
    long-to-double v4, v0

    #@7c
    iget v6, p0, Landroid/icu/text/NFRule;->radix:I

    #@7e
    int-to-double v6, v6

    #@7f
    iget-short v8, p0, Landroid/icu/text/NFRule;->exponent:S

    #@81
    int-to-double v12, v8

    #@82
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->pow(DD)D

    #@85
    move-result-wide v6

    #@86
    div-double/2addr v4, v6

    #@87
    double-to-long v4, v4

    #@88
    long-to-double v4, v4

    #@89
    invoke-virtual {v3, v4, v5}, Landroid/icu/text/PluralFormat;->format(D)Ljava/lang/String;

    #@8c
    move-result-object v3

    #@8d
    move-object/from16 v0, p3

    #@8f
    move/from16 v1, p4

    #@91
    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@94
    .line 761
    if-lez v11, :cond_4

    #@96
    .line 762
    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@98
    const/4 v4, 0x0

    #@99
    invoke-virtual {v3, v4, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@9c
    move-result-object v3

    #@9d
    move-object/from16 v0, p3

    #@9f
    move/from16 v1, p4

    #@a1
    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@a4
    .line 764
    :cond_4
    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@a6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@a9
    move-result v3

    #@aa
    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuffer;->length()I

    #@ad
    move-result v4

    #@ae
    sub-int/2addr v4, v2

    #@af
    sub-int v9, v3, v4

    #@b1
    goto/16 :goto_0

    #@b3
    .line 767
    .end local v2    # "initialLength":I
    .end local v10    # "pluralRuleEnd":I
    :cond_5
    const/4 v4, 0x0

    #@b4
    goto/16 :goto_1

    #@b6
    .line 770
    :cond_6
    const/4 v9, 0x0

    #@b7
    goto :goto_2
.end method

.method public doParse(Ljava/lang/String;Ljava/text/ParsePosition;ZD)Ljava/lang/Number;
    .locals 28
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "parsePosition"    # Ljava/text/ParsePosition;
    .param p3, "isFractionRule"    # Z
    .param p4, "upperBound"    # D

    #@0
    .prologue
    .line 881
    new-instance v10, Ljava/text/ParsePosition;

    #@2
    const/4 v3, 0x0

    #@3
    invoke-direct {v10, v3}, Ljava/text/ParsePosition;-><init>(I)V

    #@6
    .line 887
    .local v10, "pp":Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    #@8
    iget-object v3, v0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@a
    if-eqz v3, :cond_0

    #@c
    move-object/from16 v0, p0

    #@e
    iget-object v3, v0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@10
    invoke-virtual {v3}, Landroid/icu/text/NFSubstitution;->getPos()I

    #@13
    move-result v23

    #@14
    .line 888
    .local v23, "sub1Pos":I
    :goto_0
    move-object/from16 v0, p0

    #@16
    iget-object v3, v0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@18
    if-eqz v3, :cond_1

    #@1a
    move-object/from16 v0, p0

    #@1c
    iget-object v3, v0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@1e
    invoke-virtual {v3}, Landroid/icu/text/NFSubstitution;->getPos()I

    #@21
    move-result v26

    #@22
    .line 889
    .local v26, "sub2Pos":I
    :goto_1
    move-object/from16 v0, p0

    #@24
    iget-object v3, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@26
    const/4 v8, 0x0

    #@27
    move/from16 v0, v23

    #@29
    invoke-virtual {v3, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    move-object/from16 v0, p0

    #@2f
    move-object/from16 v1, p1

    #@31
    invoke-direct {v0, v1, v3, v10}, Landroid/icu/text/NFRule;->stripPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    #@34
    move-result-object v4

    #@35
    .line 890
    .local v4, "workText":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@38
    move-result v3

    #@39
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@3c
    move-result v8

    #@3d
    sub-int v22, v3, v8

    #@3f
    .line 892
    .local v22, "prefixLength":I
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    #@42
    move-result v3

    #@43
    if-nez v3, :cond_2

    #@45
    if-eqz v23, :cond_2

    #@47
    .line 895
    sget-object v3, Landroid/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    #@49
    return-object v3

    #@4a
    .line 887
    .end local v4    # "workText":Ljava/lang/String;
    .end local v22    # "prefixLength":I
    .end local v23    # "sub1Pos":I
    .end local v26    # "sub2Pos":I
    :cond_0
    move-object/from16 v0, p0

    #@4c
    iget-object v3, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@4e
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@51
    move-result v23

    #@52
    .restart local v23    # "sub1Pos":I
    goto :goto_0

    #@53
    .line 888
    :cond_1
    move-object/from16 v0, p0

    #@55
    iget-object v3, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@57
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@5a
    move-result v26

    #@5b
    .restart local v26    # "sub2Pos":I
    goto :goto_1

    #@5c
    .line 897
    .restart local v4    # "workText":Ljava/lang/String;
    .restart local v22    # "prefixLength":I
    :cond_2
    move-object/from16 v0, p0

    #@5e
    iget-wide v8, v0, Landroid/icu/text/NFRule;->baseValue:J

    #@60
    const-wide/16 v16, -0x5

    #@62
    cmp-long v3, v8, v16

    #@64
    if-nez v3, :cond_3

    #@66
    .line 899
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    #@69
    move-result v3

    #@6a
    move-object/from16 v0, p2

    #@6c
    invoke-virtual {v0, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    #@6f
    .line 900
    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@71
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@74
    move-result-object v3

    #@75
    return-object v3

    #@76
    .line 902
    :cond_3
    move-object/from16 v0, p0

    #@78
    iget-wide v8, v0, Landroid/icu/text/NFRule;->baseValue:J

    #@7a
    const-wide/16 v16, -0x6

    #@7c
    cmp-long v3, v8, v16

    #@7e
    if-nez v3, :cond_4

    #@80
    .line 904
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    #@83
    move-result v3

    #@84
    move-object/from16 v0, p2

    #@86
    invoke-virtual {v0, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    #@89
    .line 905
    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    #@8b
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@8e
    move-result-object v3

    #@8f
    return-object v3

    #@90
    .line 937
    :cond_4
    const/4 v2, 0x0

    #@91
    .line 938
    .local v2, "highWaterMark":I
    const-wide/16 v24, 0x0

    #@93
    .line 939
    .local v24, "result":D
    const/4 v5, 0x0

    #@94
    .line 940
    .local v5, "start":I
    const-wide/16 v8, 0x0

    #@96
    move-object/from16 v0, p0

    #@98
    iget-wide v0, v0, Landroid/icu/text/NFRule;->baseValue:J

    #@9a
    move-wide/from16 v16, v0

    #@9c
    move-wide/from16 v0, v16

    #@9e
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(JJ)J

    #@a1
    move-result-wide v8

    #@a2
    long-to-double v6, v8

    #@a3
    .line 947
    .local v6, "tempBaseValue":D
    :cond_5
    const/4 v3, 0x0

    #@a4
    invoke-virtual {v10, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    #@a7
    .line 949
    move-object/from16 v0, p0

    #@a9
    iget-object v3, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@ab
    move/from16 v0, v23

    #@ad
    move/from16 v1, v26

    #@af
    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b2
    move-result-object v8

    #@b3
    move-object/from16 v0, p0

    #@b5
    iget-object v9, v0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    #@b7
    .line 950
    move-object/from16 v0, p0

    #@b9
    iget-object v11, v0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@bb
    move-object/from16 v3, p0

    #@bd
    move-wide/from16 v12, p4

    #@bf
    .line 948
    invoke-direct/range {v3 .. v13}, Landroid/icu/text/NFRule;->matchToDelimiter(Ljava/lang/String;IDLjava/lang/String;Landroid/icu/text/PluralFormat;Ljava/text/ParsePosition;Landroid/icu/text/NFSubstitution;D)Ljava/lang/Number;

    #@c2
    move-result-object v3

    #@c3
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    #@c6
    move-result-wide v14

    #@c7
    .line 956
    .local v14, "partialResult":D
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    #@ca
    move-result v3

    #@cb
    if-nez v3, :cond_6

    #@cd
    move-object/from16 v0, p0

    #@cf
    iget-object v3, v0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@d1
    if-nez v3, :cond_8

    #@d3
    .line 957
    :cond_6
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    #@d6
    move-result v5

    #@d7
    .line 959
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    #@da
    move-result v3

    #@db
    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@de
    move-result-object v12

    #@df
    .line 960
    .local v12, "workText2":Ljava/lang/String;
    new-instance v18, Ljava/text/ParsePosition;

    #@e1
    const/4 v3, 0x0

    #@e2
    move-object/from16 v0, v18

    #@e4
    invoke-direct {v0, v3}, Ljava/text/ParsePosition;-><init>(I)V

    #@e7
    .line 967
    .local v18, "pp2":Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    #@e9
    iget-object v3, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@eb
    move/from16 v0, v26

    #@ed
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@f0
    move-result-object v16

    #@f1
    move-object/from16 v0, p0

    #@f3
    iget-object v0, v0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    #@f5
    move-object/from16 v17, v0

    #@f7
    move-object/from16 v0, p0

    #@f9
    iget-object v0, v0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@fb
    move-object/from16 v19, v0

    #@fd
    .line 966
    const/4 v13, 0x0

    #@fe
    move-object/from16 v11, p0

    #@100
    move-wide/from16 v20, p4

    #@102
    invoke-direct/range {v11 .. v21}, Landroid/icu/text/NFRule;->matchToDelimiter(Ljava/lang/String;IDLjava/lang/String;Landroid/icu/text/PluralFormat;Ljava/text/ParsePosition;Landroid/icu/text/NFSubstitution;D)Ljava/lang/Number;

    #@105
    move-result-object v3

    #@106
    invoke-virtual {v3}, Ljava/lang/Number;->doubleValue()D

    #@109
    move-result-wide v14

    #@10a
    .line 973
    invoke-virtual/range {v18 .. v18}, Ljava/text/ParsePosition;->getIndex()I

    #@10d
    move-result v3

    #@10e
    if-nez v3, :cond_7

    #@110
    move-object/from16 v0, p0

    #@112
    iget-object v3, v0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@114
    if-nez v3, :cond_8

    #@116
    .line 974
    :cond_7
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    #@119
    move-result v3

    #@11a
    add-int v3, v3, v22

    #@11c
    invoke-virtual/range {v18 .. v18}, Ljava/text/ParsePosition;->getIndex()I

    #@11f
    move-result v8

    #@120
    add-int/2addr v3, v8

    #@121
    if-le v3, v2, :cond_8

    #@123
    .line 975
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    #@126
    move-result v3

    #@127
    add-int v3, v3, v22

    #@129
    invoke-virtual/range {v18 .. v18}, Ljava/text/ParsePosition;->getIndex()I

    #@12c
    move-result v8

    #@12d
    add-int v2, v3, v8

    #@12f
    .line 976
    move-wide/from16 v24, v14

    #@131
    .line 998
    .end local v12    # "workText2":Ljava/lang/String;
    .end local v18    # "pp2":Ljava/text/ParsePosition;
    :cond_8
    move/from16 v0, v23

    #@133
    move/from16 v1, v26

    #@135
    if-eq v0, v1, :cond_9

    #@137
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    #@13a
    move-result v3

    #@13b
    if-lez v3, :cond_9

    #@13d
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    #@140
    move-result v3

    #@141
    .line 999
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@144
    move-result v8

    #@145
    .line 998
    if-ge v3, v8, :cond_9

    #@147
    .line 999
    invoke-virtual {v10}, Ljava/text/ParsePosition;->getIndex()I

    #@14a
    move-result v3

    #@14b
    if-ne v3, v5, :cond_5

    #@14d
    .line 1005
    :cond_9
    move-object/from16 v0, p2

    #@14f
    invoke-virtual {v0, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    #@152
    .line 1017
    if-eqz p3, :cond_a

    #@154
    if-lez v2, :cond_a

    #@156
    move-object/from16 v0, p0

    #@158
    iget-object v3, v0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@15a
    if-nez v3, :cond_a

    #@15c
    .line 1018
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    #@15e
    div-double v24, v8, v24

    #@160
    .line 1022
    :cond_a
    move-wide/from16 v0, v24

    #@162
    double-to-long v8, v0

    #@163
    long-to-double v8, v8

    #@164
    cmpl-double v3, v24, v8

    #@166
    if-nez v3, :cond_b

    #@168
    .line 1023
    move-wide/from16 v0, v24

    #@16a
    double-to-long v8, v0

    #@16b
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@16e
    move-result-object v3

    #@16f
    return-object v3

    #@170
    .line 1025
    :cond_b
    new-instance v3, Ljava/lang/Double;

    #@172
    move-wide/from16 v0, v24

    #@174
    invoke-direct {v3, v0, v1}, Ljava/lang/Double;-><init>(D)V

    #@177
    return-object v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 613
    instance-of v2, p1, Landroid/icu/text/NFRule;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 614
    nop

    #@7
    nop

    #@8
    .line 616
    .local v0, "that2":Landroid/icu/text/NFRule;
    iget-wide v2, p0, Landroid/icu/text/NFRule;->baseValue:J

    #@a
    iget-wide v4, v0, Landroid/icu/text/NFRule;->baseValue:J

    #@c
    cmp-long v2, v2, v4

    #@e
    if-nez v2, :cond_0

    #@10
    .line 617
    iget v2, p0, Landroid/icu/text/NFRule;->radix:I

    #@12
    iget v3, v0, Landroid/icu/text/NFRule;->radix:I

    #@14
    if-ne v2, v3, :cond_0

    #@16
    .line 618
    iget-short v2, p0, Landroid/icu/text/NFRule;->exponent:S

    #@18
    iget-short v3, v0, Landroid/icu/text/NFRule;->exponent:S

    #@1a
    if-ne v2, v3, :cond_0

    #@1c
    .line 619
    iget-object v2, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@1e
    iget-object v3, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v2

    #@24
    .line 616
    if-eqz v2, :cond_0

    #@26
    .line 620
    iget-object v2, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@28
    iget-object v3, v0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@2a
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2d
    move-result v2

    #@2e
    .line 616
    if-eqz v2, :cond_0

    #@30
    .line 621
    iget-object v1, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@32
    iget-object v2, v0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@34
    invoke-static {v1, v2}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@37
    move-result v1

    #@38
    .line 616
    :cond_0
    return v1

    #@39
    .line 623
    .end local v0    # "that2":Landroid/icu/text/NFRule;
    :cond_1
    return v1
.end method

.method public final getBaseValue()J
    .locals 2

    #@0
    .prologue
    .line 717
    iget-wide v0, p0, Landroid/icu/text/NFRule;->baseValue:J

    #@2
    return-wide v0
.end method

.method public final getDecimalPoint()C
    .locals 1

    #@0
    .prologue
    .line 709
    iget-char v0, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    #@2
    return v0
.end method

.method public getDivisor()D
    .locals 4

    #@0
    .prologue
    .line 726
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
    .line 627
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
    .line 628
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
    .line 523
    iput-wide p1, p0, Landroid/icu/text/NFRule;->baseValue:J

    #@2
    .line 524
    const/16 v0, 0xa

    #@4
    iput v0, p0, Landroid/icu/text/NFRule;->radix:I

    #@6
    .line 531
    iget-wide v0, p0, Landroid/icu/text/NFRule;->baseValue:J

    #@8
    const-wide/16 v2, 0x1

    #@a
    cmp-long v0, v0, v2

    #@c
    if-ltz v0, :cond_2

    #@e
    .line 532
    invoke-direct {p0}, Landroid/icu/text/NFRule;->expectedExponent()S

    #@11
    move-result v0

    #@12
    iput-short v0, p0, Landroid/icu/text/NFRule;->exponent:S

    #@14
    .line 538
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 539
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@1a
    iget v1, p0, Landroid/icu/text/NFRule;->radix:I

    #@1c
    iget-short v2, p0, Landroid/icu/text/NFRule;->exponent:S

    #@1e
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/NFSubstitution;->setDivisor(II)V

    #@21
    .line 541
    :cond_0
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@23
    if-eqz v0, :cond_1

    #@25
    .line 542
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@27
    iget v1, p0, Landroid/icu/text/NFRule;->radix:I

    #@29
    iget-short v2, p0, Landroid/icu/text/NFRule;->exponent:S

    #@2b
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/NFSubstitution;->setDivisor(II)V

    #@2e
    .line 521
    :cond_1
    :goto_0
    return-void

    #@2f
    .line 548
    :cond_2
    const/4 v0, 0x0

    #@30
    iput-short v0, p0, Landroid/icu/text/NFRule;->exponent:S

    #@32
    goto :goto_0
.end method

.method public setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V
    .locals 1
    .param p1, "newSymbols"    # Landroid/icu/text/DecimalFormatSymbols;

    #@0
    .prologue
    .line 1287
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1288
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@6
    invoke-virtual {v0, p1}, Landroid/icu/text/NFSubstitution;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    #@9
    .line 1290
    :cond_0
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 1291
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@f
    invoke-virtual {v0, p1}, Landroid/icu/text/NFSubstitution;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    #@12
    .line 1286
    :cond_1
    return-void
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
    .line 850
    iget-object v1, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-object v1, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@9
    invoke-virtual {v1}, Landroid/icu/text/NFSubstitution;->isModulusSubstitution()Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_1

    #@f
    :cond_0
    iget-object v1, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@11
    if-eqz v1, :cond_2

    #@13
    iget-object v1, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@15
    invoke-virtual {v1}, Landroid/icu/text/NFSubstitution;->isModulusSubstitution()Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_2

    #@1b
    .line 851
    :cond_1
    iget v1, p0, Landroid/icu/text/NFRule;->radix:I

    #@1d
    int-to-double v2, v1

    #@1e
    iget-short v1, p0, Landroid/icu/text/NFRule;->exponent:S

    #@20
    int-to-double v4, v1

    #@21
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    #@24
    move-result-wide v2

    #@25
    rem-double v2, p1, v2

    #@27
    cmpl-double v1, v2, v8

    #@29
    if-nez v1, :cond_2

    #@2b
    iget-wide v2, p0, Landroid/icu/text/NFRule;->baseValue:J

    #@2d
    long-to-double v2, v2

    #@2e
    iget v1, p0, Landroid/icu/text/NFRule;->radix:I

    #@30
    int-to-double v4, v1

    #@31
    iget-short v1, p0, Landroid/icu/text/NFRule;->exponent:S

    #@33
    int-to-double v6, v1

    #@34
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@37
    move-result-wide v4

    #@38
    rem-double/2addr v2, v4

    #@39
    cmpl-double v1, v2, v8

    #@3b
    if-eqz v1, :cond_2

    #@3d
    const/4 v0, 0x1

    #@3e
    .line 850
    :cond_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    #@0
    .prologue
    const/16 v10, 0x78

    #@2
    const/16 v4, 0x2e

    #@4
    .line 638
    new-instance v2, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    .line 641
    .local v2, "result":Ljava/lang/StringBuilder;
    iget-wide v6, p0, Landroid/icu/text/NFRule;->baseValue:J

    #@b
    const-wide/16 v8, -0x1

    #@d
    cmp-long v5, v6, v8

    #@f
    if-nez v5, :cond_4

    #@11
    .line 642
    const-string/jumbo v4, "-x: "

    #@14
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    .line 679
    :goto_0
    iget-object v4, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@19
    const-string/jumbo v5, " "

    #@1c
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@1f
    move-result v4

    #@20
    if-eqz v4, :cond_1

    #@22
    iget-object v4, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@24
    if-eqz v4, :cond_0

    #@26
    iget-object v4, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@28
    invoke-virtual {v4}, Landroid/icu/text/NFSubstitution;->getPos()I

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_1

    #@2e
    .line 680
    :cond_0
    const/16 v4, 0x27

    #@30
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@33
    .line 685
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@35
    iget-object v4, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    #@37
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@3a
    .line 686
    .local v3, "ruleTextCopy":Ljava/lang/StringBuilder;
    iget-object v4, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@3c
    if-eqz v4, :cond_2

    #@3e
    .line 687
    iget-object v4, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@40
    invoke-virtual {v4}, Landroid/icu/text/NFSubstitution;->getPos()I

    #@43
    move-result v4

    #@44
    iget-object v5, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    #@46
    invoke-virtual {v5}, Landroid/icu/text/NFSubstitution;->toString()Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    .line 689
    :cond_2
    iget-object v4, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@4f
    if-eqz v4, :cond_3

    #@51
    .line 690
    iget-object v4, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@53
    invoke-virtual {v4}, Landroid/icu/text/NFSubstitution;->getPos()I

    #@56
    move-result v4

    #@57
    iget-object v5, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    #@59
    invoke-virtual {v5}, Landroid/icu/text/NFSubstitution;->toString()Ljava/lang/String;

    #@5c
    move-result-object v5

    #@5d
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    .line 692
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v4

    #@64
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    .line 696
    const/16 v4, 0x3b

    #@69
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6c
    .line 697
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v4

    #@70
    return-object v4

    #@71
    .line 644
    .end local v3    # "ruleTextCopy":Ljava/lang/StringBuilder;
    :cond_4
    iget-wide v6, p0, Landroid/icu/text/NFRule;->baseValue:J

    #@73
    const-wide/16 v8, -0x2

    #@75
    cmp-long v5, v6, v8

    #@77
    if-nez v5, :cond_6

    #@79
    .line 645
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v5

    #@7d
    iget-char v6, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    #@7f
    if-nez v6, :cond_5

    #@81
    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@84
    move-result-object v4

    #@85
    const-string/jumbo v5, "x: "

    #@88
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    goto :goto_0

    #@8c
    :cond_5
    iget-char v4, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    #@8e
    goto :goto_1

    #@8f
    .line 647
    :cond_6
    iget-wide v6, p0, Landroid/icu/text/NFRule;->baseValue:J

    #@91
    const-wide/16 v8, -0x3

    #@93
    cmp-long v5, v6, v8

    #@95
    if-nez v5, :cond_8

    #@97
    .line 648
    const/16 v5, 0x30

    #@99
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9c
    move-result-object v5

    #@9d
    iget-char v6, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    #@9f
    if-nez v6, :cond_7

    #@a1
    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v4

    #@a5
    const-string/jumbo v5, "x: "

    #@a8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    goto/16 :goto_0

    #@ad
    :cond_7
    iget-char v4, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    #@af
    goto :goto_2

    #@b0
    .line 650
    :cond_8
    iget-wide v6, p0, Landroid/icu/text/NFRule;->baseValue:J

    #@b2
    const-wide/16 v8, -0x4

    #@b4
    cmp-long v5, v6, v8

    #@b6
    if-nez v5, :cond_a

    #@b8
    .line 651
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v5

    #@bc
    iget-char v6, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    #@be
    if-nez v6, :cond_9

    #@c0
    :goto_3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v4

    #@c4
    const-string/jumbo v5, "0: "

    #@c7
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    goto/16 :goto_0

    #@cc
    :cond_9
    iget-char v4, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    #@ce
    goto :goto_3

    #@cf
    .line 653
    :cond_a
    iget-wide v4, p0, Landroid/icu/text/NFRule;->baseValue:J

    #@d1
    const-wide/16 v6, -0x5

    #@d3
    cmp-long v4, v4, v6

    #@d5
    if-nez v4, :cond_b

    #@d7
    .line 654
    const-string/jumbo v4, "Inf: "

    #@da
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    goto/16 :goto_0

    #@df
    .line 656
    :cond_b
    iget-wide v4, p0, Landroid/icu/text/NFRule;->baseValue:J

    #@e1
    const-wide/16 v6, -0x6

    #@e3
    cmp-long v4, v4, v6

    #@e5
    if-nez v4, :cond_c

    #@e7
    .line 657
    const-string/jumbo v4, "NaN: "

    #@ea
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ed
    goto/16 :goto_0

    #@ef
    .line 666
    :cond_c
    iget-wide v4, p0, Landroid/icu/text/NFRule;->baseValue:J

    #@f1
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@f4
    move-result-object v4

    #@f5
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f8
    .line 667
    iget v4, p0, Landroid/icu/text/NFRule;->radix:I

    #@fa
    const/16 v5, 0xa

    #@fc
    if-eq v4, v5, :cond_d

    #@fe
    .line 668
    const/16 v4, 0x2f

    #@100
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@103
    move-result-object v4

    #@104
    iget v5, p0, Landroid/icu/text/NFRule;->radix:I

    #@106
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@109
    .line 670
    :cond_d
    invoke-direct {p0}, Landroid/icu/text/NFRule;->expectedExponent()S

    #@10c
    move-result v4

    #@10d
    iget-short v5, p0, Landroid/icu/text/NFRule;->exponent:S

    #@10f
    sub-int v1, v4, v5

    #@111
    .line 671
    .local v1, "numCarets":I
    const/4 v0, 0x0

    #@112
    .local v0, "i":I
    :goto_4
    if-ge v0, v1, :cond_e

    #@114
    .line 672
    const/16 v4, 0x3e

    #@116
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@119
    .line 671
    add-int/lit8 v0, v0, 0x1

    #@11b
    goto :goto_4

    #@11c
    .line 673
    :cond_e
    const-string/jumbo v4, ": "

    #@11f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    goto/16 :goto_0
.end method
