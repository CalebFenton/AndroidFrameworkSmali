.class final Landroid/icu/text/NFRule;
.super Ljava/lang/Object;
.source "NFRule.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final blacklist DEFAULT_RULE:I = -0x4

.field static final greylist-max-o IMPROPER_FRACTION_RULE:I = -0x2

.field static final greylist-max-o INFINITY_RULE:I = -0x5

.field static final greylist-max-o NAN_RULE:I = -0x6

.field static final greylist-max-o NEGATIVE_NUMBER_RULE:I = -0x1

.field static final greylist-max-o PROPER_FRACTION_RULE:I = -0x3

.field private static final greylist-max-o RULE_PREFIXES:[Ljava/lang/String;

.field static final greylist-max-o ZERO:Ljava/lang/Long;


# instance fields
.field private greylist-max-o baseValue:J

.field private greylist-max-o decimalPoint:C

.field private greylist-max-o exponent:S

.field final greylist-max-o formatter:Landroid/icu/text/RuleBasedNumberFormat;

.field private greylist-max-o radix:I

.field private greylist-max-o rulePatternFormat:Landroid/icu/text/PluralFormat;

.field private greylist-max-o ruleText:Ljava/lang/String;

.field private greylist-max-o sub1:Landroid/icu/text/NFSubstitution;

.field private greylist-max-o sub2:Landroid/icu/text/NFSubstitution;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 12

    .line 24
    nop

    .line 59
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Landroid/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    .line 578
    const-string v10, "=#"

    const-string v11, "=0"

    const-string v1, "<<"

    const-string v2, "<%"

    const-string v3, "<#"

    const-string v4, "<0"

    const-string v5, ">>"

    const-string v6, ">%"

    const-string v7, ">#"

    const-string v8, ">0"

    const-string v9, "=%"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/NFRule;->RULE_PREFIXES:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
    .registers 4
    .param p1, "formatter"    # Landroid/icu/text/RuleBasedNumberFormat;
    .param p2, "ruleText"    # Ljava/lang/String;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/16 v0, 0xa

    iput v0, p0, Landroid/icu/text/NFRule;->radix:I

    .line 80
    const/4 v0, 0x0

    iput-short v0, p0, Landroid/icu/text/NFRule;->exponent:S

    .line 85
    iput-char v0, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    .line 99
    iput-object v0, p0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    .line 105
    iput-object v0, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    .line 111
    iput-object v0, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    .line 254
    iput-object p1, p0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    .line 255
    if-nez p2, :cond_1a

    goto :goto_1e

    :cond_1a
    invoke-direct {p0, p2}, Landroid/icu/text/NFRule;->parseRuleDescriptor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1e
    iput-object v0, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    .line 256
    return-void
.end method

.method private greylist-max-o allIgnorable(Ljava/lang/String;)Z
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .line 1329
    const/4 v0, 0x1

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1b

    .line 1332
    :cond_a
    iget-object v1, p0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v1}, Landroid/icu/text/RuleBasedNumberFormat;->getLenientScanner()Landroid/icu/text/RbnfLenientScanner;

    move-result-object v1

    .line 1333
    .local v1, "scanner":Landroid/icu/text/RbnfLenientScanner;
    if-eqz v1, :cond_19

    invoke-interface {v1, p1}, Landroid/icu/text/RbnfLenientScanner;->allIgnorable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0

    .line 1330
    .end local v1    # "scanner":Landroid/icu/text/RbnfLenientScanner;
    :cond_1b
    :goto_1b
    return v0
.end method

.method private greylist-max-o expectedExponent()S
    .registers 6

    .line 563
    iget v0, p0, Landroid/icu/text/NFRule;->radix:I

    if-eqz v0, :cond_33

    iget-wide v0, p0, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_d

    goto :goto_33

    .line 570
    :cond_d
    iget-wide v0, p0, Landroid/icu/text/NFRule;->baseValue:J

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    iget v2, p0, Landroid/icu/text/NFRule;->radix:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-int v0, v0

    int-to-short v0, v0

    .line 571
    .local v0, "tempResult":S
    iget v1, p0, Landroid/icu/text/NFRule;->radix:I

    int-to-long v1, v1

    add-int/lit8 v3, v0, 0x1

    int-to-short v3, v3

    invoke-static {v1, v2, v3}, Landroid/icu/text/NFRule;->power(JS)J

    move-result-wide v1

    iget-wide v3, p0, Landroid/icu/text/NFRule;->baseValue:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_32

    .line 572
    add-int/lit8 v1, v0, 0x1

    int-to-short v1, v1

    return v1

    .line 574
    :cond_32
    return v0

    .line 564
    .end local v0    # "tempResult":S
    :cond_33
    :goto_33
    const/4 v0, 0x0

    return v0
.end method

.method private greylist-max-o extractSubstitution(Landroid/icu/text/NFRuleSet;Landroid/icu/text/NFRule;)Landroid/icu/text/NFSubstitution;
    .registers 11
    .param p1, "owner"    # Landroid/icu/text/NFRuleSet;
    .param p2, "predecessor"    # Landroid/icu/text/NFRule;

    .line 470
    iget-object v0, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-static {v0}, Landroid/icu/text/NFRule;->indexOfAnyRulePrefix(Ljava/lang/String;)I

    move-result v1

    .line 474
    .local v1, "subStart":I
    const/4 v0, 0x0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    .line 475
    return-object v0

    .line 480
    :cond_b
    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string v4, ">>>"

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 481
    add-int/lit8 v3, v1, 0x2

    move v7, v3

    .local v3, "subEnd":I
    goto :goto_46

    .line 486
    .end local v3    # "subEnd":I
    :cond_19
    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 487
    .local v3, "c":C
    iget-object v4, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 489
    .local v4, "subEnd":I
    const/16 v5, 0x3c

    if-ne v3, v5, :cond_45

    if-eq v4, v2, :cond_45

    iget-object v5, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_45

    iget-object v5, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_45

    .line 494
    add-int/lit8 v4, v4, 0x1

    move v7, v4

    goto :goto_46

    .line 501
    .end local v3    # "c":C
    :cond_45
    move v7, v4

    .end local v4    # "subEnd":I
    .local v7, "subEnd":I
    :goto_46
    if-ne v7, v2, :cond_49

    .line 502
    return-object v0

    .line 508
    :cond_49
    iget-object v5, p0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    iget-object v0, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 v2, v7, 0x1

    .line 509
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 508
    move-object v2, p0

    move-object v4, p1

    move-object v3, p2

    .end local p1    # "owner":Landroid/icu/text/NFRuleSet;
    .end local p2    # "predecessor":Landroid/icu/text/NFRule;
    .local v3, "predecessor":Landroid/icu/text/NFRule;
    .local v4, "owner":Landroid/icu/text/NFRuleSet;
    invoke-static/range {v1 .. v6}, Landroid/icu/text/NFSubstitution;->makeSubstitution(ILandroid/icu/text/NFRule;Landroid/icu/text/NFRule;Landroid/icu/text/NFRuleSet;Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)Landroid/icu/text/NFSubstitution;

    move-result-object p1

    .line 512
    .local p1, "result":Landroid/icu/text/NFSubstitution;
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v2, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, v2, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 v5, v7, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    .line 513
    return-object p1
.end method

.method private greylist-max-o extractSubstitutions(Landroid/icu/text/NFRuleSet;Ljava/lang/String;Landroid/icu/text/NFRule;)V
    .registers 11
    .param p1, "owner"    # Landroid/icu/text/NFRuleSet;
    .param p2, "ruleText"    # Ljava/lang/String;
    .param p3, "predecessor"    # Landroid/icu/text/NFRule;

    .line 418
    iput-object p2, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    .line 419
    invoke-direct {p0, p1, p3}, Landroid/icu/text/NFRule;->extractSubstitution(Landroid/icu/text/NFRuleSet;Landroid/icu/text/NFRule;)Landroid/icu/text/NFSubstitution;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    .line 420
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    if-nez v0, :cond_10

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    goto :goto_16

    .line 425
    :cond_10
    invoke-direct {p0, p1, p3}, Landroid/icu/text/NFRule;->extractSubstitution(Landroid/icu/text/NFRuleSet;Landroid/icu/text/NFRule;)Landroid/icu/text/NFSubstitution;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    .line 427
    :goto_16
    iget-object p2, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    .line 428
    const-string v0, "$("

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 429
    .local v0, "pluralRuleStart":I
    if-ltz v0, :cond_27

    const-string v1, ")$"

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_28

    :cond_27
    const/4 v1, -0x1

    .line 430
    .local v1, "pluralRuleEnd":I
    :goto_28
    if-ltz v1, :cond_96

    .line 431
    const/16 v2, 0x2c

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 432
    .local v2, "endType":I
    if-ltz v2, :cond_77

    .line 435
    iget-object v3, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 437
    .local v3, "type":Ljava/lang/String;
    const-string v4, "cardinal"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 438
    sget-object v4, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    .local v4, "pluralType":Landroid/icu/text/PluralRules$PluralType;
    goto :goto_4f

    .line 440
    .end local v4    # "pluralType":Landroid/icu/text/PluralRules$PluralType;
    :cond_45
    const-string v4, "ordinal"

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 441
    sget-object v4, Landroid/icu/text/PluralRules$PluralType;->ORDINAL:Landroid/icu/text/PluralRules$PluralType;

    .line 446
    .restart local v4    # "pluralType":Landroid/icu/text/PluralRules$PluralType;
    :goto_4f
    iget-object v5, p0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    add-int/lit8 v6, v2, 0x1

    .line 447
    invoke-virtual {p2, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 446
    invoke-virtual {v5, v4, v6}, Landroid/icu/text/RuleBasedNumberFormat;->createPluralFormat(Landroid/icu/text/PluralRules$PluralType;Ljava/lang/String;)Landroid/icu/text/PluralFormat;

    move-result-object v5

    iput-object v5, p0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    goto :goto_96

    .line 444
    .end local v4    # "pluralType":Landroid/icu/text/PluralRules$PluralType;
    :cond_5e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is an unknown type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 433
    .end local v3    # "type":Ljava/lang/String;
    :cond_77
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rule \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" does not have a defined type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 449
    .end local v2    # "endType":I
    :cond_96
    :goto_96
    return-void
.end method

.method private greylist-max-o findText(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/PluralFormat;I)[I
    .registers 16
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "pluralFormatKey"    # Landroid/icu/text/PluralFormat;
    .param p4, "startingAt"    # I

    .line 1283
    iget-object v0, p0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v0}, Landroid/icu/text/RuleBasedNumberFormat;->getLenientScanner()Landroid/icu/text/RbnfLenientScanner;

    move-result-object v0

    .line 1284
    .local v0, "scanner":Landroid/icu/text/RbnfLenientScanner;
    const/4 v1, 0x0

    if-eqz p3, :cond_74

    .line 1285
    new-instance v2, Ljava/text/FieldPosition;

    invoke-direct {v2, v1}, Ljava/text/FieldPosition;-><init>(I)V

    .line 1286
    .local v2, "position":Ljava/text/FieldPosition;
    invoke-virtual {v2, p4}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 1287
    invoke-virtual {p3, p1, v0, v2}, Landroid/icu/text/PluralFormat;->parseType(Ljava/lang/String;Landroid/icu/text/RbnfLenientScanner;Ljava/text/FieldPosition;)Ljava/lang/String;

    .line 1288
    invoke-virtual {v2}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v3

    .line 1289
    .local v3, "start":I
    if-ltz v3, :cond_6e

    .line 1290
    iget-object v4, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string v5, "$("

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1291
    .local v4, "pluralRuleStart":I
    iget-object v5, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string v6, ")$"

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    .line 1292
    .local v5, "pluralRuleSuffix":I
    invoke-virtual {v2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v6

    sub-int/2addr v6, v3

    .line 1293
    .local v6, "matchLen":I
    iget-object v7, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v7, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1294
    .local v7, "prefix":Ljava/lang/String;
    iget-object v8, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1295
    .local v8, "suffix":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    sub-int v9, v3, v9

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v9, v7, v1, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v9

    if-eqz v9, :cond_6e

    add-int v9, v3, v6

    .line 1296
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v9, v8, v1, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v9

    if-eqz v9, :cond_6e

    .line 1298
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, v3, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    filled-new-array {v1, v9}, [I

    move-result-object v1

    return-object v1

    .line 1301
    .end local v4    # "pluralRuleStart":I
    .end local v5    # "pluralRuleSuffix":I
    .end local v6    # "matchLen":I
    .end local v7    # "prefix":Ljava/lang/String;
    .end local v8    # "suffix":Ljava/lang/String;
    :cond_6e
    const/4 v4, -0x1

    filled-new-array {v4, v1}, [I

    move-result-object v1

    return-object v1

    .line 1304
    .end local v2    # "position":Ljava/text/FieldPosition;
    .end local v3    # "start":I
    :cond_74
    if-eqz v0, :cond_8c

    .line 1306
    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    .line 1307
    .local v2, "pos":[I
    aget v1, v2, v1

    if-ltz v1, :cond_87

    .line 1308
    return-object v2

    .line 1311
    :cond_87
    invoke-interface {v0, p1, p2, p4}, Landroid/icu/text/RbnfLenientScanner;->findText(Ljava/lang/String;Ljava/lang/String;I)[I

    move-result-object v1

    return-object v1

    .line 1316
    .end local v2    # "pos":[I
    :cond_8c
    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o indexOfAnyRulePrefix(Ljava/lang/String;)I
    .registers 8
    .param p0, "ruleText"    # Ljava/lang/String;

    .line 592
    const/4 v0, -0x1

    .line 593
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1e

    .line 595
    sget-object v1, Landroid/icu/text/NFRule;->RULE_PREFIXES:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_1e

    aget-object v4, v1, v3

    .line 596
    .local v4, "string":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 597
    .local v5, "pos":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_1b

    if-eq v0, v6, :cond_1a

    if-ge v5, v0, :cond_1b

    .line 598
    :cond_1a
    move v0, v5

    .line 595
    .end local v4    # "string":Ljava/lang/String;
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 602
    .end local v5    # "pos":I
    :cond_1e
    return v0
.end method

.method public static greylist-max-o makeRules(Ljava/lang/String;Landroid/icu/text/NFRuleSet;Landroid/icu/text/NFRule;Landroid/icu/text/RuleBasedNumberFormat;Ljava/util/List;)V
    .registers 26
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
            "Ljava/util/List<",
            "Landroid/icu/text/NFRule;",
            ">;)V"
        }
    .end annotation

    .line 141
    .local p4, "returnList":Ljava/util/List;, "Ljava/util/List<Landroid/icu/text/NFRule;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    new-instance v4, Landroid/icu/text/NFRule;

    move-object/from16 v5, p0

    invoke-direct {v4, v2, v5}, Landroid/icu/text/NFRule;-><init>(Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    .line 142
    .local v4, "rule1":Landroid/icu/text/NFRule;
    iget-object v5, v4, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    .line 146
    .end local p0    # "description":Ljava/lang/String;
    .local v5, "description":Ljava/lang/String;
    const/16 v6, 0x5b

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 147
    .local v6, "brack1":I
    if-gez v6, :cond_1b

    const/4 v7, -0x1

    goto :goto_21

    :cond_1b
    const/16 v7, 0x5d

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 153
    .local v7, "brack2":I
    :goto_21
    const-wide/16 v8, 0x0

    if-ltz v7, :cond_118

    if-gt v6, v7, :cond_118

    iget-wide v10, v4, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v12, -0x3

    cmp-long v10, v10, v12

    if-eqz v10, :cond_118

    iget-wide v10, v4, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v14, -0x1

    cmp-long v10, v10, v14

    if-eqz v10, :cond_118

    iget-wide v10, v4, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v14, -0x5

    cmp-long v10, v10, v14

    if-eqz v10, :cond_118

    iget-wide v10, v4, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v14, -0x6

    cmp-long v10, v10, v14

    if-nez v10, :cond_4b

    move-wide/from16 v17, v8

    goto/16 :goto_11a

    .line 164
    :cond_4b
    const/4 v10, 0x0

    .line 165
    .local v10, "rule2":Landroid/icu/text/NFRule;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v11, "sbuf":Ljava/lang/StringBuilder;
    iget-wide v14, v4, Landroid/icu/text/NFRule;->baseValue:J

    cmp-long v14, v14, v8

    const-wide/16 v15, -0x4

    move-wide/from16 v17, v8

    if-lez v14, :cond_6e

    const-wide/16 v19, -0x2

    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    iget v14, v4, Landroid/icu/text/NFRule;->radix:I

    int-to-long v12, v14

    iget-short v14, v4, Landroid/icu/text/NFRule;->exponent:S

    .line 171
    invoke-static {v12, v13, v14}, Landroid/icu/text/NFRule;->power(JS)J

    move-result-wide v12

    rem-long/2addr v8, v12

    cmp-long v8, v8, v17

    if-eqz v8, :cond_7c

    goto :goto_70

    .line 170
    :cond_6e
    const-wide/16 v19, -0x2

    .line 171
    :goto_70
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    cmp-long v8, v8, v19

    if-eqz v8, :cond_7c

    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    cmp-long v8, v8, v15

    if-nez v8, :cond_dc

    .line 181
    :cond_7c
    new-instance v8, Landroid/icu/text/NFRule;

    const/4 v9, 0x0

    invoke-direct {v8, v2, v9}, Landroid/icu/text/NFRule;-><init>(Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    move-object v10, v8

    .line 182
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    cmp-long v8, v8, v17

    if-ltz v8, :cond_9b

    .line 183
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    iput-wide v8, v10, Landroid/icu/text/NFRule;->baseValue:J

    .line 184
    invoke-virtual {v0}, Landroid/icu/text/NFRuleSet;->isFractionSet()Z

    move-result v8

    if-nez v8, :cond_b4

    .line 185
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v12, 0x1

    add-long/2addr v8, v12

    iput-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    goto :goto_b4

    .line 188
    :cond_9b
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    cmp-long v8, v8, v19

    if-nez v8, :cond_a6

    .line 192
    const-wide/16 v8, -0x3

    iput-wide v8, v10, Landroid/icu/text/NFRule;->baseValue:J

    goto :goto_b4

    .line 194
    :cond_a6
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    cmp-long v8, v8, v15

    if-nez v8, :cond_b4

    .line 198
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    iput-wide v8, v10, Landroid/icu/text/NFRule;->baseValue:J

    .line 199
    move-wide/from16 v8, v19

    iput-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    .line 204
    :cond_b4
    :goto_b4
    iget v8, v4, Landroid/icu/text/NFRule;->radix:I

    iput v8, v10, Landroid/icu/text/NFRule;->radix:I

    .line 205
    iget-short v8, v4, Landroid/icu/text/NFRule;->exponent:S

    iput-short v8, v10, Landroid/icu/text/NFRule;->exponent:S

    .line 209
    const/4 v8, 0x0

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_d5

    .line 211
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_d5
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v0, v8, v1}, Landroid/icu/text/NFRule;->extractSubstitutions(Landroid/icu/text/NFRuleSet;Ljava/lang/String;Landroid/icu/text/NFRule;)V

    .line 219
    :cond_dc
    const/4 v8, 0x0

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 220
    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v8, v9, :cond_101

    .line 223
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_101
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v0, v8, v1}, Landroid/icu/text/NFRule;->extractSubstitutions(Landroid/icu/text/NFRuleSet;Ljava/lang/String;Landroid/icu/text/NFRule;)V

    .line 232
    if-eqz v10, :cond_11d

    .line 233
    iget-wide v8, v10, Landroid/icu/text/NFRule;->baseValue:J

    cmp-long v8, v8, v17

    if-ltz v8, :cond_114

    .line 234
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11d

    .line 237
    :cond_114
    invoke-virtual {v0, v10}, Landroid/icu/text/NFRuleSet;->setNonNumericalRule(Landroid/icu/text/NFRule;)V

    goto :goto_11d

    .line 153
    .end local v10    # "rule2":Landroid/icu/text/NFRule;
    .end local v11    # "sbuf":Ljava/lang/StringBuilder;
    :cond_118
    move-wide/from16 v17, v8

    .line 159
    :goto_11a
    invoke-direct {v4, v0, v5, v1}, Landroid/icu/text/NFRule;->extractSubstitutions(Landroid/icu/text/NFRuleSet;Ljava/lang/String;Landroid/icu/text/NFRule;)V

    .line 241
    :cond_11d
    :goto_11d
    iget-wide v8, v4, Landroid/icu/text/NFRule;->baseValue:J

    cmp-long v8, v8, v17

    if-ltz v8, :cond_127

    .line 242
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12a

    .line 245
    :cond_127
    invoke-virtual {v0, v4}, Landroid/icu/text/NFRuleSet;->setNonNumericalRule(Landroid/icu/text/NFRule;)V

    .line 247
    :goto_12a
    return-void
.end method

.method private blacklist matchToDelimiter(Ljava/lang/String;IDLjava/lang/String;Landroid/icu/text/PluralFormat;Ljava/text/ParsePosition;Landroid/icu/text/NFSubstitution;DII)Ljava/lang/Number;
    .registers 37
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "startPos"    # I
    .param p3, "baseVal"    # D
    .param p5, "delimiter"    # Ljava/lang/String;
    .param p6, "pluralFormatDelimiter"    # Landroid/icu/text/PluralFormat;
    .param p7, "pp"    # Ljava/text/ParsePosition;
    .param p8, "sub"    # Landroid/icu/text/NFSubstitution;
    .param p9, "upperBound"    # D
    .param p11, "nonNumericalExecutedRuleMask"    # I
    .param p12, "recursionCount"    # I

    .line 1141
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    invoke-direct {v0, v11}, Landroid/icu/text/NFRule;->allIgnorable(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_69

    .line 1142
    new-instance v1, Ljava/text/ParsePosition;

    invoke-direct {v1, v3}, Ljava/text/ParsePosition;-><init>(I)V

    move-object/from16 v16, v1

    .line 1149
    .local v16, "tempPP":Ljava/text/ParsePosition;
    move/from16 v1, p2

    invoke-direct {v0, v2, v11, v12, v1}, Landroid/icu/text/NFRule;->findText(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/PluralFormat;I)[I

    move-result-object v4

    .line 1150
    .local v4, "temp":[I
    aget v5, v4, v3

    .line 1151
    .local v5, "dPos":I
    const/4 v6, 0x1

    aget v7, v4, v6

    .line 1155
    .local v7, "dLen":I
    :goto_23
    if-ltz v5, :cond_63

    .line 1156
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 1157
    .local v15, "subText":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_51

    .line 1158
    iget-object v8, v0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    .line 1159
    invoke-virtual {v8}, Landroid/icu/text/RuleBasedNumberFormat;->lenientParseEnabled()Z

    move-result v21

    .line 1158
    move-wide/from16 v17, p3

    move-object/from16 v14, p8

    move-wide/from16 v19, p9

    move/from16 v22, p11

    move/from16 v23, p12

    invoke-virtual/range {v14 .. v23}, Landroid/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZII)Ljava/lang/Number;

    move-result-object v8

    .line 1167
    move-object/from16 v9, v16

    .end local v16    # "tempPP":Ljava/text/ParsePosition;
    .local v8, "tempResult":Ljava/lang/Number;
    .local v9, "tempPP":Ljava/text/ParsePosition;
    invoke-virtual {v9}, Ljava/text/ParsePosition;->getIndex()I

    move-result v10

    if-ne v10, v5, :cond_53

    .line 1168
    add-int v3, v5, v7

    invoke-virtual {v13, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1169
    return-object v8

    .line 1157
    .end local v8    # "tempResult":Ljava/lang/Number;
    .end local v9    # "tempPP":Ljava/text/ParsePosition;
    .restart local v16    # "tempPP":Ljava/text/ParsePosition;
    :cond_51
    move-object/from16 v9, v16

    .line 1184
    .end local v16    # "tempPP":Ljava/text/ParsePosition;
    .restart local v9    # "tempPP":Ljava/text/ParsePosition;
    :cond_53
    invoke-virtual {v9, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1185
    add-int v8, v5, v7

    invoke-direct {v0, v2, v11, v12, v8}, Landroid/icu/text/NFRule;->findText(Ljava/lang/String;Ljava/lang/String;Landroid/icu/text/PluralFormat;I)[I

    move-result-object v4

    .line 1186
    aget v5, v4, v3

    .line 1187
    aget v7, v4, v6

    .line 1188
    .end local v15    # "subText":Ljava/lang/String;
    move-object/from16 v16, v9

    goto :goto_23

    .line 1191
    .end local v9    # "tempPP":Ljava/text/ParsePosition;
    .restart local v16    # "tempPP":Ljava/text/ParsePosition;
    :cond_63
    invoke-virtual {v13, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1192
    sget-object v3, Landroid/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    return-object v3

    .line 1199
    .end local v4    # "temp":[I
    .end local v5    # "dPos":I
    .end local v7    # "dLen":I
    .end local v16    # "tempPP":Ljava/text/ParsePosition;
    :cond_69
    move/from16 v1, p2

    if-nez p8, :cond_72

    .line 1200
    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    return-object v3

    .line 1203
    :cond_72
    new-instance v4, Ljava/text/ParsePosition;

    invoke-direct {v4, v3}, Ljava/text/ParsePosition;-><init>(I)V

    move-object v3, v4

    .line 1204
    .local v3, "tempPP":Ljava/text/ParsePosition;
    sget-object v14, Landroid/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    .line 1206
    .local v14, "result":Ljava/lang/Number;
    iget-object v4, v0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    .line 1207
    invoke-virtual {v4}, Landroid/icu/text/RuleBasedNumberFormat;->lenientParseEnabled()Z

    move-result v8

    .line 1206
    move-wide/from16 v4, p3

    move-object/from16 v1, p8

    move-wide/from16 v6, p9

    move/from16 v9, p11

    move/from16 v10, p12

    invoke-virtual/range {v1 .. v10}, Landroid/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZII)Ljava/lang/Number;

    move-result-object v8

    .line 1208
    .restart local v8    # "tempResult":Ljava/lang/Number;
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    if-eqz v1, :cond_9e

    .line 1213
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    invoke-virtual {v13, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1214
    if-eqz v8, :cond_9e

    .line 1215
    move-object v14, v8

    .line 1225
    :cond_9e
    return-object v14
.end method

.method private greylist-max-o parseRuleDescriptor(Ljava/lang/String;)Ljava/lang/String;
    .registers 23
    .param p1, "description"    # Ljava/lang/String;

    .line 276
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 277
    .local v2, "p":I
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_190

    .line 281
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "descriptor":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 283
    :goto_14
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_27

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 284
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 286
    :cond_27
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 291
    .end local p1    # "description":Ljava/lang/String;
    .local v1, "description":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    .line 292
    .local v6, "descriptorLength":I
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 293
    .local v7, "firstChar":C
    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 294
    .local v8, "lastChar":C
    const/16 v9, 0x78

    const/16 v10, 0x30

    if-lt v7, v10, :cond_12a

    const/16 v11, 0x39

    if-gt v7, v11, :cond_12a

    if-eq v8, v9, :cond_12a

    .line 297
    const-wide/16 v12, 0x0

    .line 298
    .local v12, "tempValue":J
    const/4 v9, 0x0

    .line 299
    .local v9, "c":C
    const/4 v2, 0x0

    .line 305
    :goto_49
    const-string v14, " in rule descriptor"

    const-string v15, "Illegal character "

    const/16 v16, 0x1

    const-wide/16 v17, 0xa

    const/16 v4, 0x2f

    const/16 v5, 0x3e

    if-ge v2, v6, :cond_9c

    .line 306
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 307
    if-lt v9, v10, :cond_69

    if-gt v9, v11, :cond_69

    .line 308
    mul-long v17, v17, v12

    add-int/lit8 v4, v9, -0x30

    int-to-long v4, v4

    add-long v17, v17, v4

    move-wide/from16 v12, v17

    .end local v12    # "tempValue":J
    .local v17, "tempValue":J
    goto :goto_98

    .line 310
    .end local v17    # "tempValue":J
    .restart local v12    # "tempValue":J
    :cond_69
    if-eq v9, v4, :cond_9c

    if-ne v9, v5, :cond_6e

    .line 311
    goto :goto_9c

    .line 313
    :cond_6e
    invoke-static {v9}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v4

    if-nez v4, :cond_98

    const/16 v4, 0x2c

    if-eq v9, v4, :cond_98

    const/16 v4, 0x2e

    if-ne v9, v4, :cond_7d

    goto :goto_98

    .line 314
    :cond_7d
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 316
    :cond_98
    :goto_98
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x0

    goto :goto_49

    .line 320
    :cond_9c
    :goto_9c
    invoke-virtual {v0, v12, v13}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    .line 326
    if-ne v9, v4, :cond_109

    .line 327
    const-wide/16 v12, 0x0

    .line 328
    add-int/lit8 v2, v2, 0x1

    .line 329
    :goto_a5
    if-ge v2, v6, :cond_f3

    .line 330
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 331
    if-lt v9, v10, :cond_bb

    if-gt v9, v11, :cond_bb

    .line 332
    mul-long v19, v12, v17

    add-int/lit8 v4, v9, -0x30

    int-to-long v10, v4

    add-long v12, v19, v10

    const/16 v4, 0x2c

    const/16 v10, 0x2e

    goto :goto_ec

    .line 334
    :cond_bb
    if-ne v9, v5, :cond_be

    .line 335
    goto :goto_f3

    .line 337
    :cond_be
    invoke-static {v9}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v4

    if-nez v4, :cond_e8

    const/16 v4, 0x2c

    if-eq v9, v4, :cond_ea

    const/16 v10, 0x2e

    if-ne v9, v10, :cond_cd

    goto :goto_ec

    .line 338
    :cond_cd
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 337
    :cond_e8
    const/16 v4, 0x2c

    :cond_ea
    const/16 v10, 0x2e

    .line 340
    :goto_ec
    add-int/lit8 v2, v2, 0x1

    const/16 v10, 0x30

    const/16 v11, 0x39

    goto :goto_a5

    .line 345
    :cond_f3
    :goto_f3
    long-to-int v4, v12

    iput v4, v0, Landroid/icu/text/NFRule;->radix:I

    .line 346
    iget v4, v0, Landroid/icu/text/NFRule;->radix:I

    if-eqz v4, :cond_101

    .line 349
    invoke-direct {v0}, Landroid/icu/text/NFRule;->expectedExponent()S

    move-result v4

    iput-short v4, v0, Landroid/icu/text/NFRule;->exponent:S

    goto :goto_109

    .line 347
    :cond_101
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Rule can\'t have radix of 0"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 357
    :cond_109
    :goto_109
    if-ne v9, v5, :cond_129

    .line 358
    :goto_10b
    if-ge v2, v6, :cond_129

    .line 359
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 360
    if-ne v9, v5, :cond_121

    iget-short v4, v0, Landroid/icu/text/NFRule;->exponent:S

    if-lez v4, :cond_121

    .line 361
    iget-short v4, v0, Landroid/icu/text/NFRule;->exponent:S

    add-int/lit8 v4, v4, -0x1

    int-to-short v4, v4

    iput-short v4, v0, Landroid/icu/text/NFRule;->exponent:S

    .line 365
    add-int/lit8 v2, v2, 0x1

    goto :goto_10b

    .line 363
    :cond_121
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Illegal character in rule descriptor"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 368
    .end local v9    # "c":C
    .end local v12    # "tempValue":J
    :cond_129
    goto :goto_190

    .line 294
    :cond_12a
    const/16 v16, 0x1

    .line 369
    const-string v4, "-x"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13a

    .line 370
    const-wide/16 v4, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    goto :goto_190

    .line 372
    :cond_13a
    const/4 v4, 0x3

    if-ne v6, v4, :cond_190

    .line 373
    const/16 v4, 0x30

    if-ne v7, v4, :cond_151

    if-ne v8, v9, :cond_151

    .line 374
    const-wide/16 v4, -0x3

    invoke-virtual {v0, v4, v5}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    .line 375
    move/from16 v4, v16

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iput-char v5, v0, Landroid/icu/text/NFRule;->decimalPoint:C

    goto :goto_190

    .line 377
    :cond_151
    if-ne v7, v9, :cond_162

    if-ne v8, v9, :cond_162

    .line 378
    const-wide/16 v4, -0x2

    invoke-virtual {v0, v4, v5}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    .line 379
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iput-char v5, v0, Landroid/icu/text/NFRule;->decimalPoint:C

    goto :goto_190

    .line 381
    :cond_162
    if-ne v7, v9, :cond_175

    const/16 v4, 0x30

    if-ne v8, v4, :cond_175

    .line 382
    const-wide/16 v4, -0x4

    invoke-virtual {v0, v4, v5}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    .line 383
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    iput-char v5, v0, Landroid/icu/text/NFRule;->decimalPoint:C

    goto :goto_190

    .line 385
    :cond_175
    const-string v4, "NaN"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_183

    .line 386
    const-wide/16 v4, -0x6

    invoke-virtual {v0, v4, v5}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    goto :goto_190

    .line 388
    :cond_183
    const-string v4, "Inf"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_190

    .line 389
    const-wide/16 v4, -0x5

    invoke-virtual {v0, v4, v5}, Landroid/icu/text/NFRule;->setBaseValue(J)V

    .line 398
    .end local v3    # "descriptor":Ljava/lang/String;
    .end local v6    # "descriptorLength":I
    .end local v7    # "firstChar":C
    .end local v8    # "lastChar":C
    :cond_190
    :goto_190
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1a4

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x27

    if-ne v3, v4, :cond_1a4

    .line 399
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 404
    :cond_1a4
    return-object v1
.end method

.method static greylist-max-o power(JS)J
    .registers 7
    .param p0, "base"    # J
    .param p2, "exponent"    # S

    .line 845
    if-ltz p2, :cond_20

    .line 848
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_18

    .line 851
    const-wide/16 v0, 0x1

    .line 852
    .local v0, "result":J
    :goto_a
    if-lez p2, :cond_17

    .line 853
    and-int/lit8 v2, p2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 854
    mul-long/2addr v0, p0

    .line 856
    :cond_12
    mul-long/2addr p0, p0

    .line 857
    shr-int/lit8 v2, p2, 0x1

    int-to-short p2, v2

    goto :goto_a

    .line 859
    :cond_17
    return-wide v0

    .line 849
    .end local v0    # "result":J
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Base can not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 846
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exponent can not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o prefixLength(Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 1246
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1247
    return v1

    .line 1250
    :cond_8
    iget-object v0, p0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v0}, Landroid/icu/text/RuleBasedNumberFormat;->getLenientScanner()Landroid/icu/text/RbnfLenientScanner;

    move-result-object v0

    .line 1251
    .local v0, "scanner":Landroid/icu/text/RbnfLenientScanner;
    if-eqz v0, :cond_20

    .line 1253
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1254
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    return v1

    .line 1256
    :cond_1b
    invoke-interface {v0, p1, p2}, Landroid/icu/text/RbnfLenientScanner;->prefixLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 1261
    :cond_20
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1262
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    return v1

    .line 1264
    :cond_2b
    return v1
.end method

.method private greylist-max-o stripPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .registers 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "pp"    # Ljava/text/ParsePosition;

    .line 1087
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    .line 1088
    return-object p1

    .line 1094
    :cond_7
    invoke-direct {p0, p1, p2}, Landroid/icu/text/NFRule;->prefixLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1095
    .local v0, "pfl":I
    if-eqz v0, :cond_1a

    .line 1098
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1099
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1103
    :cond_1a
    return-object p1
.end method


# virtual methods
.method public greylist-max-o doFormat(DLjava/lang/StringBuilder;II)V
    .registers 18
    .param p1, "number"    # D
    .param p3, "toInsertInto"    # Ljava/lang/StringBuilder;
    .param p4, "pos"    # I
    .param p5, "recursionCount"    # I

    .line 802
    move-object v3, p3

    move/from16 v6, p4

    iget-object v0, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 803
    .local v0, "pluralRuleStart":I
    const/4 v1, 0x0

    .line 804
    .local v1, "lengthOffset":I
    iget-object v2, p0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    const/4 v7, 0x0

    if-nez v2, :cond_18

    .line 805
    iget-object v2, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {p3, v6, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move v8, v0

    move v9, v1

    goto/16 :goto_8f

    .line 808
    :cond_18
    iget-object v2, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string v4, "$("

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 809
    iget-object v2, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string v4, ")$"

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 810
    .local v2, "pluralRuleEnd":I
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 811
    .local v4, "initialLength":I
    iget-object v5, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_41

    .line 812
    iget-object v5, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 v8, v2, 0x2

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    :cond_41
    move-wide v8, p1

    .line 815
    .local v8, "pluralVal":D
    const-wide/16 v10, 0x0

    cmpg-double v5, v10, v8

    if-gtz v5, :cond_5f

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v8, v10

    if-gez v5, :cond_5f

    .line 818
    iget v5, p0, Landroid/icu/text/NFRule;->radix:I

    int-to-long v10, v5

    iget-short v5, p0, Landroid/icu/text/NFRule;->exponent:S

    invoke-static {v10, v11, v5}, Landroid/icu/text/NFRule;->power(JS)J

    move-result-wide v10

    long-to-double v10, v10

    mul-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-double v8, v10

    goto :goto_6a

    .line 821
    :cond_5f
    iget v5, p0, Landroid/icu/text/NFRule;->radix:I

    int-to-long v10, v5

    iget-short v5, p0, Landroid/icu/text/NFRule;->exponent:S

    invoke-static {v10, v11, v5}, Landroid/icu/text/NFRule;->power(JS)J

    move-result-wide v10

    long-to-double v10, v10

    div-double/2addr v8, v10

    .line 823
    :goto_6a
    iget-object v5, p0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    double-to-long v10, v8

    long-to-double v10, v10

    invoke-virtual {v5, v10, v11}, Landroid/icu/text/PluralFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    if-lez v0, :cond_80

    .line 825
    iget-object v5, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v5, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    :cond_80
    iget-object v5, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    sub-int/2addr v10, v4

    sub-int v1, v5, v10

    move v8, v0

    move v9, v1

    .line 829
    .end local v0    # "pluralRuleStart":I
    .end local v1    # "lengthOffset":I
    .end local v2    # "pluralRuleEnd":I
    .end local v4    # "initialLength":I
    .local v8, "pluralRuleStart":I
    .local v9, "lengthOffset":I
    :goto_8f
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    if-eqz v0, :cond_a8

    .line 830
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    iget-object v1, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    invoke-virtual {v1}, Landroid/icu/text/NFSubstitution;->getPos()I

    move-result v1

    if-le v1, v8, :cond_9f

    move v1, v9

    goto :goto_a0

    :cond_9f
    move v1, v7

    :goto_a0
    sub-int v4, v6, v1

    move-wide v1, p1

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/NFSubstitution;->doSubstitution(DLjava/lang/StringBuilder;II)V

    .line 832
    :cond_a8
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    if-eqz v0, :cond_c0

    .line 833
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    iget-object v1, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    invoke-virtual {v1}, Landroid/icu/text/NFSubstitution;->getPos()I

    move-result v1

    if-le v1, v8, :cond_b7

    move v7, v9

    :cond_b7
    sub-int v4, v6, v7

    move-wide v1, p1

    move-object v3, p3

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/NFSubstitution;->doSubstitution(DLjava/lang/StringBuilder;II)V

    .line 835
    :cond_c0
    return-void
.end method

.method public greylist-max-o doFormat(JLjava/lang/StringBuilder;II)V
    .registers 17
    .param p1, "number"    # J
    .param p3, "toInsertInto"    # Ljava/lang/StringBuilder;
    .param p4, "pos"    # I
    .param p5, "recursionCount"    # I

    .line 760
    move v6, p4

    iget-object v0, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 761
    .local v0, "pluralRuleStart":I
    const/4 v1, 0x0

    .line 762
    .local v1, "lengthOffset":I
    iget-object v2, p0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    const/4 v7, 0x0

    if-nez v2, :cond_15

    .line 763
    iget-object v2, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {p3, p4, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move v8, v0

    move v9, v1

    goto :goto_6d

    .line 766
    :cond_15
    iget-object v2, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string v4, "$("

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 767
    iget-object v2, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string v4, ")$"

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 768
    .local v2, "pluralRuleEnd":I
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 769
    .local v4, "initialLength":I
    iget-object v5, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_3e

    .line 770
    iget-object v5, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    add-int/lit8 v8, v2, 0x2

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, p4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    :cond_3e
    iget-object v5, p0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    iget v8, p0, Landroid/icu/text/NFRule;->radix:I

    int-to-long v8, v8

    iget-short v10, p0, Landroid/icu/text/NFRule;->exponent:S

    invoke-static {v8, v9, v10}, Landroid/icu/text/NFRule;->power(JS)J

    move-result-wide v8

    div-long v8, p1, v8

    long-to-double v8, v8

    invoke-virtual {v5, v8, v9}, Landroid/icu/text/PluralFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, p4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    if-lez v0, :cond_5e

    .line 774
    iget-object v5, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v5, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, p4, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    :cond_5e
    iget-object v5, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v4

    sub-int v1, v5, v8

    move v8, v0

    move v9, v1

    .line 778
    .end local v0    # "pluralRuleStart":I
    .end local v1    # "lengthOffset":I
    .end local v2    # "pluralRuleEnd":I
    .end local v4    # "initialLength":I
    .local v8, "pluralRuleStart":I
    .local v9, "lengthOffset":I
    :goto_6d
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    if-eqz v0, :cond_87

    .line 779
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    iget-object v1, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    invoke-virtual {v1}, Landroid/icu/text/NFSubstitution;->getPos()I

    move-result v1

    if-le v1, v8, :cond_7d

    move v1, v9

    goto :goto_7e

    :cond_7d
    move v1, v7

    :goto_7e
    sub-int v4, v6, v1

    move-wide v1, p1

    move-object v3, p3

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/NFSubstitution;->doSubstitution(JLjava/lang/StringBuilder;II)V

    .line 781
    :cond_87
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    if-eqz v0, :cond_9f

    .line 782
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    iget-object v1, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    invoke-virtual {v1}, Landroid/icu/text/NFSubstitution;->getPos()I

    move-result v1

    if-le v1, v8, :cond_96

    move v7, v9

    :cond_96
    sub-int v4, v6, v7

    move-wide v1, p1

    move-object v3, p3

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/NFSubstitution;->doSubstitution(JLjava/lang/StringBuilder;II)V

    .line 784
    :cond_9f
    return-void
.end method

.method public blacklist doParse(Ljava/lang/String;Ljava/text/ParsePosition;ZDII)Ljava/lang/Number;
    .registers 34
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "parsePosition"    # Ljava/text/ParsePosition;
    .param p3, "isFractionRule"    # Z
    .param p4, "upperBound"    # D
    .param p6, "nonNumericalExecutedRuleMask"    # I
    .param p7, "recursionCount"    # I

    .line 921
    move-object/from16 v0, p0

    move-object/from16 v13, p2

    new-instance v7, Ljava/text/ParsePosition;

    const/4 v14, 0x0

    invoke-direct {v7, v14}, Ljava/text/ParsePosition;-><init>(I)V

    .line 927
    .local v7, "pp":Ljava/text/ParsePosition;
    iget-object v1, v0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    if-eqz v1, :cond_15

    iget-object v1, v0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    invoke-virtual {v1}, Landroid/icu/text/NFSubstitution;->getPos()I

    move-result v1

    goto :goto_1b

    :cond_15
    iget-object v1, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1b
    move v15, v1

    .line 928
    .local v15, "sub1Pos":I
    iget-object v1, v0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    if-eqz v1, :cond_27

    iget-object v1, v0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    invoke-virtual {v1}, Landroid/icu/text/NFSubstitution;->getPos()I

    move-result v1

    goto :goto_2d

    :cond_27
    iget-object v1, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 929
    .local v1, "sub2Pos":I
    :goto_2d
    iget-object v2, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-virtual {v2, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-direct {v0, v3, v2, v7}, Landroid/icu/text/NFRule;->stripPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v2

    .line 930
    .local v2, "workText":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v16, v4, v5

    .line 932
    .local v16, "prefixLength":I
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    if-nez v4, :cond_4e

    if-eqz v15, :cond_4e

    .line 935
    sget-object v4, Landroid/icu/text/NFRule;->ZERO:Ljava/lang/Long;

    return-object v4

    .line 937
    :cond_4e
    iget-wide v4, v0, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v8, -0x5

    cmp-long v4, v4, v8

    if-nez v4, :cond_64

    .line 939
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {v13, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 940
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    return-object v4

    .line 942
    :cond_64
    iget-wide v4, v0, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v8, -0x6

    cmp-long v4, v4, v8

    if-nez v4, :cond_7a

    .line 944
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {v13, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 945
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    return-object v4

    .line 977
    :cond_7a
    const/4 v4, 0x0

    .line 978
    .local v4, "highWaterMark":I
    const-wide/16 v5, 0x0

    .line 979
    .local v5, "result":D
    const/4 v8, 0x0

    .line 980
    .local v8, "start":I
    const-wide/16 v9, 0x0

    iget-wide v11, v0, Landroid/icu/text/NFRule;->baseValue:J

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    long-to-double v9, v9

    move-wide/from16 v17, v5

    .line 987
    .end local v5    # "result":D
    .local v9, "tempBaseValue":D
    .local v17, "result":D
    :goto_89
    invoke-virtual {v7, v14}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 988
    iget-object v5, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    .line 989
    invoke-virtual {v5, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    move v11, v1

    move-object v1, v2

    move v2, v8

    .end local v8    # "start":I
    .local v1, "workText":Ljava/lang/String;
    .local v2, "start":I
    .local v11, "sub2Pos":I
    iget-object v8, v0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    .line 988
    move/from16 v12, p7

    move/from16 v20, v4

    move-wide v3, v9

    move/from16 v19, v11

    move-wide/from16 v9, p4

    move/from16 v11, p6

    .end local v4    # "highWaterMark":I
    .end local v9    # "tempBaseValue":D
    .end local v11    # "sub2Pos":I
    .local v3, "tempBaseValue":D
    .local v19, "sub2Pos":I
    .local v20, "highWaterMark":I
    invoke-direct/range {v0 .. v12}, Landroid/icu/text/NFRule;->matchToDelimiter(Ljava/lang/String;IDLjava/lang/String;Landroid/icu/text/PluralFormat;Ljava/text/ParsePosition;Landroid/icu/text/NFSubstitution;DII)Ljava/lang/Number;

    move-result-object v5

    .line 990
    move-wide/from16 v22, v3

    move-object/from16 v21, v7

    .end local v3    # "tempBaseValue":D
    .end local v7    # "pp":Ljava/text/ParsePosition;
    .local v21, "pp":Ljava/text/ParsePosition;
    .local v22, "tempBaseValue":D
    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    .line 996
    .local v3, "partialResult":D
    invoke-virtual/range {v21 .. v21}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    if-nez v5, :cond_c4

    iget-object v5, v0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    if-nez v5, :cond_bb

    goto :goto_c4

    :cond_bb
    move-object/from16 v25, v1

    move v8, v2

    move/from16 v14, v19

    move/from16 v4, v20

    goto/16 :goto_127

    .line 997
    :cond_c4
    :goto_c4
    invoke-virtual/range {v21 .. v21}, Ljava/text/ParsePosition;->getIndex()I

    move-result v24

    .line 999
    .end local v2    # "start":I
    .local v24, "start":I
    invoke-virtual/range {v21 .. v21}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1000
    .local v2, "workText2":Ljava/lang/String;
    new-instance v7, Ljava/text/ParsePosition;

    invoke-direct {v7, v14}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1006
    .local v7, "pp2":Ljava/text/ParsePosition;
    iget-object v5, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    .line 1007
    move/from16 v6, v19

    .end local v19    # "sub2Pos":I
    .local v6, "sub2Pos":I
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move v11, v6

    .end local v6    # "sub2Pos":I
    .restart local v11    # "sub2Pos":I
    iget-object v6, v0, Landroid/icu/text/NFRule;->rulePatternFormat:Landroid/icu/text/PluralFormat;

    iget-object v8, v0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    .line 1006
    move-object v9, v1

    move-object v1, v2

    .end local v2    # "workText2":Ljava/lang/String;
    .local v1, "workText2":Ljava/lang/String;
    .local v9, "workText":Ljava/lang/String;
    const/4 v2, 0x0

    move/from16 v12, p7

    move-object/from16 v25, v9

    move v14, v11

    move-wide/from16 v9, p4

    move/from16 v11, p6

    .end local v9    # "workText":Ljava/lang/String;
    .end local v11    # "sub2Pos":I
    .local v14, "sub2Pos":I
    .local v25, "workText":Ljava/lang/String;
    invoke-direct/range {v0 .. v12}, Landroid/icu/text/NFRule;->matchToDelimiter(Ljava/lang/String;IDLjava/lang/String;Landroid/icu/text/PluralFormat;Ljava/text/ParsePosition;Landroid/icu/text/NFSubstitution;DII)Ljava/lang/Number;

    move-result-object v2

    .line 1008
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    .line 1013
    .end local v3    # "partialResult":D
    .local v2, "partialResult":D
    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    if-nez v4, :cond_104

    iget-object v4, v0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    if-nez v4, :cond_101

    goto :goto_104

    :cond_101
    move/from16 v5, v20

    goto :goto_124

    .line 1014
    :cond_104
    :goto_104
    invoke-virtual/range {v21 .. v21}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    add-int v4, v16, v4

    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    add-int/2addr v4, v5

    move/from16 v5, v20

    .end local v20    # "highWaterMark":I
    .local v5, "highWaterMark":I
    if-le v4, v5, :cond_124

    .line 1015
    invoke-virtual/range {v21 .. v21}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    add-int v4, v16, v4

    invoke-virtual {v7}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    add-int/2addr v4, v6

    .line 1016
    .end local v5    # "highWaterMark":I
    .restart local v4    # "highWaterMark":I
    move-wide v5, v2

    move-wide/from16 v17, v5

    move/from16 v8, v24

    .end local v17    # "result":D
    .local v5, "result":D
    goto :goto_127

    .line 1038
    .end local v1    # "workText2":Ljava/lang/String;
    .end local v2    # "partialResult":D
    .end local v4    # "highWaterMark":I
    .end local v7    # "pp2":Ljava/text/ParsePosition;
    .local v5, "highWaterMark":I
    .restart local v17    # "result":D
    :cond_124
    :goto_124
    move v4, v5

    move/from16 v8, v24

    .end local v5    # "highWaterMark":I
    .end local v24    # "start":I
    .restart local v4    # "highWaterMark":I
    .restart local v8    # "start":I
    :goto_127
    if-eq v15, v14, :cond_14c

    invoke-virtual/range {v21 .. v21}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    if-lez v1, :cond_14c

    invoke-virtual/range {v21 .. v21}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 1039
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_14c

    invoke-virtual/range {v21 .. v21}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    if-ne v1, v8, :cond_140

    goto :goto_14c

    :cond_140
    move-object/from16 v3, p1

    move v1, v14

    move-object/from16 v7, v21

    move-wide/from16 v9, v22

    move-object/from16 v2, v25

    const/4 v14, 0x0

    goto/16 :goto_89

    .line 1045
    :cond_14c
    :goto_14c
    invoke-virtual {v13, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1057
    if-eqz p3, :cond_15e

    if-lez v4, :cond_15e

    iget-object v1, v0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    if-nez v1, :cond_15e

    .line 1058
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    div-double v17, v1, v17

    move-wide/from16 v1, v17

    goto :goto_160

    .line 1062
    :cond_15e
    move-wide/from16 v1, v17

    .end local v17    # "result":D
    .local v1, "result":D
    :goto_160
    double-to-long v5, v1

    long-to-double v5, v5

    cmpl-double v3, v1, v5

    if-nez v3, :cond_16c

    .line 1063
    double-to-long v5, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3

    .line 1065
    :cond_16c
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    return-object v3
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "that"    # Ljava/lang/Object;

    .line 616
    instance-of v0, p1, Landroid/icu/text/NFRule;

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    .line 617
    move-object v0, p1

    check-cast v0, Landroid/icu/text/NFRule;

    .line 619
    .local v0, "that2":Landroid/icu/text/NFRule;
    iget-wide v2, p0, Landroid/icu/text/NFRule;->baseValue:J

    iget-wide v4, v0, Landroid/icu/text/NFRule;->baseValue:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3c

    iget v2, p0, Landroid/icu/text/NFRule;->radix:I

    iget v3, v0, Landroid/icu/text/NFRule;->radix:I

    if-ne v2, v3, :cond_3c

    iget-short v2, p0, Landroid/icu/text/NFRule;->exponent:S

    iget-short v3, v0, Landroid/icu/text/NFRule;->exponent:S

    if-ne v2, v3, :cond_3c

    iget-object v2, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    .line 622
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    iget-object v3, v0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    .line 623
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    iget-object v2, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    iget-object v3, v0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    .line 624
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const/4 v1, 0x1

    goto :goto_3d

    :cond_3c
    nop

    .line 619
    :goto_3d
    return v1

    .line 626
    .end local v0    # "that2":Landroid/icu/text/NFRule;
    :cond_3e
    return v1
.end method

.method public final greylist-max-o getBaseValue()J
    .registers 3

    .line 722
    iget-wide v0, p0, Landroid/icu/text/NFRule;->baseValue:J

    return-wide v0
.end method

.method public final greylist-max-o getDecimalPoint()C
    .registers 2

    .line 714
    iget-char v0, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    return v0
.end method

.method public greylist-max-o getDivisor()J
    .registers 4

    .line 731
    iget v0, p0, Landroid/icu/text/NFRule;->radix:I

    int-to-long v0, v0

    iget-short v2, p0, Landroid/icu/text/NFRule;->exponent:S

    invoke-static {v0, v1, v2}, Landroid/icu/text/NFRule;->power(JS)J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist hasModulusSubstitution()Z
    .registers 2

    .line 738
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    instance-of v0, v0, Landroid/icu/text/ModulusSubstitution;

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    instance-of v0, v0, Landroid/icu/text/ModulusSubstitution;

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 631
    nop

    .line 632
    const/16 v0, 0x2a

    return v0
.end method

.method final greylist-max-o setBaseValue(J)V
    .registers 7
    .param p1, "newBaseValue"    # J

    .line 525
    iput-wide p1, p0, Landroid/icu/text/NFRule;->baseValue:J

    .line 526
    const/16 v0, 0xa

    iput v0, p0, Landroid/icu/text/NFRule;->radix:I

    .line 533
    iget-wide v0, p0, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2f

    .line 534
    invoke-direct {p0}, Landroid/icu/text/NFRule;->expectedExponent()S

    move-result v0

    iput-short v0, p0, Landroid/icu/text/NFRule;->exponent:S

    .line 540
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    if-eqz v0, :cond_21

    .line 541
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    iget v1, p0, Landroid/icu/text/NFRule;->radix:I

    iget-short v2, p0, Landroid/icu/text/NFRule;->exponent:S

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/NFSubstitution;->setDivisor(IS)V

    .line 543
    :cond_21
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    if-eqz v0, :cond_32

    .line 544
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    iget v1, p0, Landroid/icu/text/NFRule;->radix:I

    iget-short v2, p0, Landroid/icu/text/NFRule;->exponent:S

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/NFSubstitution;->setDivisor(IS)V

    goto :goto_32

    .line 550
    :cond_2f
    const/4 v0, 0x0

    iput-short v0, p0, Landroid/icu/text/NFRule;->exponent:S

    .line 552
    :cond_32
    :goto_32
    return-void
.end method

.method public greylist-max-o setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V
    .registers 3
    .param p1, "newSymbols"    # Landroid/icu/text/DecimalFormatSymbols;

    .line 1337
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    if-eqz v0, :cond_9

    .line 1338
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    invoke-virtual {v0, p1}, Landroid/icu/text/NFSubstitution;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    .line 1340
    :cond_9
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    if-eqz v0, :cond_12

    .line 1341
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    invoke-virtual {v0, p1}, Landroid/icu/text/NFSubstitution;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    .line 1343
    :cond_12
    return-void
.end method

.method public greylist-max-o shouldRollBack(J)Z
    .registers 11
    .param p1, "number"    # J

    .line 887
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    invoke-virtual {v0}, Landroid/icu/text/NFSubstitution;->isModulusSubstitution()Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_d
    iget-object v0, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    if-eqz v0, :cond_34

    iget-object v0, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    invoke-virtual {v0}, Landroid/icu/text/NFSubstitution;->isModulusSubstitution()Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_34

    .line 890
    :cond_1a
    iget v0, p0, Landroid/icu/text/NFRule;->radix:I

    int-to-long v2, v0

    iget-short v0, p0, Landroid/icu/text/NFRule;->exponent:S

    invoke-static {v2, v3, v0}, Landroid/icu/text/NFRule;->power(JS)J

    move-result-wide v2

    .line 891
    .local v2, "divisor":J
    rem-long v4, p1, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_33

    iget-wide v4, p0, Landroid/icu/text/NFRule;->baseValue:J

    rem-long/2addr v4, v2

    cmp-long v0, v4, v6

    if-eqz v0, :cond_33

    const/4 v1, 0x1

    :cond_33
    return v1

    .line 888
    .end local v2    # "divisor":J
    :cond_34
    :goto_34
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 10

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 646
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-wide v1, p0, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_14

    .line 647
    const-string v1, "-x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_bd

    .line 649
    :cond_14
    iget-wide v1, p0, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v3, -0x2

    cmp-long v1, v1, v3

    const-string v2, "x: "

    const/16 v3, 0x78

    const/16 v4, 0x2e

    if-nez v1, :cond_36

    .line 650
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v3, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    if-nez v3, :cond_2b

    goto :goto_2d

    :cond_2b
    iget-char v4, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    :goto_2d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_bd

    .line 652
    :cond_36
    iget-wide v5, p0, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v7, -0x3

    cmp-long v1, v5, v7

    if-nez v1, :cond_53

    .line 653
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v3, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    if-nez v3, :cond_49

    goto :goto_4b

    :cond_49
    iget-char v4, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    :goto_4b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_bd

    .line 655
    :cond_53
    iget-wide v1, p0, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v5, -0x4

    cmp-long v1, v1, v5

    if-nez v1, :cond_70

    .line 656
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    if-nez v2, :cond_64

    goto :goto_66

    :cond_64
    iget-char v4, p0, Landroid/icu/text/NFRule;->decimalPoint:C

    :goto_66
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_bd

    .line 658
    :cond_70
    iget-wide v1, p0, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v3, -0x5

    cmp-long v1, v1, v3

    if-nez v1, :cond_7e

    .line 659
    const-string v1, "Inf: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_bd

    .line 661
    :cond_7e
    iget-wide v1, p0, Landroid/icu/text/NFRule;->baseValue:J

    const-wide/16 v3, -0x6

    cmp-long v1, v1, v3

    if-nez v1, :cond_8c

    .line 662
    const-string v1, "NaN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_bd

    .line 671
    :cond_8c
    iget-wide v1, p0, Landroid/icu/text/NFRule;->baseValue:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    iget v1, p0, Landroid/icu/text/NFRule;->radix:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_a6

    .line 673
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/icu/text/NFRule;->radix:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 675
    :cond_a6
    invoke-direct {p0}, Landroid/icu/text/NFRule;->expectedExponent()S

    move-result v1

    iget-short v2, p0, Landroid/icu/text/NFRule;->exponent:S

    sub-int/2addr v1, v2

    .line 676
    .local v1, "numCarets":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_ae
    if-ge v2, v1, :cond_b8

    .line 677
    const/16 v3, 0x3e

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 676
    add-int/lit8 v2, v2, 0x1

    goto :goto_ae

    .line 678
    .end local v2    # "i":I
    :cond_b8
    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    .end local v1    # "numCarets":I
    :goto_bd
    iget-object v1, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d8

    iget-object v1, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    if-eqz v1, :cond_d3

    iget-object v1, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    invoke-virtual {v1}, Landroid/icu/text/NFSubstitution;->getPos()I

    move-result v1

    if-eqz v1, :cond_d8

    .line 685
    :cond_d3
    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 690
    :cond_d8
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/icu/text/NFRule;->ruleText:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 691
    .local v1, "ruleTextCopy":Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    if-eqz v2, :cond_f2

    .line 692
    iget-object v2, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    invoke-virtual {v2}, Landroid/icu/text/NFSubstitution;->getPos()I

    move-result v2

    iget-object v3, p0, Landroid/icu/text/NFRule;->sub2:Landroid/icu/text/NFSubstitution;

    invoke-virtual {v3}, Landroid/icu/text/NFSubstitution;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    :cond_f2
    iget-object v2, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    if-eqz v2, :cond_105

    .line 695
    iget-object v2, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    invoke-virtual {v2}, Landroid/icu/text/NFSubstitution;->getPos()I

    move-result v2

    iget-object v3, p0, Landroid/icu/text/NFRule;->sub1:Landroid/icu/text/NFSubstitution;

    invoke-virtual {v3}, Landroid/icu/text/NFSubstitution;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    :cond_105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 702
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
