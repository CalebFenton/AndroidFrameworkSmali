.class public Llibcore/util/BasicLruCache;
.super Ljava/lang/Object;
.source "BasicLruCache.java"


# annotations
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
.field private final greylist map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o maxSize:I


# direct methods
.method public constructor greylist <init>(I)V
    .registers 6
    .param p1, "maxSize"    # I

    .line 34
    .local p0, "this":Llibcore/util/BasicLruCache;, "Llibcore/util/BasicLruCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-lez p1, :cond_13

    .line 38
    iput p1, p0, Llibcore/util/BasicLruCache;->maxSize:I

    .line 39
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Llibcore/util/BasicLruCache;->map:Ljava/util/LinkedHashMap;

    .line 40
    return-void

    .line 36
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o trimToSize(I)V
    .registers 6
    .param p1, "maxSize"    # I

    .line 101
    .local p0, "this":Llibcore/util/BasicLruCache;, "Llibcore/util/BasicLruCache<TK;TV;>;"
    nop

    :goto_1
    iget-object v0, p0, Llibcore/util/BasicLruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-le v0, p1, :cond_20

    .line 102
    iget-object v0, p0, Llibcore/util/BasicLruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->eldest()Ljava/util/Map$Entry;

    move-result-object v0

    .line 104
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 105
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 106
    .local v2, "value":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Llibcore/util/BasicLruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {p0, v1, v2}, Llibcore/util/BasicLruCache;->entryEvicted(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    .end local v0    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_1

    .line 110
    :cond_20
    return-void
.end method


# virtual methods
.method protected blacklist create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 124
    .local p0, "this":Llibcore/util/BasicLruCache;, "Llibcore/util/BasicLruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected blacklist entryEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 116
    .local p0, "this":Llibcore/util/BasicLruCache;, "Llibcore/util/BasicLruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    return-void
.end method

.method public final declared-synchronized greylist evictAll()V
    .registers 2

    .local p0, "this":Llibcore/util/BasicLruCache;, "Llibcore/util/BasicLruCache<TK;TV;>;"
    monitor-enter p0

    .line 140
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Llibcore/util/BasicLruCache;->trimToSize(I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 141
    monitor-exit p0

    return-void

    .line 139
    .end local p0    # "this":Llibcore/util/BasicLruCache;, "Llibcore/util/BasicLruCache<TK;TV;>;"
    :catchall_7
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final greylist get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 50
    .local p0, "this":Llibcore/util/BasicLruCache;, "Llibcore/util/BasicLruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_27

    .line 55
    monitor-enter p0

    .line 56
    :try_start_3
    iget-object v0, p0, Llibcore/util/BasicLruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 57
    .local v0, "result":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_d

    .line 58
    monitor-exit p0

    return-object v0

    .line 60
    :cond_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_24

    .line 63
    invoke-virtual {p0, p1}, Llibcore/util/BasicLruCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    monitor-enter p0

    .line 71
    if-eqz v0, :cond_1f

    .line 72
    :try_start_15
    iget-object v1, p0, Llibcore/util/BasicLruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget v1, p0, Llibcore/util/BasicLruCache;->maxSize:I

    invoke-direct {p0, v1}, Llibcore/util/BasicLruCache;->trimToSize(I)V

    .line 75
    :cond_1f
    monitor-exit p0

    .line 77
    return-object v0

    .line 75
    :catchall_21
    move-exception v1

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_21

    throw v1

    .line 60
    .end local v0    # "result":Ljava/lang/Object;, "TV;"
    :catchall_24
    move-exception v0

    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v0

    .line 51
    :cond_27
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized greylist put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .local p0, "this":Llibcore/util/BasicLruCache;, "Llibcore/util/BasicLruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 89
    if-eqz p1, :cond_1a

    .line 91
    if-eqz p2, :cond_12

    .line 95
    :try_start_5
    iget-object v0, p0, Llibcore/util/BasicLruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 96
    .local v0, "previous":Ljava/lang/Object;, "TV;"
    iget v1, p0, Llibcore/util/BasicLruCache;->maxSize:I

    invoke-direct {p0, v1}, Llibcore/util/BasicLruCache;->trimToSize(I)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_22

    .line 97
    monitor-exit p0

    return-object v0

    .line 92
    .end local v0    # "previous":Ljava/lang/Object;, "TV;"
    .end local p0    # "this":Llibcore/util/BasicLruCache;, "Llibcore/util/BasicLruCache<TK;TV;>;"
    :cond_12
    :try_start_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    :catchall_22
    move-exception p1

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_22

    throw p1
.end method

.method public final declared-synchronized blacklist snapshot()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .local p0, "this":Llibcore/util/BasicLruCache;, "Llibcore/util/BasicLruCache<TK;TV;>;"
    monitor-enter p0

    .line 132
    :try_start_1
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Llibcore/util/BasicLruCache;->map:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    .line 132
    .end local p0    # "this":Llibcore/util/BasicLruCache;, "Llibcore/util/BasicLruCache<TK;TV;>;"
    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method
