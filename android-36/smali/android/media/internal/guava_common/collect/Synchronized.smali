.class final Landroid/media/internal/guava_common/collect/Synchronized;
.super Ljava/lang/Object;
.source "Synchronized.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedCollection;,
        Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedSet;,
        Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedSortedSet;,
        Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedMap;,
        Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedSortedMap;,
        Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedNavigableSet;,
        Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedNavigableMap;,
        Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedEntry;,
        Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedObject;
    }
.end annotation


# direct methods
.method static synthetic blacklist access$100(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 2

    .line 70
    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/Synchronized;->sortedSet(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$500(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .registers 2

    .line 70
    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/Synchronized;->collection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist access$700(Ljava/util/Map$Entry;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 2

    .line 70
    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/Synchronized;->nullableSynchronizedEntry(Ljava/util/Map$Entry;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist collection(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/Collection;
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 115
    new-instance v0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedCollection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;Landroid/media/internal/guava_common/collect/Synchronized$1;)V

    return-object v0
.end method

.method static blacklist map(Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 999
    new-instance v0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedMap;

    invoke-direct {v0, p0, p1}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-object v0
.end method

.method static blacklist navigableMap(Ljava/util/NavigableMap;Ljava/lang/Object;)Ljava/util/NavigableMap;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1460
    new-instance v0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedNavigableMap;

    invoke-direct {v0, p0, p1}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedNavigableMap;-><init>(Ljava/util/NavigableMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method static blacklist navigableSet(Ljava/util/NavigableSet;Ljava/lang/Object;)Ljava/util/NavigableSet;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1443
    new-instance v0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedNavigableSet;

    invoke-direct {v0, p0, p1}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedNavigableSet;-><init>(Ljava/util/NavigableSet;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static blacklist nullableSynchronizedEntry(Ljava/util/Map$Entry;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .registers 3
    .param p0    # Ljava/util/Map$Entry;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1663
    :cond_4
    new-instance v0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedEntry;

    invoke-direct {v0, p0, p1}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedEntry;-><init>(Ljava/util/Map$Entry;Ljava/lang/Object;)V

    return-object v0
.end method

.method static blacklist set(Ljava/util/Set;Ljava/lang/Object;)Ljava/util/Set;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 226
    new-instance v0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedSet;

    invoke-direct {v0, p0, p1}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    return-object v0
.end method

.method static blacklist sortedMap(Ljava/util/SortedMap;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1136
    new-instance v0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedSortedMap;

    invoke-direct {v0, p0, p1}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static blacklist sortedSet(Ljava/util/SortedSet;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 263
    new-instance v0, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedSortedSet;

    invoke-direct {v0, p0, p1}, Landroid/media/internal/guava_common/collect/Synchronized$SynchronizedSortedSet;-><init>(Ljava/util/SortedSet;Ljava/lang/Object;)V

    return-object v0
.end method
