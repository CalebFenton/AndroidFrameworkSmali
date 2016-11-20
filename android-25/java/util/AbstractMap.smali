.class public abstract Ljava/util/AbstractMap;
.super Ljava/lang/Object;
.source "AbstractMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/AbstractMap$SimpleEntry;,
        Ljava/util/AbstractMap$SimpleImmutableEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field volatile transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    #@0
    .prologue
    invoke-static {p0, p1}, Ljava/util/AbstractMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 299
    iput-object v0, p0, Ljava/util/AbstractMap;->keySet:Ljava/util/Set;

    #@6
    .line 300
    iput-object v0, p0, Ljava/util/AbstractMap;->values:Ljava/util/Collection;

    #@8
    .line 73
    return-void
.end method

.method private static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 548
    if-nez p0, :cond_1

    #@2
    if-nez p1, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0

    #@8
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 288
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    #@7
    .line 287
    return-void
.end method

.method protected clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 537
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Ljava/util/AbstractMap;

    #@7
    .line 538
    .local v0, "result":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    iput-object v1, v0, Ljava/util/AbstractMap;->keySet:Ljava/util/Set;

    #@9
    .line 539
    iput-object v1, v0, Ljava/util/AbstractMap;->values:Ljava/util/Collection;

    #@b
    .line 540
    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    const/4 v3, 0x1

    #@1
    .line 140
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    #@4
    move-result-object v2

    #@5
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .line 141
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez p1, :cond_1

    #@b
    .line 142
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_2

    #@11
    .line 143
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/util/Map$Entry;

    #@17
    .line 144
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    if-nez v2, :cond_0

    #@1d
    .line 145
    return v3

    #@1e
    .line 148
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_2

    #@24
    .line 149
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Ljava/util/Map$Entry;

    #@2a
    .line 150
    .restart local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_1

    #@34
    .line 151
    return v3

    #@35
    .line 154
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_2
    const/4 v2, 0x0

    #@36
    return v2
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    const/4 v3, 0x1

    #@1
    .line 109
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    #@4
    move-result-object v2

    #@5
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .line 110
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez p1, :cond_1

    #@b
    .line 111
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_2

    #@11
    .line 112
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/util/Map$Entry;

    #@17
    .line 113
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    if-nez v2, :cond_0

    #@1d
    .line 114
    return v3

    #@1e
    .line 117
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v2

    #@22
    if-eqz v2, :cond_2

    #@24
    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    check-cast v0, Ljava/util/Map$Entry;

    #@2a
    .line 119
    .restart local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v2

    #@32
    if-eqz v2, :cond_1

    #@34
    .line 120
    return v3

    #@35
    .line 123
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_2
    const/4 v2, 0x0

    #@36
    return v2
.end method

.method public abstract entrySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    const/4 v10, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 441
    if-ne p1, p0, :cond_0

    #@4
    .line 442
    return v10

    #@5
    .line 444
    :cond_0
    instance-of v7, p1, Ljava/util/Map;

    #@7
    if-nez v7, :cond_1

    #@9
    .line 445
    return v8

    #@a
    :cond_1
    move-object v3, p1

    #@b
    .line 446
    check-cast v3, Ljava/util/Map;

    #@d
    .line 447
    .local v3, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {v3}, Ljava/util/Map;->size()I

    #@10
    move-result v7

    #@11
    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    #@14
    move-result v9

    #@15
    if-eq v7, v9, :cond_2

    #@17
    .line 448
    return v8

    #@18
    .line 451
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    #@1b
    move-result-object v7

    #@1c
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v1

    #@20
    .line 452
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v7

    #@24
    if-eqz v7, :cond_6

    #@26
    .line 453
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, Ljava/util/Map$Entry;

    #@2c
    .line 454
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2f
    move-result-object v2

    #@30
    .line 455
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@33
    move-result-object v6

    #@34
    .line 456
    .local v6, "value":Ljava/lang/Object;, "TV;"
    if-nez v6, :cond_5

    #@36
    .line 457
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    move-result-object v7

    #@3a
    if-nez v7, :cond_4

    #@3c
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@3f
    move-result v7

    #@40
    :goto_0
    if-nez v7, :cond_3

    #@42
    .line 458
    return v8

    #@43
    :cond_4
    move v7, v8

    #@44
    .line 457
    goto :goto_0

    #@45
    .line 460
    :cond_5
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    move-result-object v7

    #@49
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@4c
    move-result v7

    #@4d
    if-nez v7, :cond_3

    #@4f
    .line 461
    return v8

    #@50
    .line 466
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v5

    #@51
    .line 467
    .local v5, "unused":Ljava/lang/NullPointerException;
    return v8

    #@52
    .line 464
    .end local v5    # "unused":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v4

    #@53
    .line 465
    .local v4, "unused":Ljava/lang/ClassCastException;
    return v8

    #@54
    .line 470
    .end local v4    # "unused":Ljava/lang/ClassCastException;
    .restart local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_6
    return v10
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    .line 171
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    #@4
    move-result-object v2

    #@5
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .line 172
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez p1, :cond_1

    #@b
    .line 173
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_2

    #@11
    .line 174
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/util/Map$Entry;

    #@17
    .line 175
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    if-nez v2, :cond_0

    #@1d
    .line 176
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    return-object v2

    #@22
    .line 179
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_2

    #@28
    .line 180
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    check-cast v0, Ljava/util/Map$Entry;

    #@2e
    .line 181
    .restart local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v2

    #@36
    if-eqz v2, :cond_1

    #@38
    .line 182
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3b
    move-result-object v2

    #@3c
    return-object v2

    #@3d
    .line 185
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_2
    return-object v3
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 491
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 492
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    #@4
    move-result-object v2

    #@5
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .line 493
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 494
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Ljava/util/Map$Entry;

    #@15
    invoke-interface {v2}, Ljava/util/Map$Entry;->hashCode()I

    #@18
    move-result v2

    #@19
    add-int/2addr v0, v2

    #@1a
    goto :goto_0

    #@1b
    .line 495
    :cond_0
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 93
    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 318
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/AbstractMap;->keySet:Ljava/util/Set;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 319
    new-instance v0, Ljava/util/AbstractMap$1;

    #@6
    invoke-direct {v0, p0}, Ljava/util/AbstractMap$1;-><init>(Ljava/util/AbstractMap;)V

    #@9
    iput-object v0, p0, Ljava/util/AbstractMap;->keySet:Ljava/util/Set;

    #@b
    .line 355
    :cond_0
    iget-object v0, p0, Ljava/util/AbstractMap;->keySet:Ljava/util/Set;

    #@d
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 203
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 272
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@3
    move-result-object v2

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/util/Map$Entry;

    #@14
    .line 273
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {p0, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    goto :goto_0

    #@20
    .line 271
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 228
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    #@3
    move-result-object v4

    #@4
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v2

    #@8
    .line 229
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v0, 0x0

    #@9
    .line 230
    .local v0, "correctEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez p1, :cond_1

    #@b
    .line 231
    .end local v0    # "correctEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    #@d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v4

    #@11
    if-eqz v4, :cond_2

    #@13
    .line 232
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/util/Map$Entry;

    #@19
    .line 233
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1c
    move-result-object v4

    #@1d
    if-nez v4, :cond_0

    #@1f
    .line 234
    move-object v0, v1

    #@20
    .local v0, "correctEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    #@21
    .line 237
    .end local v0    # "correctEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    #@23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@26
    move-result v4

    #@27
    if-eqz v4, :cond_2

    #@29
    .line 238
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v1

    #@2d
    check-cast v1, Ljava/util/Map$Entry;

    #@2f
    .line 239
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v4

    #@37
    if-eqz v4, :cond_1

    #@39
    .line 240
    move-object v0, v1

    #@3a
    .restart local v0    # "correctEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_1

    #@3b
    .line 244
    .end local v0    # "correctEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_2
    const/4 v3, 0x0

    #@3c
    .line 245
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_3

    #@3e
    .line 246
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@41
    move-result-object v3

    #@42
    .line 247
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    #@45
    .line 249
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_3
    return-object v3
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 84
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/Set;->size()I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    .line 511
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    #@3
    move-result-object v5

    #@4
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .line 512
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v5

    #@c
    if-nez v5, :cond_0

    #@e
    .line 513
    const-string/jumbo v5, "{}"

    #@11
    return-object v5

    #@12
    .line 515
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    .line 516
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/16 v5, 0x7b

    #@19
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1c
    .line 518
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/util/Map$Entry;

    #@22
    .line 519
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    .line 520
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@29
    move-result-object v4

    #@2a
    .line 521
    .local v4, "value":Ljava/lang/Object;, "TV;"
    if-ne v2, p0, :cond_1

    #@2c
    const-string/jumbo v2, "(this Map)"

    #@2f
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    .line 522
    const/16 v5, 0x3d

    #@34
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@37
    .line 523
    if-ne v4, p0, :cond_2

    #@39
    const-string/jumbo v4, "(this Map)"

    #@3c
    .end local v4    # "value":Ljava/lang/Object;, "TV;"
    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3f
    .line 524
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@42
    move-result v5

    #@43
    if-nez v5, :cond_3

    #@45
    .line 525
    const/16 v5, 0x7d

    #@47
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v5

    #@4b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v5

    #@4f
    return-object v5

    #@50
    .line 526
    :cond_3
    const/16 v5, 0x2c

    #@52
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@55
    move-result-object v5

    #@56
    const/16 v6, 0x20

    #@58
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5b
    goto :goto_0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 374
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/AbstractMap;->values:Ljava/util/Collection;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 375
    new-instance v0, Ljava/util/AbstractMap$2;

    #@6
    invoke-direct {v0, p0}, Ljava/util/AbstractMap$2;-><init>(Ljava/util/AbstractMap;)V

    #@9
    iput-object v0, p0, Ljava/util/AbstractMap;->values:Ljava/util/Collection;

    #@b
    .line 411
    :cond_0
    iget-object v0, p0, Ljava/util/AbstractMap;->values:Ljava/util/Collection;

    #@d
    return-object v0
.end method
