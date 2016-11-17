.class Landroid/icu/text/SameValueSubstitution;
.super Landroid/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# direct methods
.method constructor <init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V
    .locals 2
    .param p1, "pos"    # I
    .param p2, "ruleSet"    # Landroid/icu/text/NFRuleSet;
    .param p3, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 559
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/NFSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    #@3
    .line 560
    const-string/jumbo v0, "=="

    #@6
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 561
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@e
    const-string/jumbo v1, "== is not a legal token"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 558
    :cond_0
    return-void
.end method


# virtual methods
.method public calcUpperBound(D)D
    .locals 1
    .param p1, "oldUpperBound"    # D

    #@0
    .prologue
    .line 608
    return-wide p1
.end method

.method public composeRuleValue(DD)D
    .locals 1
    .param p1, "newRuleValue"    # D
    .param p3, "oldRuleValue"    # D

    #@0
    .prologue
    .line 599
    return-wide p1
.end method

.method tokenChar()C
    .locals 1

    #@0
    .prologue
    .line 620
    const/16 v0, 0x3d

    #@2
    return v0
.end method

.method public transformNumber(D)D
    .locals 1
    .param p1, "number"    # D

    #@0
    .prologue
    .line 582
    return-wide p1
.end method

.method public transformNumber(J)J
    .locals 1
    .param p1, "number"    # J

    #@0
    .prologue
    .line 574
    return-wide p1
.end method
