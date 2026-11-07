.class Landroid/icu/text/SameValueSubstitution;
.super Landroid/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# direct methods
.method constructor blacklist <init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V
    .registers 6
    .param p1, "pos"    # I
    .param p2, "ruleSet"    # Landroid/icu/text/NFRuleSet;
    .param p3, "description"    # Ljava/lang/String;

    .line 576
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/NFSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    .line 577
    const-string v0, "=="

    invoke-virtual {p3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 580
    return-void

    .line 578
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "== is not a legal token"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist calcUpperBound(D)D
    .registers 3
    .param p1, "oldUpperBound"    # D

    .line 629
    return-wide p1
.end method

.method public blacklist composeRuleValue(DD)D
    .registers 5
    .param p1, "newRuleValue"    # D
    .param p3, "oldRuleValue"    # D

    .line 619
    return-wide p1
.end method

.method blacklist tokenChar()C
    .registers 2

    .line 642
    const/16 v0, 0x3d

    return v0
.end method

.method public blacklist transformNumber(D)D
    .registers 3
    .param p1, "number"    # D

    .line 601
    return-wide p1
.end method

.method public blacklist transformNumber(J)J
    .registers 3
    .param p1, "number"    # J

    .line 592
    return-wide p1
.end method
