.class public abstract Landroid/icu/util/TimeZoneRule;
.super Ljava/lang/Object;
.source "TimeZoneRule.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final whitelist serialVersionUID:J = 0x5875820a58321ca4L


# instance fields
.field private final greylist-max-o dstSavings:I

.field private final greylist-max-o name:Ljava/lang/String;

.field private final greylist-max-o rawOffset:I


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;II)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "rawOffset"    # I
    .param p3, "dstSavings"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/icu/util/TimeZoneRule;->name:Ljava/lang/String;

    .line 44
    iput p2, p0, Landroid/icu/util/TimeZoneRule;->rawOffset:I

    .line 45
    iput p3, p0, Landroid/icu/util/TimeZoneRule;->dstSavings:I

    .line 46
    return-void
.end method


# virtual methods
.method public greylist-max-o getDSTSavings()I
    .registers 2

    .line 73
    iget v0, p0, Landroid/icu/util/TimeZoneRule;->dstSavings:I

    return v0
.end method

.method public abstract greylist-max-o getFinalStart(II)Ljava/util/Date;
.end method

.method public abstract greylist-max-o getFirstStart(II)Ljava/util/Date;
.end method

.method public greylist-max-o getName()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Landroid/icu/util/TimeZoneRule;->name:Ljava/lang/String;

    return-object v0
.end method

.method public abstract greylist-max-o getNextStart(JIIZ)Ljava/util/Date;
.end method

.method public abstract greylist-max-o getPreviousStart(JIIZ)Ljava/util/Date;
.end method

.method public greylist-max-o getRawOffset()I
    .registers 2

    .line 63
    iget v0, p0, Landroid/icu/util/TimeZoneRule;->rawOffset:I

    return v0
.end method

.method public greylist-max-o isEquivalentTo(Landroid/icu/util/TimeZoneRule;)Z
    .registers 4
    .param p1, "other"    # Landroid/icu/util/TimeZoneRule;

    .line 85
    iget v0, p0, Landroid/icu/util/TimeZoneRule;->rawOffset:I

    iget v1, p1, Landroid/icu/util/TimeZoneRule;->rawOffset:I

    if-ne v0, v1, :cond_e

    iget v0, p0, Landroid/icu/util/TimeZoneRule;->dstSavings:I

    iget v1, p1, Landroid/icu/util/TimeZoneRule;->dstSavings:I

    if-ne v0, v1, :cond_e

    .line 86
    const/4 v0, 0x1

    return v0

    .line 88
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public abstract greylist-max-o isTransitionRule()Z
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .local v0, "buf":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/util/TimeZoneRule;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", stdOffset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/icu/util/TimeZoneRule;->rawOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", dstSaving="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/icu/util/TimeZoneRule;->dstSavings:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
