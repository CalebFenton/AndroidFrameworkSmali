.class Landroid/icu/text/AbsoluteValueSubstitution;
.super Landroid/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# direct methods
.method constructor blacklist <init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V
    .registers 4
    .param p1, "pos"    # I
    .param p2, "ruleSet"    # Landroid/icu/text/NFRuleSet;
    .param p3, "description"    # Ljava/lang/String;

    .line 1423
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/NFSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    .line 1424
    return-void
.end method


# virtual methods
.method public blacklist calcUpperBound(D)D
    .registers 5
    .param p1, "oldUpperBound"    # D

    .line 1474
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    return-wide v0
.end method

.method public blacklist composeRuleValue(DD)D
    .registers 7
    .param p1, "newRuleValue"    # D
    .param p3, "oldRuleValue"    # D

    .line 1464
    neg-double v0, p1

    return-wide v0
.end method

.method blacklist tokenChar()C
    .registers 2

    .line 1487
    const/16 v0, 0x3e

    return v0
.end method

.method public blacklist transformNumber(D)D
    .registers 5
    .param p1, "number"    # D

    .line 1447
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist transformNumber(J)J
    .registers 5
    .param p1, "number"    # J

    .line 1437
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method
