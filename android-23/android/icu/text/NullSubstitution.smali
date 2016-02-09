.class Landroid/icu/text/NullSubstitution;
.super Landroid/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# direct methods
.method constructor <init>(ILandroid/icu/text/NFRuleSet;Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "ruleSet"    # Landroid/icu/text/NFRuleSet;
    .param p3, "formatter"    # Landroid/icu/text/RuleBasedNumberFormat;
    .param p4, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1697
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/NFSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    #@3
    .line 1696
    return-void
.end method


# virtual methods
.method public calcUpperBound(D)D
    .locals 2
    .param p1, "oldUpperBound"    # D

    #@0
    .prologue
    .line 1783
    const-wide/16 v0, 0x0

    #@2
    return-wide v0
.end method

.method public composeRuleValue(DD)D
    .locals 2
    .param p1, "newRuleValue"    # D
    .param p3, "oldRuleValue"    # D

    #@0
    .prologue
    .line 1774
    const-wide/16 v0, 0x0

    #@2
    return-wide v0
.end method

.method public doParse(Ljava/lang/String;Ljava/text/ParsePosition;DDZ)Ljava/lang/Number;
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "parsePosition"    # Ljava/text/ParsePosition;
    .param p3, "baseValue"    # D
    .param p5, "upperBound"    # D
    .param p7, "lenientParse"    # Z

    #@0
    .prologue
    .line 1762
    double-to-long v0, p3

    #@1
    long-to-double v0, v0

    #@2
    cmpl-double v0, p3, v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 1763
    double-to-long v0, p3

    #@7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 1765
    :cond_0
    new-instance v0, Ljava/lang/Double;

    #@e
    invoke-direct {v0, p3, p4}, Ljava/lang/Double;-><init>(D)V

    #@11
    return-object v0
.end method

.method public doSubstitution(DLjava/lang/StringBuffer;I)V
    .locals 0
    .param p1, "number"    # D
    .param p3, "toInsertInto"    # Ljava/lang/StringBuffer;
    .param p4, "position"    # I

    #@0
    .prologue
    .line 1732
    return-void
.end method

.method public doSubstitution(JLjava/lang/StringBuffer;I)V
    .locals 0
    .param p1, "number"    # J
    .param p3, "toInsertInto"    # Ljava/lang/StringBuffer;
    .param p4, "position"    # I

    #@0
    .prologue
    .line 1726
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1708
    invoke-super {p0, p1}, Landroid/icu/text/NFSubstitution;->equals(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isNullSubstitution()Z
    .locals 1

    #@0
    .prologue
    .line 1796
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1716
    const-string/jumbo v0, ""

    #@3
    return-object v0
.end method

.method tokenChar()C
    .locals 1

    #@0
    .prologue
    .line 1804
    const/16 v0, 0x20

    #@2
    return v0
.end method

.method public transformNumber(D)D
    .locals 2
    .param p1, "number"    # D

    #@0
    .prologue
    .line 1749
    const-wide/16 v0, 0x0

    #@2
    return-wide v0
.end method

.method public transformNumber(J)J
    .locals 2
    .param p1, "number"    # J

    #@0
    .prologue
    .line 1740
    const-wide/16 v0, 0x0

    #@2
    return-wide v0
.end method
