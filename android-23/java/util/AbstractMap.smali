.class public abstract Ljava/util/AbstractMap;
.super Ljava/lang/Object;
.source "AbstractMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field valuesCollection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 171
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 180
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    #@7
    .line 179
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
    .line 501
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Ljava/util/AbstractMap;

    #@7
    .line 502
    .local v0, "result":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    iput-object v1, v0, Ljava/util/AbstractMap;->keySet:Ljava/util/Set;

    #@9
    .line 503
    iput-object v1, v0, Ljava/util/AbstractMap;->valuesCollection:Ljava/util/Collection;

    #@b
    .line 504
    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    const/4 v2, 0x1

    #@1
    .line 190
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    #@4
    move-result-object v1

    #@5
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v0

    #@9
    .line 191
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_1

    #@b
    .line 192
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_2

    #@11
    .line 193
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Ljava/util/Map$Entry;

    #@17
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_0

    #@21
    .line 194
    return v2

    #@22
    .line 198
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_2

    #@28
    .line 199
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    check-cast v1, Ljava/util/Map$Entry;

    #@2e
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    if-nez v1, :cond_1

    #@34
    .line 200
    return v2

    #@35
    .line 204
    :cond_2
    const/4 v1, 0x0

    #@36
    return v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    const/4 v2, 0x1

    #@1
    .line 214
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    #@4
    move-result-object v1

    #@5
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v0

    #@9
    .line 215
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_1

    #@b
    .line 216
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_2

    #@11
    .line 217
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Ljava/util/Map$Entry;

    #@17
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_0

    #@21
    .line 218
    return v2

    #@22
    .line 222
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_2

    #@28
    .line 223
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    check-cast v1, Ljava/util/Map$Entry;

    #@2e
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@31
    move-result-object v1

    #@32
    if-nez v1, :cond_1

    #@34
    .line 224
    return v2

    #@35
    .line 228
    :cond_2
    const/4 v1, 0x0

    #@36
    return v1
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
    .locals 12
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    const/4 v11, 0x1

    #@1
    const/4 v10, 0x0

    #@2
    .line 243
    if-ne p0, p1, :cond_0

    #@4
    .line 244
    return v11

    #@5
    .line 246
    :cond_0
    instance-of v8, p1, Ljava/util/Map;

    #@7
    if-eqz v8, :cond_6

    #@9
    move-object v5, p1

    #@a
    .line 247
    check-cast v5, Ljava/util/Map;

    #@c
    .line 248
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    #@f
    move-result v8

    #@10
    invoke-interface {v5}, Ljava/util/Map;->size()I

    #@13
    move-result v9

    #@14
    if-eq v8, v9, :cond_1

    #@16
    .line 249
    return v10

    #@17
    .line 253
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    #@1a
    move-result-object v8

    #@1b
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v1

    #@1f
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v8

    #@23
    if-eqz v8, :cond_5

    #@25
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Ljava/util/Map$Entry;

    #@2b
    .line 254
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2e
    move-result-object v4

    #@2f
    .line 255
    .local v4, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@32
    move-result-object v6

    #@33
    .line 256
    .local v6, "mine":Ljava/lang/Object;, "TV;"
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    move-result-object v7

    #@37
    .line 257
    .local v7, "theirs":Ljava/lang/Object;
    if-nez v6, :cond_4

    #@39
    .line 258
    if-nez v7, :cond_3

    #@3b
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@3e
    move-result v8

    #@3f
    if-nez v8, :cond_2

    #@41
    .line 259
    :cond_3
    return v10

    #@42
    .line 261
    :cond_4
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@45
    move-result v8

    #@46
    if-nez v8, :cond_2

    #@48
    .line 262
    return v10

    #@49
    .line 267
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "mine":Ljava/lang/Object;, "TV;"
    .end local v7    # "theirs":Ljava/lang/Object;
    :catch_0
    move-exception v2

    #@4a
    .line 268
    .local v2, "ignored":Ljava/lang/ClassCastException;
    return v10

    #@4b
    .line 265
    .end local v2    # "ignored":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v3

    #@4c
    .line 266
    .local v3, "ignored":Ljava/lang/NullPointerException;
    return v10

    #@4d
    .line 270
    .end local v3    # "ignored":Ljava/lang/NullPointerException;
    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    :cond_5
    return v11

    #@4e
    .line 272
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v5    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
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
    .line 282
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    #@4
    move-result-object v2

    #@5
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .line 283
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_1

    #@b
    .line 284
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_2

    #@11
    .line 285
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/util/Map$Entry;

    #@17
    .line 286
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 287
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    return-object v2

    #@26
    .line 291
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@29
    move-result v2

    #@2a
    if-eqz v2, :cond_2

    #@2c
    .line 292
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Ljava/util/Map$Entry;

    #@32
    .line 293
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@35
    move-result-object v2

    #@36
    if-nez v2, :cond_1

    #@38
    .line 294
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3b
    move-result-object v2

    #@3c
    return-object v2

    #@3d
    .line 298
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_2
    return-object v3
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 308
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 309
    .local v1, "result":I
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    #@4
    move-result-object v2

    #@5
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v0

    #@9
    .line 310
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 311
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v2

    #@13
    check-cast v2, Ljava/util/Map$Entry;

    #@15
    invoke-interface {v2}, Ljava/util/Map$Entry;->hashCode()I

    #@18
    move-result v2

    #@19
    add-int/2addr v1, v2

    #@1a
    goto :goto_0

    #@1b
    .line 313
    :cond_0
    return v1
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 322
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
    .line 332
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/AbstractMap;->keySet:Ljava/util/Set;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 333
    new-instance v0, Ljava/util/AbstractMap$1;

    #@6
    invoke-direct {v0, p0}, Ljava/util/AbstractMap$1;-><init>(Ljava/util/AbstractMap;)V

    #@9
    iput-object v0, p0, Ljava/util/AbstractMap;->keySet:Ljava/util/Set;

    #@b
    .line 361
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
    .line 370
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
    .line 380
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@3
    move-result-object v2

    #@4
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v1

    #@8
    .local v1, "entry$iterator":Ljava/util/Iterator;
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
    .line 381
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
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
    .line 379
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
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
    .line 392
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    #@4
    move-result-object v2

    #@5
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .line 393
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_1

    #@b
    .line 394
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_2

    #@11
    .line 395
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/util/Map$Entry;

    #@17
    .line 396
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 397
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@24
    .line 398
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    return-object v2

    #@29
    .line 402
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_2

    #@2f
    .line 403
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v0

    #@33
    check-cast v0, Ljava/util/Map$Entry;

    #@35
    .line 404
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@38
    move-result-object v2

    #@39
    if-nez v2, :cond_1

    #@3b
    .line 405
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    #@3e
    .line 406
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@41
    move-result-object v2

    #@42
    return-object v2

    #@43
    .line 410
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_2
    return-object v3
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 419
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
    .locals 6

    #@0
    .prologue
    .line 430
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

    #@3
    move-result v5

    #@4
    if-eqz v5, :cond_0

    #@6
    .line 431
    const-string/jumbo v5, "{}"

    #@9
    return-object v5

    #@a
    .line 434
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@c
    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    #@f
    move-result v5

    #@10
    mul-int/lit8 v5, v5, 0x1c

    #@12
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    #@15
    .line 435
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v5, 0x7b

    #@17
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1a
    .line 436
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    #@1d
    move-result-object v5

    #@1e
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v2

    #@22
    .line 437
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v5

    #@26
    if-eqz v5, :cond_4

    #@28
    .line 438
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    check-cast v1, Ljava/util/Map$Entry;

    #@2e
    .line 439
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@31
    move-result-object v3

    #@32
    .line 440
    .local v3, "key":Ljava/lang/Object;
    if-eq v3, p0, :cond_2

    #@34
    .line 441
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    .line 445
    :goto_1
    const/16 v5, 0x3d

    #@39
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3c
    .line 446
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3f
    move-result-object v4

    #@40
    .line 447
    .local v4, "value":Ljava/lang/Object;
    if-eq v4, p0, :cond_3

    #@42
    .line 448
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45
    .line 452
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@48
    move-result v5

    #@49
    if-eqz v5, :cond_1

    #@4b
    .line 453
    const-string/jumbo v5, ", "

    #@4e
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    goto :goto_0

    #@52
    .line 443
    .end local v4    # "value":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v5, "(this Map)"

    #@55
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    goto :goto_1

    #@59
    .line 450
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v5, "(this Map)"

    #@5c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    goto :goto_2

    #@60
    .line 456
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_4
    const/16 v5, 0x7d

    #@62
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@65
    .line 457
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v5

    #@69
    return-object v5
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
    .line 467
    .local p0, "this":Ljava/util/AbstractMap;, "Ljava/util/AbstractMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/AbstractMap;->valuesCollection:Ljava/util/Collection;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 468
    new-instance v0, Ljava/util/AbstractMap$2;

    #@6
    invoke-direct {v0, p0}, Ljava/util/AbstractMap$2;-><init>(Ljava/util/AbstractMap;)V

    #@9
    iput-object v0, p0, Ljava/util/AbstractMap;->valuesCollection:Ljava/util/Collection;

    #@b
    .line 496
    :cond_0
    iget-object v0, p0, Ljava/util/AbstractMap;->valuesCollection:Ljava/util/Collection;

    #@d
    return-object v0
.end method
