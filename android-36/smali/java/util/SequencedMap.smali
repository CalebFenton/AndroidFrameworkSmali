.class public interface abstract Ljava/util/SequencedMap;
.super Ljava/lang/Object;
.source "SequencedMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
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


# virtual methods
.method public whitelist test-api firstEntry()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 152
    .local p0, "this":Ljava/util/SequencedMap;, "Ljava/util/SequencedMap<TK;TV;>;"
    invoke-interface {p0}, Ljava/util/SequencedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 153
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    new-instance v1, Ljdk/internal/util/NullableKeyValueHolder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-direct {v1, v2}, Ljdk/internal/util/NullableKeyValueHolder;-><init>(Ljava/util/Map$Entry;)V

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return-object v1
.end method

.method public whitelist test-api lastEntry()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 169
    .local p0, "this":Ljava/util/SequencedMap;, "Ljava/util/SequencedMap<TK;TV;>;"
    invoke-interface {p0}, Ljava/util/SequencedMap;->reversed()Ljava/util/SequencedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SequencedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 170
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    new-instance v1, Ljdk/internal/util/NullableKeyValueHolder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-direct {v1, v2}, Ljdk/internal/util/NullableKeyValueHolder;-><init>(Ljava/util/Map$Entry;)V

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    :goto_1f
    return-object v1
.end method

.method public whitelist test-api pollFirstEntry()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 188
    .local p0, "this":Ljava/util/SequencedMap;, "Ljava/util/SequencedMap<TK;TV;>;"
    invoke-interface {p0}, Ljava/util/SequencedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 189
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 190
    new-instance v1, Ljdk/internal/util/NullableKeyValueHolder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-direct {v1, v2}, Ljdk/internal/util/NullableKeyValueHolder;-><init>(Ljava/util/Map$Entry;)V

    .line 191
    .local v1, "entry":Ljdk/internal/util/NullableKeyValueHolder;, "Ljdk/internal/util/NullableKeyValueHolder<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 192
    return-object v1

    .line 194
    .end local v1    # "entry":Ljdk/internal/util/NullableKeyValueHolder;, "Ljdk/internal/util/NullableKeyValueHolder<TK;TV;>;"
    :cond_1d
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api pollLastEntry()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 213
    .local p0, "this":Ljava/util/SequencedMap;, "Ljava/util/SequencedMap<TK;TV;>;"
    invoke-interface {p0}, Ljava/util/SequencedMap;->reversed()Ljava/util/SequencedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SequencedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 214
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 215
    new-instance v1, Ljdk/internal/util/NullableKeyValueHolder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-direct {v1, v2}, Ljdk/internal/util/NullableKeyValueHolder;-><init>(Ljava/util/Map$Entry;)V

    .line 216
    .local v1, "entry":Ljdk/internal/util/NullableKeyValueHolder;, "Ljdk/internal/util/NullableKeyValueHolder<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 217
    return-object v1

    .line 219
    .end local v1    # "entry":Ljdk/internal/util/NullableKeyValueHolder;, "Ljdk/internal/util/NullableKeyValueHolder<TK;TV;>;"
    :cond_21
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api putFirst(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 239
    .local p0, "this":Ljava/util/SequencedMap;, "Ljava/util/SequencedMap<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api putLast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 258
    .local p0, "this":Ljava/util/SequencedMap;, "Ljava/util/SequencedMap<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist test-api reversed()Ljava/util/SequencedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SequencedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public whitelist test-api sequencedEntrySet()Ljava/util/SequencedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SequencedSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 350
    .local p0, "this":Ljava/util/SequencedMap;, "Ljava/util/SequencedMap<TK;TV;>;"
    new-instance v0, Ljava/util/SequencedMap$1SeqEntrySet;

    invoke-direct {v0, p0}, Ljava/util/SequencedMap$1SeqEntrySet;-><init>(Ljava/util/SequencedMap;)V

    return-object v0
.end method

.method public whitelist test-api sequencedKeySet()Ljava/util/SequencedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SequencedSet<",
            "TK;>;"
        }
    .end annotation

    .line 290
    .local p0, "this":Ljava/util/SequencedMap;, "Ljava/util/SequencedMap<TK;TV;>;"
    new-instance v0, Ljava/util/SequencedMap$1SeqKeySet;

    invoke-direct {v0, p0}, Ljava/util/SequencedMap$1SeqKeySet;-><init>(Ljava/util/SequencedMap;)V

    return-object v0
.end method

.method public whitelist test-api sequencedValues()Ljava/util/SequencedCollection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SequencedCollection<",
            "TV;>;"
        }
    .end annotation

    .line 317
    .local p0, "this":Ljava/util/SequencedMap;, "Ljava/util/SequencedMap<TK;TV;>;"
    new-instance v0, Ljava/util/SequencedMap$1SeqValues;

    invoke-direct {v0, p0}, Ljava/util/SequencedMap$1SeqValues;-><init>(Ljava/util/SequencedMap;)V

    return-object v0
.end method
