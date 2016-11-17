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
.field private _map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;",
            "Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private _queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .local p0, "this":Landroid/icu/impl/locale/LocaleObjectCache;, "Landroid/icu/impl/locale/LocaleObjectCache<TK;TV;>;"
    const/16 v1, 0x10

    #@2
    .line 22
    const/high16 v0, 0x3f400000    # 0.75f

    #@4
    invoke-direct {p0, v1, v0, v1}, Landroid/icu/impl/locale/LocaleObjectCache;-><init>(IFI)V

    #@7
    .line 21
    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F
    .param p3, "concurrencyLevel"    # I

    #@0
    .prologue
    .line 25
    .local p0, "this":Landroid/icu/impl/locale/LocaleObjectCache;, "Landroid/icu/impl/locale/LocaleObjectCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 19
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    #@5
    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/impl/locale/LocaleObjectCache;->_queue:Ljava/lang/ref/ReferenceQueue;

    #@a
    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@c
    invoke-direct {v0, p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    #@f
    iput-object v0, p0, Landroid/icu/impl/locale/LocaleObjectCache;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    #@11
    .line 25
    return-void
.end method

.method private cleanStaleEntries()V
    .locals 3

    #@0
    .prologue
    .line 64
    .local p0, "this":Landroid/icu/impl/locale/LocaleObjectCache;, "Landroid/icu/impl/locale/LocaleObjectCache<TK;TV;>;"
    :goto_0
    iget-object v1, p0, Landroid/icu/impl/locale/LocaleObjectCache;->_queue:Ljava/lang/ref/ReferenceQueue;

    #@2
    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;

    #@8
    .local v0, "entry":Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;, "Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    #@a
    .line 65
    iget-object v1, p0, Landroid/icu/impl/locale/LocaleObjectCache;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    #@c
    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;->getKey()Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    goto :goto_0

    #@14
    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract createObject(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/icu/impl/locale/LocaleObjectCache;, "Landroid/icu/impl/locale/LocaleObjectCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v5, 0x0

    #@1
    .line 30
    const/4 v3, 0x0

    #@2
    .line 32
    .local v3, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Landroid/icu/impl/locale/LocaleObjectCache;->cleanStaleEntries()V

    #@5
    .line 33
    iget-object v4, p0, Landroid/icu/impl/locale/LocaleObjectCache;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    #@7
    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;

    #@d
    .line 34
    .local v0, "entry":Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;, "Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    #@f
    .line 35
    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;->get()Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    .line 37
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    if-nez v3, :cond_3

    #@15
    .line 38
    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/LocaleObjectCache;->normalizeKey(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object p1

    #@19
    .line 39
    invoke-virtual {p0, p1}, Landroid/icu/impl/locale/LocaleObjectCache;->createObject(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v2

    #@1d
    .line 40
    .local v2, "newVal":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_1

    #@1f
    if-nez v2, :cond_2

    #@21
    .line 42
    :cond_1
    return-object v5

    #@22
    .line 45
    :cond_2
    new-instance v1, Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;

    #@24
    iget-object v4, p0, Landroid/icu/impl/locale/LocaleObjectCache;->_queue:Ljava/lang/ref/ReferenceQueue;

    #@26
    invoke-direct {v1, p1, v2, v4}, Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    #@29
    .line 47
    .local v1, "newEntry":Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;, "Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry<TK;TV;>;"
    :goto_0
    if-nez v3, :cond_3

    #@2b
    .line 48
    invoke-direct {p0}, Landroid/icu/impl/locale/LocaleObjectCache;->cleanStaleEntries()V

    #@2e
    .line 49
    iget-object v4, p0, Landroid/icu/impl/locale/LocaleObjectCache;->_map:Ljava/util/concurrent/ConcurrentHashMap;

    #@30
    invoke-virtual {v4, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@33
    move-result-object v0

    #@34
    .end local v0    # "entry":Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;, "Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry<TK;TV;>;"
    check-cast v0, Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;

    #@36
    .line 50
    .restart local v0    # "entry":Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;, "Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry<TK;TV;>;"
    if-nez v0, :cond_4

    #@38
    .line 51
    move-object v3, v2

    #@39
    .line 58
    .end local v1    # "newEntry":Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;, "Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry<TK;TV;>;"
    .end local v2    # "newVal":Ljava/lang/Object;, "TV;"
    :cond_3
    return-object v3

    #@3a
    .line 54
    .restart local v1    # "newEntry":Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;, "Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry<TK;TV;>;"
    .restart local v2    # "newVal":Ljava/lang/Object;, "TV;"
    :cond_4
    invoke-virtual {v0}, Landroid/icu/impl/locale/LocaleObjectCache$CacheEntry;->get()Ljava/lang/Object;

    #@3d
    move-result-object v3

    #@3e
    .restart local v3    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_0
.end method

.method protected normalizeKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 72
    .local p0, "this":Landroid/icu/impl/locale/LocaleObjectCache;, "Landroid/icu/impl/locale/LocaleObjectCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    return-object p1
.end method
