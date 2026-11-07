.class Landroid/icu/text/ModulusSubstitution;
.super Landroid/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# instance fields
.field blacklist divisor:J

.field private final blacklist ruleToUse:Landroid/icu/text/NFRule;


# direct methods
.method constructor blacklist <init>(ILandroid/icu/text/NFRule;Landroid/icu/text/NFRule;Landroid/icu/text/NFRuleSet;Ljava/lang/String;)V
    .registers 10
    .param p1, "pos"    # I
    .param p2, "rule"    # Landroid/icu/text/NFRule;
    .param p3, "rulePredecessor"    # Landroid/icu/text/NFRule;
    .param p4, "ruleSet"    # Landroid/icu/text/NFRuleSet;
    .param p5, "description"    # Ljava/lang/String;

    .line 866
    invoke-direct {p0, p1, p4, p5}, Landroid/icu/text/NFSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    .line 871
    invoke-virtual {p2}, Landroid/icu/text/NFRule;->getDivisor()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/icu/text/ModulusSubstitution;->divisor:J

    .line 873
    iget-wide v0, p0, Landroid/icu/text/ModulusSubstitution;->divisor:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_20

    .line 883
    const-string v0, ">>>"

    invoke-virtual {p5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 884
    iput-object p3, p0, Landroid/icu/text/ModulusSubstitution;->ruleToUse:Landroid/icu/text/NFRule;

    goto :goto_1f

    .line 886
    :cond_1c
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/ModulusSubstitution;->ruleToUse:Landroid/icu/text/NFRule;

    .line 888
    :goto_1f
    return-void

    .line 874
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Substitution with bad divisor ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/icu/text/ModulusSubstitution;->divisor:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p5, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 875
    invoke-virtual {p5, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist calcUpperBound(D)D
    .registers 5
    .param p1, "oldUpperBound"    # D

    .line 1067
    iget-wide v0, p0, Landroid/icu/text/ModulusSubstitution;->divisor:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public blacklist composeRuleValue(DD)D
    .registers 7
    .param p1, "newRuleValue"    # D
    .param p3, "oldRuleValue"    # D

    .line 1057
    iget-wide v0, p0, Landroid/icu/text/ModulusSubstitution;->divisor:J

    long-to-double v0, v0

    rem-double v0, p3, v0

    sub-double v0, p3, v0

    add-double/2addr v0, p1

    return-wide v0
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

    .line 1019
    iget-object v0, p0, Landroid/icu/text/ModulusSubstitution;->ruleToUse:Landroid/icu/text/NFRule;

    if-nez v0, :cond_9

    .line 1020
    invoke-super/range {p0 .. p9}, Landroid/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZII)Ljava/lang/Number;

    move-result-object v0

    return-object v0

    .line 1026
    :cond_9
    iget-object v1, p0, Landroid/icu/text/ModulusSubstitution;->ruleToUse:Landroid/icu/text/NFRule;

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p5

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v1 .. v8}, Landroid/icu/text/NFRule;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;ZDII)Ljava/lang/Number;

    move-result-object v0

    .line 1028
    .local v0, "tempResult":Ljava/lang/Number;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    if-eqz v1, :cond_36

    .line 1029
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    .line 1031
    .local v1, "result":D
    invoke-virtual {p0, v1, v2, p3, p4}, Landroid/icu/text/ModulusSubstitution;->composeRuleValue(DD)D

    move-result-wide v1

    .line 1032
    double-to-long v3, v1

    long-to-double v3, v3

    cmpl-double v3, v1, v3

    if-nez v3, :cond_31

    .line 1033
    double-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    return-object v3

    .line 1035
    :cond_31
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    return-object v3

    .line 1038
    .end local v1    # "result":D
    :cond_36
    return-object v0
.end method

.method public blacklist doSubstitution(DLjava/lang/StringBuilder;II)V
    .registers 12
    .param p1, "number"    # D
    .param p3, "toInsertInto"    # Ljava/lang/StringBuilder;
    .param p4, "position"    # I
    .param p5, "recursionCount"    # I

    .line 967
    iget-object v0, p0, Landroid/icu/text/ModulusSubstitution;->ruleToUse:Landroid/icu/text/NFRule;

    if-nez v0, :cond_b

    .line 968
    invoke-super/range {p0 .. p5}, Landroid/icu/text/NFSubstitution;->doSubstitution(DLjava/lang/StringBuilder;II)V

    move-object v3, p3

    move-wide p2, p1

    move-object p1, p0

    .end local p1    # "number":D
    .end local p3    # "toInsertInto":Ljava/lang/StringBuilder;
    .local v3, "toInsertInto":Ljava/lang/StringBuilder;
    .local p2, "number":D
    goto :goto_1b

    .line 973
    .end local v3    # "toInsertInto":Ljava/lang/StringBuilder;
    .end local p2    # "number":D
    .restart local p1    # "number":D
    .restart local p3    # "toInsertInto":Ljava/lang/StringBuilder;
    :cond_b
    move-object v3, p3

    move-wide p2, p1

    move-object p1, p0

    .end local p1    # "number":D
    .end local p3    # "toInsertInto":Ljava/lang/StringBuilder;
    .restart local v3    # "toInsertInto":Ljava/lang/StringBuilder;
    .restart local p2    # "number":D
    invoke-virtual {p0, p2, p3}, Landroid/icu/text/ModulusSubstitution;->transformNumber(D)D

    move-result-wide v1

    .line 975
    .local v1, "numberToFormat":D
    iget-object v0, p1, Landroid/icu/text/ModulusSubstitution;->ruleToUse:Landroid/icu/text/NFRule;

    iget v4, p1, Landroid/icu/text/ModulusSubstitution;->pos:I

    add-int/2addr v4, p4

    move v5, p5

    .end local p5    # "recursionCount":I
    .local v5, "recursionCount":I
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/NFRule;->doFormat(DLjava/lang/StringBuilder;II)V

    .line 977
    .end local v1    # "numberToFormat":D
    .end local v5    # "recursionCount":I
    .restart local p5    # "recursionCount":I
    :goto_1b
    return-void
.end method

.method public blacklist doSubstitution(JLjava/lang/StringBuilder;II)V
    .registers 12
    .param p1, "number"    # J
    .param p3, "toInsertInto"    # Ljava/lang/StringBuilder;
    .param p4, "position"    # I
    .param p5, "recursionCount"    # I

    .line 943
    iget-object v0, p0, Landroid/icu/text/ModulusSubstitution;->ruleToUse:Landroid/icu/text/NFRule;

    if-nez v0, :cond_b

    .line 944
    invoke-super/range {p0 .. p5}, Landroid/icu/text/NFSubstitution;->doSubstitution(JLjava/lang/StringBuilder;II)V

    move-object v3, p3

    move-wide p2, p1

    move-object p1, p0

    .end local p1    # "number":J
    .end local p3    # "toInsertInto":Ljava/lang/StringBuilder;
    .local v3, "toInsertInto":Ljava/lang/StringBuilder;
    .local p2, "number":J
    goto :goto_1b

    .line 949
    .end local v3    # "toInsertInto":Ljava/lang/StringBuilder;
    .end local p2    # "number":J
    .restart local p1    # "number":J
    .restart local p3    # "toInsertInto":Ljava/lang/StringBuilder;
    :cond_b
    move-object v3, p3

    move-wide p2, p1

    move-object p1, p0

    .end local p1    # "number":J
    .end local p3    # "toInsertInto":Ljava/lang/StringBuilder;
    .restart local v3    # "toInsertInto":Ljava/lang/StringBuilder;
    .restart local p2    # "number":J
    invoke-virtual {p0, p2, p3}, Landroid/icu/text/ModulusSubstitution;->transformNumber(J)J

    move-result-wide v1

    .line 950
    .local v1, "numberToFormat":J
    iget-object v0, p1, Landroid/icu/text/ModulusSubstitution;->ruleToUse:Landroid/icu/text/NFRule;

    iget v4, p1, Landroid/icu/text/ModulusSubstitution;->pos:I

    add-int/2addr v4, p4

    move v5, p5

    .end local p5    # "recursionCount":I
    .local v5, "recursionCount":I
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/NFRule;->doFormat(JLjava/lang/StringBuilder;II)V

    .line 952
    .end local v1    # "numberToFormat":J
    .end local v5    # "recursionCount":I
    .restart local p5    # "recursionCount":I
    :goto_1b
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "that"    # Ljava/lang/Object;

    .line 917
    invoke-super {p0, p1}, Landroid/icu/text/NFSubstitution;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 918
    move-object v0, p1

    check-cast v0, Landroid/icu/text/ModulusSubstitution;

    .line 920
    .local v0, "that2":Landroid/icu/text/ModulusSubstitution;
    iget-wide v2, p0, Landroid/icu/text/ModulusSubstitution;->divisor:J

    iget-wide v4, v0, Landroid/icu/text/ModulusSubstitution;->divisor:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_13

    const/4 v1, 0x1

    :cond_13
    return v1

    .line 922
    .end local v0    # "that2":Landroid/icu/text/ModulusSubstitution;
    :cond_14
    return v1
.end method

.method public blacklist isModulusSubstitution()Z
    .registers 2

    .line 1080
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setDivisor(IS)V
    .registers 7
    .param p1, "radix"    # I
    .param p2, "exponent"    # S

    .line 898
    int-to-long v0, p1

    invoke-static {v0, v1, p2}, Landroid/icu/text/NFRule;->power(JS)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/icu/text/ModulusSubstitution;->divisor:J

    .line 900
    iget-wide v0, p0, Landroid/icu/text/ModulusSubstitution;->divisor:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 903
    return-void

    .line 901
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Substitution with bad divisor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist tokenChar()C
    .registers 2

    .line 1089
    const/16 v0, 0x3e

    return v0
.end method

.method public blacklist transformNumber(D)D
    .registers 5
    .param p1, "number"    # D

    .line 998
    iget-wide v0, p0, Landroid/icu/text/ModulusSubstitution;->divisor:J

    long-to-double v0, v0

    rem-double v0, p1, v0

    return-wide v0
.end method

.method public blacklist transformNumber(J)J
    .registers 5
    .param p1, "number"    # J

    .line 987
    iget-wide v0, p0, Landroid/icu/text/ModulusSubstitution;->divisor:J

    rem-long v0, p1, v0

    return-wide v0
.end method
