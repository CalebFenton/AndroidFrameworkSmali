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
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final MAX_CACHED_ITEMS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "AbstractCache"


# instance fields
.field private final mCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TK;",
            "Lcom/google/android/mms/util/AbstractCache$CacheEntry",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 33
    .local p0, "this":Lcom/google/android/mms/util/AbstractCache;, "Lcom/google/android/mms/util/AbstractCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 34
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    #@a
    .line 33
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Lcom/google/android/mms/util/AbstractCache;, "Lcom/google/android/mms/util/AbstractCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v2, 0x0

    #@1
    .line 69
    if-eqz p1, :cond_0

    #@3
    .line 70
    iget-object v1, p0, Lcom/google/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    #@5
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lcom/google/android/mms/util/AbstractCache$CacheEntry;

    #@b
    .line 71
    .local v0, "cacheEntry":Lcom/google/android/mms/util/AbstractCache$CacheEntry;, "Lcom/google/android/mms/util/AbstractCache$CacheEntry<TV;>;"
    if-eqz v0, :cond_0

    #@d
    .line 72
    iget v1, v0, Lcom/google/android/mms/util/AbstractCache$CacheEntry;->hit:I

    #@f
    add-int/lit8 v1, v1, 0x1

    #@11
    iput v1, v0, Lcom/google/android/mms/util/AbstractCache$CacheEntry;->hit:I

    #@13
    .line 76
    iget-object v1, v0, Lcom/google/android/mms/util/AbstractCache$CacheEntry;->value:Ljava/lang/Object;

    #@15
    return-object v1

    #@16
    .line 79
    .end local v0    # "cacheEntry":Lcom/google/android/mms/util/AbstractCache$CacheEntry;, "Lcom/google/android/mms/util/AbstractCache$CacheEntry<TV;>;"
    :cond_0
    return-object v2
.end method

.method public purge(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Lcom/google/android/mms/util/AbstractCache;, "Lcom/google/android/mms/util/AbstractCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v1, 0x0

    #@1
    .line 87
    iget-object v2, p0, Lcom/google/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    #@3
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/google/android/mms/util/AbstractCache$CacheEntry;

    #@9
    .line 93
    .local v0, "v":Lcom/google/android/mms/util/AbstractCache$CacheEntry;, "Lcom/google/android/mms/util/AbstractCache$CacheEntry<TV;>;"
    if-eqz v0, :cond_0

    #@b
    iget-object v1, v0, Lcom/google/android/mms/util/AbstractCache$CacheEntry;->value:Ljava/lang/Object;

    #@d
    :cond_0
    return-object v1
.end method

.method public purgeAll()V
    .locals 1

    #@0
    .prologue
    .line 101
    .local p0, "this":Lcom/google/android/mms/util/AbstractCache;, "Lcom/google/android/mms/util/AbstractCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    #@5
    .line 96
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Lcom/google/android/mms/util/AbstractCache;, "Lcom/google/android/mms/util/AbstractCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 42
    iget-object v1, p0, Lcom/google/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    #@4
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    #@7
    move-result v1

    #@8
    const/16 v2, 0x1f4

    #@a
    if-lt v1, v2, :cond_0

    #@c
    .line 48
    return v3

    #@d
    .line 51
    :cond_0
    if-eqz p1, :cond_1

    #@f
    .line 52
    new-instance v0, Lcom/google/android/mms/util/AbstractCache$CacheEntry;

    #@11
    invoke-direct {v0, v4}, Lcom/google/android/mms/util/AbstractCache$CacheEntry;-><init>(Lcom/google/android/mms/util/AbstractCache$CacheEntry;)V

    #@14
    .line 53
    .local v0, "cacheEntry":Lcom/google/android/mms/util/AbstractCache$CacheEntry;, "Lcom/google/android/mms/util/AbstractCache$CacheEntry<TV;>;"
    iput-object p2, v0, Lcom/google/android/mms/util/AbstractCache$CacheEntry;->value:Ljava/lang/Object;

    #@16
    .line 54
    iget-object v1, p0, Lcom/google/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    #@18
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 59
    const/4 v1, 0x1

    #@1c
    return v1

    #@1d
    .line 61
    .end local v0    # "cacheEntry":Lcom/google/android/mms/util/AbstractCache$CacheEntry;, "Lcom/google/android/mms/util/AbstractCache$CacheEntry<TV;>;"
    :cond_1
    return v3
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 105
    .local p0, "this":Lcom/google/android/mms/util/AbstractCache;, "Lcom/google/android/mms/util/AbstractCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/android/mms/util/AbstractCache;->mCacheMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method
