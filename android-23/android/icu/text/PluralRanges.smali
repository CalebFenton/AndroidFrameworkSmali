.class public final Landroid/icu/text/PluralRanges;
.super Ljava/lang/Object;
.source "PluralRanges.java"

# interfaces
.implements Landroid/icu/util/Freezable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/PluralRanges$Matrix;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/util/Freezable",
        "<",
        "Landroid/icu/text/PluralRanges;",
        ">;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/text/PluralRanges;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private explicit:[Z

.field private volatile isFrozen:Z

.field private matrix:Landroid/icu/text/PluralRanges$Matrix;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 28
    new-instance v0, Landroid/icu/text/PluralRanges$Matrix;

    #@5
    invoke-direct {v0}, Landroid/icu/text/PluralRanges$Matrix;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    #@a
    .line 29
    sget v0, Landroid/icu/text/PluralRules$StandardPluralCategories;->COUNT:I

    #@c
    new-array v0, v0, [Z

    #@e
    iput-object v0, p0, Landroid/icu/text/PluralRanges;->explicit:[Z

    #@10
    .line 38
    return-void
.end method


# virtual methods
.method public add(Landroid/icu/text/PluralRules$StandardPluralCategories;Landroid/icu/text/PluralRules$StandardPluralCategories;Landroid/icu/text/PluralRules$StandardPluralCategories;)V
    .locals 11
    .param p1, "rangeStart"    # Landroid/icu/text/PluralRules$StandardPluralCategories;
    .param p2, "rangeEnd"    # Landroid/icu/text/PluralRules$StandardPluralCategories;
    .param p3, "result"    # Landroid/icu/text/PluralRules$StandardPluralCategories;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v10, 0x1

    #@2
    .line 200
    iget-boolean v3, p0, Landroid/icu/text/PluralRanges;->isFrozen:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 201
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@8
    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@b
    throw v2

    #@c
    .line 203
    :cond_0
    iget-object v3, p0, Landroid/icu/text/PluralRanges;->explicit:[Z

    #@e
    invoke-virtual {p3}, Landroid/icu/text/PluralRules$StandardPluralCategories;->ordinal()I

    #@11
    move-result v4

    #@12
    aput-boolean v10, v3, v4

    #@14
    .line 204
    if-nez p1, :cond_3

    #@16
    .line 205
    invoke-static {}, Landroid/icu/text/PluralRules$StandardPluralCategories;->values()[Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@19
    move-result-object v5

    #@1a
    array-length v6, v5

    #@1b
    move v4, v2

    #@1c
    :goto_0
    if-ge v4, v6, :cond_5

    #@1e
    aget-object v1, v5, v4

    #@20
    .line 206
    .local v1, "rs":Landroid/icu/text/PluralRules$StandardPluralCategories;
    if-nez p2, :cond_1

    #@22
    .line 207
    invoke-static {}, Landroid/icu/text/PluralRules$StandardPluralCategories;->values()[Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@25
    move-result-object v7

    #@26
    array-length v8, v7

    #@27
    move v3, v2

    #@28
    :goto_1
    if-ge v3, v8, :cond_2

    #@2a
    aget-object v0, v7, v3

    #@2c
    .line 208
    .local v0, "re":Landroid/icu/text/PluralRules$StandardPluralCategories;
    iget-object v9, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    #@2e
    invoke-virtual {v9, v1, v0, p3}, Landroid/icu/text/PluralRanges$Matrix;->setIfNew(Landroid/icu/text/PluralRules$StandardPluralCategories;Landroid/icu/text/PluralRules$StandardPluralCategories;Landroid/icu/text/PluralRules$StandardPluralCategories;)V

    #@31
    .line 207
    add-int/lit8 v3, v3, 0x1

    #@33
    goto :goto_1

    #@34
    .line 211
    .end local v0    # "re":Landroid/icu/text/PluralRules$StandardPluralCategories;
    :cond_1
    iget-object v3, p0, Landroid/icu/text/PluralRanges;->explicit:[Z

    #@36
    invoke-virtual {p2}, Landroid/icu/text/PluralRules$StandardPluralCategories;->ordinal()I

    #@39
    move-result v7

    #@3a
    aput-boolean v10, v3, v7

    #@3c
    .line 212
    iget-object v3, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    #@3e
    invoke-virtual {v3, v1, p2, p3}, Landroid/icu/text/PluralRanges$Matrix;->setIfNew(Landroid/icu/text/PluralRules$StandardPluralCategories;Landroid/icu/text/PluralRules$StandardPluralCategories;Landroid/icu/text/PluralRules$StandardPluralCategories;)V

    #@41
    .line 205
    :cond_2
    add-int/lit8 v3, v4, 0x1

    #@43
    move v4, v3

    #@44
    goto :goto_0

    #@45
    .line 215
    .end local v1    # "rs":Landroid/icu/text/PluralRules$StandardPluralCategories;
    :cond_3
    if-nez p2, :cond_4

    #@47
    .line 216
    iget-object v3, p0, Landroid/icu/text/PluralRanges;->explicit:[Z

    #@49
    invoke-virtual {p1}, Landroid/icu/text/PluralRules$StandardPluralCategories;->ordinal()I

    #@4c
    move-result v4

    #@4d
    aput-boolean v10, v3, v4

    #@4f
    .line 217
    invoke-static {}, Landroid/icu/text/PluralRules$StandardPluralCategories;->values()[Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@52
    move-result-object v3

    #@53
    array-length v4, v3

    #@54
    :goto_2
    if-ge v2, v4, :cond_5

    #@56
    aget-object v0, v3, v2

    #@58
    .line 218
    .restart local v0    # "re":Landroid/icu/text/PluralRules$StandardPluralCategories;
    iget-object v5, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    #@5a
    invoke-virtual {v5, p1, v0, p3}, Landroid/icu/text/PluralRanges$Matrix;->setIfNew(Landroid/icu/text/PluralRules$StandardPluralCategories;Landroid/icu/text/PluralRules$StandardPluralCategories;Landroid/icu/text/PluralRules$StandardPluralCategories;)V

    #@5d
    .line 217
    add-int/lit8 v2, v2, 0x1

    #@5f
    goto :goto_2

    #@60
    .line 221
    .end local v0    # "re":Landroid/icu/text/PluralRules$StandardPluralCategories;
    :cond_4
    iget-object v2, p0, Landroid/icu/text/PluralRanges;->explicit:[Z

    #@62
    invoke-virtual {p1}, Landroid/icu/text/PluralRules$StandardPluralCategories;->ordinal()I

    #@65
    move-result v3

    #@66
    aput-boolean v10, v2, v3

    #@68
    .line 222
    iget-object v2, p0, Landroid/icu/text/PluralRanges;->explicit:[Z

    #@6a
    invoke-virtual {p2}, Landroid/icu/text/PluralRules$StandardPluralCategories;->ordinal()I

    #@6d
    move-result v3

    #@6e
    aput-boolean v10, v2, v3

    #@70
    .line 223
    iget-object v2, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    #@72
    invoke-virtual {v2, p1, p2, p3}, Landroid/icu/text/PluralRanges$Matrix;->setIfNew(Landroid/icu/text/PluralRules$StandardPluralCategories;Landroid/icu/text/PluralRules$StandardPluralCategories;Landroid/icu/text/PluralRules$StandardPluralCategories;)V

    #@75
    .line 199
    :cond_5
    return-void
.end method

.method public cloneAsThawed()Landroid/icu/text/PluralRanges;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 343
    new-instance v0, Landroid/icu/text/PluralRanges;

    #@2
    invoke-direct {v0}, Landroid/icu/text/PluralRanges;-><init>()V

    #@5
    .line 344
    .local v0, "result":Landroid/icu/text/PluralRanges;
    iget-object v1, p0, Landroid/icu/text/PluralRanges;->explicit:[Z

    #@7
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, [Z

    #@d
    iput-object v1, v0, Landroid/icu/text/PluralRanges;->explicit:[Z

    #@f
    .line 345
    iget-object v1, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    #@11
    invoke-virtual {v1}, Landroid/icu/text/PluralRanges$Matrix;->clone()Landroid/icu/text/PluralRanges$Matrix;

    #@14
    move-result-object v1

    #@15
    iput-object v1, v0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    #@17
    .line 346
    return-object v0
.end method

.method public bridge synthetic cloneAsThawed()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 342
    invoke-virtual {p0}, Landroid/icu/text/PluralRanges;->cloneAsThawed()Landroid/icu/text/PluralRanges;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public compareTo(Landroid/icu/text/PluralRanges;)I
    .locals 2
    .param p1, "that"    # Landroid/icu/text/PluralRanges;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 312
    iget-object v0, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    #@2
    iget-object v1, p1, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    #@4
    invoke-virtual {v0, v1}, Landroid/icu/text/PluralRanges$Matrix;->compareTo(Landroid/icu/text/PluralRanges$Matrix;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 311
    check-cast p1, Landroid/icu/text/PluralRanges;

    #@2
    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/text/PluralRanges;->compareTo(Landroid/icu/text/PluralRanges;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 284
    if-ne p0, p1, :cond_0

    #@3
    .line 285
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 287
    :cond_0
    instance-of v2, p1, Landroid/icu/text/PluralRanges;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 288
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 290
    check-cast v0, Landroid/icu/text/PluralRanges;

    #@d
    .line 291
    .local v0, "otherPR":Landroid/icu/text/PluralRanges;
    iget-object v2, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    #@f
    iget-object v3, v0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    #@11
    invoke-virtual {v2, v3}, Landroid/icu/text/PluralRanges$Matrix;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v2

    #@15
    if-eqz v2, :cond_2

    #@17
    iget-object v1, p0, Landroid/icu/text/PluralRanges;->explicit:[Z

    #@19
    iget-object v2, v0, Landroid/icu/text/PluralRanges;->explicit:[Z

    #@1b
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Z[Z)Z

    #@1e
    move-result v1

    #@1f
    :cond_2
    return v1
.end method

.method public freeze()Landroid/icu/text/PluralRanges;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 332
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/icu/text/PluralRanges;->isFrozen:Z

    #@3
    .line 333
    return-object p0
.end method

.method public bridge synthetic freeze()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 331
    invoke-virtual {p0}, Landroid/icu/text/PluralRanges;->freeze()Landroid/icu/text/PluralRanges;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public get(Landroid/icu/text/PluralRules$StandardPluralCategories;Landroid/icu/text/PluralRules$StandardPluralCategories;)Landroid/icu/text/PluralRules$StandardPluralCategories;
    .locals 2
    .param p1, "start"    # Landroid/icu/text/PluralRules$StandardPluralCategories;
    .param p2, "end"    # Landroid/icu/text/PluralRules$StandardPluralCategories;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 241
    iget-object v1, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    #@2
    invoke-virtual {v1, p1, p2}, Landroid/icu/text/PluralRanges$Matrix;->get(Landroid/icu/text/PluralRules$StandardPluralCategories;Landroid/icu/text/PluralRules$StandardPluralCategories;)Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@5
    move-result-object v0

    #@6
    .line 242
    .local v0, "result":Landroid/icu/text/PluralRules$StandardPluralCategories;
    if-nez v0, :cond_0

    #@8
    .end local p2    # "end":Landroid/icu/text/PluralRules$StandardPluralCategories;
    :goto_0
    return-object p2

    #@9
    .restart local p2    # "end":Landroid/icu/text/PluralRules$StandardPluralCategories;
    :cond_0
    move-object p2, v0

    #@a
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 302
    iget-object v0, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/PluralRanges$Matrix;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isExplicit(Landroid/icu/text/PluralRules$StandardPluralCategories;Landroid/icu/text/PluralRules$StandardPluralCategories;)Z
    .locals 1
    .param p1, "start"    # Landroid/icu/text/PluralRules$StandardPluralCategories;
    .param p2, "end"    # Landroid/icu/text/PluralRules$StandardPluralCategories;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 259
    iget-object v0, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/icu/text/PluralRanges$Matrix;->get(Landroid/icu/text/PluralRules$StandardPluralCategories;Landroid/icu/text/PluralRules$StandardPluralCategories;)Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public isExplicitlySet(Landroid/icu/text/PluralRules$StandardPluralCategories;)Z
    .locals 2
    .param p1, "count"    # Landroid/icu/text/PluralRules$StandardPluralCategories;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 273
    iget-object v0, p0, Landroid/icu/text/PluralRanges;->explicit:[Z

    #@2
    invoke-virtual {p1}, Landroid/icu/text/PluralRules$StandardPluralCategories;->ordinal()I

    #@5
    move-result v1

    #@6
    aget-boolean v0, v0, v1

    #@8
    return v0
.end method

.method public isFrozen()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 322
    iget-boolean v0, p0, Landroid/icu/text/PluralRanges;->isFrozen:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 357
    iget-object v0, p0, Landroid/icu/text/PluralRanges;->matrix:Landroid/icu/text/PluralRanges$Matrix;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/PluralRanges$Matrix;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
