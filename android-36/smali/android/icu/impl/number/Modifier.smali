.class public interface abstract Landroid/icu/impl/number/Modifier;
.super Ljava/lang/Object;
.source "Modifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/number/Modifier$Parameters;,
        Landroid/icu/impl/number/Modifier$Signum;
    }
.end annotation


# virtual methods
.method public abstract blacklist apply(Landroid/icu/impl/FormattedStringBuilder;II)I
.end method

.method public abstract blacklist containsField(Ljava/text/Format$Field;)Z
.end method

.method public abstract blacklist getCodePointCount()I
.end method

.method public abstract blacklist getParameters()Landroid/icu/impl/number/Modifier$Parameters;
.end method

.method public abstract blacklist getPrefixLength()I
.end method

.method public abstract blacklist isStrong()Z
.end method

.method public blacklist semanticallyEquivalent(Landroid/icu/impl/number/Modifier;)Z
    .registers 14
    .param p1, "other"    # Landroid/icu/impl/number/Modifier;

    .line 100
    invoke-interface {p0}, Landroid/icu/impl/number/Modifier;->getParameters()Landroid/icu/impl/number/Modifier$Parameters;

    move-result-object v0

    .line 101
    .local v0, "paramsThis":Landroid/icu/impl/number/Modifier$Parameters;
    invoke-interface {p1}, Landroid/icu/impl/number/Modifier;->getParameters()Landroid/icu/impl/number/Modifier$Parameters;

    move-result-object v1

    .line 102
    .local v1, "paramsOther":Landroid/icu/impl/number/Modifier$Parameters;
    if-nez v0, :cond_11

    if-nez v1, :cond_11

    .line 103
    invoke-interface {p0, p1}, Landroid/icu/impl/number/Modifier;->strictEquals(Landroid/icu/impl/number/Modifier;)Z

    move-result v2

    return v2

    .line 104
    :cond_11
    const/4 v2, 0x0

    if-eqz v0, :cond_69

    if-nez v1, :cond_17

    goto :goto_69

    .line 106
    :cond_17
    iget-object v3, v0, Landroid/icu/impl/number/Modifier$Parameters;->obj:Landroid/icu/impl/number/ModifierStore;

    if-nez v3, :cond_24

    iget-object v3, v1, Landroid/icu/impl/number/Modifier$Parameters;->obj:Landroid/icu/impl/number/ModifierStore;

    if-nez v3, :cond_24

    .line 107
    invoke-interface {p0, p1}, Landroid/icu/impl/number/Modifier;->strictEquals(Landroid/icu/impl/number/Modifier;)Z

    move-result v2

    return v2

    .line 108
    :cond_24
    iget-object v3, v0, Landroid/icu/impl/number/Modifier$Parameters;->obj:Landroid/icu/impl/number/ModifierStore;

    if-eqz v3, :cond_68

    iget-object v3, v1, Landroid/icu/impl/number/Modifier$Parameters;->obj:Landroid/icu/impl/number/ModifierStore;

    if-nez v3, :cond_2d

    goto :goto_68

    .line 111
    :cond_2d
    sget-object v3, Landroid/icu/impl/number/Modifier$Signum;->VALUES:[Landroid/icu/impl/number/Modifier$Signum;

    array-length v4, v3

    move v5, v2

    :goto_31
    if-ge v5, v4, :cond_66

    aget-object v6, v3, v5

    .line 112
    .local v6, "signum":Landroid/icu/impl/number/Modifier$Signum;
    sget-object v7, Landroid/icu/impl/StandardPlural;->VALUES:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3b
    :goto_3b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_63

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/icu/impl/StandardPlural;

    .line 113
    .local v8, "plural":Landroid/icu/impl/StandardPlural;
    iget-object v9, v0, Landroid/icu/impl/number/Modifier$Parameters;->obj:Landroid/icu/impl/number/ModifierStore;

    invoke-interface {v9, v6, v8}, Landroid/icu/impl/number/ModifierStore;->getModifier(Landroid/icu/impl/number/Modifier$Signum;Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/number/Modifier;

    move-result-object v9

    .line 114
    .local v9, "mod1":Landroid/icu/impl/number/Modifier;
    iget-object v10, v1, Landroid/icu/impl/number/Modifier$Parameters;->obj:Landroid/icu/impl/number/ModifierStore;

    invoke-interface {v10, v6, v8}, Landroid/icu/impl/number/ModifierStore;->getModifier(Landroid/icu/impl/number/Modifier$Signum;Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/number/Modifier;

    move-result-object v10

    .line 115
    .local v10, "mod2":Landroid/icu/impl/number/Modifier;
    if-ne v9, v10, :cond_56

    .line 117
    goto :goto_3b

    .line 118
    :cond_56
    if-eqz v9, :cond_62

    if-nez v10, :cond_5b

    goto :goto_62

    .line 121
    :cond_5b
    invoke-interface {v9, v10}, Landroid/icu/impl/number/Modifier;->strictEquals(Landroid/icu/impl/number/Modifier;)Z

    move-result v11

    if-nez v11, :cond_3b

    .line 123
    return v2

    .line 120
    :cond_62
    :goto_62
    return v2

    .line 111
    .end local v6    # "signum":Landroid/icu/impl/number/Modifier$Signum;
    .end local v8    # "plural":Landroid/icu/impl/StandardPlural;
    .end local v9    # "mod1":Landroid/icu/impl/number/Modifier;
    .end local v10    # "mod2":Landroid/icu/impl/number/Modifier;
    :cond_63
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    .line 130
    :cond_66
    const/4 v2, 0x1

    return v2

    .line 109
    :cond_68
    :goto_68
    return v2

    .line 105
    :cond_69
    :goto_69
    return v2
.end method

.method public abstract blacklist strictEquals(Landroid/icu/impl/number/Modifier;)Z
.end method
