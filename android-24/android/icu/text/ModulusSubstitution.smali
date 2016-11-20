.class Landroid/icu/text/ModulusSubstitution;
.super Landroid/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# instance fields
.field divisor:D

.field private final ruleToUse:Landroid/icu/text/NFRule;


# direct methods
.method constructor <init>(IDLandroid/icu/text/NFRule;Landroid/icu/text/NFRuleSet;Ljava/lang/String;)V
    .locals 4
    .param p1, "pos"    # I
    .param p2, "divisor"    # D
    .param p4, "rulePredecessor"    # Landroid/icu/text/NFRule;
    .param p5, "ruleSet"    # Landroid/icu/text/NFRuleSet;
    .param p6, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 815
    invoke-direct {p0, p1, p5, p6}, Landroid/icu/text/NFSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    #@3
    .line 820
    iput-wide p2, p0, Landroid/icu/text/ModulusSubstitution;->divisor:D

    #@5
    .line 822
    const-wide/16 v0, 0x0

    #@7
    cmpl-double v0, p2, v0

    #@9
    if-nez v0, :cond_0

    #@b
    .line 823
    new-instance v0, Ljava/lang/IllegalStateException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "Substitution with bad divisor ("

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    const-string/jumbo v2, ") "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    const/4 v2, 0x0

    #@25
    invoke-virtual {p6, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 824
    const-string/jumbo v2, " | "

    #@30
    .line 823
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 824
    invoke-virtual {p6, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@37
    move-result-object v2

    #@38
    .line 823
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v1

    #@40
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@43
    throw v0

    #@44
    .line 832
    :cond_0
    const-string/jumbo v0, ">>>"

    #@47
    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v0

    #@4b
    if-eqz v0, :cond_1

    #@4d
    .line 833
    iput-object p4, p0, Landroid/icu/text/ModulusSubstitution;->ruleToUse:Landroid/icu/text/NFRule;

    #@4f
    .line 813
    :goto_0
    return-void

    #@50
    .line 835
    :cond_1
    const/4 v0, 0x0

    #@51
    iput-object v0, p0, Landroid/icu/text/ModulusSubstitution;->ruleToUse:Landroid/icu/text/NFRule;

    #@53
    goto :goto_0
.end method


# virtual methods
.method public calcUpperBound(D)D
    .locals 2
    .param p1, "oldUpperBound"    # D

    #@0
    .prologue
    .line 1007
    iget-wide v0, p0, Landroid/icu/text/ModulusSubstitution;->divisor:D

    #@2
    return-wide v0
.end method

.method public composeRuleValue(DD)D
    .locals 3
    .param p1, "newRuleValue"    # D
    .param p3, "oldRuleValue"    # D

    #@0
    .prologue
    .line 998
    iget-wide v0, p0, Landroid/icu/text/ModulusSubstitution;->divisor:D

    #@2
    rem-double v0, p3, v0

    #@4
    sub-double v0, p3, v0

    #@6
    add-double/2addr v0, p1

    #@7
    return-wide v0
.end method

.method public doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;
    .locals 9
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "parsePosition"    # Ljava/text/ParsePosition;
    .param p3, "baseValue"    # D
    .param p5, "upperBound"    # D
    .param p7, "lenientParse"    # Z

    #@0
    .prologue
    .line 961
    iget-object v0, p0, Landroid/icu/text/ModulusSubstitution;->ruleToUse:Landroid/icu/text/NFRule;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 962
    invoke-super/range {p0 .. p7}, Landroid/icu/text/NFSubstitution;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 968
    :cond_0
    iget-object v0, p0, Landroid/icu/text/ModulusSubstitution;->ruleToUse:Landroid/icu/text/NFRule;

    #@b
    const/4 v3, 0x0

    #@c
    move-object v1, p1

    #@d
    move-object v2, p2

    #@e
    move-wide v4, p5

    #@f
    invoke-virtual/range {v0 .. v5}, Landroid/icu/text/NFRule;->doParse(Ljava/lang/String;Ljava/text/ParsePosition;ZD)Ljava/lang/Number;

    #@12
    move-result-object v8

    #@13
    .line 970
    .local v8, "tempResult":Ljava/lang/Number;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    #@16
    move-result v0

    #@17
    if-eqz v0, :cond_2

    #@19
    .line 971
    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    #@1c
    move-result-wide v6

    #@1d
    .line 973
    .local v6, "result":D
    invoke-virtual {p0, v6, v7, p3, p4}, Landroid/icu/text/ModulusSubstitution;->composeRuleValue(DD)D

    #@20
    move-result-wide v6

    #@21
    .line 974
    double-to-long v0, v6

    #@22
    long-to-double v0, v0

    #@23
    cmpl-double v0, v6, v0

    #@25
    if-nez v0, :cond_1

    #@27
    .line 975
    double-to-long v0, v6

    #@28
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@2b
    move-result-object v0

    #@2c
    return-object v0

    #@2d
    .line 977
    :cond_1
    new-instance v0, Ljava/lang/Double;

    #@2f
    invoke-direct {v0, v6, v7}, Ljava/lang/Double;-><init>(D)V

    #@32
    return-object v0

    #@33
    .line 980
    .end local v6    # "result":D
    :cond_2
    return-object v8
.end method

.method public doSubstitution(DLjava/lang/StringBuffer;II)V
    .locals 7
    .param p1, "number"    # D
    .param p3, "toInsertInto"    # Ljava/lang/StringBuffer;
    .param p4, "position"    # I
    .param p5, "recursionCount"    # I

    #@0
    .prologue
    .line 912
    iget-object v0, p0, Landroid/icu/text/ModulusSubstitution;->ruleToUse:Landroid/icu/text/NFRule;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 913
    invoke-super/range {p0 .. p5}, Landroid/icu/text/NFSubstitution;->doSubstitution(DLjava/lang/StringBuffer;II)V

    #@7
    .line 908
    :goto_0
    return-void

    #@8
    .line 918
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/ModulusSubstitution;->transformNumber(D)D

    #@b
    move-result-wide v2

    #@c
    .line 920
    .local v2, "numberToFormat":D
    iget-object v1, p0, Landroid/icu/text/ModulusSubstitution;->ruleToUse:Landroid/icu/text/NFRule;

    #@e
    iget v0, p0, Landroid/icu/text/NFSubstitution;->pos:I

    #@10
    add-int v5, p4, v0

    #@12
    move-object v4, p3

    #@13
    move v6, p5

    #@14
    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFRule;->doFormat(DLjava/lang/StringBuffer;II)V

    #@17
    goto :goto_0
.end method

.method public doSubstitution(JLjava/lang/StringBuffer;II)V
    .locals 7
    .param p1, "number"    # J
    .param p3, "toInsertInto"    # Ljava/lang/StringBuffer;
    .param p4, "position"    # I
    .param p5, "recursionCount"    # I

    #@0
    .prologue
    .line 889
    iget-object v0, p0, Landroid/icu/text/ModulusSubstitution;->ruleToUse:Landroid/icu/text/NFRule;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 890
    invoke-super/range {p0 .. p5}, Landroid/icu/text/NFSubstitution;->doSubstitution(JLjava/lang/StringBuffer;II)V

    #@7
    .line 885
    :goto_0
    return-void

    #@8
    .line 895
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/ModulusSubstitution;->transformNumber(J)J

    #@b
    move-result-wide v2

    #@c
    .line 896
    .local v2, "numberToFormat":J
    iget-object v1, p0, Landroid/icu/text/ModulusSubstitution;->ruleToUse:Landroid/icu/text/NFRule;

    #@e
    iget v0, p0, Landroid/icu/text/NFSubstitution;->pos:I

    #@10
    add-int v5, p4, v0

    #@12
    move-object v4, p3

    #@13
    move v6, p5

    #@14
    invoke-virtual/range {v1 .. v6}, Landroid/icu/text/NFRule;->doFormat(JLjava/lang/StringBuffer;II)V

    #@17
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 864
    invoke-super {p0, p1}, Landroid/icu/text/NFSubstitution;->equals(Ljava/lang/Object;)Z

    #@4
    move-result v2

    #@5
    if-eqz v2, :cond_1

    #@7
    move-object v0, p1

    #@8
    .line 865
    check-cast v0, Landroid/icu/text/ModulusSubstitution;

    #@a
    .line 867
    .local v0, "that2":Landroid/icu/text/ModulusSubstitution;
    iget-wide v2, p0, Landroid/icu/text/ModulusSubstitution;->divisor:D

    #@c
    iget-wide v4, v0, Landroid/icu/text/ModulusSubstitution;->divisor:D

    #@e
    cmpl-double v2, v2, v4

    #@10
    if-nez v2, :cond_0

    #@12
    const/4 v1, 0x1

    #@13
    :cond_0
    return v1

    #@14
    .line 869
    .end local v0    # "that2":Landroid/icu/text/ModulusSubstitution;
    :cond_1
    return v1
.end method

.method public isModulusSubstitution()Z
    .locals 1

    #@0
    .prologue
    .line 1019
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public setDivisor(II)V
    .locals 4
    .param p1, "radix"    # I
    .param p2, "exponent"    # I

    #@0
    .prologue
    .line 846
    int-to-double v0, p1

    #@1
    int-to-double v2, p2

    #@2
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    #@5
    move-result-wide v0

    #@6
    iput-wide v0, p0, Landroid/icu/text/ModulusSubstitution;->divisor:D

    #@8
    .line 848
    iget-wide v0, p0, Landroid/icu/text/ModulusSubstitution;->divisor:D

    #@a
    const-wide/16 v2, 0x0

    #@c
    cmpl-double v0, v0, v2

    #@e
    if-nez v0, :cond_0

    #@10
    .line 849
    new-instance v0, Ljava/lang/IllegalStateException;

    #@12
    const-string/jumbo v1, "Substitution with bad divisor"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 845
    :cond_0
    return-void
.end method

.method tokenChar()C
    .locals 1

    #@0
    .prologue
    .line 1027
    const/16 v0, 0x3e

    #@2
    return v0
.end method

.method public transformNumber(D)D
    .locals 3
    .param p1, "number"    # D

    #@0
    .prologue
    .line 941
    iget-wide v0, p0, Landroid/icu/text/ModulusSubstitution;->divisor:D

    #@2
    rem-double v0, p1, v0

    #@4
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public transformNumber(J)J
    .locals 5
    .param p1, "number"    # J

    #@0
    .prologue
    .line 931
    long-to-double v0, p1

    #@1
    iget-wide v2, p0, Landroid/icu/text/ModulusSubstitution;->divisor:D

    #@3
    rem-double/2addr v0, v2

    #@4
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    #@7
    move-result-wide v0

    #@8
    double-to-long v0, v0

    #@9
    return-wide v0
.end method
