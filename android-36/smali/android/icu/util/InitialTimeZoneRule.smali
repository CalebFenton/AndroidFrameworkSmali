.class public Landroid/icu/util/InitialTimeZoneRule;
.super Landroid/icu/util/TimeZoneRule;
.source "InitialTimeZoneRule.java"


# static fields
.field private static final whitelist serialVersionUID:J = 0x1a0b01341cdc0206L


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;II)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rawOffset"    # I
    .param p3, "dstSavings"    # I

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/TimeZoneRule;-><init>(Ljava/lang/String;II)V

    .line 36
    return-void
.end method


# virtual methods
.method public greylist-max-o getFinalStart(II)Ljava/util/Date;
    .registers 4
    .param p1, "prevRawOffset"    # I
    .param p2, "prevDSTSavings"    # I

    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getFirstStart(II)Ljava/util/Date;
    .registers 4
    .param p1, "prevRawOffset"    # I
    .param p2, "prevDSTSavings"    # I

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getNextStart(JIIZ)Ljava/util/Date;
    .registers 7
    .param p1, "base"    # J
    .param p3, "prevRawOffset"    # I
    .param p4, "prevDSTSavings"    # I
    .param p5, "inclusive"    # Z

    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getPreviousStart(JIIZ)Ljava/util/Date;
    .registers 7
    .param p1, "base"    # J
    .param p3, "prevRawOffset"    # I
    .param p4, "prevDSTSavings"    # I
    .param p5, "inclusive"    # Z

    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z
    .registers 3
    .param p1, "other"    # Landroid/icu/util/TimeZoneRule;

    .line 43
    instance-of v0, p1, Landroid/icu/util/InitialTimeZoneRule;

    if-eqz v0, :cond_9

    .line 44
    invoke-super {p0, p1}, Landroid/icu/util/TimeZoneRule;->isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z

    move-result v0

    return v0

    .line 46
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o isTransitionRule()Z
    .registers 2

    .line 97
    const/4 v0, 0x0

    return v0
.end method
