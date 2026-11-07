.class Landroid/icu/text/MultiplierSubstitution;
.super Landroid/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# instance fields
.field blacklist divisor:J

.field blacklist owningRule:Landroid/icu/text/NFRule;


# direct methods
.method constructor blacklist <init>(ILandroid/icu/text/NFRule;Landroid/icu/text/NFRuleSet;Ljava/lang/String;)V
    .registers 9
    .param p1, "pos"    # I
    .param p2, "rule"    # Landroid/icu/text/NFRule;
    .param p3, "ruleSet"    # Landroid/icu/text/NFRuleSet;
    .param p4, "description"    # Ljava/lang/String;

    .line 688
    invoke-direct {p0, p1, p3, p4}, Landroid/icu/text/NFSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    .line 693
    invoke-virtual {p2}, Landroid/icu/text/NFRule;->getDivisor()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:J

    .line 694
    iput-object p2, p0, Landroid/icu/text/MultiplierSubstitution;->owningRule:Landroid/icu/text/NFRule;

    .line 696
    iget-wide v0, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    .line 700
    return-void

    .line 697
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Substitution with divisor 0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p4, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 698
    invoke-virtual {p4, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

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

    .line 802
    iget-wide v0, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public blacklist composeRuleValue(DD)D
    .registers 7
    .param p1, "newRuleValue"    # D
    .param p3, "oldRuleValue"    # D

    .line 792
    iget-wide v0, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:J

    long-to-double v0, v0

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "that"    # Ljava/lang/Object;

    .line 727
    invoke-super {p0, p1}, Landroid/icu/text/NFSubstitution;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-wide v0, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:J

    move-object v2, p1

    check-cast v2, Landroid/icu/text/MultiplierSubstitution;

    iget-wide v2, v2, Landroid/icu/text/MultiplierSubstitution;->divisor:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public blacklist setDivisor(IS)V
    .registers 7
    .param p1, "radix"    # I
    .param p2, "exponent"    # S

    .line 709
    int-to-long v0, p1

    invoke-static {v0, v1, p2}, Landroid/icu/text/NFRule;->power(JS)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:J

    .line 711
    iget-wide v0, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    .line 714
    return-void

    .line 712
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Substitution with divisor 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist tokenChar()C
    .registers 2

    .line 815
    const/16 v0, 0x3c

    return v0
.end method

.method public blacklist transformNumber(D)D
    .registers 5
    .param p1, "number"    # D

    .line 770
    iget-object v0, p0, Landroid/icu/text/MultiplierSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroid/icu/text/MultiplierSubstitution;->owningRule:Landroid/icu/text/NFRule;

    invoke-virtual {v0}, Landroid/icu/text/NFRule;->hasModulusSubstitution()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroid/icu/text/MultiplierSubstitution;->owningRule:Landroid/icu/text/NFRule;

    iget-object v0, v0, Landroid/icu/text/NFRule;->formatter:Landroid/icu/text/RuleBasedNumberFormat;

    invoke-virtual {v0}, Landroid/icu/text/RuleBasedNumberFormat;->getRoundingMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    goto :goto_1e

    .line 773
    :cond_18
    iget-wide v0, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:J

    long-to-double v0, v0

    div-double v0, p1, v0

    return-wide v0

    .line 771
    :cond_1e
    :goto_1e
    iget-wide v0, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:J

    long-to-double v0, v0

    div-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist transformNumber(J)J
    .registers 5
    .param p1, "number"    # J

    .line 741
    iget-wide v0, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:J

    div-long v0, p1, v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method
