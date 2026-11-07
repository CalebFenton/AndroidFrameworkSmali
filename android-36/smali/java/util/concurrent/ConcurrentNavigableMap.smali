.class public interface abstract Ljava/util/concurrent/ConcurrentNavigableMap;
.super Ljava/lang/Object;
.source "ConcurrentNavigableMap.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/util/NavigableMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;",
        "Ljava/util/NavigableMap<",
        "TK;TV;>;"
    }
.end annotation


# virtual methods
.method public abstract whitelist test-api descendingKeySet()Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation
.end method

.method public bridge synthetic whitelist test-api descendingMap()Ljava/util/NavigableMap;
    .registers 2

    .line 54
    .local p0, "this":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TK;TV;>;"
    invoke-interface {p0}, Ljava/util/concurrent/ConcurrentNavigableMap;->descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api descendingMap()Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "TK;TV;>;"
        }
    .end annotation
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

    .line 54
    .local p0, "this":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TK;TV;>;"
    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ConcurrentNavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

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

    .line 54
    .local p0, "this":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TK;TV;>;"
    invoke-interface {p0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist test-api headMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api headMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api keySet()Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation
.end method

.method public bridge synthetic whitelist test-api keySet()Ljava/util/Set;
    .registers 2

    .line 54
    .local p0, "this":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TK;TV;>;"
    invoke-interface {p0}, Ljava/util/concurrent/ConcurrentNavigableMap;->keySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api navigableKeySet()Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation
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

    .line 54
    .local p0, "this":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TK;TV;>;"
    invoke-interface {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ConcurrentNavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

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

    .line 54
    .local p0, "this":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TK;TV;>;"
    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ConcurrentNavigableMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist test-api subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "TK;TV;>;"
        }
    .end annotation
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

    .line 54
    .local p0, "this":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TK;TV;>;"
    invoke-interface {p0, p1, p2}, Ljava/util/concurrent/ConcurrentNavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;

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

    .line 54
    .local p0, "this":Ljava/util/concurrent/ConcurrentNavigableMap;, "Ljava/util/concurrent/ConcurrentNavigableMap<TK;TV;>;"
    invoke-interface {p0, p1}, Ljava/util/concurrent/ConcurrentNavigableMap;->tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public abstract whitelist test-api tailMap(Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api tailMap(Ljava/lang/Object;Z)Ljava/util/concurrent/ConcurrentNavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Ljava/util/concurrent/ConcurrentNavigableMap<",
            "TK;TV;>;"
        }
    .end annotation
.end method
