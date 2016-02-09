.class public abstract Landroid/icu/util/TimeZoneRule;
.super Ljava/lang/Object;
.source "TimeZoneRule.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5875820a58321ca4L


# instance fields
.field private final dstSavings:I

.field private final name:Ljava/lang/String;

.field private final rawOffset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rawOffset"    # I
    .param p3, "dstSavings"    # I

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    iput-object p1, p0, Landroid/icu/util/TimeZoneRule;->name:Ljava/lang/String;

    #@5
    .line 43
    iput p2, p0, Landroid/icu/util/TimeZoneRule;->rawOffset:I

    #@7
    .line 44
    iput p3, p0, Landroid/icu/util/TimeZoneRule;->dstSavings:I

    #@9
    .line 41
    return-void
.end method


# virtual methods
.method public getDSTSavings()I
    .locals 1

    #@0
    .prologue
    .line 78
    iget v0, p0, Landroid/icu/util/TimeZoneRule;->dstSavings:I

    #@2
    return v0
.end method

.method public abstract getFinalStart(II)Ljava/util/Date;
.end method

.method public abstract getFirstStart(II)Ljava/util/Date;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Landroid/icu/util/TimeZoneRule;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public abstract getNextStart(JIIZ)Ljava/util/Date;
.end method

.method public abstract getPreviousStart(JIIZ)Ljava/util/Date;
.end method

.method public getRawOffset()I
    .locals 1

    #@0
    .prologue
    .line 66
    iget v0, p0, Landroid/icu/util/TimeZoneRule;->rawOffset:I

    #@2
    return v0
.end method

.method public isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z
    .locals 2
    .param p1, "other"    # Landroid/icu/util/TimeZoneRule;

    #@0
    .prologue
    .line 92
    iget v0, p0, Landroid/icu/util/TimeZoneRule;->rawOffset:I

    #@2
    iget v1, p1, Landroid/icu/util/TimeZoneRule;->rawOffset:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    iget v0, p0, Landroid/icu/util/TimeZoneRule;->dstSavings:I

    #@8
    iget v1, p1, Landroid/icu/util/TimeZoneRule;->dstSavings:I

    #@a
    if-ne v0, v1, :cond_0

    #@c
    .line 93
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 95
    :cond_0
    const/4 v0, 0x0

    #@f
    return v0
.end method

.method public abstract isTransitionRule()Z
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 179
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "name="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Landroid/icu/util/TimeZoneRule;->name:Ljava/lang/String;

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 180
    const-string/jumbo v1, ", stdOffset="

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    iget v2, p0, Landroid/icu/util/TimeZoneRule;->rawOffset:I

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    .line 181
    const-string/jumbo v1, ", dstSaving="

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    iget v2, p0, Landroid/icu/util/TimeZoneRule;->dstSavings:I

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@29
    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    return-object v1
.end method
