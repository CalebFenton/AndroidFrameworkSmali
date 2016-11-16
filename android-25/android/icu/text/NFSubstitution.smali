.class abstract Landroid/icu/text/NFSubstitution;
.super Ljava/lang/Object;
.source "NFSubstitution.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final numberFormat:Landroid/icu/text/DecimalFormat;

.field final pos:I

.field final ruleSet:Landroid/icu/text/NFRuleSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/text/NFSubstitution;

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
    sput-boolean v0, Landroid/icu/text/NFSubstitution;->-assertionsDisabled:Z

    #@b
    .line 22
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V
    .locals 5
    .param p1, "pos"    # I
    .param p2, "ruleSet"    # Landroid/icu/text/NFRuleSet;
    .param p3, "description"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 162
    iput p1, p0, Landroid/icu/text/NFSubstitution;->pos:I

    #@7
    .line 163
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@a
    move-result v0

    #@b
    .line 169
    .local v0, "descriptionLen":I
    const/4 v1, 0x2

    #@c
    if-lt v0, v1, :cond_1

    #@e
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    #@11
    move-result v1

    #@12
    add-int/lit8 v2, v0, -0x1

    #@14
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    #@17
    move-result v2

    #@18
    if-ne v1, v2, :cond_1

    #@1a
    .line 170
    add-int/lit8 v1, v0, -0x1

    #@1c
    const/4 v2, 0x1

    #@1d
    invoke-virtual {p3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@20
    move-result-object p3

    #@21
    .line 179
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@24
    move-result v1

    #@25
    if-nez v1, :cond_2

    #@27
    .line 180
    iput-object p2, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@29
    .line 181
    iput-object v4, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    #@2b
    .line 160
    :goto_0
    return-void

    #@2c
    .line 172
    :cond_1
    if-eqz v0, :cond_0

    #@2e
    .line 173
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@30
    const-string/jumbo v2, "Illegal substitution syntax"

    #@33
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@36
    throw v1

    #@37
    .line 183
    :cond_2
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    #@3a
    move-result v1

    #@3b
    const/16 v2, 0x25

    #@3d
    if-ne v1, v2, :cond_3

    #@3f
    .line 187
    iget-object v1, p2, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    #@41
    invoke-virtual {v1, p3}, Landroid/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Landroid/icu/text/NFRuleSet;

    #@44
    move-result-object v1

    #@45
    iput-object v1, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@47
    .line 188
    iput-object v4, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    #@49
    goto :goto_0

    #@4a
    .line 190
    :cond_3
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    #@4d
    move-result v1

    #@4e
    const/16 v2, 0x23

    #@50
    if-eq v1, v2, :cond_4

    #@52
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    #@55
    move-result v1

    #@56
    const/16 v2, 0x30

    #@58
    if-ne v1, v2, :cond_5

    #@5a
    .line 195
    :cond_4
    iput-object v4, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@5c
    .line 196
    iget-object v1, p2, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    #@5e
    invoke-virtual {v1}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormat()Landroid/icu/text/DecimalFormat;

    #@61
    move-result-object v1

    #@62
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormat;->clone()Ljava/lang/Object;

    #@65
    move-result-object v1

    #@66
    check-cast v1, Landroid/icu/text/DecimalFormat;

    #@68
    iput-object v1, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    #@6a
    .line 197
    iget-object v1, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    #@6c
    invoke-virtual {v1, p3}, Landroid/icu/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    #@6f
    goto :goto_0

    #@70
    .line 199
    :cond_5
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    #@73
    move-result v1

    #@74
    const/16 v2, 0x3e

    #@76
    if-ne v1, v2, :cond_6

    #@78
    .line 205
    iput-object p2, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@7a
    .line 206
    iput-object v4, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    #@7c
    goto :goto_0

    #@7d
    .line 210
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7f
    const-string/jumbo v2, "Illegal substitution syntax"

    #@82
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@85
    throw v1
.end method

.method public static makeSubstitution(ILandroid/icu/text/NFRule;Landroid/icu/text/NFRule;Landroid/icu/text/NFRuleSet;Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)Landroid/icu/text/NFSubstitution;
    .locals 10
    .param p0, "pos"    # I
    .param p1, "rule"    # Landroid/icu/text/NFRule;
    .param p2, "rulePredecessor"    # Landroid/icu/text/NFRule;
    .param p3, "ruleSet"    # Landroid/icu/text/NFRuleSet;
    .param p4, "formatter"    # Landroid/icu/text/RuleBasedNumberFormat;
    .param p5, "description"    # Ljava/lang/String;

    #@0
    .prologue
    const-wide/16 v8, -0x1

    #@2
    const-wide/16 v6, -0x2

    #@4
    const-wide/16 v4, -0x3

    #@6
    const-wide/16 v2, -0x4

    #@8
    const/4 v1, 0x0

    #@9
    .line 73
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 74
    const/4 v0, 0x0

    #@10
    return-object v0

    #@11
    .line 77
    :cond_0
    invoke-virtual {p5, v1}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v0

    #@15
    packed-switch v0, :pswitch_data_0

    #@18
    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1a
    const-string/jumbo v1, "Illegal substitution character"

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 79
    :pswitch_0
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@24
    move-result-wide v0

    #@25
    cmp-long v0, v0, v8

    #@27
    if-nez v0, :cond_1

    #@29
    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2b
    const-string/jumbo v1, "<< not allowed in negative-number rule"

    #@2e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v0

    #@32
    .line 88
    :cond_1
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@35
    move-result-wide v0

    #@36
    cmp-long v0, v0, v6

    #@38
    if-eqz v0, :cond_2

    #@3a
    .line 89
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@3d
    move-result-wide v0

    #@3e
    cmp-long v0, v0, v4

    #@40
    if-nez v0, :cond_3

    #@42
    .line 93
    :cond_2
    new-instance v0, Landroid/icu/text/IntegralPartSubstitution;

    #@44
    invoke-direct {v0, p0, p3, p5}, Landroid/icu/text/IntegralPartSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    #@47
    return-object v0

    #@48
    .line 90
    :cond_3
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@4b
    move-result-wide v0

    #@4c
    cmp-long v0, v0, v2

    #@4e
    if-eqz v0, :cond_2

    #@50
    .line 95
    invoke-virtual {p3}, Landroid/icu/text/NFRuleSet;->isFractionSet()Z

    #@53
    move-result v0

    #@54
    if-eqz v0, :cond_4

    #@56
    .line 98
    new-instance v0, Landroid/icu/text/NumeratorSubstitution;

    #@58
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@5b
    move-result-wide v2

    #@5c
    long-to-double v2, v2

    #@5d
    .line 99
    invoke-virtual {p4}, Landroid/icu/text/RuleBasedNumberFormat;->getDefaultRuleSet()Landroid/icu/text/NFRuleSet;

    #@60
    move-result-object v4

    #@61
    move v1, p0

    #@62
    move-object v5, p5

    #@63
    .line 98
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/NumeratorSubstitution;-><init>(IDLandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    #@66
    return-object v0

    #@67
    .line 103
    :cond_4
    new-instance v0, Landroid/icu/text/MultiplierSubstitution;

    #@69
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getDivisor()D

    #@6c
    move-result-wide v2

    #@6d
    move v1, p0

    #@6e
    move-object v4, p3

    #@6f
    move-object v5, p5

    #@70
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MultiplierSubstitution;-><init>(IDLandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    #@73
    return-object v0

    #@74
    .line 108
    :pswitch_1
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@77
    move-result-wide v0

    #@78
    cmp-long v0, v0, v8

    #@7a
    if-nez v0, :cond_5

    #@7c
    .line 111
    new-instance v0, Landroid/icu/text/AbsoluteValueSubstitution;

    #@7e
    invoke-direct {v0, p0, p3, p5}, Landroid/icu/text/AbsoluteValueSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    #@81
    return-object v0

    #@82
    .line 113
    :cond_5
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@85
    move-result-wide v0

    #@86
    cmp-long v0, v0, v6

    #@88
    if-eqz v0, :cond_6

    #@8a
    .line 114
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@8d
    move-result-wide v0

    #@8e
    cmp-long v0, v0, v4

    #@90
    if-nez v0, :cond_7

    #@92
    .line 119
    :cond_6
    new-instance v0, Landroid/icu/text/FractionalPartSubstitution;

    #@94
    invoke-direct {v0, p0, p3, p5}, Landroid/icu/text/FractionalPartSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    #@97
    return-object v0

    #@98
    .line 115
    :cond_7
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@9b
    move-result-wide v0

    #@9c
    cmp-long v0, v0, v2

    #@9e
    if-eqz v0, :cond_6

    #@a0
    .line 121
    invoke-virtual {p3}, Landroid/icu/text/NFRuleSet;->isFractionSet()Z

    #@a3
    move-result v0

    #@a4
    if-eqz v0, :cond_8

    #@a6
    .line 128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a8
    const-string/jumbo v1, ">> not allowed in fraction rule set"

    #@ab
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@ae
    throw v0

    #@af
    .line 133
    :cond_8
    new-instance v0, Landroid/icu/text/ModulusSubstitution;

    #@b1
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getDivisor()D

    #@b4
    move-result-wide v2

    #@b5
    move v1, p0

    #@b6
    move-object v4, p2

    #@b7
    move-object v5, p3

    #@b8
    move-object v6, p5

    #@b9
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/ModulusSubstitution;-><init>(IDLandroid/icu/text/NFRule;Landroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    #@bc
    return-object v0

    #@bd
    .line 137
    :pswitch_2
    new-instance v0, Landroid/icu/text/SameValueSubstitution;

    #@bf
    invoke-direct {v0, p0, p3, p5}, Landroid/icu/text/SameValueSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    #@c2
    return-object v0

    #@c3
    .line 77
    nop

    #@c4
    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public abstract calcUpperBound(D)D
.end method

.method public abstract composeRuleValue(DD)D
.end method

.method public doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;
    .locals 7
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "parsePosition"    # Ljava/text/ParsePosition;
    .param p3, "baseValue"    # D
    .param p5, "upperBound"    # D
    .param p7, "lenientParse"    # Z

    #@0
    .prologue
    .line 416
    invoke-virtual {p0, p5, p6}, Landroid/icu/text/NFSubstitution;->calcUpperBound(D)D

    #@3
    move-result-wide p5

    #@4
    .line 424
    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@6
    if-eqz v3, :cond_2

    #@8
    .line 425
    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@a
    invoke-virtual {v3, p1, p2, p5, p6}, Landroid/icu/text/NFRuleSet;->parse(Ljava/lang/String;Ljava/text/ParsePosition;D)Ljava/lang/Number;

    #@d
    move-result-object v2

    #@e
    .line 426
    .local v2, "tempResult":Ljava/lang/Number;
    if-eqz p7, :cond_0

    #@10
    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@12
    invoke-virtual {v3}, Landroid/icu/text/NFRuleSet;->isFractionSet()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 439
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_4

    #@1e
    .line 440
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    #@21
    move-result-wide v0

    #@22
    .line 464
    .local v0, "result":D
    invoke-virtual {p0, v0, v1, p3, p4}, Landroid/icu/text/NFSubstitution;->composeRuleValue(DD)D

    #@25
    move-result-wide v0

    #@26
    .line 465
    double-to-long v4, v0

    #@27
    long-to-double v4, v4

    #@28
    cmpl-double v3, v0, v4

    #@2a
    if-nez v3, :cond_3

    #@2c
    .line 466
    double-to-long v4, v0

    #@2d
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@30
    move-result-object v3

    #@31
    return-object v3

    #@32
    .line 426
    .end local v0    # "result":D
    :cond_1
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@35
    move-result v3

    #@36
    if-nez v3, :cond_0

    #@38
    .line 427
    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@3a
    iget-object v3, v3, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    #@3c
    invoke-virtual {v3}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormat()Landroid/icu/text/DecimalFormat;

    #@3f
    move-result-object v3

    #@40
    invoke-virtual {v3, p1, p2}, Landroid/icu/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@43
    move-result-object v2

    #@44
    goto :goto_0

    #@45
    .line 432
    .end local v2    # "tempResult":Ljava/lang/Number;
    :cond_2
    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    #@47
    invoke-virtual {v3, p1, p2}, Landroid/icu/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@4a
    move-result-object v2

    #@4b
    .restart local v2    # "tempResult":Ljava/lang/Number;
    goto :goto_0

    #@4c
    .line 468
    .restart local v0    # "result":D
    :cond_3
    new-instance v3, Ljava/lang/Double;

    #@4e
    invoke-direct {v3, v0, v1}, Ljava/lang/Double;-><init>(D)V

    #@51
    return-object v3

    #@52
    .line 473
    .end local v0    # "result":D
    :cond_4
    return-object v2
.end method

.method public doSubstitution(DLjava/lang/StringBuffer;II)V
    .locals 11
    .param p1, "number"    # D
    .param p3, "toInsertInto"    # Ljava/lang/StringBuffer;
    .param p4, "position"    # I
    .param p5, "recursionCount"    # I

    #@0
    .prologue
    .line 325
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/NFSubstitution;->transformNumber(D)D

    #@3
    move-result-wide v2

    #@4
    .line 327
    .local v2, "numberToFormat":D
    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 329
    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@c
    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    #@e
    invoke-virtual {v0, v4, v5}, Landroid/icu/text/NFRuleSet;->findRule(D)Landroid/icu/text/NFRule;

    #@11
    move-result-object v1

    #@12
    .line 330
    .local v1, "infiniteRule":Landroid/icu/text/NFRule;
    iget v0, p0, Landroid/icu/text/NFSubstitution;->pos:I

    #@14
    add-int v5, p4, v0

    #@16
    move-object v4, p3

    #@17
    move/from16 v6, p5

    #@19
    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFRule;->doFormat(DLjava/lang/StringBuffer;II)V

    #@1c
    .line 331
    return-void

    #@1d
    .line 336
    .end local v1    # "infiniteRule":Landroid/icu/text/NFRule;
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    #@20
    move-result-wide v4

    #@21
    cmpl-double v0, v2, v4

    #@23
    if-nez v0, :cond_1

    #@25
    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@27
    if-eqz v0, :cond_1

    #@29
    .line 337
    iget-object v5, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@2b
    double-to-long v6, v2

    #@2c
    iget v0, p0, Landroid/icu/text/NFSubstitution;->pos:I

    #@2e
    add-int v9, p4, v0

    #@30
    move-object v8, p3

    #@31
    move/from16 v10, p5

    #@33
    invoke-virtual/range {v5 .. v10}, Landroid/icu/text/NFRuleSet;->format(JLjava/lang/StringBuffer;II)V

    #@36
    .line 322
    :goto_0
    return-void

    #@37
    .line 343
    :cond_1
    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@39
    if-eqz v0, :cond_2

    #@3b
    .line 344
    iget-object v5, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@3d
    iget v0, p0, Landroid/icu/text/NFSubstitution;->pos:I

    #@3f
    add-int v9, p4, v0

    #@41
    move-wide v6, v2

    #@42
    move-object v8, p3

    #@43
    move/from16 v10, p5

    #@45
    invoke-virtual/range {v5 .. v10}, Landroid/icu/text/NFRuleSet;->format(DLjava/lang/StringBuffer;II)V

    #@48
    goto :goto_0

    #@49
    .line 346
    :cond_2
    iget v0, p0, Landroid/icu/text/NFSubstitution;->pos:I

    #@4b
    add-int/2addr v0, p4

    #@4c
    iget-object v4, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    #@4e
    invoke-virtual {v4, v2, v3}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {p3, v0, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@55
    goto :goto_0
.end method

.method public doSubstitution(JLjava/lang/StringBuffer;II)V
    .locals 11
    .param p1, "number"    # J
    .param p3, "toInsertInto"    # Ljava/lang/StringBuffer;
    .param p4, "position"    # I
    .param p5, "recursionCount"    # I

    #@0
    .prologue
    .line 291
    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 295
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/NFSubstitution;->transformNumber(J)J

    #@7
    move-result-wide v2

    #@8
    .line 297
    .local v2, "numberToFormat":J
    iget-object v1, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@a
    iget v0, p0, Landroid/icu/text/NFSubstitution;->pos:I

    #@c
    add-int v5, p4, v0

    #@e
    move-object v4, p3

    #@f
    move/from16 v6, p5

    #@11
    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFRuleSet;->format(JLjava/lang/StringBuffer;II)V

    #@14
    .line 290
    .end local v2    # "numberToFormat":J
    :goto_0
    return-void

    #@15
    .line 303
    :cond_0
    long-to-double v0, p1

    #@16
    invoke-virtual {p0, v0, v1}, Landroid/icu/text/NFSubstitution;->transformNumber(D)D

    #@19
    move-result-wide v8

    #@1a
    .line 304
    .local v8, "numberToFormat":D
    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    #@1c
    invoke-virtual {v0}, Landroid/icu/text/NumberFormat;->getMaximumFractionDigits()I

    #@1f
    move-result v0

    #@20
    if-nez v0, :cond_1

    #@22
    .line 305
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    #@25
    move-result-wide v8

    #@26
    .line 308
    :cond_1
    iget v0, p0, Landroid/icu/text/NFSubstitution;->pos:I

    #@28
    add-int/2addr v0, p4

    #@29
    iget-object v1, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    #@2b
    invoke-virtual {v1, v8, v9}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@32
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 237
    if-nez p1, :cond_0

    #@4
    .line 238
    return v2

    #@5
    .line 240
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    .line 241
    return v1

    #@8
    .line 243
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v4

    #@10
    if-ne v3, v4, :cond_6

    #@12
    move-object v0, p1

    #@13
    .line 244
    check-cast v0, Landroid/icu/text/NFSubstitution;

    #@15
    .line 246
    .local v0, "that2":Landroid/icu/text/NFSubstitution;
    iget v3, p0, Landroid/icu/text/NFSubstitution;->pos:I

    #@17
    iget v4, v0, Landroid/icu/text/NFSubstitution;->pos:I

    #@19
    if-ne v3, v4, :cond_5

    #@1b
    .line 247
    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@1d
    if-nez v3, :cond_2

    #@1f
    iget-object v3, v0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@21
    if-nez v3, :cond_5

    #@23
    .line 248
    :cond_2
    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    #@25
    if-nez v3, :cond_4

    #@27
    iget-object v3, v0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    #@29
    if-nez v3, :cond_3

    #@2b
    .line 246
    :goto_0
    return v1

    #@2c
    :cond_3
    move v1, v2

    #@2d
    .line 248
    goto :goto_0

    #@2e
    :cond_4
    iget-object v1, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    #@30
    iget-object v2, v0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    #@32
    invoke-virtual {v1, v2}, Landroid/icu/text/DecimalFormat;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v1

    #@36
    goto :goto_0

    #@37
    :cond_5
    move v1, v2

    #@38
    .line 246
    goto :goto_0

    #@39
    .line 250
    .end local v0    # "that2":Landroid/icu/text/NFSubstitution;
    :cond_6
    return v2
.end method

.method public final getPos()I
    .locals 1

    #@0
    .prologue
    .line 509
    iget v0, p0, Landroid/icu/text/NFSubstitution;->pos:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 254
    sget-boolean v0, Landroid/icu/text/NFSubstitution;->-assertionsDisabled:Z

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
    .line 255
    :cond_0
    const/16 v0, 0x2a

    #@f
    return v0
.end method

.method public isModulusSubstitution()Z
    .locals 1

    #@0
    .prologue
    .line 526
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V
    .locals 1
    .param p1, "newSymbols"    # Landroid/icu/text/DecimalFormatSymbols;

    #@0
    .prologue
    .line 531
    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 532
    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    #@6
    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    #@9
    .line 530
    :cond_0
    return-void
.end method

.method public setDivisor(II)V
    .locals 0
    .param p1, "radix"    # I
    .param p2, "exponent"    # I

    #@0
    .prologue
    .line 221
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 269
    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    invoke-virtual {p0}, Landroid/icu/text/NFSubstitution;->tokenChar()C

    #@c
    move-result v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    iget-object v1, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@13
    invoke-virtual {v1}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p0}, Landroid/icu/text/NFSubstitution;->tokenChar()C

    #@1e
    move-result v1

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    return-object v0

    #@28
    .line 272
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    invoke-virtual {p0}, Landroid/icu/text/NFSubstitution;->tokenChar()C

    #@30
    move-result v1

    #@31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@34
    move-result-object v0

    #@35
    iget-object v1, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    #@37
    invoke-virtual {v1}, Landroid/icu/text/DecimalFormat;->toPattern()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    invoke-virtual {p0}, Landroid/icu/text/NFSubstitution;->tokenChar()C

    #@42
    move-result v1

    #@43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v0

    #@4b
    return-object v0
.end method

.method abstract tokenChar()C
.end method

.method public abstract transformNumber(D)D
.end method

.method public abstract transformNumber(J)J
.end method
