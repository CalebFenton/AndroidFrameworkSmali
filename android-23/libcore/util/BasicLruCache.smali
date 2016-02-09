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
.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private final maxSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "maxSize"    # I

    #@0
    .prologue
    .local p0, "this":Llibcore/util/BasicLruCache;, "Llibcore/util/BasicLruCache<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 31
    if-gtz p1, :cond_0

    #@6
    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "maxSize <= 0"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 34
    :cond_0
    iput p1, p0, Llibcore/util/BasicLruCache;->maxSize:I

    #@11
    .line 35
    new-instance v0, Ljava/util/LinkedHashMap;

    #@13
    const/high16 v1, 0x3f400000    # 0.75f

    #@15
    const/4 v2, 0x1

    #@16
    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    #@19
    iput-object v0, p0, Llibcore/util/BasicLruCache;->map:Ljava/util/LinkedHashMap;

    #@1b
    .line 30
    return-void
.end method

.method private trimToSize(I)V
    .locals 4
    .param p1, "maxSize"    # I

    #@0
    .prologue
    .line 83
    .local p0, "this":Llibcore/util/BasicLruCache;, "Llibcore/util/BasicLruCache<TK;TV;>;"
    :goto_0
    iget-object v3, p0, Llibcore/util/BasicLruCache;->map:Ljava/util/LinkedHashMap;

    #@2
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    #@5
    move-result v3

    #@6
    if-le v3, p1, :cond_0

    #@8
    .line 84
    iget-object v3, p0, Llibcore/util/BasicLruCache;->map:Ljava/util/LinkedHashMap;

    #@a
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->eldest()Ljava/util/Map$Entry;

    #@d
    move-result-object v1

    #@e
    .line 86
    .local v1, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    .line 87
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    .line 88
    .local v2, "value":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Llibcore/util/BasicLruCache;->map:Ljava/util/LinkedHashMap;

    #@18
    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 90
    invoke-virtual {p0, v0, v2}, Llibcore/util/BasicLruCache;->entryEvicted(Ljava/lang/Object;Ljava/lang/Object;)V

    #@1e
    goto :goto_0

    #@1f
    .line 82
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    .end local v1    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    return-void
.end method


# virtual methods
.method protected create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 106
    .local p0, "this":Llibcore/util/BasicLruCache;, "Llibcore/util/BasicLruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method protected entryEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 98
    .local p0, "this":Llibcore/util/BasicLruCache;, "Llibcore/util/BasicLruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    return-void
.end method

.method public final declared-synchronized evictAll()V
    .locals 1

    #@0
    .prologue
    .local p0, "this":Llibcore/util/BasicLruCache;, "Llibcore/util/BasicLruCache<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 121
    const/4 v0, 0x0

    #@2
    :try_start_0
    invoke-direct {p0, v0}, Llibcore/util/BasicLruCache;->trimToSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit p0

    #@6
    .line 120
    return-void

    #@7
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method public final declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Llibcore/util/BasicLruCache;, "Llibcore/util/BasicLruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    monitor-enter p0

    #@1
    .line 45
    if-nez p1, :cond_0

    #@3
    .line 46
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v2, "key == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v1

    #@d
    monitor-exit p0

    #@e
    throw v1

    #@f
    .line 49
    :cond_0
    :try_start_1
    iget-object v1, p0, Llibcore/util/BasicLruCache;->map:Ljava/util/LinkedHashMap;

    #@11
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    move-result-object v0

    #@15
    .line 50
    .local v0, "result":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_1

    #@17
    monitor-exit p0

    #@18
    .line 51
    return-object v0

    #@19
    .line 54
    :cond_1
    :try_start_2
    invoke-virtual {p0, p1}, Llibcore/util/BasicLruCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    .line 56
    if-eqz v0, :cond_2

    #@1f
    .line 57
    iget-object v1, p0, Llibcore/util/BasicLruCache;->map:Ljava/util/LinkedHashMap;

    #@21
    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    .line 58
    iget v1, p0, Llibcore/util/BasicLruCache;->maxSize:I

    #@26
    invoke-direct {p0, v1}, Llibcore/util/BasicLruCache;->trimToSize(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@29
    :cond_2
    monitor-exit p0

    #@2a
    .line 60
    return-object v0
.end method

.method public final declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Llibcore/util/BasicLruCache;, "Llibcore/util/BasicLruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    #@1
    .line 71
    if-nez p1, :cond_0

    #@3
    .line 72
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v2, "key == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    :catchall_0
    move-exception v1

    #@d
    monitor-exit p0

    #@e
    throw v1

    #@f
    .line 73
    :cond_0
    if-nez p2, :cond_1

    #@11
    .line 74
    :try_start_1
    new-instance v1, Ljava/lang/NullPointerException;

    #@13
    const-string/jumbo v2, "value == null"

    #@16
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 77
    :cond_1
    iget-object v1, p0, Llibcore/util/BasicLruCache;->map:Ljava/util/LinkedHashMap;

    #@1c
    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    .line 78
    .local v0, "previous":Ljava/lang/Object;, "TV;"
    iget v1, p0, Llibcore/util/BasicLruCache;->maxSize:I

    #@22
    invoke-direct {p0, v1}, Llibcore/util/BasicLruCache;->trimToSize(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    monitor-exit p0

    #@26
    .line 79
    return-object v0
.end method

.method public final declared-synchronized snapshot()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Llibcore/util/BasicLruCache;, "Llibcore/util/BasicLruCache<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 114
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    #@3
    iget-object v1, p0, Llibcore/util/BasicLruCache;->map:Ljava/util/LinkedHashMap;

    #@5
    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit p0

    #@9
    return-object v0

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method
