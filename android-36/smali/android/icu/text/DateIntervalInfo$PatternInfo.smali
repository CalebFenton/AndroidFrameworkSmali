.class public final Landroid/icu/text/DateIntervalInfo$PatternInfo;
.super Ljava/lang/Object;
.source "DateIntervalInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/DateIntervalInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PatternInfo"
.end annotation


# static fields
.field static final greylist-max-o currentSerialVersion:I = 0x1

.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private final greylist-max-o fFirstDateInPtnIsLaterDate:Z

.field private final greylist-max-o fIntervalPatternFirstPart:Ljava/lang/String;

.field private final greylist-max-o fIntervalPatternSecondPart:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "firstPart"    # Ljava/lang/String;
    .param p2, "secondPart"    # Ljava/lang/String;
    .param p3, "firstDateInPtnIsLaterDate"    # Z

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternFirstPart:Ljava/lang/String;

    .line 206
    iput-object p2, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternSecondPart:Ljava/lang/String;

    .line 207
    iput-boolean p3, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fFirstDateInPtnIsLaterDate:Z

    .line 208
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "a"    # Ljava/lang/Object;

    .line 241
    instance-of v0, p1, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 242
    move-object v0, p1

    check-cast v0, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    .line 243
    .local v0, "patternInfo":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    iget-object v2, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternFirstPart:Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternFirstPart:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternSecondPart:Ljava/lang/String;

    iget-object v3, v0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternSecondPart:Ljava/lang/String;

    .line 244
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-boolean v2, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fFirstDateInPtnIsLaterDate:Z

    iget-boolean v3, v0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fFirstDateInPtnIsLaterDate:Z

    if-ne v2, v3, :cond_24

    const/4 v1, 0x1

    goto :goto_25

    :cond_24
    nop

    .line 243
    :goto_25
    return v1

    .line 247
    .end local v0    # "patternInfo":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    :cond_26
    return v1
.end method

.method public whitelist test-api firstDateInPtnIsLaterDate()Z
    .registers 2

    .line 231
    iget-boolean v0, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fFirstDateInPtnIsLaterDate:Z

    return v0
.end method

.method public whitelist test-api getFirstPart()Ljava/lang/String;
    .registers 2

    .line 215
    iget-object v0, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternFirstPart:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getSecondPart()Ljava/lang/String;
    .registers 2

    .line 223
    iget-object v0, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternSecondPart:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 256
    iget-object v0, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternFirstPart:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternFirstPart:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 257
    .local v0, "hash":I
    :goto_c
    iget-object v1, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternSecondPart:Ljava/lang/String;

    if-eqz v1, :cond_17

    .line 258
    iget-object v1, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternSecondPart:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 260
    :cond_17
    iget-boolean v1, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fFirstDateInPtnIsLaterDate:Z

    if-eqz v1, :cond_1c

    .line 261
    not-int v0, v0

    .line 263
    :cond_1c
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{first=\u00ab"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternFirstPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u00bb, second=\u00ab"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternSecondPart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u00bb, reversed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fFirstDateInPtnIsLaterDate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
