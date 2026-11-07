.class Landroid/icu/text/IntegralPartSubstitution;
.super Landroid/icu/text/NFSubstitution;
.source "NFSubstitution.java"


# direct methods
.method constructor blacklist <init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V
    .registers 4
    .param p1, "pos"    # I
    .param p2, "ruleSet"    # Landroid/icu/text/NFRuleSet;
    .param p3, "description"    # Ljava/lang/String;

    .line 1113
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/NFSubstitution;-><init>(ILandroid/icu/text/NFRuleSet;Ljava/lang/String;)V

    .line 1114
    return-void
.end method


# virtual methods
.method public blacklist calcUpperBound(D)D
    .registers 5
    .param p1, "oldUpperBound"    # D

    .line 1168
    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    return-wide v0
.end method

.method public blacklist composeRuleValue(DD)D
    .registers 7
    .param p1, "newRuleValue"    # D
    .param p3, "oldRuleValue"    # D

    .line 1157
    add-double v0, p1, p3

    return-wide v0
.end method

.method blacklist tokenChar()C
    .registers 2

    .line 1181
    const/16 v0, 0x3c

    return v0
.end method

.method public blacklist transformNumber(D)D
    .registers 5
    .param p1, "number"    # D

    .line 1138
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist transformNumber(J)J
    .registers 3
    .param p1, "number"    # J

    .line 1128
    return-wide p1
.end method
