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
.field static final currentSerialVersion:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final fFirstDateInPtnIsLaterDate:Z

.field private final fIntervalPatternFirstPart:Ljava/lang/String;

.field private final fIntervalPatternSecondPart:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "firstPart"    # Ljava/lang/String;
    .param p2, "secondPart"    # Ljava/lang/String;
    .param p3, "firstDateInPtnIsLaterDate"    # Z

    #@0
    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 201
    iput-object p1, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternFirstPart:Ljava/lang/String;

    #@5
    .line 202
    iput-object p2, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternSecondPart:Ljava/lang/String;

    #@7
    .line 203
    iput-boolean p3, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fFirstDateInPtnIsLaterDate:Z

    #@9
    .line 200
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "a"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 235
    instance-of v2, p1, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 236
    check-cast v0, Landroid/icu/text/DateIntervalInfo$PatternInfo;

    #@8
    .line 237
    .local v0, "patternInfo":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    iget-object v2, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternFirstPart:Ljava/lang/String;

    #@a
    iget-object v3, v0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternFirstPart:Ljava/lang/String;

    #@c
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 238
    iget-object v2, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternSecondPart:Ljava/lang/String;

    #@14
    iget-object v3, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternSecondPart:Ljava/lang/String;

    #@16
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    .line 237
    if-eqz v2, :cond_0

    #@1c
    .line 239
    iget-boolean v2, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fFirstDateInPtnIsLaterDate:Z

    #@1e
    iget-boolean v3, v0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fFirstDateInPtnIsLaterDate:Z

    #@20
    if-ne v2, v3, :cond_0

    #@22
    const/4 v1, 0x1

    #@23
    .line 237
    :cond_0
    return v1

    #@24
    .line 241
    .end local v0    # "patternInfo":Landroid/icu/text/DateIntervalInfo$PatternInfo;
    :cond_1
    return v1
.end method

.method public firstDateInPtnIsLaterDate()Z
    .locals 1

    #@0
    .prologue
    .line 227
    iget-boolean v0, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fFirstDateInPtnIsLaterDate:Z

    #@2
    return v0
.end method

.method public getFirstPart()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 211
    iget-object v0, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternFirstPart:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSecondPart()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 219
    iget-object v0, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternSecondPart:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 249
    iget-object v1, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternFirstPart:Ljava/lang/String;

    #@2
    if-eqz v1, :cond_2

    #@4
    iget-object v1, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternFirstPart:Ljava/lang/String;

    #@6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@9
    move-result v0

    #@a
    .line 250
    .local v0, "hash":I
    :goto_0
    iget-object v1, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternSecondPart:Ljava/lang/String;

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 251
    iget-object v1, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternSecondPart:Ljava/lang/String;

    #@10
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@13
    move-result v1

    #@14
    xor-int/2addr v0, v1

    #@15
    .line 253
    :cond_0
    iget-boolean v1, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fFirstDateInPtnIsLaterDate:Z

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 254
    xor-int/lit8 v0, v0, -0x1

    #@1b
    .line 256
    :cond_1
    return v0

    #@1c
    .line 249
    .end local v0    # "hash":I
    :cond_2
    const/4 v0, 0x0

    #@1d
    .restart local v0    # "hash":I
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "{first=\u00ab"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternFirstPart:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "\u00bb, second=\u00ab"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fIntervalPatternSecondPart:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, "\u00bb, reversed:"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget-boolean v1, p0, Landroid/icu/text/DateIntervalInfo$PatternInfo;->fFirstDateInPtnIsLaterDate:Z

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    const-string/jumbo v1, "}"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method
