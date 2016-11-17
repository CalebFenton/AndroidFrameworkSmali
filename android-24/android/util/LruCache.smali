.class public Landroid/util/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


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
.field private createCount:I

.field private evictionCount:I

.field private hitCount:I

.field private final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private maxSize:I

.field private missCount:I

.field private putCount:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "maxSize"    # I

    #@0
    .prologue
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    const/4 v3, 0x0

    #@1
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 81
    if-gtz p1, :cond_0

    #@6
    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "maxSize <= 0"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 84
    :cond_0
    iput p1, p0, Landroid/util/LruCache;->maxSize:I

    #@11
    .line 85
    new-instance v0, Ljava/util/LinkedHashMap;

    #@13
    const/high16 v1, 0x3f400000    # 0.75f

    #@15
    const/4 v2, 0x1

    #@16
    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    #@19
    iput-object v0, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    #@1b
    .line 80
    return-void
.end method

.method private safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 286
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    .line 287
    .local v0, "result":I
    if-gez v0, :cond_0

    #@6
    .line 288
    new-instance v1, Ljava/lang/IllegalStateException;

    #@8
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "Negative size: "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v3, "="

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1

    #@2b
    .line 290
    :cond_0
    return v0
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
    .line 282
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public final declared-synchronized createCount()I
    .locals 1

    #@0
    .prologue
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 349
    :try_start_0
    iget v0, p0, Landroid/util/LruCache;->createCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method protected entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "evicted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 264
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValue":Ljava/lang/Object;, "TV;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    return-void
.end method

.method public final evictAll()V
    .locals 1

    #@0
    .prologue
    .line 308
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/util/LruCache;->trimToSize(I)V

    #@4
    .line 307
    return-void
.end method

.method public final declared-synchronized evictionCount()I
    .locals 1

    #@0
    .prologue
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 363
    :try_start_0
    iget v0, p0, Landroid/util/LruCache;->evictionCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v3, 0x0

    #@1
    .line 111
    if-nez p1, :cond_0

    #@3
    .line 112
    new-instance v2, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v3, "key == null"

    #@8
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v2

    #@c
    .line 116
    :cond_0
    monitor-enter p0

    #@d
    .line 117
    :try_start_0
    iget-object v2, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    #@f
    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    .line 118
    .local v1, "mapValue":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_1

    #@15
    .line 119
    iget v2, p0, Landroid/util/LruCache;->hitCount:I

    #@17
    add-int/lit8 v2, v2, 0x1

    #@19
    iput v2, p0, Landroid/util/LruCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit p0

    #@1c
    .line 120
    return-object v1

    #@1d
    .line 122
    :cond_1
    :try_start_1
    iget v2, p0, Landroid/util/LruCache;->missCount:I

    #@1f
    add-int/lit8 v2, v2, 0x1

    #@21
    iput v2, p0, Landroid/util/LruCache;->missCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    monitor-exit p0

    #@24
    .line 132
    invoke-virtual {p0, p1}, Landroid/util/LruCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v0

    #@28
    .line 133
    .local v0, "createdValue":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_2

    #@2a
    .line 134
    return-object v3

    #@2b
    .line 116
    .end local v0    # "createdValue":Ljava/lang/Object;, "TV;"
    .end local v1    # "mapValue":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v2

    #@2c
    monitor-exit p0

    #@2d
    throw v2

    #@2e
    .line 137
    .restart local v0    # "createdValue":Ljava/lang/Object;, "TV;"
    .restart local v1    # "mapValue":Ljava/lang/Object;, "TV;"
    :cond_2
    monitor-enter p0

    #@2f
    .line 138
    :try_start_2
    iget v2, p0, Landroid/util/LruCache;->createCount:I

    #@31
    add-int/lit8 v2, v2, 0x1

    #@33
    iput v2, p0, Landroid/util/LruCache;->createCount:I

    #@35
    .line 139
    iget-object v2, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    #@37
    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    move-result-object v1

    #@3b
    .line 141
    if-eqz v1, :cond_3

    #@3d
    .line 143
    iget-object v2, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    #@3f
    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@42
    :goto_0
    monitor-exit p0

    #@43
    .line 149
    if-eqz v1, :cond_4

    #@45
    .line 150
    const/4 v2, 0x0

    #@46
    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    #@49
    .line 151
    return-object v1

    #@4a
    .line 145
    :cond_3
    :try_start_3
    iget v2, p0, Landroid/util/LruCache;->size:I

    #@4c
    invoke-direct {p0, p1, v0}, Landroid/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    #@4f
    move-result v3

    #@50
    add-int/2addr v2, v3

    #@51
    iput v2, p0, Landroid/util/LruCache;->size:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@53
    goto :goto_0

    #@54
    .line 137
    :catchall_1
    move-exception v2

    #@55
    monitor-exit p0

    #@56
    throw v2

    #@57
    .line 153
    :cond_4
    iget v2, p0, Landroid/util/LruCache;->maxSize:I

    #@59
    invoke-virtual {p0, v2}, Landroid/util/LruCache;->trimToSize(I)V

    #@5c
    .line 154
    return-object v0
.end method

.method public final declared-synchronized hitCount()I
    .locals 1

    #@0
    .prologue
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 334
    :try_start_0
    iget v0, p0, Landroid/util/LruCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public final declared-synchronized maxSize()I
    .locals 1

    #@0
    .prologue
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 326
    :try_start_0
    iget v0, p0, Landroid/util/LruCache;->maxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public final declared-synchronized missCount()I
    .locals 1

    #@0
    .prologue
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 342
    :try_start_0
    iget v0, p0, Landroid/util/LruCache;->missCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 165
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    #@2
    if-nez p2, :cond_1

    #@4
    .line 166
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v2, "key == null || value == null"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 170
    :cond_1
    monitor-enter p0

    #@e
    .line 171
    :try_start_0
    iget v1, p0, Landroid/util/LruCache;->putCount:I

    #@10
    add-int/lit8 v1, v1, 0x1

    #@12
    iput v1, p0, Landroid/util/LruCache;->putCount:I

    #@14
    .line 172
    iget v1, p0, Landroid/util/LruCache;->size:I

    #@16
    invoke-direct {p0, p1, p2}, Landroid/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    #@19
    move-result v2

    #@1a
    add-int/2addr v1, v2

    #@1b
    iput v1, p0, Landroid/util/LruCache;->size:I

    #@1d
    .line 173
    iget-object v1, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    #@1f
    invoke-virtual {v1, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    .line 174
    .local v0, "previous":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_2

    #@25
    .line 175
    iget v1, p0, Landroid/util/LruCache;->size:I

    #@27
    invoke-direct {p0, p1, v0}, Landroid/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    #@2a
    move-result v2

    #@2b
    sub-int/2addr v1, v2

    #@2c
    iput v1, p0, Landroid/util/LruCache;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    :cond_2
    monitor-exit p0

    #@2f
    .line 179
    if-eqz v0, :cond_3

    #@31
    .line 180
    const/4 v1, 0x0

    #@32
    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    #@35
    .line 183
    :cond_3
    iget v1, p0, Landroid/util/LruCache;->maxSize:I

    #@37
    invoke-virtual {p0, v1}, Landroid/util/LruCache;->trimToSize(I)V

    #@3a
    .line 184
    return-object v0

    #@3b
    .line 170
    .end local v0    # "previous":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v1

    #@3c
    monitor-exit p0

    #@3d
    throw v1
.end method

.method public final declared-synchronized putCount()I
    .locals 1

    #@0
    .prologue
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 356
    :try_start_0
    iget v0, p0, Landroid/util/LruCache;->putCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v3, 0x0

    #@1
    .line 230
    if-nez p1, :cond_0

    #@3
    .line 231
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v2, "key == null"

    #@8
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v1

    #@c
    .line 235
    :cond_0
    monitor-enter p0

    #@d
    .line 236
    :try_start_0
    iget-object v1, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    #@f
    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    .line 237
    .local v0, "previous":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_1

    #@15
    .line 238
    iget v1, p0, Landroid/util/LruCache;->size:I

    #@17
    invoke-direct {p0, p1, v0}, Landroid/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    #@1a
    move-result v2

    #@1b
    sub-int/2addr v1, v2

    #@1c
    iput v1, p0, Landroid/util/LruCache;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    :cond_1
    monitor-exit p0

    #@1f
    .line 242
    if-eqz v0, :cond_2

    #@21
    .line 243
    const/4 v1, 0x0

    #@22
    invoke-virtual {p0, v1, p1, v0, v3}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    #@25
    .line 246
    :cond_2
    return-object v0

    #@26
    .line 235
    .end local v0    # "previous":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v1

    #@27
    monitor-exit p0

    #@28
    throw v1
.end method

.method public resize(I)V
    .locals 2
    .param p1, "maxSize"    # I

    #@0
    .prologue
    .line 94
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    if-gtz p1, :cond_0

    #@2
    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "maxSize <= 0"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 98
    :cond_0
    monitor-enter p0

    #@c
    .line 99
    :try_start_0
    iput p1, p0, Landroid/util/LruCache;->maxSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit p0

    #@f
    .line 101
    invoke-virtual {p0, p1}, Landroid/util/LruCache;->trimToSize(I)V

    #@12
    .line 93
    return-void

    #@13
    .line 98
    :catchall_0
    move-exception v0

    #@14
    monitor-exit p0

    #@15
    throw v0
.end method

.method public final declared-synchronized size()I
    .locals 1

    #@0
    .prologue
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 317
    :try_start_0
    iget v0, p0, Landroid/util/LruCache;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method protected sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 301
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    #@1
    return v0
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
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 371
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    #@3
    iget-object v1, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

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

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    #@1
    .line 375
    :try_start_0
    iget v2, p0, Landroid/util/LruCache;->hitCount:I

    #@3
    iget v3, p0, Landroid/util/LruCache;->missCount:I

    #@5
    add-int v0, v2, v3

    #@7
    .line 376
    .local v0, "accesses":I
    if-eqz v0, :cond_0

    #@9
    iget v2, p0, Landroid/util/LruCache;->hitCount:I

    #@b
    mul-int/lit8 v2, v2, 0x64

    #@d
    div-int v1, v2, v0

    #@f
    .line 377
    .local v1, "hitPercent":I
    :goto_0
    const-string/jumbo v2, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    #@12
    const/4 v3, 0x4

    #@13
    new-array v3, v3, [Ljava/lang/Object;

    #@15
    .line 378
    iget v4, p0, Landroid/util/LruCache;->maxSize:I

    #@17
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v4

    #@1b
    const/4 v5, 0x0

    #@1c
    aput-object v4, v3, v5

    #@1e
    iget v4, p0, Landroid/util/LruCache;->hitCount:I

    #@20
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23
    move-result-object v4

    #@24
    const/4 v5, 0x1

    #@25
    aput-object v4, v3, v5

    #@27
    iget v4, p0, Landroid/util/LruCache;->missCount:I

    #@29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v4

    #@2d
    const/4 v5, 0x2

    #@2e
    aput-object v4, v3, v5

    #@30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@33
    move-result-object v4

    #@34
    const/4 v5, 0x3

    #@35
    aput-object v4, v3, v5

    #@37
    .line 377
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    move-result-object v2

    #@3b
    monitor-exit p0

    #@3c
    return-object v2

    #@3d
    .line 376
    .end local v1    # "hitPercent":I
    :cond_0
    const/4 v1, 0x0

    #@3e
    .restart local v1    # "hitPercent":I
    goto :goto_0

    #@3f
    .end local v0    # "accesses":I
    .end local v1    # "hitPercent":I
    :catchall_0
    move-exception v2

    #@40
    monitor-exit p0

    #@41
    throw v2
.end method

.method public trimToSize(I)V
    .locals 6
    .param p1, "maxSize"    # I

    #@0
    .prologue
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    const/4 v5, 0x0

    #@1
    .line 198
    :goto_0
    monitor-enter p0

    #@2
    .line 199
    :try_start_0
    iget v3, p0, Landroid/util/LruCache;->size:I

    #@4
    if-ltz v3, :cond_0

    #@6
    iget-object v3, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    #@8
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->isEmpty()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    iget v3, p0, Landroid/util/LruCache;->size:I

    #@10
    if-eqz v3, :cond_1

    #@12
    .line 200
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    #@14
    new-instance v4, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    invoke-virtual {p0}, Landroid/util/LruCache;->getClass()Ljava/lang/Class;

    #@1c
    move-result-object v5

    #@1d
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v4

    #@25
    .line 201
    const-string/jumbo v5, ".sizeOf() is reporting inconsistent results!"

    #@28
    .line 200
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@33
    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@34
    .line 198
    :catchall_0
    move-exception v3

    #@35
    monitor-exit p0

    #@36
    throw v3

    #@37
    .line 204
    :cond_1
    :try_start_1
    iget v3, p0, Landroid/util/LruCache;->size:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    if-gt v3, p1, :cond_3

    #@3b
    :cond_2
    monitor-exit p0

    #@3c
    .line 194
    return-void

    #@3d
    .line 208
    :cond_3
    :try_start_2
    iget-object v3, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    #@3f
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->eldest()Ljava/util/Map$Entry;

    #@42
    move-result-object v1

    #@43
    .line 209
    .local v1, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-eqz v1, :cond_2

    #@45
    .line 213
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@48
    move-result-object v0

    #@49
    .line 214
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@4c
    move-result-object v2

    #@4d
    .line 215
    .local v2, "value":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    #@4f
    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@52
    .line 216
    iget v3, p0, Landroid/util/LruCache;->size:I

    #@54
    invoke-direct {p0, v0, v2}, Landroid/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    #@57
    move-result v4

    #@58
    sub-int/2addr v3, v4

    #@59
    iput v3, p0, Landroid/util/LruCache;->size:I

    #@5b
    .line 217
    iget v3, p0, Landroid/util/LruCache;->evictionCount:I

    #@5d
    add-int/lit8 v3, v3, 0x1

    #@5f
    iput v3, p0, Landroid/util/LruCache;->evictionCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@61
    monitor-exit p0

    #@62
    .line 220
    const/4 v3, 0x1

    #@63
    invoke-virtual {p0, v3, v0, v2, v5}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    #@66
    goto :goto_0
.end method
