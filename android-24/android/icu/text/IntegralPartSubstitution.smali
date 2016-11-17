.class Landroid/icu/text/IntegralPartSubstitution;
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
    .line 1051
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/NFSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    #@3
    .line 1050
    return-void
.end method


# virtual methods
.method public calcUpperBound(D)D
    .locals 2
    .param p1, "oldUpperBound"    # D

    #@0
    .prologue
    .line 1102
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
    .line 1092
    add-double v0, p1, p3

    #@2
    return-wide v0
.end method

.method tokenChar()C
    .locals 1

    #@0
    .prologue
    .line 1114
    const/16 v0, 0x3c

    #@2
    return v0
.end method

.method public transformNumber(D)D
    .locals 3
    .param p1, "number"    # D

    #@0
    .prologue
    .line 1074
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method public transformNumber(J)J
    .locals 1
    .param p1, "number"    # J

    #@0
    .prologue
    .line 1065
    return-wide p1
.end method
