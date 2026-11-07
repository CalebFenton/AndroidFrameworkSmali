.class public abstract Ljava/util/AbstractMap;
.super Ljava/lang/Object;
.source "AbstractMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/AbstractMap$ViewCollection;,
        Ljava/util/AbstractMap$SimpleImmutableEntry;,
        Ljava/util/AbstractMap$SimpleEntry;
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
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field transient greylist-max-o keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field transient greylist-max-o values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$smeq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    invoke-static {p0, p1}, Ljava/util/AbstractMap;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 77
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method private static greylist-max-o eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .line 584
    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 v0, 0x1

    goto :goto_c

    :cond_6
    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_c
    return v0
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 301
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 302
    return-void
.end method

.method protected whitelist test-api clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 571
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/AbstractMap;

    .line 572
    .local v0, "result":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<**>;"
    const/4 v1, 0x0

    iput-object v1, v0, Ljava/util/AbstractMap;->keySet:Ljava/util/Set;

    .line 573
    iput-object v1, v0, Ljava/util/AbstractMap;->values:Ljava/util/Collection;

    .line 574
    return-object v0
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;

    .line 148
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 149
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v1, 0x1

    if-nez p1, :cond_1f

    .line 150
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 151
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 152
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1e

    .line 153
    return v1

    .line 154
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1e
    goto :goto_b

    .line 156
    :cond_1f
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 157
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 158
    .restart local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 159
    return v1

    .line 160
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_36
    goto :goto_1f

    .line 162
    :cond_37
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api containsValue(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "value"    # Ljava/lang/Object;

    .line 116
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 117
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v1, 0x1

    if-nez p1, :cond_1f

    .line 118
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 120
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1e

    .line 121
    return v1

    .line 122
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1e
    goto :goto_b

    .line 124
    :cond_1f
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 126
    .restart local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 127
    return v1

    .line 128
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_36
    goto :goto_1f

    .line 130
    :cond_37
    const/4 v1, 0x0

    return v1
.end method

.method public abstract whitelist test-api entrySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "o"    # Ljava/lang/Object;

    .line 480
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 481
    return v0

    .line 483
    :cond_4
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-eqz v1, :cond_52

    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    .line 485
    .local v1, "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result v4

    if-eq v3, v4, :cond_17

    .line 486
    return v2

    .line 489
    :cond_17
    :try_start_17
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 490
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 491
    .local v5, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 492
    .local v6, "value":Ljava/lang/Object;, "TV;"
    if-nez v6, :cond_42

    .line 493
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_41

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4d

    .line 494
    :cond_41
    return v2

    .line 496
    :cond_42
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_4a
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_4a} :catch_50
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_4a} :catch_50

    if-nez v7, :cond_4d

    .line 497
    return v2

    .line 499
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    :cond_4d
    goto :goto_1f

    .line 502
    :cond_4e
    nop

    .line 504
    return v0

    .line 500
    :catch_50
    move-exception v0

    .line 501
    .local v0, "unused":Ljava/lang/RuntimeException;
    return v2

    .line 484
    .end local v0    # "unused":Ljava/lang/RuntimeException;
    .end local v1    # "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_52
    return v2
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 180
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 181
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez p1, :cond_22

    .line 182
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 183
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 184
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_21

    .line 185
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 186
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_21
    goto :goto_a

    .line 188
    :cond_22
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 189
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 190
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 191
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 192
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_3d
    goto :goto_22

    .line 194
    :cond_3e
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 526
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 527
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 528
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_9

    .line 529
    :cond_1b
    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 99
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 351
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/AbstractMap;->keySet:Ljava/util/Set;

    .line 352
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-nez v0, :cond_c

    .line 353
    new-instance v1, Ljava/util/AbstractMap$1;

    invoke-direct {v1, p0}, Ljava/util/AbstractMap$1;-><init>(Ljava/util/AbstractMap;)V

    move-object v0, v1

    .line 388
    iput-object v0, p0, Ljava/util/AbstractMap;->keySet:Ljava/util/Set;

    .line 390
    :cond_c
    return-object v0
.end method

.method public whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 213
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api putAll(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 284
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 285
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 286
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_20
    return-void
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 239
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 240
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v1, 0x0

    .line 241
    .local v1, "correctEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez p1, :cond_21

    .line 242
    :goto_b
    if-nez v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 243
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 244
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_20

    .line 245
    move-object v1, v2

    .line 246
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_20
    goto :goto_b

    .line 248
    :cond_21
    :goto_21
    if-nez v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 249
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 250
    .restart local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 251
    move-object v1, v2

    .line 252
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_3a
    goto :goto_21

    .line 255
    :cond_3b
    const/4 v2, 0x0

    .line 256
    .local v2, "oldValue":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_45

    .line 257
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 258
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 260
    :cond_45
    return-object v2
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 89
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .line 545
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 546
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_11

    .line 547
    const-string v1, "{}"

    return-object v1

    .line 549
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 550
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 552
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 553
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 554
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 555
    .local v4, "value":Ljava/lang/Object;, "TV;"
    const-string v5, "(this Map)"

    if-ne v3, p0, :cond_2f

    move-object v6, v5

    goto :goto_30

    :cond_2f
    move-object v6, v3

    :goto_30
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 556
    const/16 v6, 0x3d

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 557
    if-ne v4, p0, :cond_3b

    goto :goto_3c

    :cond_3b
    move-object v5, v4

    :goto_3c
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 558
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_50

    .line 559
    const/16 v5, 0x7d

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 560
    :cond_50
    const/16 v5, 0x2c

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 561
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v4    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_1b
.end method

.method public whitelist test-api values()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 410
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/AbstractMap;->values:Ljava/util/Collection;

    .line 411
    .local v0, "vals":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_c

    .line 412
    new-instance v1, Ljava/util/AbstractMap$2;

    invoke-direct {v1, p0}, Ljava/util/AbstractMap$2;-><init>(Ljava/util/AbstractMap;)V

    move-object v0, v1

    .line 447
    iput-object v0, p0, Ljava/util/AbstractMap;->values:Ljava/util/Collection;

    .line 449
    :cond_c
    return-object v0
.end method
