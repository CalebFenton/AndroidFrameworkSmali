.class Landroid/media/internal/guava_common/collect/Maps$NavigableKeySet;
.super Landroid/media/internal/guava_common/collect/Maps$SortedKeySet;
.source "Maps.java"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NavigableKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/Maps$SortedKeySet<",
        "TK;TV;>;",
        "Ljava/util/NavigableSet<",
        "TK;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/NavigableMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3956
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/Maps$SortedKeySet;-><init>(Ljava/util/SortedMap;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 3979
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api descendingIterator()Ljava/util/Iterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 4007
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$NavigableKeySet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api descendingSet()Ljava/util/NavigableSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 4002
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api floor(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 3973
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 4026
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet<",
            "TK;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4031
    invoke-virtual {p0, p1, v0}, Landroid/media/internal/guava_common/collect/Maps$NavigableKeySet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api higher(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 3985
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api lower(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 3967
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic blacklist map()Ljava/util/Map;
    .registers 1

    .line 3952
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method blacklist map()Ljava/util/NavigableMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3961
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/Maps$KeySet;->map:Ljava/util/Map;

    check-cast p0, Ljava/util/NavigableMap;

    return-object p0
.end method

.method bridge synthetic blacklist map()Ljava/util/SortedMap;
    .registers 1

    .line 3952
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api pollFirst()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 3991
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object p0

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api pollLast()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 3997
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object p0

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 4016
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedSet<",
            "TK;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4021
    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/media/internal/guava_common/collect/Maps$NavigableKeySet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 4036
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/Maps$NavigableKeySet;->map()Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet<",
            "TK;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 4041
    invoke-virtual {p0, p1, v0}, Landroid/media/internal/guava_common/collect/Maps$NavigableKeySet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method
