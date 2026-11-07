.class Ljava/util/Collections$SynchronizedNavigableMap;
.super Ljava/util/Collections$SynchronizedSortedMap;
.source "Collections.java"

# interfaces
.implements Ljava/util/NavigableMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedNavigableMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$SynchronizedSortedMap<",
        "TK;TV;>;",
        "Ljava/util/NavigableMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x9b4bd8b2cd84ef7L


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
.method constructor greylist-max-o <init>(Ljava/util/NavigableMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3235
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableMap;, "Ljava/util/Collections$SynchronizedNavigableMap<TK;TV;>;"
    .local p1, "m":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;)V

    .line 3236
    iput-object p1, p0, Ljava/util/Collections$SynchronizedNavigableMap;->nm:Ljava/util/NavigableMap;

    .line 3237
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/NavigableMap;Ljava/lang/Object;)V
    .registers 3
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 3239
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableMap;, "Ljava/util/Collections$SynchronizedNavigableMap<TK;TV;>;"
    .local p1, "m":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Object;)V

    .line 3240
    iput-object p1, p0, Ljava/util/Collections$SynchronizedNavigableMap;->nm:Ljava/util/NavigableMap;

    .line 3241
    return-void
.end method


# virtual methods
.method public whitelist test-api ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3252
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableMap;, "Ljava/util/Collections$SynchronizedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 3254
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableMap;, "Ljava/util/Collections$SynchronizedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api descendingKeySet()Ljava/util/NavigableSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 3286
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableMap;, "Ljava/util/Collections$SynchronizedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 3287
    :try_start_3
    new-instance v1, Ljava/util/Collections$SynchronizedNavigableSet;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v2}, Ljava/util/NavigableMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedNavigableSet;-><init>(Ljava/util/NavigableSet;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 3288
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist test-api descendingMap()Ljava/util/NavigableMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3269
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableMap;, "Ljava/util/Collections$SynchronizedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 3270
    :try_start_3
    new-instance v1, Ljava/util/Collections$SynchronizedNavigableMap;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedNavigableMap;->nm:Ljava/util/NavigableMap;

    .line 3271
    invoke-interface {v2}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedNavigableMap;-><init>(Ljava/util/NavigableMap;Ljava/lang/Object;)V

    monitor-exit v0

    .line 3270
    return-object v1

    .line 3272
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist test-api firstEntry()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3260
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableMap;, "Ljava/util/Collections$SynchronizedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3248
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableMap;, "Ljava/util/Collections$SynchronizedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 3250
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableMap;, "Ljava/util/Collections$SynchronizedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 7
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3317
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableMap;, "Ljava/util/Collections$SynchronizedNavigableMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 3318
    :try_start_3
    new-instance v1, Ljava/util/Collections$SynchronizedNavigableMap;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedNavigableMap;->nm:Ljava/util/NavigableMap;

    .line 3319
    invoke-interface {v2, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedNavigableMap;-><init>(Ljava/util/NavigableMap;Ljava/lang/Object;)V

    monitor-exit v0

    .line 3318
    return-object v1

    .line 3320
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist test-api headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3299
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableMap;, "Ljava/util/Collections$SynchronizedNavigableMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 3300
    :try_start_3
    new-instance v1, Ljava/util/Collections$SynchronizedNavigableMap;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedNavigableMap;->nm:Ljava/util/NavigableMap;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedNavigableMap;-><init>(Ljava/util/NavigableMap;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 3301
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public whitelist test-api higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3256
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableMap;, "Ljava/util/Collections$SynchronizedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 3258
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableMap;, "Ljava/util/Collections$SynchronizedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
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

    .line 3276
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableMap;, "Ljava/util/Collections$SynchronizedNavigableMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/Collections$SynchronizedNavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api keySet()Ljava/util/Set;
    .registers 2

    .line 3224
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableMap;, "Ljava/util/Collections$SynchronizedNavigableMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/Collections$SynchronizedNavigableMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api lastEntry()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3262
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableMap;, "Ljava/util/Collections$SynchronizedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3244
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableMap;, "Ljava/util/Collections$SynchronizedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 3246
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableMap;, "Ljava/util/Collections$SynchronizedNavigableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v1, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api navigableKeySet()Ljava/util/NavigableSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 3280
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableMap;, "Ljava/util/Collections$SynchronizedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 3281
    :try_start_3
    new-instance v1, Ljava/util/Collections$SynchronizedNavigableSet;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v2}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedNavigableSet;-><init>(Ljava/util/NavigableSet;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 3282
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist test-api pollFirstEntry()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3264
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableMap;, "Ljava/util/Collections$SynchronizedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api pollLastEntry()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3266
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableMap;, "Ljava/util/Collections$SynchronizedNavigableMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedNavigableMap;->nm:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 9
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3310
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableMap;, "Ljava/util/Collections$SynchronizedNavigableMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 3311
    :try_start_3
    new-instance v1, Ljava/util/Collections$SynchronizedNavigableMap;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedNavigableMap;->nm:Ljava/util/NavigableMap;

    .line 3312
    invoke-interface {v2, p1, p2, p3, p4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedNavigableMap;-><init>(Ljava/util/NavigableMap;Ljava/lang/Object;)V

    monitor-exit v0

    .line 3311
    return-object v1

    .line 3313
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist test-api subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3293
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableMap;, "Ljava/util/Collections$SynchronizedNavigableMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 3294
    :try_start_3
    new-instance v1, Ljava/util/Collections$SynchronizedNavigableMap;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedNavigableMap;->nm:Ljava/util/NavigableMap;

    .line 3295
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, p1, v3, p2, v4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedNavigableMap;-><init>(Ljava/util/NavigableMap;Ljava/lang/Object;)V

    monitor-exit v0

    .line 3294
    return-object v1

    .line 3296
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public whitelist test-api tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 7
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3324
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableMap;, "Ljava/util/Collections$SynchronizedNavigableMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 3325
    :try_start_3
    new-instance v1, Ljava/util/Collections$SynchronizedNavigableMap;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedNavigableMap;->nm:Ljava/util/NavigableMap;

    .line 3326
    invoke-interface {v2, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedNavigableMap;-><init>(Ljava/util/NavigableMap;Ljava/lang/Object;)V

    monitor-exit v0

    .line 3325
    return-object v1

    .line 3327
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist test-api tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3304
    .local p0, "this":Ljava/util/Collections$SynchronizedNavigableMap;, "Ljava/util/Collections$SynchronizedNavigableMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 3305
    :try_start_3
    new-instance v1, Ljava/util/Collections$SynchronizedNavigableMap;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedNavigableMap;->nm:Ljava/util/NavigableMap;

    const/4 v3, 0x1

    invoke-interface {v2, p1, v3}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedNavigableMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedNavigableMap;-><init>(Ljava/util/NavigableMap;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 3306
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method
