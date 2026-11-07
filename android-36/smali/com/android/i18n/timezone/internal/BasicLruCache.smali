.class public Lcom/android/i18n/timezone/internal/BasicLruCache;
.super Ljava/lang/Object;
.source "BasicLruCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/timezone/internal/BasicLruCache$CacheMap;
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
.field private final blacklist map:Lcom/android/i18n/timezone/internal/BasicLruCache$CacheMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/i18n/timezone/internal/BasicLruCache$CacheMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 4
    .param p1, "maxSize"    # I

    .line 45
    .local p0, "this":Lcom/android/i18n/timezone/internal/BasicLruCache;, "Lcom/android/i18n/timezone/internal/BasicLruCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-lez p1, :cond_e

    .line 49
    new-instance v0, Lcom/android/i18n/timezone/internal/BasicLruCache$CacheMap;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/i18n/timezone/internal/BasicLruCache$CacheMap;-><init>(ILcom/android/i18n/timezone/internal/BasicLruCache-IA;)V

    iput-object v0, p0, Lcom/android/i18n/timezone/internal/BasicLruCache;->map:Lcom/android/i18n/timezone/internal/BasicLruCache$CacheMap;

    .line 50
    return-void

    .line 47
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected blacklist create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 112
    .local p0, "this":Lcom/android/i18n/timezone/internal/BasicLruCache;, "Lcom/android/i18n/timezone/internal/BasicLruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized blacklist evictAll()V
    .registers 2

    .local p0, "this":Lcom/android/i18n/timezone/internal/BasicLruCache;, "Lcom/android/i18n/timezone/internal/BasicLruCache<TK;TV;>;"
    monitor-enter p0

    .line 119
    :try_start_1
    iget-object v0, p0, Lcom/android/i18n/timezone/internal/BasicLruCache;->map:Lcom/android/i18n/timezone/internal/BasicLruCache$CacheMap;

    invoke-virtual {v0}, Lcom/android/i18n/timezone/internal/BasicLruCache$CacheMap;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 120
    monitor-exit p0

    return-void

    .line 118
    .end local p0    # "this":Lcom/android/i18n/timezone/internal/BasicLruCache;, "Lcom/android/i18n/timezone/internal/BasicLruCache<TK;TV;>;"
    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public final blacklist get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 59
    .local p0, "this":Lcom/android/i18n/timezone/internal/BasicLruCache;, "Lcom/android/i18n/timezone/internal/BasicLruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_22

    .line 64
    monitor-enter p0

    .line 65
    :try_start_3
    iget-object v0, p0, Lcom/android/i18n/timezone/internal/BasicLruCache;->map:Lcom/android/i18n/timezone/internal/BasicLruCache$CacheMap;

    invoke-virtual {v0, p1}, Lcom/android/i18n/timezone/internal/BasicLruCache$CacheMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    .local v0, "result":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_d

    .line 67
    monitor-exit p0

    return-object v0

    .line 69
    :cond_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_1f

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/i18n/timezone/internal/BasicLruCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    monitor-enter p0

    .line 80
    if-eqz v0, :cond_1a

    .line 81
    :try_start_15
    iget-object v1, p0, Lcom/android/i18n/timezone/internal/BasicLruCache;->map:Lcom/android/i18n/timezone/internal/BasicLruCache$CacheMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/i18n/timezone/internal/BasicLruCache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_1a
    monitor-exit p0

    .line 85
    return-object v0

    .line 83
    :catchall_1c
    move-exception v1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw v1

    .line 69
    .end local v0    # "result":Ljava/lang/Object;, "TV;"
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0

    .line 60
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized blacklist put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .local p0, "this":Lcom/android/i18n/timezone/internal/BasicLruCache;, "Lcom/android/i18n/timezone/internal/BasicLruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 96
    if-eqz p1, :cond_15

    .line 98
    if-eqz p2, :cond_d

    .line 102
    :try_start_5
    iget-object v0, p0, Lcom/android/i18n/timezone/internal/BasicLruCache;->map:Lcom/android/i18n/timezone/internal/BasicLruCache$CacheMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/i18n/timezone/internal/BasicLruCache$CacheMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_1d

    .line 103
    .local v0, "previous":Ljava/lang/Object;, "TV;"
    monitor-exit p0

    return-object v0

    .line 99
    .end local v0    # "previous":Ljava/lang/Object;, "TV;"
    .end local p0    # "this":Lcom/android/i18n/timezone/internal/BasicLruCache;, "Lcom/android/i18n/timezone/internal/BasicLruCache<TK;TV;>;"
    :cond_d
    :try_start_d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    :catchall_1d
    move-exception p1

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_d .. :try_end_1f} :catchall_1d

    throw p1
.end method
