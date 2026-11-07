.class Ljava/util/Collections$CheckedNavigableMap;
.super Ljava/util/Collections$CheckedSortedMap;
.source "Collections.java"

# interfaces
.implements Ljava/util/NavigableMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckedNavigableMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$CheckedSortedMap<",
        "TK;TV;>;",
        "Ljava/util/NavigableMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x4357691bf8b35350L


# instance fields
.field private final greylist-max-o nm:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/NavigableMap;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;",
            "Ljava/lang/Class<",
            "TK;>;",
            "Ljava/lang/Class<",
            "TV;>;)V"
        }
    .end annotation

    .line 4464
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "m":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    .local p2, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    .local p3, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/Collections$CheckedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 4465
    iput-object p1, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    .line 4466
    return-void
.end method


# virtual methods
.method public whitelist test-api ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4491
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 4492
    .local v0, "ceiling":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_10

    .line 4493
    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    goto :goto_11

    .line 4494
    :cond_10
    const/4 v1, 0x0

    .line 4492
    :goto_11
    return-object v1
.end method

.method public whitelist test-api ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 4497
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    .line 4468
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api descendingKeySet()Ljava/util/NavigableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 4549
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableMap;->keyType:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Collections;->checkedNavigableSet(Ljava/util/NavigableSet;Ljava/lang/Class;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api descendingMap()Ljava/util/NavigableMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4537
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->checkedNavigableMap(Ljava/util/NavigableMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api firstEntry()Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4509
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 4510
    .local v0, "first":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_10

    .line 4511
    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    goto :goto_11

    .line 4512
    :cond_10
    const/4 v1, 0x0

    .line 4510
    :goto_11
    return-object v1
.end method

.method public whitelist test-api firstKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 4469
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4482
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 4483
    .local v0, "floor":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_10

    .line 4484
    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    goto :goto_11

    .line 4485
    :cond_10
    const/4 v1, 0x0

    .line 4483
    :goto_11
    return-object v1
.end method

.method public whitelist test-api floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 4488
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist headMap(Ljava/lang/Object;)Ljava/util/NavigableMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4560
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->checkedNavigableMap(Ljava/util/NavigableMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 6
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4573
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->checkedNavigableMap(Ljava/util/NavigableMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 4453
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/Collections$CheckedNavigableMap;->headMap(Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4500
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 4501
    .local v0, "higher":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_10

    .line 4502
    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    goto :goto_11

    .line 4503
    :cond_10
    const/4 v1, 0x0

    .line 4501
    :goto_11
    return-object v1
.end method

.method public whitelist test-api higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 4506
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist keySet()Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 4541
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/Collections$CheckedNavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api keySet()Ljava/util/Set;
    .registers 2

    .line 4453
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/Collections$CheckedNavigableMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
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

    .line 4516
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 4517
    .local v0, "last":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_10

    .line 4518
    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    goto :goto_11

    .line 4519
    :cond_10
    const/4 v1, 0x0

    .line 4517
    :goto_11
    return-object v1
.end method

.method public whitelist test-api lastKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 4470
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4473
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 4474
    .local v0, "lower":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v0, :cond_10

    .line 4475
    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    goto :goto_11

    .line 4476
    :cond_10
    const/4 v1, 0x0

    .line 4474
    :goto_11
    return-object v1
.end method

.method public whitelist test-api lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 4479
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api navigableKeySet()Ljava/util/NavigableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 4545
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableMap;->keyType:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/util/Collections;->checkedNavigableSet(Ljava/util/NavigableSet;Ljava/lang/Class;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
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

    .line 4523
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 4524
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_a

    .line 4525
    const/4 v1, 0x0

    goto :goto_11

    .line 4526
    :cond_a
    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    .line 4524
    :goto_11
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

    .line 4530
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 4531
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_a

    .line 4532
    const/4 v1, 0x0

    goto :goto_11

    .line 4533
    :cond_a
    new-instance v1, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedMap$CheckedEntrySet$CheckedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Class;)V

    .line 4531
    :goto_11
    return-object v1
.end method

.method public blacklist subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4554
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, p2, v2}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->checkedNavigableMap(Ljava/util/NavigableMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 8
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4569
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->checkedNavigableMap(Ljava/util/NavigableMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 4453
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/Collections$CheckedNavigableMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public blacklist tailMap(Ljava/lang/Object;)Ljava/util/NavigableMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4565
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->checkedNavigableMap(Ljava/util/NavigableMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 6
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4577
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$CheckedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Ljava/util/Collections$CheckedNavigableMap;->keyType:Ljava/lang/Class;

    iget-object v2, p0, Ljava/util/Collections$CheckedNavigableMap;->valueType:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Ljava/util/Collections;->checkedNavigableMap(Ljava/util/NavigableMap;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 4453
    .local p0, "this":Ljava/util/Collections$CheckedNavigableMap;, "Ljava/util/Collections$CheckedNavigableMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/Collections$CheckedNavigableMap;->tailMap(Ljava/lang/Object;)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method
