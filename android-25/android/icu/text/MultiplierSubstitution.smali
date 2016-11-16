.class Landroid/icu/text/MultiplierSubstitution;
.super Landroid/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# instance fields
.field divisor:D


# direct methods
.method constructor <init>(IDLandroid/icu/text/NFRuleSet;Ljava/lang/String;)V
    .locals 4
    .param p1, "pos"    # I
    .param p2, "divisor"    # D
    .param p4, "ruleSet"    # Landroid/icu/text/NFRuleSet;
    .param p5, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 660
    invoke-direct {p0, p1, p4, p5}, Landroid/icu/text/NFSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    #@3
    .line 665
    iput-wide p2, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:D

    #@5
    .line 667
    const-wide/16 v0, 0x0

    #@7
    cmpl-double v0, p2, v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 668
    new-instance v0, Ljava/lang/IllegalStateException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "Substitution with divisor 0 "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const/4 v2, 0x0

    #@1a
    invoke-virtual {p5, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    .line 669
    const-string/jumbo v2, " | "

    #@25
    .line 668
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 669
    invoke-virtual {p5, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    .line 668
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v1

    #@35
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@38
    throw v0

    #@39
    .line 659
    :cond_0
    return-void
.end method


# virtual methods
.method public calcUpperBound(D)D
    .locals 2
    .param p1, "oldUpperBound"    # D

    #@0
    .prologue
    .line 752
    iget-wide v0, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:D

    #@2
    return-wide v0
.end method

.method public composeRuleValue(DD)D
    .locals 3
    .param p1, "newRuleValue"    # D
    .param p3, "oldRuleValue"    # D

    #@0
    .prologue
    .line 743
    iget-wide v0, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:D

    #@2
    mul-double/2addr v0, p1

    #@3
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 696
    invoke-super {p0, p1}, Landroid/icu/text/NFSubstitution;->equals(Ljava/lang/Object;)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-wide v2, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:D

    #@9
    check-cast p1, Landroid/icu/text/MultiplierSubstitution;

    #@b
    .end local p1    # "that":Ljava/lang/Object;
    iget-wide v4, p1, Landroid/icu/text/MultiplierSubstitution;->divisor:D

    #@d
    cmpl-double v1, v2, v4

    #@f
    if-nez v1, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    :cond_0
    return v0
.end method

.method public setDivisor(II)V
    .locals 4
    .param p1, "radix"    # I
    .param p2, "exponent"    # I

    #@0
    .prologue
    .line 679
    int-to-double v0, p1

    #@1
    int-to-double v2, p2

    #@2
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    #@5
    move-result-wide v0

    #@6
    iput-wide v0, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:D

    #@8
    .line 681
    iget-wide v0, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:D

    #@a
    const-wide/16 v2, 0x0

    #@c
    cmpl-double v0, v0, v2

    #@e
    if-nez v0, :cond_0

    #@10
    .line 682
    new-instance v0, Ljava/lang/IllegalStateException;

    #@12
    const-string/jumbo v1, "Substitution with divisor 0"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 678
    :cond_0
    return-void
.end method

.method tokenChar()C
    .locals 1

    #@0
    .prologue
    .line 764
    const/16 v0, 0x3c

    #@2
    return v0
.end method

.method public transformNumber(D)D
    .locals 3
    .param p1, "number"    # D

    #@0
    .prologue
    .line 722
    iget-object v0, p0, Landroid/icu/text/NFSubstitution;->ruleSet:Landroid/icu/text/NFRuleSet;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 723
    iget-wide v0, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:D

    #@6
    div-double v0, p1, v0

    #@8
    return-wide v0

    #@9
    .line 725
    :cond_0
    iget-wide v0, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:D

    #@b
    div-double v0, p1, v0

    #@d
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    #@10
    move-result-wide v0

    #@11
    return-wide v0
.end method

.method public transformNumber(J)J
    .locals 5
    .param p1, "number"    # J

    #@0
    .prologue
    .line 709
    long-to-double v0, p1

    #@1
    iget-wide v2, p0, Landroid/icu/text/MultiplierSubstitution;->divisor:D

    #@3
    div-double/2addr v0, v2

    #@4
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    #@7
    move-result-wide v0

    #@8
    double-to-long v0, v0

    #@9
    return-wide v0
.end method
