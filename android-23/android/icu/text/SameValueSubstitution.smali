.class Landroid/icu/text/SameValueSubstitution;
.super Landroid/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# direct methods
.method constructor <init>(ILandroid/icu/text/NFRuleSet;Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "ruleSet"    # Landroid/icu/text/NFRuleSet;
    .param p3, "formatter"    # Landroid/icu/text/RuleBasedNumberFormat;
    .param p4, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 561
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/NFSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Landroid/icu/text/RuleBasedNumberFormat;Ljava/lang/String;)V

    #@3
    .line 562
    const-string/jumbo v0, "=="

    #@6
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 563
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v1, "== is not a legal token"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 560
    :cond_0
    return-void
.end method


# virtual methods
.method public calcUpperBound(D)D
    .locals 1
    .param p1, "oldUpperBound"    # D

    #@0
    .prologue
    .line 610
    return-wide p1
.end method

.method public composeRuleValue(DD)D
    .locals 1
    .param p1, "newRuleValue"    # D
    .param p3, "oldRuleValue"    # D

    #@0
    .prologue
    .line 601
    return-wide p1
.end method

.method tokenChar()C
    .locals 1

    #@0
    .prologue
    .line 622
    const/16 v0, 0x3d

    #@2
    return v0
.end method

.method public transformNumber(D)D
    .locals 1
    .param p1, "number"    # D

    #@0
    .prologue
    .line 584
    return-wide p1
.end method

.method public transformNumber(J)J
    .locals 1
    .param p1, "number"    # J

    #@0
    .prologue
    .line 576
    return-wide p1
.end method
