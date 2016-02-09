.class abstract Landroid/icu/text/NFSubstitution;
.super Ljava/lang/Object;
.source "NFSubstitution.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field final numberFormat:Landroid/icu/text/DecimalFormat;

.field final pos:I

.field final rbnf:Landroid/icu/text/RuleBasedNumberFormat;

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
    .line 21
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(ILandroid/icu/text/NFRuleSet;Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
    .locals 4
    .param p1, "pos"    # I
    .param p2, "ruleSet"    # Landroid/icu/text/NFRuleSet;
    .param p3, "formatter"    # Landroid/icu/text/RuleBasedNumberFormat;
    .param p4, "description"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 168
    iput p1, p0, Landroid/icu/text/NFSubstitution;->pos:I

    #@7
    .line 169
    iput-object p3, p0, Landroid/icu/text/NFSubstitution;->rbnf:Landroid/icu/text/RuleBasedNumberFormat;

    #@9
    .line 175
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    #@c
    move-result v0

    #@d
    const/4 v1, 0x2

    #@e
    if-lt v0, v1, :cond_1

    #@10
    invoke-virtual {p4, v2}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v0

    #@14
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    #@17
    move-result v1

    #@18
    add-int/lit8 v1, v1, -0x1

    #@1a
    invoke-virtual {p4, v1}, Ljava/lang/String;->charAt(I)C

    #@1d
    move-result v1

    #@1e
    if-ne v0, v1, :cond_1

    #@20
    .line 176
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    #@23
    move-result v0

    #@24
    add-int/lit8 v0, v0, -0x1

    #@26
    const/4 v1, 0x1

    #@27
    invoke-virtual {p4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2a
    move-result-object p4

    #@2b
    .line 185
    :cond_0
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    #@2e
    move-result v0

    #@2f
    if-nez v0, :cond_2

    #@31
    .line 186
    iput-object p2, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@33
    .line 187
    iput-object v3, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    #@35
    .line 166
    :goto_0
    return-void

    #@36
    .line 178
    :cond_1
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    #@39
    move-result v0

    #@3a
    if-eqz v0, :cond_0

    #@3c
    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@3e
    const-string/jumbo v1, "Illegal substitution syntax"

    #@41
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@44
    throw v0

    #@45
    .line 189
    :cond_2
    invoke-virtual {p4, v2}, Ljava/lang/String;->charAt(I)C

    #@48
    move-result v0

    #@49
    const/16 v1, 0x25

    #@4b
    if-ne v0, v1, :cond_3

    #@4d
    .line 193
    invoke-virtual {p3, p4}, Landroid/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Landroid/icu/text/NFRuleSet;

    #@50
    move-result-object v0

    #@51
    iput-object v0, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@53
    .line 194
    iput-object v3, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    #@55
    goto :goto_0

    #@56
    .line 196
    :cond_3
    invoke-virtual {p4, v2}, Ljava/lang/String;->charAt(I)C

    #@59
    move-result v0

    #@5a
    const/16 v1, 0x23

    #@5c
    if-eq v0, v1, :cond_4

    #@5e
    invoke-virtual {p4, v2}, Ljava/lang/String;->charAt(I)C

    #@61
    move-result v0

    #@62
    const/16 v1, 0x30

    #@64
    if-ne v0, v1, :cond_5

    #@66
    .line 201
    :cond_4
    iput-object v3, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@68
    .line 202
    new-instance v0, Landroid/icu/text/DecimalFormat;

    #@6a
    invoke-virtual {p3}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    #@6d
    move-result-object v1

    #@6e
    invoke-direct {v0, p4, v1}, Landroid/icu/text/DecimalFormat;-><init>(Ljava/lang/String;Landroid/icu/text/DecimalFormatSymbols;)V

    #@71
    iput-object v0, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    #@73
    goto :goto_0

    #@74
    .line 204
    :cond_5
    invoke-virtual {p4, v2}, Ljava/lang/String;->charAt(I)C

    #@77
    move-result v0

    #@78
    const/16 v1, 0x3e

    #@7a
    if-ne v0, v1, :cond_6

    #@7c
    .line 210
    iput-object p2, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@7e
    .line 211
    iput-object v3, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    #@80
    goto :goto_0

    #@81
    .line 215
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@83
    const-string/jumbo v1, "Illegal substitution syntax"

    #@86
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@89
    throw v0
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
    .line 77
    invoke-virtual {p5}, Ljava/lang/String;->length()I

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 78
    new-instance v0, Landroid/icu/text/NullSubstitution;

    #@11
    invoke-direct {v0, p0, p3, p4, p5}, Landroid/icu/text/NullSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    #@14
    return-object v0

    #@15
    .line 81
    :cond_0
    invoke-virtual {p5, v1}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v0

    #@19
    packed-switch v0, :pswitch_data_0

    #@1c
    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1e
    const-string/jumbo v1, "Illegal substitution character"

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 83
    :pswitch_0
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@28
    move-result-wide v0

    #@29
    cmp-long v0, v0, v8

    #@2b
    if-nez v0, :cond_1

    #@2d
    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2f
    const-string/jumbo v1, "<< not allowed in negative-number rule"

    #@32
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v0

    #@36
    .line 92
    :cond_1
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@39
    move-result-wide v0

    #@3a
    cmp-long v0, v0, v6

    #@3c
    if-eqz v0, :cond_2

    #@3e
    .line 93
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@41
    move-result-wide v0

    #@42
    cmp-long v0, v0, v4

    #@44
    if-nez v0, :cond_3

    #@46
    .line 97
    :cond_2
    new-instance v0, Landroid/icu/text/IntegralPartSubstitution;

    #@48
    invoke-direct {v0, p0, p3, p4, p5}, Landroid/icu/text/IntegralPartSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    #@4b
    return-object v0

    #@4c
    .line 94
    :cond_3
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@4f
    move-result-wide v0

    #@50
    cmp-long v0, v0, v2

    #@52
    if-eqz v0, :cond_2

    #@54
    .line 99
    invoke-virtual {p3}, Landroid/icu/text/NFRuleSet;->isFractionSet()Z

    #@57
    move-result v0

    #@58
    if-eqz v0, :cond_4

    #@5a
    .line 102
    new-instance v0, Landroid/icu/text/NumeratorSubstitution;

    #@5c
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@5f
    move-result-wide v2

    #@60
    long-to-double v2, v2

    #@61
    .line 103
    invoke-virtual {p4}, Landroid/icu/text/RuleBasedNumberFormat;->getDefaultRuleSet()Landroid/icu/text/NFRuleSet;

    #@64
    move-result-object v4

    #@65
    move v1, p0

    #@66
    move-object v5, p4

    #@67
    move-object v6, p5

    #@68
    .line 102
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/NumeratorSubstitution;-><init>(IDLandroid/icu/text/NFRuleSet;Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    #@6b
    return-object v0

    #@6c
    .line 107
    :cond_4
    new-instance v0, Landroid/icu/text/MultiplierSubstitution;

    #@6e
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getDivisor()D

    #@71
    move-result-wide v2

    #@72
    move v1, p0

    #@73
    move-object v4, p3

    #@74
    move-object v5, p4

    #@75
    move-object v6, p5

    #@76
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/MultiplierSubstitution;-><init>(IDLandroid/icu/text/NFRuleSet;Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    #@79
    return-object v0

    #@7a
    .line 112
    :pswitch_1
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@7d
    move-result-wide v0

    #@7e
    cmp-long v0, v0, v8

    #@80
    if-nez v0, :cond_5

    #@82
    .line 115
    new-instance v0, Landroid/icu/text/AbsoluteValueSubstitution;

    #@84
    invoke-direct {v0, p0, p3, p4, p5}, Landroid/icu/text/AbsoluteValueSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    #@87
    return-object v0

    #@88
    .line 117
    :cond_5
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@8b
    move-result-wide v0

    #@8c
    cmp-long v0, v0, v6

    #@8e
    if-eqz v0, :cond_6

    #@90
    .line 118
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@93
    move-result-wide v0

    #@94
    cmp-long v0, v0, v4

    #@96
    if-nez v0, :cond_7

    #@98
    .line 123
    :cond_6
    new-instance v0, Landroid/icu/text/FractionalPartSubstitution;

    #@9a
    invoke-direct {v0, p0, p3, p4, p5}, Landroid/icu/text/FractionalPartSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    #@9d
    return-object v0

    #@9e
    .line 119
    :cond_7
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    #@a1
    move-result-wide v0

    #@a2
    cmp-long v0, v0, v2

    #@a4
    if-eqz v0, :cond_6

    #@a6
    .line 125
    invoke-virtual {p3}, Landroid/icu/text/NFRuleSet;->isFractionSet()Z

    #@a9
    move-result v0

    #@aa
    if-eqz v0, :cond_8

    #@ac
    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@ae
    const-string/jumbo v1, ">> not allowed in fraction rule set"

    #@b1
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b4
    throw v0

    #@b5
    .line 137
    :cond_8
    new-instance v0, Landroid/icu/text/ModulusSubstitution;

    #@b7
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getDivisor()D

    #@ba
    move-result-wide v2

    #@bb
    move v1, p0

    #@bc
    move-object v4, p2

    #@bd
    move-object v5, p3

    #@be
    move-object v6, p4

    #@bf
    move-object v7, p5

    #@c0
    invoke-direct/range {v0 .. v7}, Landroid/icu/text/ModulusSubstitution;-><init>(IDLandroid/icu/text/NFRule;Landroid/icu/text/NFRuleSet;Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    #@c3
    return-object v0

    #@c4
    .line 141
    :pswitch_2
    new-instance v0, Landroid/icu/text/SameValueSubstitution;

    #@c6
    invoke-direct {v0, p0, p3, p4, p5}, Landroid/icu/text/SameValueSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    #@c9
    return-object v0

    #@ca
    .line 81
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
    .line 414
    invoke-virtual {p0, p5, p6}, Landroid/icu/text/NFSubstitution;->calcUpperBound(D)D

    #@3
    move-result-wide p5

    #@4
    .line 422
    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@6
    if-eqz v3, :cond_2

    #@8
    .line 423
    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@a
    invoke-virtual {v3, p1, p2, p5, p6}, Landroid/icu/text/NFRuleSet;->parse(Ljava/lang/String;Ljava/text/ParsePosition;D)Ljava/lang/Number;

    #@d
    move-result-object v2

    #@e
    .line 424
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
    .line 437
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_4

    #@1e
    .line 438
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    #@21
    move-result-wide v0

    #@22
    .line 462
    .local v0, "result":D
    invoke-virtual {p0, v0, v1, p3, p4}, Landroid/icu/text/NFSubstitution;->composeRuleValue(DD)D

    #@25
    move-result-wide v0

    #@26
    .line 463
    double-to-long v4, v0

    #@27
    long-to-double v4, v4

    #@28
    cmpl-double v3, v0, v4

    #@2a
    if-nez v3, :cond_3

    #@2c
    .line 464
    double-to-long v4, v0

    #@2d
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@30
    move-result-object v3

    #@31
    return-object v3

    #@32
    .line 424
    .end local v0    # "result":D
    :cond_1
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@35
    move-result v3

    #@36
    if-nez v3, :cond_0

    #@38
    .line 425
    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->rbnf:Landroid/icu/text/RuleBasedNumberFormat;

    #@3a
    invoke-virtual {v3}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormat()Landroid/icu/text/DecimalFormat;

    #@3d
    move-result-object v3

    #@3e
    invoke-virtual {v3, p1, p2}, Landroid/icu/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@41
    move-result-object v2

    #@42
    goto :goto_0

    #@43
    .line 430
    .end local v2    # "tempResult":Ljava/lang/Number;
    :cond_2
    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    #@45
    invoke-virtual {v3, p1, p2}, Landroid/icu/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    #@48
    move-result-object v2

    #@49
    .restart local v2    # "tempResult":Ljava/lang/Number;
    goto :goto_0

    #@4a
    .line 466
    .restart local v0    # "result":D
    :cond_3
    new-instance v3, Ljava/lang/Double;

    #@4c
    invoke-direct {v3, v0, v1}, Ljava/lang/Double;-><init>(D)V

    #@4f
    return-object v3

    #@50
    .line 471
    .end local v0    # "result":D
    :cond_4
    return-object v2
.end method

.method public doSubstitution(DLjava/lang/StringBuffer;I)V
    .locals 7
    .param p1, "number"    # D
    .param p3, "toInsertInto"    # Ljava/lang/StringBuffer;
    .param p4, "position"    # I

    #@0
    .prologue
    .line 330
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/NFSubstitution;->transformNumber(D)D

    #@3
    move-result-wide v0

    #@4
    .line 334
    .local v0, "numberToFormat":D
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    #@7
    move-result-wide v2

    #@8
    cmpl-double v2, v0, v2

    #@a
    if-nez v2, :cond_0

    #@c
    iget-object v2, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 335
    iget-object v2, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@12
    double-to-long v4, v0

    #@13
    iget v3, p0, Landroid/icu/text/NFSubstitution;->pos:I

    #@15
    add-int/2addr v3, p4

    #@16
    invoke-virtual {v2, v4, v5, p3, v3}, Landroid/icu/text/NFRuleSet;->format(JLjava/lang/StringBuffer;I)V

    #@19
    .line 327
    :goto_0
    return-void

    #@1a
    .line 341
    :cond_0
    iget-object v2, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 342
    iget-object v2, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@20
    iget v3, p0, Landroid/icu/text/NFSubstitution;->pos:I

    #@22
    add-int/2addr v3, p4

    #@23
    invoke-virtual {v2, v0, v1, p3, v3}, Landroid/icu/text/NFRuleSet;->format(DLjava/lang/StringBuffer;I)V

    #@26
    goto :goto_0

    #@27
    .line 344
    :cond_1
    iget v2, p0, Landroid/icu/text/NFSubstitution;->pos:I

    #@29
    add-int/2addr v2, p4

    #@2a
    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    #@2c
    invoke-virtual {v3, v0, v1}, Landroid/icu/text/DecimalFormat;->format(D)Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@33
    goto :goto_0
.end method

.method public doSubstitution(JLjava/lang/StringBuffer;I)V
    .locals 7
    .param p1, "number"    # J
    .param p3, "toInsertInto"    # Ljava/lang/StringBuffer;
    .param p4, "position"    # I

    #@0
    .prologue
    .line 296
    iget-object v4, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@2
    if-eqz v4, :cond_0

    #@4
    .line 300
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/NFSubstitution;->transformNumber(J)J

    #@7
    move-result-wide v2

    #@8
    .line 302
    .local v2, "numberToFormat":J
    iget-object v4, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@a
    iget v5, p0, Landroid/icu/text/NFSubstitution;->pos:I

    #@c
    add-int/2addr v5, p4

    #@d
    invoke-virtual {v4, v2, v3, p3, v5}, Landroid/icu/text/NFRuleSet;->format(JLjava/lang/StringBuffer;I)V

    #@10
    .line 295
    .end local v2    # "numberToFormat":J
    :goto_0
    return-void

    #@11
    .line 308
    :cond_0
    long-to-double v4, p1

    #@12
    invoke-virtual {p0, v4, v5}, Landroid/icu/text/NFSubstitution;->transformNumber(D)D

    #@15
    move-result-wide v0

    #@16
    .line 309
    .local v0, "numberToFormat":D
    iget-object v4, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    #@18
    invoke-virtual {v4}, Landroid/icu/text/DecimalFormat;->getMaximumFractionDigits()I

    #@1b
    move-result v4

    #@1c
    if-nez v4, :cond_1

    #@1e
    .line 310
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    #@21
    move-result-wide v0

    #@22
    .line 313
    :cond_1
    iget v4, p0, Landroid/icu/text/NFSubstitution;->pos:I

    #@24
    add-int/2addr v4, p4

    #@25
    iget-object v5, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    #@27
    invoke-virtual {v5, v0, v1}, Landroid/icu/text/DecimalFormat;->format(D)Ljava/lang/String;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {p3, v4, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    #@2e
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
    .line 242
    if-nez p1, :cond_0

    #@4
    .line 243
    return v2

    #@5
    .line 245
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    .line 246
    return v1

    #@8
    .line 248
    :cond_1
    invoke-virtual {p0}, Landroid/icu/text/NFSubstitution;->getClass()Ljava/lang/Class;

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
    .line 249
    check-cast v0, Landroid/icu/text/NFSubstitution;

    #@15
    .line 251
    .local v0, "that2":Landroid/icu/text/NFSubstitution;
    iget v3, p0, Landroid/icu/text/NFSubstitution;->pos:I

    #@17
    iget v4, v0, Landroid/icu/text/NFSubstitution;->pos:I

    #@19
    if-ne v3, v4, :cond_5

    #@1b
    .line 252
    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@1d
    if-nez v3, :cond_2

    #@1f
    iget-object v3, v0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@21
    if-nez v3, :cond_5

    #@23
    .line 253
    :cond_2
    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    #@25
    if-nez v3, :cond_4

    #@27
    iget-object v3, v0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    #@29
    if-nez v3, :cond_3

    #@2b
    .line 251
    :goto_0
    return v1

    #@2c
    :cond_3
    move v1, v2

    #@2d
    .line 253
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
    .line 251
    goto :goto_0

    #@39
    .line 255
    .end local v0    # "that2":Landroid/icu/text/NFSubstitution;
    :cond_6
    return v2
.end method

.method public final getPos()I
    .locals 1

    #@0
    .prologue
    .line 507
    iget v0, p0, Landroid/icu/text/NFSubstitution;->pos:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 259
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
    .line 260
    :cond_0
    const/16 v0, 0x2a

    #@f
    return v0
.end method

.method public isModulusSubstitution()Z
    .locals 1

    #@0
    .prologue
    .line 534
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isNullSubstitution()Z
    .locals 1

    #@0
    .prologue
    .line 524
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public setDivisor(II)V
    .locals 0
    .param p1, "radix"    # I
    .param p2, "exponent"    # I

    #@0
    .prologue
    .line 226
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 274
    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 275
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
    .line 277
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
