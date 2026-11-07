.class Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;
.super Ljava/util/AbstractMap;
.source "LinkedHashMap.java"

# interfaces
.implements Ljava/util/SequencedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReversedLinkedHashMapView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/SequencedMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final blacklist base:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/LinkedHashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1139
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    .local p1, "lhm":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 1140
    iput-object p1, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    .line 1141
    return-void
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 1189
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 1190
    return-void
.end method

.method public whitelist test-api compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1253
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation

    .line 1245
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1249
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 1165
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 1169
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1201
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->sequencedEntrySet()Ljava/util/SequencedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SequencedSet;->reversed()Ljava/util/SequencedSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1147
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api firstEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1267
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api forEach(Ljava/util/function/BiConsumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 1209
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    if-eqz p1, :cond_23

    .line 1211
    iget-object v0, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    iget v0, v0, Ljava/util/LinkedHashMap;->modCount:I

    .line 1212
    .local v0, "mc":I
    iget-object v1, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    iget-object v1, v1, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$Entry;

    .local v1, "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    :goto_a
    if-eqz v1, :cond_16

    .line 1213
    iget-object v2, v1, Ljava/util/LinkedHashMap$Entry;->key:Ljava/lang/Object;

    iget-object v3, v1, Ljava/util/LinkedHashMap$Entry;->value:Ljava/lang/Object;

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1212
    iget-object v1, v1, Ljava/util/LinkedHashMap$Entry;->before:Ljava/util/LinkedHashMap$Entry;

    goto :goto_a

    .line 1214
    .end local v1    # "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    :cond_16
    iget-object v1, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    iget v1, v1, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v1, v0, :cond_1d

    .line 1216
    return-void

    .line 1215
    :cond_1d
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1210
    .end local v0    # "mc":I
    :cond_23
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1173
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .line 1205
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1151
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 1161
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 1193
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->sequencedKeySet()Ljava/util/SequencedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SequencedSet;->reversed()Ljava/util/SequencedSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api lastEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1271
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 1257
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/LinkedHashMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api pollFirstEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1275
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api pollLastEntry()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1279
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1177
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api putAll(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 1185
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 1186
    return-void
.end method

.method public whitelist test-api putFirst(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1283
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->putLast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1229
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api putLast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1287
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->putFirst(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 1181
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 1233
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 1241
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 1237
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/LinkedHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api replaceAll(Ljava/util/function/BiFunction;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .line 1219
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    if-eqz p1, :cond_26

    .line 1221
    iget-object v0, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    iget v0, v0, Ljava/util/LinkedHashMap;->modCount:I

    .line 1222
    .local v0, "mc":I
    iget-object v1, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    iget-object v1, v1, Ljava/util/LinkedHashMap;->tail:Ljava/util/LinkedHashMap$Entry;

    .local v1, "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    :goto_a
    if-eqz v1, :cond_19

    .line 1223
    iget-object v2, v1, Ljava/util/LinkedHashMap$Entry;->key:Ljava/lang/Object;

    iget-object v3, v1, Ljava/util/LinkedHashMap$Entry;->value:Ljava/lang/Object;

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Ljava/util/LinkedHashMap$Entry;->value:Ljava/lang/Object;

    .line 1222
    iget-object v1, v1, Ljava/util/LinkedHashMap$Entry;->before:Ljava/util/LinkedHashMap$Entry;

    goto :goto_a

    .line 1224
    .end local v1    # "e":Ljava/util/LinkedHashMap$Entry;, "Ljava/util/LinkedHashMap$Entry<TK;TV;>;"
    :cond_19
    iget-object v1, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    iget v1, v1, Ljava/util/LinkedHashMap;->modCount:I

    if-ne v1, v0, :cond_20

    .line 1226
    return-void

    .line 1225
    :cond_20
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 1220
    .end local v0    # "mc":I
    :cond_26
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reversed()Ljava/util/SequencedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SequencedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1263
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 1157
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 1197
    .local p0, "this":Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;, "Ljava/util/LinkedHashMap$ReversedLinkedHashMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$ReversedLinkedHashMapView;->base:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->sequencedValues()Ljava/util/SequencedCollection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SequencedCollection;->reversed()Ljava/util/SequencedCollection;

    move-result-object v0

    return-object v0
.end method
