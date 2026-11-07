.class public abstract Lsun/util/locale/LocaleObjectCache;
.super Ljava/lang/Object;
.source "LocaleObjectCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/locale/LocaleObjectCache$CacheEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final greylist-max-o map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;",
            "Lsun/util/locale/LocaleObjectCache$CacheEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 44
    .local p0, "this":Lsun/util/locale/LocaleObjectCache;, "Lsun/util/locale/LocaleObjectCache<TK;TV;>;"
    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1, v0}, Lsun/util/locale/LocaleObjectCache;-><init>(IFI)V

    .line 45
    return-void
.end method

.method public constructor blacklist <init>(IFI)V
    .registers 5
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F
    .param p3, "concurrencyLevel"    # I

    .line 47
    .local p0, "this":Lsun/util/locale/LocaleObjectCache;, "Lsun/util/locale/LocaleObjectCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lsun/util/locale/LocaleObjectCache;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lsun/util/locale/LocaleObjectCache;->map:Ljava/util/concurrent/ConcurrentMap;

    .line 49
    return-void
.end method


# virtual methods
.method public greylist-max-o cleanStaleEntries()V
    .registers 4

    .line 92
    .local p0, "this":Lsun/util/locale/LocaleObjectCache;, "Lsun/util/locale/LocaleObjectCache<TK;TV;>;"
    nop

    :goto_1
    iget-object v0, p0, Lsun/util/locale/LocaleObjectCache;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lsun/util/locale/LocaleObjectCache$CacheEntry;

    move-object v1, v0

    .local v1, "entry":Lsun/util/locale/LocaleObjectCache$CacheEntry;, "Lsun/util/locale/LocaleObjectCache$CacheEntry<TK;TV;>;"
    if-eqz v0, :cond_16

    .line 93
    iget-object v0, p0, Lsun/util/locale/LocaleObjectCache;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1}, Lsun/util/locale/LocaleObjectCache$CacheEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_1

    .line 95
    :cond_16
    return-void
.end method

.method protected abstract blacklist createObject(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation
.end method

.method public blacklist get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 52
    .local p0, "this":Lsun/util/locale/LocaleObjectCache;, "Lsun/util/locale/LocaleObjectCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    .line 54
    .local v0, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lsun/util/locale/LocaleObjectCache;->cleanStaleEntries()V

    .line 55
    iget-object v1, p0, Lsun/util/locale/LocaleObjectCache;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/util/locale/LocaleObjectCache$CacheEntry;

    .line 56
    .local v1, "entry":Lsun/util/locale/LocaleObjectCache$CacheEntry;, "Lsun/util/locale/LocaleObjectCache$CacheEntry<TK;TV;>;"
    if-eqz v1, :cond_12

    .line 57
    invoke-virtual {v1}, Lsun/util/locale/LocaleObjectCache$CacheEntry;->get()Ljava/lang/Object;

    move-result-object v0

    .line 59
    :cond_12
    if-nez v0, :cond_44

    .line 60
    invoke-virtual {p0, p1}, Lsun/util/locale/LocaleObjectCache;->normalizeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 61
    invoke-virtual {p0, p1}, Lsun/util/locale/LocaleObjectCache;->createObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 62
    .local v2, "newVal":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_42

    if-nez v2, :cond_21

    goto :goto_42

    .line 67
    :cond_21
    new-instance v3, Lsun/util/locale/LocaleObjectCache$CacheEntry;

    iget-object v4, p0, Lsun/util/locale/LocaleObjectCache;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v3, p1, v2, v4}, Lsun/util/locale/LocaleObjectCache$CacheEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 68
    .local v3, "newEntry":Lsun/util/locale/LocaleObjectCache$CacheEntry;, "Lsun/util/locale/LocaleObjectCache$CacheEntry<TK;TV;>;"
    iget-object v4, p0, Lsun/util/locale/LocaleObjectCache;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lsun/util/locale/LocaleObjectCache$CacheEntry;

    .line 69
    if-nez v1, :cond_35

    .line 70
    move-object v0, v2

    goto :goto_44

    .line 72
    :cond_35
    invoke-virtual {v1}, Lsun/util/locale/LocaleObjectCache$CacheEntry;->get()Ljava/lang/Object;

    move-result-object v0

    .line 73
    if-nez v0, :cond_44

    .line 74
    iget-object v4, p0, Lsun/util/locale/LocaleObjectCache;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    move-object v0, v2

    goto :goto_44

    .line 64
    .end local v3    # "newEntry":Lsun/util/locale/LocaleObjectCache$CacheEntry;, "Lsun/util/locale/LocaleObjectCache$CacheEntry<TK;TV;>;"
    :cond_42
    :goto_42
    const/4 v3, 0x0

    return-object v3

    .line 79
    .end local v2    # "newVal":Ljava/lang/Object;, "TV;"
    :cond_44
    :goto_44
    return-object v0
.end method

.method protected blacklist normalizeKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lsun/util/locale/LocaleObjectCache;, "Lsun/util/locale/LocaleObjectCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    return-object p1
.end method

.method protected blacklist put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lsun/util/locale/LocaleObjectCache;, "Lsun/util/locale/LocaleObjectCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lsun/util/locale/LocaleObjectCache$CacheEntry;

    iget-object v1, p0, Lsun/util/locale/LocaleObjectCache;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, p2, v1}, Lsun/util/locale/LocaleObjectCache$CacheEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 84
    .local v0, "entry":Lsun/util/locale/LocaleObjectCache$CacheEntry;, "Lsun/util/locale/LocaleObjectCache$CacheEntry<TK;TV;>;"
    iget-object v1, p0, Lsun/util/locale/LocaleObjectCache;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/util/locale/LocaleObjectCache$CacheEntry;

    .line 85
    .local v1, "oldEntry":Lsun/util/locale/LocaleObjectCache$CacheEntry;, "Lsun/util/locale/LocaleObjectCache$CacheEntry<TK;TV;>;"
    if-nez v1, :cond_13

    const/4 v2, 0x0

    goto :goto_17

    :cond_13
    invoke-virtual {v1}, Lsun/util/locale/LocaleObjectCache$CacheEntry;->get()Ljava/lang/Object;

    move-result-object v2

    :goto_17
    return-object v2
.end method
