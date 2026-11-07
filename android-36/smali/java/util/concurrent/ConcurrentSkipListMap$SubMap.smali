.class final Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
.super Ljava/util/AbstractMap;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentNavigableMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SubMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapEntryIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapKeyIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapValueIterator;,
        Ljava/util/concurrent/ConcurrentSkipListMap$SubMap$SubMapIter;
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
        "Ljava/util/concurrent/ConcurrentNavigableMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x6a1fe183320cb959L


# instance fields
.field private transient blacklist entrySetView:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o hi:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final greylist-max-o hiInclusive:Z

.field final greylist-max-o isDescending:Z

.field private transient greylist-max-o keySetView:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o lo:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final greylist-max-o loInclusive:Z

.field final greylist-max-o m:Ljava/util/concurrent/ConcurrentSkipListMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private transient blacklist valuesView:Ljava/util/concurrent/ConcurrentSkipListMap$Values;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListMap$Values<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V
    .registers 10
    .param p3, "fromInclusive"    # Z
    .param p5, "toInclusive"    # Z
    .param p6, "isDescending"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap<",
            "TK;TV;>;TK;ZTK;ZZ)V"
        }
    .end annotation

    .line 2426
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentSkipListMap;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>;"
    .local p2, "fromKey":Ljava/lang/Object;, "TK;"
    .local p4, "toKey":Ljava/lang/Object;, "TK;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 2427
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 2428
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    if-eqz p2, :cond_18

    if-eqz p4, :cond_18

    .line 2429
    invoke-static {v0, p2, p4}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_10

    goto :goto_18

    .line 2430
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "inconsistent range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2431
    :cond_18
    :goto_18
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 2432
    iput-object p2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    .line 2433
    iput-object p4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    .line 2434
    iput-boolean p3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    .line 2435
    iput-boolean p5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    .line 2436
    iput-boolean p6, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    .line 2437
    return-void
.end method


# virtual methods
.method public whitelist test-api ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2813
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearEntry(Ljava/lang/Object;I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 2817
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearKey(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o checkKeyBounds(Ljava/lang/Object;Ljava/util/Comparator;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Comparator<",
            "-TK;>;)V"
        }
    .end annotation

    .line 2458
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    if-eqz p1, :cond_11

    .line 2460
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2462
    return-void

    .line 2461
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2459
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api clear()V
    .registers 5

    .line 2693
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 2694
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2695
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_8
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/Comparator;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2697
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    if-eqz v2, :cond_19

    .line 2698
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2696
    :cond_19
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_8

    .line 2700
    .end local v1    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_1c
    return-void
.end method

.method public whitelist test-api comparator()Ljava/util/Comparator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 2726
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 2727
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-boolean v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v1, :cond_f

    .line 2728
    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    return-object v1

    .line 2730
    :cond_f
    return-object v0
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 2643
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    if-eqz p1, :cond_18

    .line 2644
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0

    .line 2643
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api containsValue(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "value"    # Ljava/lang/Object;

    .line 2679
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    if-eqz p1, :cond_21

    .line 2681
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 2682
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2683
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_a
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/Comparator;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2685
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    .line 2686
    .local v2, "v":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_1c

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 2687
    const/4 v3, 0x1

    return v3

    .line 2684
    .end local v2    # "v":Ljava/lang/Object;, "TV;"
    :cond_1c
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_a

    .line 2689
    .end local v1    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_1f
    const/4 v1, 0x0

    return v1

    .line 2680
    .end local v0    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :cond_21
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api descendingKeySet()Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 2895
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->descendingMap()Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api descendingMap()Ljava/util/NavigableMap;
    .registers 2

    .line 2396
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->descendingMap()Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;
    .registers 2

    .line 2396
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->descendingMap()Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist descendingMap()Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2806
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    iget-boolean v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    iget-boolean v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    iget-boolean v6, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    xor-int/lit8 v6, v6, 0x1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    return-object v0
.end method

.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2890
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->entrySetView:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    move-object v1, v0

    .local v1, "es":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet<TK;TV;>;"
    if-eqz v0, :cond_6

    return-object v1

    .line 2891
    :cond_6
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->entrySetView:Ljava/util/concurrent/ConcurrentSkipListMap$EntrySet;

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

    .line 2853
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->highestEntry()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lowestEntry()Ljava/util/Map$Entry;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public whitelist test-api firstKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2845
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->highestKey()Ljava/lang/Object;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lowestKey()Ljava/lang/Object;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public whitelist test-api floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2829
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearEntry(Ljava/lang/Object;I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 2833
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearKey(Ljava/lang/Object;I)Ljava/lang/Object;

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

    .line 2648
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    if-eqz p1, :cond_15

    .line 2649
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_14

    :cond_e
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_14
    return-object v0

    .line 2648
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method greylist-max-o getNearEntry(Ljava/lang/Object;I)Ljava/util/Map$Entry;
    .registers 7
    .param p2, "rel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2584
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 2585
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-boolean v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v1, :cond_11

    .line 2586
    and-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_f

    .line 2587
    or-int/lit8 p2, p2, 0x2

    goto :goto_11

    .line 2589
    :cond_f
    and-int/lit8 p2, p2, -0x3

    .line 2591
    :cond_11
    :goto_11
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooLow(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 2592
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1d

    goto :goto_21

    :cond_1d
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lowestEntry()Ljava/util/Map$Entry;

    move-result-object v2

    :goto_21
    return-object v2

    .line 2593
    :cond_22
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooHigh(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2594
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_30

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->highestEntry()Ljava/util/Map$Entry;

    move-result-object v2

    :cond_30
    return-object v2

    .line 2595
    :cond_31
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    .line 2596
    invoke-virtual {v1, p1, p2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNearEntry(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v1

    .line 2597
    .local v1, "e":Ljava/util/AbstractMap$SimpleImmutableEntry;, "Ljava/util/AbstractMap$SimpleImmutableEntry<TK;TV;>;"
    if-eqz v1, :cond_45

    invoke-virtual {v1}, Ljava/util/AbstractMap$SimpleImmutableEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v3

    if-nez v3, :cond_44

    goto :goto_45

    .line 2600
    :cond_44
    return-object v1

    .line 2598
    :cond_45
    :goto_45
    return-object v2
.end method

.method greylist-max-o getNearKey(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 8
    .param p2, "rel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)TK;"
        }
    .end annotation

    .line 2605
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 2606
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-boolean v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v1, :cond_11

    .line 2607
    and-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_f

    .line 2608
    or-int/lit8 p2, p2, 0x2

    goto :goto_11

    .line 2610
    :cond_f
    and-int/lit8 p2, p2, -0x3

    .line 2612
    :cond_11
    :goto_11
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooLow(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    .line 2613
    and-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_29

    .line 2614
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2615
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/Comparator;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 2616
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    return-object v2

    .line 2618
    .end local v1    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_29
    return-object v2

    .line 2620
    :cond_2a
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooHigh(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 2621
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_43

    .line 2622
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2623
    .restart local v1    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v1, :cond_43

    .line 2624
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2625
    .local v3, "last":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v3, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 2626
    return-object v3

    .line 2629
    .end local v1    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v3    # "last":Ljava/lang/Object;, "TK;"
    :cond_43
    return-object v2

    .line 2632
    :cond_44
    :goto_44
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v1, p1, p2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2633
    .restart local v1    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v1, :cond_5d

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {p0, v3, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v3

    if-nez v3, :cond_55

    goto :goto_5d

    .line 2635
    :cond_55
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    if-eqz v3, :cond_5c

    .line 2636
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    return-object v2

    .line 2637
    .end local v1    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_5c
    goto :goto_44

    .line 2634
    .restart local v1    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_5d
    :goto_5d
    return-object v2
.end method

.method public bridge synthetic whitelist test-api headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
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

    .line 2396
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object p1

    return-object p1
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

    .line 2396
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 2396
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
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

    .line 2396
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object p1

    return-object p1
.end method

.method public blacklist headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2798
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .registers 5
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2782
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_9

    .line 2784
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->newSubMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0

    .line 2783
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method greylist-max-o hiNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2498
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    if-nez v0, :cond_b

    .line 2499
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findLast()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    return-object v0

    .line 2500
    :cond_b
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    if-eqz v0, :cond_19

    .line 2501
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    return-object v0

    .line 2503
    :cond_19
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2837
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearEntry(Ljava/lang/Object;I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 2841
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearKey(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o highestEntry()Ljava/util/Map$Entry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2544
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 2547
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :goto_4
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    move-object v2, v1

    .local v2, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v1, :cond_22

    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_22

    .line 2549
    :cond_14
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    move-object v3, v1

    .local v3, "v":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_21

    .line 2550
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v4, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-direct {v1, v4, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 2551
    .end local v2    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    :cond_21
    goto :goto_4

    .line 2548
    .restart local v2    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_22
    :goto_22
    const/4 v1, 0x0

    return-object v1
.end method

.method greylist-max-o highestKey()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2522
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 2523
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2524
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v1, :cond_13

    .line 2525
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2526
    .local v2, "last":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2527
    return-object v2

    .line 2529
    .end local v2    # "last":Ljava/lang/Object;, "TK;"
    :cond_13
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method greylist-max-o inBounds(Ljava/lang/Object;Ljava/util/Comparator;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator<",
            "-TK;>;)Z"
        }
    .end annotation

    .line 2454
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p2, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooLow(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tooHigh(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method greylist-max-o isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/Comparator;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node<",
            "TK;TV;>;",
            "Ljava/util/Comparator<",
            "-TK;>;)Z"
        }
    .end annotation

    .line 2469
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local p2, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2470
    return v0

    .line 2471
    :cond_4
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez v1, :cond_a

    .line 2472
    return v2

    .line 2473
    :cond_a
    iget-object v1, p1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    .line 2474
    .local v1, "k":Ljava/lang/Object;, "TK;"
    if-nez v1, :cond_f

    .line 2475
    return v2

    .line 2476
    :cond_f
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    invoke-static {p2, v1, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 2477
    .local v3, "c":I
    if-ltz v3, :cond_1d

    if-nez v3, :cond_1e

    iget-boolean v4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    if-eqz v4, :cond_1e

    :cond_1d
    move v0, v2

    :cond_1e
    return v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 3

    .line 2674
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 2675
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/Comparator;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public whitelist test-api keySet()Ljava/util/NavigableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 2872
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->keySetView:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    move-object v1, v0

    .local v1, "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    if-eqz v0, :cond_6

    return-object v1

    .line 2873
    :cond_6
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->keySetView:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api keySet()Ljava/util/Set;
    .registers 2

    .line 2396
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->keySet()Ljava/util/NavigableSet;

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

    .line 2857
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lowestEntry()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->highestEntry()Ljava/util/Map$Entry;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public whitelist test-api lastKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2849
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lowestKey()Ljava/lang/Object;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->highestKey()Ljava/lang/Object;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method greylist-max-o loNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2485
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    if-nez v0, :cond_b

    .line 2486
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->findFirst()Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    return-object v0

    .line 2487
    :cond_b
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    if-eqz v0, :cond_19

    .line 2488
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    return-object v0

    .line 2490
    :cond_19
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->findNear(Ljava/lang/Object;ILjava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2821
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearEntry(Ljava/lang/Object;I)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 2825
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->getNearKey(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o lowestEntry()Ljava/util/Map$Entry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2533
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 2536
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :goto_4
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    move-object v2, v1

    .local v2, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v1, :cond_20

    invoke-virtual {p0, v2, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/Comparator;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_20

    .line 2538
    :cond_12
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    move-object v3, v1

    .local v3, "v":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_1f

    .line 2539
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v4, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    invoke-direct {v1, v4, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 2540
    .end local v2    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    :cond_1f
    goto :goto_4

    .line 2537
    .restart local v2    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_20
    :goto_20
    const/4 v1, 0x0

    return-object v1
.end method

.method greylist-max-o lowestKey()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 2510
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 2511
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    .line 2512
    .local v1, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/Comparator;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2513
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    return-object v2

    .line 2515
    :cond_11
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
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

    .line 2878
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->keySetView:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    move-object v1, v0

    .local v1, "ks":Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySet<TK;TV;>;"
    if-eqz v0, :cond_6

    return-object v1

    .line 2879
    :cond_6
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->keySetView:Ljava/util/concurrent/ConcurrentSkipListMap$KeySet;

    return-object v0
.end method

.method greylist-max-o newSubMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .registers 16
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2739
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 2740
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-boolean v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v1, :cond_e

    .line 2741
    move-object v1, p1

    .line 2742
    .local v1, "tk":Ljava/lang/Object;, "TK;"
    move-object p1, p3

    .line 2743
    move-object p3, v1

    .line 2744
    move v2, p2

    .line 2745
    .local v2, "ti":Z
    move p2, p4

    .line 2746
    move p4, v2

    .line 2748
    .end local v1    # "tk":Ljava/lang/Object;, "TK;"
    .end local v2    # "ti":Z
    :cond_e
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    const-string v2, "key out of range"

    if-eqz v1, :cond_34

    .line 2749
    if-nez p1, :cond_1d

    .line 2750
    iget-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    .line 2751
    iget-boolean p2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    move-object v6, p1

    move v7, p2

    goto :goto_36

    .line 2754
    :cond_1d
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 2755
    .local v1, "c":I
    if-ltz v1, :cond_2e

    if-nez v1, :cond_2d

    iget-boolean v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    if-nez v3, :cond_2d

    if-nez p2, :cond_2e

    :cond_2d
    goto :goto_34

    .line 2756
    :cond_2e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2759
    .end local v1    # "c":I
    :cond_34
    :goto_34
    move-object v6, p1

    move v7, p2

    .end local p1    # "fromKey":Ljava/lang/Object;, "TK;"
    .end local p2    # "fromInclusive":Z
    .local v6, "fromKey":Ljava/lang/Object;, "TK;"
    .local v7, "fromInclusive":Z
    :goto_36
    iget-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    if-eqz p1, :cond_5a

    .line 2760
    if-nez p3, :cond_43

    .line 2761
    iget-object p3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    .line 2762
    iget-boolean p4, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    move-object v8, p3

    move v9, p4

    goto :goto_5c

    .line 2765
    :cond_43
    iget-object p1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    invoke-static {v0, p3, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    .line 2766
    .local p1, "c":I
    if-gtz p1, :cond_54

    if-nez p1, :cond_53

    iget-boolean p2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    if-nez p2, :cond_53

    if-nez p4, :cond_54

    :cond_53
    goto :goto_5a

    .line 2767
    :cond_54
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2770
    .end local p1    # "c":I
    :cond_5a
    :goto_5a
    move-object v8, p3

    move v9, p4

    .end local p3    # "toKey":Ljava/lang/Object;, "TK;"
    .end local p4    # "toInclusive":Z
    .local v8, "toKey":Ljava/lang/Object;, "TK;"
    .local v9, "toInclusive":Z
    :goto_5c
    new-instance v4, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    iget-object v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-boolean v10, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    invoke-direct/range {v4 .. v10}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;-><init>(Ljava/util/concurrent/ConcurrentSkipListMap;Ljava/lang/Object;ZLjava/lang/Object;ZZ)V

    return-object v4
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

    .line 2861
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->removeHighest()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->removeLowest()Ljava/util/Map$Entry;

    move-result-object v0

    :goto_d
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

    .line 2865
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isDescending:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->removeLowest()Ljava/util/Map$Entry;

    move-result-object v0

    goto :goto_d

    :cond_9
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->removeHighest()Ljava/util/Map$Entry;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 2653
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->checkKeyBounds(Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2654
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 2705
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->checkKeyBounds(Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2706
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 2658
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_12

    :cond_c
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_12
    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 2710
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method greylist-max-o removeHighest()Ljava/util/Map$Entry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2568
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 2571
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :goto_4
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    move-object v2, v1

    .local v2, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    const/4 v3, 0x0

    if-nez v1, :cond_d

    .line 2572
    return-object v3

    .line 2573
    :cond_d
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    move-object v4, v1

    .local v4, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 2574
    return-object v3

    .line 2575
    :cond_17
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v1, v4, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    .local v3, "v":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_26

    .line 2576
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v4, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 2577
    .end local v2    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    :cond_26
    goto :goto_4
.end method

.method greylist-max-o removeLowest()Ljava/util/Map$Entry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2555
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 2558
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    :goto_4
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v1

    move-object v2, v1

    .local v2, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    const/4 v3, 0x0

    if-nez v1, :cond_d

    .line 2559
    return-object v3

    .line 2560
    :cond_d
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    move-object v4, v1

    .local v4, "k":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->inBounds(Ljava/lang/Object;Ljava/util/Comparator;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 2561
    return-object v3

    .line 2562
    :cond_17
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v1, v4, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->doRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    .local v3, "v":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_26

    .line 2563
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v4, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 2564
    .end local v2    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    :cond_26
    goto :goto_4
.end method

.method public whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 2719
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->checkKeyBounds(Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2720
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 2714
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->checkKeyBounds(Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 2715
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/ConcurrentSkipListMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 7

    .line 2662
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->m:Ljava/util/concurrent/ConcurrentSkipListMap;

    iget-object v0, v0, Ljava/util/concurrent/ConcurrentSkipListMap;->comparator:Ljava/util/Comparator;

    .line 2663
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    const-wide/16 v1, 0x0

    .line 2664
    .local v1, "count":J
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loNode(Ljava/util/Comparator;)Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-result-object v3

    .line 2665
    .local v3, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_a
    invoke-virtual {p0, v3, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->isBeforeEnd(Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/util/Comparator;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 2667
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    if-eqz v4, :cond_17

    .line 2668
    const-wide/16 v4, 0x1

    add-long/2addr v1, v4

    .line 2666
    :cond_17
    iget-object v3, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_a

    .line 2670
    .end local v3    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_1a
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-ltz v3, :cond_25

    const v3, 0x7fffffff

    goto :goto_26

    :cond_25
    long-to-int v3, v1

    :goto_26
    return v3
.end method

.method public bridge synthetic whitelist test-api subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 2396
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object p1

    return-object p1
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

    .line 2396
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
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

    .line 2396
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 2396
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object p1

    return-object p1
.end method

.method public blacklist subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2794
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .registers 6
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2776
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_9

    if-eqz p3, :cond_9

    .line 2778
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->newSubMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0

    .line 2777
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
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

    .line 2396
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object p1

    return-object p1
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

    .line 2396
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 2396
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
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

    .line 2396
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object p1

    return-object p1
.end method

.method public blacklist tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2802
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;
    .registers 5
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2788
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_9

    .line 2790
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->newSubMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;

    move-result-object v0

    return-object v0

    .line 2789
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method greylist-max-o tooHigh(Ljava/lang/Object;Ljava/util/Comparator;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator<",
            "-TK;>;)Z"
        }
    .end annotation

    .line 2449
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p2, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    if-eqz v0, :cond_15

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hi:Ljava/lang/Object;

    invoke-static {p2, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    move v1, v0

    .local v1, "c":I
    if-gtz v0, :cond_13

    if-nez v1, :cond_15

    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->hiInclusive:Z

    if-nez v0, :cond_15

    :cond_13
    const/4 v0, 0x1

    goto :goto_16

    .end local v1    # "c":I
    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method greylist-max-o tooLow(Ljava/lang/Object;Ljava/util/Comparator;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator<",
            "-TK;>;)Z"
        }
    .end annotation

    .line 2443
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    .local p2, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    if-eqz v0, :cond_15

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->lo:Ljava/lang/Object;

    invoke-static {p2, p1, v0}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    move v1, v0

    .local v1, "c":I
    if-ltz v0, :cond_13

    if-nez v1, :cond_15

    iget-boolean v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->loInclusive:Z

    if-nez v0, :cond_15

    :cond_13
    const/4 v0, 0x1

    goto :goto_16

    .end local v1    # "c":I
    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
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

    .line 2884
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;, "Ljava/util/concurrent/ConcurrentSkipListMap$SubMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->valuesView:Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    move-object v1, v0

    .local v1, "vs":Ljava/util/concurrent/ConcurrentSkipListMap$Values;, "Ljava/util/concurrent/ConcurrentSkipListMap$Values<TK;TV;>;"
    if-eqz v0, :cond_6

    return-object v1

    .line 2885
    :cond_6
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentSkipListMap$Values;-><init>(Ljava/util/concurrent/ConcurrentNavigableMap;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$SubMap;->valuesView:Ljava/util/concurrent/ConcurrentSkipListMap$Values;

    return-object v0
.end method
