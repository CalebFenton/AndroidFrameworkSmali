.class Landroid/icu/text/AbsoluteValueSubstitution;
.super Landroid/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# direct methods
.method constructor <init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V
    .locals 0
    .param p1, "pos"    # I
    .param p2, "ruleSet"    # Landroid/icu/text/NFRuleSet;
    .param p3, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1355
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/NFSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    #@3
    .line 1354
    return-void
.end method


# virtual methods
.method public calcUpperBound(D)D
    .locals 2
    .param p1, "oldUpperBound"    # D

    #@0
    .prologue
    .line 1402
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    #@5
    return-wide v0
.end method

.method public composeRuleValue(DD)D
    .locals 3
    .param p1, "newRuleValue"    # D
    .param p3, "oldRuleValue"    # D

    #@0
    .prologue
    .line 1393
    neg-double v0, p1

    #@1
    return-wide v0
.end method

.method tokenChar()C
    .locals 1

    #@0
    .prologue
    .line 1414
    const/16 v0, 0x3e

    #@2
    return v0
.end method

.method public transformNumber(D)D
    .locals 3
    .param p1, "number"    # D

    #@0
    .prologue
    .line 1377
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public transformNumber(J)J
    .locals 3
    .param p1, "number"    # J

    #@0
    .prologue
    .line 1368
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method
