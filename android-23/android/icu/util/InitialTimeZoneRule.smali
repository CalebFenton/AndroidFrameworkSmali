.class public Landroid/icu/util/InitialTimeZoneRule;
.super Landroid/icu/util/TimeZoneRule;
.source "InitialTimeZoneRule.java"


# static fields
.field private static final serialVersionUID:J = 0x1a0b01341cdc0206L


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rawOffset"    # I
    .param p3, "dstSavings"    # I

    #@0
    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/TimeZoneRule;-><init>(Ljava/lang/String;II)V

    #@3
    .line 33
    return-void
.end method


# virtual methods
.method public getFinalStart(II)Ljava/util/Date;
    .locals 1
    .param p1, "prevRawOffset"    # I
    .param p2, "prevDSTSavings"    # I

    #@0
    .prologue
    .line 57
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getFirstStart(II)Ljava/util/Date;
    .locals 1
    .param p1, "prevRawOffset"    # I
    .param p2, "prevDSTSavings"    # I

    #@0
    .prologue
    .line 68
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getNextStart(JIIZ)Ljava/util/Date;
    .locals 1
    .param p1, "base"    # J
    .param p3, "prevRawOffset"    # I
    .param p4, "prevDSTSavings"    # I
    .param p5, "inclusive"    # Z

    #@0
    .prologue
    .line 80
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public getPreviousStart(JIIZ)Ljava/util/Date;
    .locals 1
    .param p1, "base"    # J
    .param p3, "prevRawOffset"    # I
    .param p4, "prevDSTSavings"    # I
    .param p5, "inclusive"    # Z

    #@0
    .prologue
    .line 92
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z
    .locals 1
    .param p1, "other"    # Landroid/icu/util/TimeZoneRule;

    #@0
    .prologue
    .line 43
    instance-of v0, p1, Landroid/icu/util/InitialTimeZoneRule;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 44
    invoke-super {p0, p1}, Landroid/icu/util/TimeZoneRule;->isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 46
    :cond_0
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method public isTransitionRule()Z
    .locals 1

    #@0
    .prologue
    .line 101
    const/4 v0, 0x0

    #@1
    return v0
.end method
