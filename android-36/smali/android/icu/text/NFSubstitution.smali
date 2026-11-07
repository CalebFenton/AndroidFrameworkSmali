.class abstract Landroid/icu/text/NFSubstitution;
.super Ljava/lang/Object;
.source "NFSubstitution.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o MAX_INT64_IN_DOUBLE:J = 0x1fffffffffffffL


# instance fields
.field final greylist-max-o numberFormat:Landroid/icu/text/DecimalFormat;

.field final greylist-max-o pos:I

.field final greylist-max-o ruleSet:Landroid/icu/text/NFRuleSet;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 27
    return-void
.end method

.method constructor greylist-max-o <init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V
    .registers 10
    .param p1, "pos"    # I
    .param p2, "ruleSet"    # Landroid/icu/text/NFRuleSet;
    .param p3, "description"    # Ljava/lang/String;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput p1, p0, Landroid/icu/text/NFSubstitution;->pos:I

    .line 168
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .line 174
    .local v0, "descriptionLen":I
    const/4 v1, 0x2

    const-string v2, "Illegal substitution syntax"

    const/4 v3, 0x0

    if-lt v0, v1, :cond_23

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v1, v4, :cond_23

    .line 175
    add-int/lit8 v1, v0, -0x1

    const/4 v4, 0x1

    invoke-virtual {p3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    goto :goto_25

    .line 177
    :cond_23
    if-nez v0, :cond_7e

    .line 184
    :goto_25
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_31

    .line 185
    iput-object p2, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    .line 186
    iput-object v4, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    goto :goto_7d

    .line 188
    :cond_31
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x25

    if-ne v1, v5, :cond_44

    .line 192
    iget-object v1, p2, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v1, p3}, Landroid/icu/text/RuleBasedNumberFormat;->findRuleSet(Ljava/lang/String;)Landroid/icu/text/NFRuleSet;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    .line 193
    iput-object v4, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    goto :goto_7d

    .line 195
    :cond_44
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x23

    if-eq v1, v5, :cond_68

    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x30

    if-ne v1, v5, :cond_55

    goto :goto_68

    .line 204
    :cond_55
    invoke-virtual {p3, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3e

    if-ne v1, v3, :cond_62

    .line 210
    iput-object p2, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    .line 211
    iput-object v4, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    goto :goto_7d

    .line 215
    :cond_62
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :cond_68
    :goto_68
    iput-object v4, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    .line 201
    iget-object v1, p2, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v1}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormat()Landroid/icu/text/DecimalFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DecimalFormat;

    iput-object v1, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    .line 202
    iget-object v1, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1, p3}, Landroid/icu/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 217
    :goto_7d
    return-void

    .line 178
    :cond_7e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static greylist-max-o makeSubstitution(ILandroid/icu/text/NFRule;Landroid/icu/text/NFRule;Landroid/icu/text/NFRuleSet;Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)Landroid/icu/text/NFSubstitution;
    .registers 20
    .param p0, "pos"    # I
    .param p1, "rule"    # Landroid/icu/text/NFRule;
    .param p2, "rulePredecessor"    # Landroid/icu/text/NFRule;
    .param p3, "ruleSet"    # Landroid/icu/text/NFRuleSet;
    .param p4, "formatter"    # Landroid/icu/text/RuleBasedNumberFormat;
    .param p5, "description"    # Ljava/lang/String;

    .line 78
    move-object/from16 v4, p3

    move-object/from16 v5, p5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_c

    .line 79
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const-wide/16 v1, -0x4

    const-wide/16 v6, -0x3

    const-wide/16 v8, -0x2

    const-wide/16 v10, -0x1

    packed-switch v0, :pswitch_data_c4

    .line 149
    move-object v12, v4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Illegal substitution character"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :pswitch_25
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v12

    cmp-long v0, v12, v10

    if-nez v0, :cond_33

    .line 116
    new-instance v0, Landroid/icu/text/AbsoluteValueSubstitution;

    invoke-direct {v0, p0, v4, v5}, Landroid/icu/text/AbsoluteValueSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    return-object v0

    .line 118
    :cond_33
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v10

    cmp-long v0, v10, v8

    if-eqz v0, :cond_6a

    .line 119
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v8

    cmp-long v0, v8, v6

    if-eqz v0, :cond_68

    .line 120
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v6

    cmp-long v0, v6, v1

    if-nez v0, :cond_4d

    move-object v12, v4

    goto :goto_6b

    .line 126
    :cond_4d
    invoke-virtual {v4}, Landroid/icu/text/NFRuleSet;->isFractionSet()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 138
    new-instance v0, Landroid/icu/text/ModulusSubstitution;

    move v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/ModulusSubstitution;-><init>(ILandroid/icu/text/NFRule;Landroid/icu/text/NFRule;Landroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    move-object v1, v0

    move-object v12, v4

    return-object v1

    .line 133
    :cond_5f
    move-object v12, v4

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, ">> not allowed in fraction rule set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_68
    move-object v12, v4

    goto :goto_6b

    .line 118
    :cond_6a
    move-object v12, v4

    .line 124
    :goto_6b
    new-instance v1, Landroid/icu/text/FractionalPartSubstitution;

    invoke-direct {v1, p0, v12, v5}, Landroid/icu/text/FractionalPartSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    return-object v1

    .line 142
    :pswitch_71
    move-object v12, v4

    new-instance v1, Landroid/icu/text/SameValueSubstitution;

    invoke-direct {v1, p0, v12, v5}, Landroid/icu/text/SameValueSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    return-object v1

    .line 84
    :pswitch_78
    move-object v12, v4

    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v3

    cmp-long v3, v3, v10

    if-eqz v3, :cond_bc

    .line 93
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v3

    cmp-long v3, v3, v8

    if-eqz v3, :cond_b6

    .line 94
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v3

    cmp-long v3, v3, v6

    if-eqz v3, :cond_b6

    .line 95
    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-nez v1, :cond_9a

    goto :goto_b6

    .line 100
    :cond_9a
    invoke-virtual {v12}, Landroid/icu/text/NFRuleSet;->isFractionSet()Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 103
    new-instance v0, Landroid/icu/text/NumeratorSubstitution;

    invoke-virtual {p1}, Landroid/icu/text/NFRule;->getBaseValue()J

    move-result-wide v1

    long-to-double v2, v1

    .line 104
    invoke-virtual/range {p4 .. p4}, Landroid/icu/text/RuleBasedNumberFormat;->getDefaultRuleSet()Landroid/icu/text/NFRuleSet;

    move-result-object v4

    move v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/icu/text/NumeratorSubstitution;-><init>(IDLandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    .line 103
    return-object v0

    .line 108
    :cond_b0
    new-instance v0, Landroid/icu/text/MultiplierSubstitution;

    invoke-direct {v0, p0, p1, v12, v5}, Landroid/icu/text/MultiplierSubstitution;-><init>(ILandroid/icu/text/NFRule;Landroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    return-object v0

    .line 98
    :cond_b6
    :goto_b6
    new-instance v0, Landroid/icu/text/IntegralPartSubstitution;

    invoke-direct {v0, p0, v12, v5}, Landroid/icu/text/IntegralPartSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    return-object v0

    .line 90
    :cond_bc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "<< not allowed in negative-number rule"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_c4
    .packed-switch 0x3c
        :pswitch_78
        :pswitch_71
        :pswitch_25
    .end packed-switch
.end method


# virtual methods
.method public abstract greylist-max-o calcUpperBound(D)D
.end method

.method public abstract greylist-max-o composeRuleValue(DD)D
.end method

.method public blacklist doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZII)Ljava/lang/Number;
    .registers 19
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "parsePosition"    # Ljava/text/ParsePosition;
    .param p3, "baseValue"    # D
    .param p5, "upperBound"    # D
    .param p7, "lenientParse"    # Z
    .param p8, "nonNumericalExecutedRuleMask"    # I
    .param p9, "recursionCount"    # I

    .line 433
    invoke-virtual {p0, p5, p6}, Landroid/icu/text/NFSubstitution;->calcUpperBound(D)D

    move-result-wide v3

    .line 441
    .end local p5    # "upperBound":D
    .local v3, "upperBound":D
    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    if-eqz v0, :cond_31

    .line 442
    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    move-object v1, p1

    move-object v2, p2

    move/from16 v5, p8

    move/from16 v6, p9

    invoke-virtual/range {v0 .. v6}, Landroid/icu/text/NFRuleSet;->parse(Ljava/lang/String;Ljava/text/ParsePosition;DII)Ljava/lang/Number;

    move-result-object v0

    .line 443
    .local v0, "tempResult":Ljava/lang/Number;
    if-eqz p7, :cond_37

    iget-object v5, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    invoke-virtual {v5}, Landroid/icu/text/NFRuleSet;->isFractionSet()Z

    move-result v5

    if-nez v5, :cond_37

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    if-nez v5, :cond_37

    .line 444
    iget-object v5, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    iget-object v5, v5, Landroid/icu/text/NFRuleSet;->owner:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v5}, Landroid/icu/text/RuleBasedNumberFormat;->getDecimalFormat()Landroid/icu/text/DecimalFormat;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/icu/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v0

    goto :goto_37

    .line 449
    .end local v0    # "tempResult":Ljava/lang/Number;
    :cond_31
    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1, p2}, Landroid/icu/text/DecimalFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v0

    .line 456
    .restart local v0    # "tempResult":Ljava/lang/Number;
    :cond_37
    :goto_37
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    if-eqz v5, :cond_56

    .line 457
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    .line 481
    .local v5, "result":D
    invoke-virtual {p0, v5, v6, p3, p4}, Landroid/icu/text/NFSubstitution;->composeRuleValue(DD)D

    move-result-wide v5

    .line 482
    double-to-long v7, v5

    long-to-double v7, v7

    cmpl-double v7, v5, v7

    if-nez v7, :cond_51

    .line 483
    double-to-long v7, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    return-object v7

    .line 485
    :cond_51
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    return-object v7

    .line 490
    .end local v5    # "result":D
    :cond_56
    return-object v0
.end method

.method public greylist-max-o doSubstitution(DLjava/lang/StringBuilder;II)V
    .registers 17
    .param p1, "number"    # D
    .param p3, "toInsertInto"    # Ljava/lang/StringBuilder;
    .param p4, "position"    # I
    .param p5, "recursionCount"    # I

    .line 342
    invoke-virtual/range {p0 .. p2}, Landroid/icu/text/NFSubstitution;->transformNumber(D)D

    move-result-wide v1

    .line 344
    .local v1, "numberToFormat":D
    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 346
    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-virtual {v0, v3, v4}, Landroid/icu/text/NFRuleSet;->findRule(D)Landroid/icu/text/NFRule;

    move-result-object v0

    .line 347
    .local v0, "infiniteRule":Landroid/icu/text/NFRule;
    iget v3, p0, Landroid/icu/text/NFSubstitution;->pos:I

    add-int v4, p4, v3

    move-object v3, p3

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/NFRule;->doFormat(DLjava/lang/StringBuilder;II)V

    .line 348
    return-void

    .line 353
    .end local v0    # "infiniteRule":Landroid/icu/text/NFRule;
    :cond_1d
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    cmpl-double v0, v1, v3

    if-nez v0, :cond_37

    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    if-eqz v0, :cond_37

    .line 354
    iget-object v5, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    double-to-long v6, v1

    iget v0, p0, Landroid/icu/text/NFSubstitution;->pos:I

    add-int v9, p4, v0

    move-object v8, p3

    move/from16 v10, p5

    invoke-virtual/range {v5 .. v10}, Landroid/icu/text/NFRuleSet;->format(JLjava/lang/StringBuilder;II)V

    goto :goto_54

    .line 360
    :cond_37
    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    if-eqz v0, :cond_48

    .line 361
    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    iget v3, p0, Landroid/icu/text/NFSubstitution;->pos:I

    add-int v4, p4, v3

    move-object v3, p3

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/NFRuleSet;->format(DLjava/lang/StringBuilder;II)V

    goto :goto_54

    .line 363
    :cond_48
    iget v0, p0, Landroid/icu/text/NFSubstitution;->pos:I

    add-int/2addr v0, p4

    iget-object v4, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v4, v1, v2}, Landroid/icu/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v0, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :goto_54
    return-void
.end method

.method public greylist-max-o doSubstitution(JLjava/lang/StringBuilder;II)V
    .registers 13
    .param p1, "number"    # J
    .param p3, "toInsertInto"    # Ljava/lang/StringBuilder;
    .param p4, "position"    # I
    .param p5, "recursionCount"    # I

    .line 301
    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    if-eqz v0, :cond_14

    .line 305
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/NFSubstitution;->transformNumber(J)J

    move-result-wide v2

    .line 307
    .local v2, "numberToFormat":J
    iget-object v1, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    iget v0, p0, Landroid/icu/text/NFSubstitution;->pos:I

    add-int v5, p4, v0

    move-object v4, p3

    move v6, p5

    .end local p3    # "toInsertInto":Ljava/lang/StringBuilder;
    .end local p5    # "recursionCount":I
    .local v4, "toInsertInto":Ljava/lang/StringBuilder;
    .local v6, "recursionCount":I
    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFRuleSet;->format(JLjava/lang/StringBuilder;II)V

    .line 308
    .end local v2    # "numberToFormat":J
    goto :goto_41

    .line 309
    .end local v4    # "toInsertInto":Ljava/lang/StringBuilder;
    .end local v6    # "recursionCount":I
    .restart local p3    # "toInsertInto":Ljava/lang/StringBuilder;
    .restart local p5    # "recursionCount":I
    :cond_14
    move-object v4, p3

    move v6, p5

    .end local p3    # "toInsertInto":Ljava/lang/StringBuilder;
    .end local p5    # "recursionCount":I
    .restart local v4    # "toInsertInto":Ljava/lang/StringBuilder;
    .restart local v6    # "recursionCount":I
    const-wide v0, 0x1fffffffffffffL

    cmp-long p3, p1, v0

    if-gtz p3, :cond_31

    .line 313
    iget p3, p0, Landroid/icu/text/NFSubstitution;->pos:I

    add-int/2addr p3, p4

    iget-object p5, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    long-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/NFSubstitution;->transformNumber(D)D

    move-result-wide v0

    invoke-virtual {p5, v0, v1}, Landroid/icu/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v4, p3, p5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 323
    :cond_31
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/NFSubstitution;->transformNumber(J)J

    move-result-wide v0

    .line 324
    .local v0, "numberToFormat":J
    iget p3, p0, Landroid/icu/text/NFSubstitution;->pos:I

    add-int/2addr p3, p4

    iget-object p5, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {p5, v0, v1}, Landroid/icu/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v4, p3, p5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .end local v0    # "numberToFormat":J
    :goto_41
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "that"    # Ljava/lang/Object;

    .line 243
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 244
    return v0

    .line 246
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 247
    return v1

    .line 249
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_3a

    .line 250
    move-object v2, p1

    check-cast v2, Landroid/icu/text/NFSubstitution;

    .line 252
    .local v2, "that2":Landroid/icu/text/NFSubstitution;
    iget v3, p0, Landroid/icu/text/NFSubstitution;->pos:I

    iget v4, v2, Landroid/icu/text/NFSubstitution;->pos:I

    if-ne v3, v4, :cond_38

    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    if-nez v3, :cond_23

    iget-object v3, v2, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    if-nez v3, :cond_38

    :cond_23
    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    if-nez v3, :cond_2c

    iget-object v3, v2, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    if-nez v3, :cond_38

    goto :goto_36

    :cond_2c
    iget-object v3, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    iget-object v4, v2, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    .line 254
    invoke-virtual {v3, v4}, Landroid/icu/text/DecimalFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    :goto_36
    move v0, v1

    goto :goto_39

    :cond_38
    nop

    .line 252
    :goto_39
    return v0

    .line 256
    .end local v2    # "that2":Landroid/icu/text/NFSubstitution;
    :cond_3a
    return v0
.end method

.method public final greylist-max-o getPos()I
    .registers 2

    .line 526
    iget v0, p0, Landroid/icu/text/NFSubstitution;->pos:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 261
    nop

    .line 262
    const/16 v0, 0x2a

    return v0
.end method

.method public greylist-max-o isModulusSubstitution()Z
    .registers 2

    .line 543
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V
    .registers 3
    .param p1, "newSymbols"    # Landroid/icu/text/DecimalFormatSymbols;

    .line 548
    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    if-eqz v0, :cond_9

    .line 549
    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/DecimalFormat;->setDecimalFormatSymbols(Landroid/icu/text/DecimalFormatSymbols;)V

    .line 551
    :cond_9
    return-void
.end method

.method public greylist-max-o setDivisor(IS)V
    .registers 3
    .param p1, "radix"    # I
    .param p2, "exponent"    # S

    .line 228
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 277
    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    if-eqz v0, :cond_28

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/icu/text/NFSubstitution;->tokenChar()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    invoke-virtual {v1}, Landroid/icu/text/NFRuleSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/icu/text/NFSubstitution;->tokenChar()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 280
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/icu/text/NFSubstitution;->tokenChar()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/NFSubstitution;->numberFormat:Landroid/icu/text/DecimalFormat;

    invoke-virtual {v1}, Landroid/icu/text/DecimalFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/icu/text/NFSubstitution;->tokenChar()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract greylist-max-o tokenChar()C
.end method

.method public abstract greylist-max-o transformNumber(D)D
.end method

.method public abstract greylist-max-o transformNumber(J)J
.end method
