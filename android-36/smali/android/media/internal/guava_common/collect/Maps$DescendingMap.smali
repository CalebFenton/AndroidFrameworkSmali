.class abstract Landroid/media/internal/guava_common/collect/Maps$DescendingMap;
.super Landroid/media/internal/guava_common/collect/ForwardingMap;
.source "Maps.java"

# interfaces
.implements Ljava/util/NavigableMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "DescendingMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/ForwardingMap<",
        "TK;TV;>;",
        "Ljava/util/NavigableMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private transient blacklist comparator:Ljava/util/Comparator;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient blacklist entrySet:Ljava/util/Set;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient blacklist navigableKeySet:Ljava/util/NavigableSet;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 4204
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/ForwardingMap;-><init>()V

    return-void
.end method

.method private static blacklist reverse(Ljava/util/Comparator;)Landroid/media/internal/guava_common/collect/Ordering;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Landroid/media/internal/guava_common/collect/Ordering<",
            "TT;>;"
        }
    .end annotation

    .line 4232
    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Ordering;->from(Ljava/util/Comparator;)Landroid/media/internal/guava_common/collect/Ordering;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Ordering;->reverse()Landroid/media/internal/guava_common/collect/Ordering;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist test-api ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 4274
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 4280
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
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

    .line 4219
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->comparator:Ljava/util/Comparator;

    if-nez v0, :cond_18

    .line 4221
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    if-nez v0, :cond_12

    .line 4223
    invoke-static {}, Landroid/media/internal/guava_common/collect/Ordering;->natural()Landroid/media/internal/guava_common/collect/Ordering;

    move-result-object v0

    .line 4225
    :cond_12
    invoke-static {v0}, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->reverse(Ljava/util/Comparator;)Landroid/media/internal/guava_common/collect/Ordering;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->comparator:Ljava/util/Comparator;

    :cond_18
    return-object v0
.end method

.method blacklist createEntrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 4347
    new-instance v0, Landroid/media/internal/guava_common/collect/Maps$DescendingMap$1EntrySetImpl;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/Maps$DescendingMap$1EntrySetImpl;-><init>(Landroid/media/internal/guava_common/collect/Maps$DescendingMap;)V

    return-object v0
.end method

.method protected bridge synthetic blacklist delegate()Ljava/lang/Object;
    .registers 1

    .line 4203
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->delegate()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method protected final blacklist delegate()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4211
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api descendingKeySet()Ljava/util/NavigableSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 4365
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api descendingMap()Ljava/util/NavigableMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4321
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method abstract blacklist entryIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
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

    .line 4328
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_a

    .line 4329
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->createEntrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->entrySet:Ljava/util/Set;

    :cond_a
    return-object v0
.end method

.method public whitelist test-api firstEntry()Ljava/util/Map$Entry;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 4298
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api firstKey()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 4238
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->lastKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 4262
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 4268
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method abstract blacklist forward()Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public whitelist test-api headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4384
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4389
    invoke-virtual {p0, p1, v0}, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 4286
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 4292
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api keySet()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 4352
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api lastEntry()Ljava/util/Map$Entry;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 4304
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api lastKey()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 4244
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->firstKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 4250
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 4256
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api navigableKeySet()Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 4359
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->navigableKeySet:Ljava/util/NavigableSet;

    if-nez v0, :cond_b

    .line 4360
    new-instance v0, Landroid/media/internal/guava_common/collect/Maps$NavigableKeySet;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/Maps$NavigableKeySet;-><init>(Ljava/util/NavigableMap;)V

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->navigableKeySet:Ljava/util/NavigableSet;

    :cond_b
    return-object v0
.end method

.method public whitelist test-api pollFirstEntry()Ljava/util/Map$Entry;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 4310
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api pollLastEntry()Ljava/util/Map$Entry;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 4316
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4374
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p3, p4, p1, p2}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4379
    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4394
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 4399
    invoke-virtual {p0, p1, v0}, Landroid/media/internal/guava_common/collect/Maps$DescendingMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 4409
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ForwardingMap;->standardToString()Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    .line 4404
    new-instance v0, Landroid/media/internal/guava_common/collect/Maps$Values;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/Maps$Values;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
