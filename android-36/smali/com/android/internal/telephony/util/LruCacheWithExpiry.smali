.class public Lcom/android/internal/telephony/util/LruCacheWithExpiry;
.super Ljava/lang/Object;
.source "LruCacheWithExpiry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/util/LruCacheWithExpiry$CacheValue;
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
            "Lcom/android/internal/telephony/util/LruCacheWithExpiry$CacheValue<",
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
    .registers 6
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/internal/telephony/util/LruCacheWithExpiry;->mTimeSupplier:Ljava/util/function/LongSupplier;

    .line 64
    iput-wide p2, p0, Lcom/android/internal/telephony/util/LruCacheWithExpiry;->mExpiryDurationMs:J

    .line 65
    new-instance p1, Landroid/util/LruCache;

    invoke-direct {p1, p4}, Landroid/util/LruCache;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/util/LruCacheWithExpiry;->mMap:Landroid/util/LruCache;

    .line 66
    iput-object p5, p0, Lcom/android/internal/telephony/util/LruCacheWithExpiry;->mShouldCacheValue:Ljava/util/function/Predicate;

    return-void
.end method

.method private blacklist isExpired(J)Z
    .registers 7

    .line 156
    iget-object v0, p0, Lcom/android/internal/telephony/util/LruCacheWithExpiry;->mTimeSupplier:Ljava/util/function/LongSupplier;

    invoke-interface {v0}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/util/LruCacheWithExpiry;->mExpiryDurationMs:J

    add-long/2addr p1, v2

    cmp-long p0, v0, p1

    if-lez p0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist clear()V
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/util/LruCacheWithExpiry;->mMap:Landroid/util/LruCache;

    monitor-enter v0

    .line 151
    :try_start_3
    iget-object p0, p0, Lcom/android/internal/telephony/util/LruCacheWithExpiry;->mMap:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->evictAll()V

    .line 152
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public blacklist get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/util/LruCacheWithExpiry;->mMap:Landroid/util/LruCache;

    monitor-enter v0

    .line 78
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/util/LruCacheWithExpiry;->mMap:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/util/LruCacheWithExpiry$CacheValue;

    if-eqz v1, :cond_1b

    .line 79
    iget-wide v2, v1, Lcom/android/internal/telephony/util/LruCacheWithExpiry$CacheValue;->timestamp:J

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/util/LruCacheWithExpiry;->isExpired(J)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 80
    iget-object p0, v1, Lcom/android/internal/telephony/util/LruCacheWithExpiry$CacheValue;->entry:Ljava/lang/Object;

    monitor-exit v0

    return-object p0

    :catchall_19
    move-exception p0

    goto :goto_23

    .line 82
    :cond_1b
    iget-object p0, p0, Lcom/android/internal/telephony/util/LruCacheWithExpiry;->mMap:Landroid/util/LruCache;

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 83
    monitor-exit v0

    return-object p0

    .line 85
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_19

    throw p0
.end method

.method public blacklist getOrCompute(Ljava/lang/Object;Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Supplier<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/util/LruCacheWithExpiry;->mMap:Landroid/util/LruCache;

    monitor-enter v0

    .line 100
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/util/LruCacheWithExpiry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 102
    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception p0

    goto :goto_20

    .line 106
    :cond_d
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1e

    .line 107
    iget-object v1, p0, Lcom/android/internal/telephony/util/LruCacheWithExpiry;->mShouldCacheValue:Ljava/util/function/Predicate;

    invoke-interface {v1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/util/LruCacheWithExpiry;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    :cond_1e
    monitor-exit v0

    return-object p2

    .line 111
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_b

    throw p0
.end method

.method public blacklist put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 121
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/util/LruCacheWithExpiry;->mMap:Landroid/util/LruCache;

    monitor-enter v0

    .line 123
    :try_start_6
    iget-object v1, p0, Lcom/android/internal/telephony/util/LruCacheWithExpiry;->mMap:Landroid/util/LruCache;

    new-instance v2, Lcom/android/internal/telephony/util/LruCacheWithExpiry$CacheValue;

    iget-object p0, p0, Lcom/android/internal/telephony/util/LruCacheWithExpiry;->mTimeSupplier:Ljava/util/function/LongSupplier;

    invoke-interface {p0}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v3

    invoke-direct {v2, v3, v4, p2}, Lcom/android/internal/telephony/util/LruCacheWithExpiry$CacheValue;-><init>(JLjava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public blacklist putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 136
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/util/LruCacheWithExpiry;->mMap:Landroid/util/LruCache;

    monitor-enter v0

    .line 138
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/util/LruCacheWithExpiry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_12

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/util/LruCacheWithExpiry;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_12

    :catchall_10
    move-exception p0

    goto :goto_14

    .line 142
    :cond_12
    :goto_12
    monitor-exit v0

    return-object v1

    .line 143
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_10

    throw p0
.end method
