.class public abstract Lcom/google/android/mms/util/AbstractCache;
.super Ljava/lang/Object;
.source "AbstractCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/mms/util/AbstractCache$CacheEntry;
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


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist LOCAL_LOGV:Z = false

.field private static final blacklist MAX_CACHED_ITEMS:I = 0x1f4

.field private static final blacklist TAG:Ljava/lang/String; = "AbstractCache"


# instance fields
.field private final blacklist mCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "TK;",
            "Lcom/google/android/mms/util/AbstractCache$CacheEntry<",
            "TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor greylist <init>()V
    .registers 2

    .line 36
    .local p0, "this":Lcom/google/android/mms/util/AbstractCache;, "Lcom/google/android/mms/util/AbstractCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    .line 38
    return-void
.end method


# virtual methods
.method public greylist-max-r get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/google/android/mms/util/AbstractCache;, "Lcom/google/android/mms/util/AbstractCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_15

    .line 75
    iget-object v0, p0, Lcom/google/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/util/AbstractCache$CacheEntry;

    .line 76
    .local v0, "cacheEntry":Lcom/google/android/mms/util/AbstractCache$CacheEntry;, "Lcom/google/android/mms/util/AbstractCache$CacheEntry<TV;>;"
    if-eqz v0, :cond_15

    .line 77
    iget v1, v0, Lcom/google/android/mms/util/AbstractCache$CacheEntry;->hit:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/mms/util/AbstractCache$CacheEntry;->hit:I

    .line 81
    iget-object v1, v0, Lcom/google/android/mms/util/AbstractCache$CacheEntry;->value:Ljava/lang/Object;

    return-object v1

    .line 84
    .end local v0    # "cacheEntry":Lcom/google/android/mms/util/AbstractCache$CacheEntry;, "Lcom/google/android/mms/util/AbstractCache$CacheEntry<TV;>;"
    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist purge(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lcom/google/android/mms/util/AbstractCache;, "Lcom/google/android/mms/util/AbstractCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/util/AbstractCache$CacheEntry;

    .line 99
    .local v0, "v":Lcom/google/android/mms/util/AbstractCache$CacheEntry;, "Lcom/google/android/mms/util/AbstractCache$CacheEntry<TV;>;"
    if-eqz v0, :cond_d

    iget-object v1, v0, Lcom/google/android/mms/util/AbstractCache$CacheEntry;->value:Ljava/lang/Object;

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return-object v1
.end method

.method public greylist purgeAll()V
    .registers 2

    .line 108
    .local p0, "this":Lcom/google/android/mms/util/AbstractCache;, "Lcom/google/android/mms/util/AbstractCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 109
    return-void
.end method

.method public greylist put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/google/android/mms/util/AbstractCache;, "Lcom/google/android/mms/util/AbstractCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/16 v1, 0x1f4

    const/4 v2, 0x0

    if-lt v0, v1, :cond_c

    .line 52
    return v2

    .line 55
    :cond_c
    if-eqz p1, :cond_1d

    .line 56
    new-instance v0, Lcom/google/android/mms/util/AbstractCache$CacheEntry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/mms/util/AbstractCache$CacheEntry;-><init>(Lcom/google/android/mms/util/AbstractCache-IA;)V

    .line 57
    .local v0, "cacheEntry":Lcom/google/android/mms/util/AbstractCache$CacheEntry;, "Lcom/google/android/mms/util/AbstractCache$CacheEntry<TV;>;"
    iput-object p2, v0, Lcom/google/android/mms/util/AbstractCache$CacheEntry;->value:Ljava/lang/Object;

    .line 58
    iget-object v1, p0, Lcom/google/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const/4 v1, 0x1

    return v1

    .line 65
    .end local v0    # "cacheEntry":Lcom/google/android/mms/util/AbstractCache$CacheEntry;, "Lcom/google/android/mms/util/AbstractCache$CacheEntry<TV;>;"
    :cond_1d
    return v2
.end method

.method public blacklist size()I
    .registers 2

    .line 112
    .local p0, "this":Lcom/google/android/mms/util/AbstractCache;, "Lcom/google/android/mms/util/AbstractCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
