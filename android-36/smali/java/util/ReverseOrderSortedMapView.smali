.class Ljava/util/ReverseOrderSortedMapView;
.super Ljava/util/AbstractMap;
.source "ReverseOrderSortedMapView.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ReverseOrderSortedMapView$Submap;,
        Ljava/util/ReverseOrderSortedMapView$ViewEntry;
    }
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
        "Ljava/util/SortedMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final blacklist base:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final blacklist cmp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljava/util/SortedMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>;"
    .local p1, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 38
    iput-object p1, p0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    .line 39
    invoke-interface {p1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ReverseOrderSortedMapView;->cmp:Ljava/util/Comparator;

    .line 40
    return-void
.end method

.method static blacklist descendingEntryIterator(Ljava/util/SortedMap;)Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;)",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 243
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    new-instance v0, Ljava/util/ReverseOrderSortedMapView$6;

    invoke-direct {v0, p0}, Ljava/util/ReverseOrderSortedMapView$6;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method static blacklist descendingKeyIterator(Ljava/util/SortedMap;)Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;)",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 196
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    new-instance v0, Ljava/util/ReverseOrderSortedMapView$4;

    invoke-direct {v0, p0}, Ljava/util/ReverseOrderSortedMapView$4;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method static blacklist descendingValueIterator(Ljava/util/SortedMap;)Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;)",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 225
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    new-instance v0, Ljava/util/ReverseOrderSortedMapView$5;

    invoke-direct {v0, p0}, Ljava/util/ReverseOrderSortedMapView$5;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public static blacklist of(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 43
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    instance-of v0, p0, Ljava/util/ReverseOrderSortedMapView;

    if-eqz v0, :cond_a

    move-object v0, p0

    check-cast v0, Ljava/util/ReverseOrderSortedMapView;

    .line 44
    .local v0, "rosmv":Ljava/util/ReverseOrderSortedMapView;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>;"
    iget-object v1, v0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    return-object v1

    .line 46
    .end local v0    # "rosmv":Ljava/util/ReverseOrderSortedMapView;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>;"
    :cond_a
    new-instance v0, Ljava/util/ReverseOrderSortedMapView;

    invoke-direct {v0, p0}, Ljava/util/ReverseOrderSortedMapView;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method static blacklist toString(Ljava/util/Map;Ljava/util/Iterator;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 293
    .local p0, "thisMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 294
    const-string v0, "{}"

    return-object v0

    .line 296
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 299
    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 300
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 301
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 302
    .local v3, "value":Ljava/lang/Object;, "TV;"
    const-string v4, "(this Map)"

    if-ne v2, p0, :cond_27

    move-object v5, v4

    goto :goto_28

    :cond_27
    move-object v5, v2

    :goto_28
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 303
    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    if-ne v3, p0, :cond_33

    goto :goto_34

    :cond_33
    move-object v4, v3

    :goto_34
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 305
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_48

    .line 306
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 307
    :cond_48
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_13
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 63
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    .line 64
    return-void
.end method

.method public whitelist test-api comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 174
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView;->cmp:Ljava/util/Comparator;

    return-object v0
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 67
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 71
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->containsValue(Ljava/lang/Object;)Z

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

    .line 121
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>;"
    new-instance v0, Ljava/util/ReverseOrderSortedMapView$3;

    invoke-direct {v0, p0}, Ljava/util/ReverseOrderSortedMapView$3;-><init>(Ljava/util/ReverseOrderSortedMapView;)V

    return-object v0
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

    .line 146
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api firstKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 138
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    .line 75
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 186
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/util/ReverseOrderSortedMapView$Submap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Ljava/util/ReverseOrderSortedMapView$Submap;-><init>(Ljava/util/ReverseOrderSortedMapView;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 79
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

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

    .line 99
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>;"
    new-instance v0, Ljava/util/ReverseOrderSortedMapView$1;

    invoke-direct {v0, p0}, Ljava/util/ReverseOrderSortedMapView$1;-><init>(Ljava/util/ReverseOrderSortedMapView;)V

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

    .line 150
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api lastKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 142
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

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

    .line 154
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->pollLastEntry()Ljava/util/Map$Entry;

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

    .line 158
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->pollFirstEntry()Ljava/util/Map$Entry;

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

    .line 83
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 87
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 88
    return-void
.end method

.method public whitelist test-api putFirst(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 163
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->putLast(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 168
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->putFirst(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 91
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api reversed()Ljava/util/SequencedMap;
    .registers 2

    .line 33
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderSortedMapView;->reversed()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api reversed()Ljava/util/SortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 134
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    return-object v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 95
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 178
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView;->cmp:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_e

    .line 179
    new-instance v0, Ljava/util/ReverseOrderSortedMapView$Submap;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/ReverseOrderSortedMapView$Submap;-><init>(Ljava/util/ReverseOrderSortedMapView;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 181
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 190
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava/util/ReverseOrderSortedMapView$Submap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava/util/ReverseOrderSortedMapView$Submap;-><init>(Ljava/util/ReverseOrderSortedMapView;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 57
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/util/ReverseOrderSortedMapView;->descendingEntryIterator(Ljava/util/SortedMap;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/ReverseOrderSortedMapView;->toString(Ljava/util/Map;Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 110
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>;"
    new-instance v0, Ljava/util/ReverseOrderSortedMapView$2;

    invoke-direct {v0, p0}, Ljava/util/ReverseOrderSortedMapView$2;-><init>(Ljava/util/ReverseOrderSortedMapView;)V

    return-object v0
.end method
