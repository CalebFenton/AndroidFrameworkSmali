.class public Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;
.super Ljava/lang/Object;
.source "LruCacheWithExpiry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry$CacheValue;
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
.field private final blacklist mExpiryDurationMs:J

.field private final blacklist mMap:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "TK;",
            "Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry$CacheValue<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private final blacklist mShouldCacheValue:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "TV;>;"
        }
    .end annotation
.end field

.field private final blacklist mTimeSupplier:Ljava/util/function/LongSupplier;


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/LongSupplier;JILjava/util/function/Predicate;)V
    .registers 7
    .param p1, "timeSupplier"    # Ljava/util/function/LongSupplier;
    .param p2, "expiryDurationMs"    # J
    .param p4, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/LongSupplier;",
            "JI",
            "Ljava/util/function/Predicate<",
            "TV;>;)V"
        }
    .end annotation

    .line 62
    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;, "Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry<TK;TV;>;"
    .local p5, "shouldCacheValue":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;->mTimeSupplier:Ljava/util/function/LongSupplier;

    .line 64
    iput-wide p2, p0, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;->mExpiryDurationMs:J

    .line 65
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, p4}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;->mMap:Landroid/util/LruCache;

    .line 66
    iput-object p5, p0, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;->mShouldCacheValue:Ljava/util/function/Predicate;

    .line 67
    return-void
.end method

.method private blacklist isExpired(J)Z
    .registers 7
    .param p1, "timestamp"    # J

    .line 156
    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;, "Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry<TK;TV;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;->mTimeSupplier:Ljava/util/function/LongSupplier;

    invoke-interface {v0}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;->mExpiryDurationMs:J

    add-long/2addr v2, p1

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method


# virtual methods
.method public blacklist clear()V
    .registers 3

    .line 150
    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;, "Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry<TK;TV;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;->mMap:Landroid/util/LruCache;

    monitor-enter v0

    .line 151
    :try_start_3
    iget-object v1, p0, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;->mMap:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    .line 152
    monitor-exit v0

    .line 153
    return-void

    .line 152
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public blacklist get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 77
    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;, "Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;->mMap:Landroid/util/LruCache;

    monitor-enter v0

    .line 78
    :try_start_3
    iget-object v1, p0, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;->mMap:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry$CacheValue;

    .line 79
    .local v1, "value":Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry$CacheValue;, "Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry$CacheValue<TV;>;"
    if-eqz v1, :cond_19

    iget-wide v2, v1, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry$CacheValue;->timestamp:J

    invoke-direct {p0, v2, v3}, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;->isExpired(J)Z

    move-result v2

    if-nez v2, :cond_19

    .line 80
    iget-object v2, v1, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry$CacheValue;->entry:Ljava/lang/Object;

    monitor-exit v0

    return-object v2

    .line 82
    :cond_19
    iget-object v2, p0, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;->mMap:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 85
    .end local v1    # "value":Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry$CacheValue;, "Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry$CacheValue<TV;>;"
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public blacklist getOrCompute(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Supplier<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 99
    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;, "Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TV;>;"
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;->mMap:Landroid/util/LruCache;

    monitor-enter v0

    .line 100
    :try_start_3
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 101
    .local v1, "cachedValue":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_b

    .line 102
    monitor-exit v0

    return-object v1

    .line 106
    :cond_b
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    .line 107
    .local v2, "computedValue":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_1c

    iget-object v3, p0, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;->mShouldCacheValue:Ljava/util/function/Predicate;

    invoke-interface {v3, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 108
    invoke-virtual {p0, p1, v2}, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    :cond_1c
    monitor-exit v0

    return-object v2

    .line 111
    .end local v1    # "cachedValue":Ljava/lang/Object;, "TV;"
    .end local v2    # "computedValue":Ljava/lang/Object;, "TV;"
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public blacklist put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 121
    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;, "Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;->mMap:Landroid/util/LruCache;

    monitor-enter v0

    .line 123
    :try_start_6
    iget-object v1, p0, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;->mMap:Landroid/util/LruCache;

    new-instance v2, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry$CacheValue;

    iget-object v3, p0, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;->mTimeSupplier:Ljava/util/function/LongSupplier;

    invoke-interface {v3}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v3

    invoke-direct {v2, v3, v4, p2}, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry$CacheValue;-><init>(JLjava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    monitor-exit v0

    .line 125
    return-void

    .line 124
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public blacklist putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 136
    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;, "Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;->mMap:Landroid/util/LruCache;

    monitor-enter v0

    .line 138
    :try_start_6
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 139
    .local v1, "existingValue":Ljava/lang/Object;, "TV;"
    if-nez v1, :cond_f

    .line 140
    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/com/android/net/module/util/LruCacheWithExpiry;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    :cond_f
    monitor-exit v0

    return-object v1

    .line 143
    .end local v1    # "existingValue":Ljava/lang/Object;, "TV;"
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    throw v1
.end method
