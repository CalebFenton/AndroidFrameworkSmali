.class public abstract Landroid/icu/impl/locale/LocaleObjectCache;
.super Ljava/lang/Object;
.source "LocaleObjectCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;
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
.field private greylist-max-o _map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TK;",
            "Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private greylist-max-o _queue:Ljava/lang/ref/ReferenceQueue;
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

    .line 24
    .local p0, "this":Landroid/icu/impl/locale/LocaleObjectCache;, "Landroid/icu/impl/locale/LocaleObjectCache<TK;TV;>;"
    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1, v0}, Landroid/icu/impl/locale/LocaleObjectCache;-><init>(IFI)V

    .line 25
    return-void
.end method

.method public constructor blacklist <init>(IFI)V
    .registers 5
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F
    .param p3, "concurrencyLevel"    # I

    .line 27
    .local p0, "this":Landroid/icu/impl/locale/LocaleObjectCache;, "Landroid/icu/impl/locale/LocaleObjectCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/locale/LocaleObjectCache;->_queue:Ljava/lang/ref/ReferenceQueue;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Landroid/icu/impl/locale/LocaleObjectCache;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    return-void
.end method

.method private greylist-max-o cleanStaleEntries()V
    .registers 4

    .line 76
    .local p0, "this":Landroid/icu/impl/locale/LocaleObjectCache;, "Landroid/icu/impl/locale/LocaleObjectCache<TK;TV;>;"
    nop

    :goto_1
    iget-object v0, p0, Landroid/icu/impl/locale/LocaleObjectCache;->_queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;

    move-object v1, v0

    .local v1, "entry":Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;, "Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry<TK;TV;>;"
    if-eqz v0, :cond_16

    .line 77
    iget-object v0, p0, Landroid/icu/impl/locale/LocaleObjectCache;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 79
    :cond_16
    return-void
.end method


# virtual methods
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

    .line 32
    .local p0, "this":Landroid/icu/impl/locale/LocaleObjectCache;, "Landroid/icu/impl/locale/LocaleObjectCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    .line 34
    .local v0, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Landroid/icu/impl/locale/LocaleObjectCache;->cleanStaleEntries()V

    .line 35
    iget-object v1, p0, Landroid/icu/impl/locale/LocaleObjectCache;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;

    .line 36
    .local v1, "entry":Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;, "Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry<TK;TV;>;"
    if-eqz v1, :cond_12

    .line 37
    invoke-virtual {v1}, Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;->get()Ljava/lang/Object;

    move-result-object v0

    .line 39
    :cond_12
    if-nez v0, :cond_45

    .line 40
    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/LocaleObjectCache;->normalizeKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 42
    const/4 v2, 0x0

    if-nez p1, :cond_1c

    .line 43
    return-object v2

    .line 46
    :cond_1c
    iget-object v3, p0, Landroid/icu/impl/locale/LocaleObjectCache;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;

    .line 47
    if-eqz v1, :cond_2b

    .line 48
    invoke-virtual {v1}, Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;->get()Ljava/lang/Object;

    move-result-object v0

    .line 51
    :cond_2b
    if-eqz v0, :cond_2e

    .line 52
    return-object v0

    .line 57
    :cond_2e
    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/LocaleObjectCache;->createObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 58
    .local v3, "newVal":Ljava/lang/Object;, "TV;"
    if-nez v3, :cond_35

    .line 60
    return-object v2

    .line 63
    :cond_35
    new-instance v2, Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;

    iget-object v4, p0, Landroid/icu/impl/locale/LocaleObjectCache;->_queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, p1, v3, v4}, Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 65
    .local v2, "newEntry":Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;, "Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry<TK;TV;>;"
    iget-object v4, p0, Landroid/icu/impl/locale/LocaleObjectCache;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-direct {p0}, Landroid/icu/impl/locale/LocaleObjectCache;->cleanStaleEntries()V

    .line 68
    return-object v3

    .line 70
    .end local v2    # "newEntry":Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;, "Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry<TK;TV;>;"
    .end local v3    # "newVal":Ljava/lang/Object;, "TV;"
    :cond_45
    return-object v0
.end method

.method protected blacklist normalizeKey(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 84
    .local p0, "this":Landroid/icu/impl/locale/LocaleObjectCache;, "Landroid/icu/impl/locale/LocaleObjectCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    return-object p1
.end method
