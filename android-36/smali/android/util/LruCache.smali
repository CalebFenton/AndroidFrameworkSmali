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
.field private greylist-max-o createCount:I

.field private greylist-max-o evictionCount:I

.field private greylist-max-o hitCount:I

.field private final greylist map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private greylist-max-o maxSize:I

.field private greylist-max-o missCount:I

.field private greylist-max-o putCount:I

.field private greylist-max-o size:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 6
    .param p1, "maxSize"    # I

    .line 84
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    if-lez p1, :cond_13

    .line 88
    iput p1, p0, Landroid/util/LruCache;->maxSize:I

    .line 89
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    .line 90
    return-void

    .line 86
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist eldest()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 229
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    iget-object v0, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->eldest()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .line 294
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 295
    .local v0, "result":I
    if-ltz v0, :cond_7

    .line 298
    return v0

    .line 296
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Negative size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected whitelist create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 290
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized whitelist createCount()I
    .registers 2

    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 357
    :try_start_1
    iget v0, p0, Landroid/util/LruCache;->createCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 357
    .end local p0    # "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method protected whitelist entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p1, "evicted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    .line 272
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValue":Ljava/lang/Object;, "TV;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    return-void
.end method

.method public final whitelist evictAll()V
    .registers 2

    .line 316
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/util/LruCache;->trimToSize(I)V

    .line 317
    return-void
.end method

.method public final declared-synchronized whitelist evictionCount()I
    .registers 2

    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 371
    :try_start_1
    iget v0, p0, Landroid/util/LruCache;->evictionCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 371
    .end local p0    # "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final whitelist get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 115
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_55

    .line 120
    monitor-enter p0

    .line 121
    :try_start_3
    iget-object v0, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 122
    .local v0, "mapValue":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_13

    .line 123
    iget v1, p0, Landroid/util/LruCache;->hitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/LruCache;->hitCount:I

    .line 124
    monitor-exit p0

    return-object v0

    .line 126
    :cond_13
    iget v1, p0, Landroid/util/LruCache;->missCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/LruCache;->missCount:I

    .line 127
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_52

    .line 136
    invoke-virtual {p0, p1}, Landroid/util/LruCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 137
    .local v1, "createdValue":Ljava/lang/Object;, "TV;"
    if-nez v1, :cond_22

    .line 138
    const/4 v2, 0x0

    return-object v2

    .line 141
    :cond_22
    monitor-enter p0

    .line 142
    :try_start_23
    iget v2, p0, Landroid/util/LruCache;->createCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/util/LruCache;->createCount:I

    .line 143
    iget-object v2, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 145
    if-eqz v0, :cond_38

    .line 147
    iget-object v2, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41

    .line 149
    :cond_38
    iget v2, p0, Landroid/util/LruCache;->size:I

    invoke-direct {p0, p1, v1}, Landroid/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/util/LruCache;->size:I

    .line 151
    :goto_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_23 .. :try_end_42} :catchall_4f

    .line 153
    if-eqz v0, :cond_49

    .line 154
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v1, v0}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    return-object v0

    .line 157
    :cond_49
    iget v2, p0, Landroid/util/LruCache;->maxSize:I

    invoke-virtual {p0, v2}, Landroid/util/LruCache;->trimToSize(I)V

    .line 158
    return-object v1

    .line 151
    :catchall_4f
    move-exception v2

    :try_start_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v2

    .line 127
    .end local v0    # "mapValue":Ljava/lang/Object;, "TV;"
    .end local v1    # "createdValue":Ljava/lang/Object;, "TV;"
    :catchall_52
    move-exception v0

    :try_start_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v0

    .line 116
    :cond_55
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized whitelist hitCount()I
    .registers 2

    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 342
    :try_start_1
    iget v0, p0, Landroid/util/LruCache;->hitCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 342
    .end local p0    # "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final declared-synchronized whitelist maxSize()I
    .registers 2

    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 334
    :try_start_1
    iget v0, p0, Landroid/util/LruCache;->maxSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 334
    .end local p0    # "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final declared-synchronized whitelist missCount()I
    .registers 2

    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 350
    :try_start_1
    iget v0, p0, Landroid/util/LruCache;->missCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 350
    .end local p0    # "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final whitelist put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 169
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_35

    if-eqz p2, :cond_35

    .line 174
    monitor-enter p0

    .line 175
    :try_start_5
    iget v0, p0, Landroid/util/LruCache;->putCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/LruCache;->putCount:I

    .line 176
    iget v0, p0, Landroid/util/LruCache;->size:I

    invoke-direct {p0, p1, p2}, Landroid/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/LruCache;->size:I

    .line 177
    iget-object v0, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 178
    .local v0, "previous":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_25

    .line 179
    iget v1, p0, Landroid/util/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Landroid/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/util/LruCache;->size:I

    .line 181
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_32

    .line 183
    if-eqz v0, :cond_2c

    .line 184
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 187
    :cond_2c
    iget v1, p0, Landroid/util/LruCache;->maxSize:I

    invoke-virtual {p0, v1}, Landroid/util/LruCache;->trimToSize(I)V

    .line 188
    return-object v0

    .line 181
    .end local v0    # "previous":Ljava/lang/Object;, "TV;"
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0

    .line 170
    :cond_35
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null || value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized whitelist putCount()I
    .registers 2

    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 364
    :try_start_1
    iget v0, p0, Landroid/util/LruCache;->putCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 364
    .end local p0    # "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public final whitelist remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 238
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_20

    .line 243
    monitor-enter p0

    .line 244
    :try_start_3
    iget-object v0, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 245
    .local v0, "previous":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_14

    .line 246
    iget v1, p0, Landroid/util/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Landroid/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/util/LruCache;->size:I

    .line 248
    :cond_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1d

    .line 250
    if-eqz v0, :cond_1c

    .line 251
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 254
    :cond_1c
    return-object v0

    .line 248
    .end local v0    # "previous":Ljava/lang/Object;, "TV;"
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0

    .line 239
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist resize(I)V
    .registers 4
    .param p1, "maxSize"    # I

    .line 98
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    if-lez p1, :cond_d

    .line 102
    monitor-enter p0

    .line 103
    :try_start_3
    iput p1, p0, Landroid/util/LruCache;->maxSize:I

    .line 104
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 105
    invoke-virtual {p0, p1}, Landroid/util/LruCache;->trimToSize(I)V

    .line 106
    return-void

    .line 104
    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0

    .line 99
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized whitelist size()I
    .registers 2

    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 325
    :try_start_1
    iget v0, p0, Landroid/util/LruCache;->size:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 325
    .end local p0    # "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method protected whitelist sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .line 309
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized whitelist snapshot()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 379
    :try_start_1
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    .line 379
    .end local p0    # "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public final declared-synchronized whitelist test-api toString()Ljava/lang/String;
    .registers 8

    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 383
    :try_start_1
    iget v0, p0, Landroid/util/LruCache;->hitCount:I

    iget v1, p0, Landroid/util/LruCache;->missCount:I

    add-int/2addr v0, v1

    .line 384
    .local v0, "accesses":I
    if-eqz v0, :cond_e

    iget v1, p0, Landroid/util/LruCache;->hitCount:I

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v0

    goto :goto_f

    .end local p0    # "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    :cond_e
    const/4 v1, 0x0

    .line 385
    .local v1, "hitPercent":I
    :goto_f
    const-string v2, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    iget v3, p0, Landroid/util/LruCache;->maxSize:I

    .line 386
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/util/LruCache;->hitCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Landroid/util/LruCache;->missCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v3

    .line 385
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    monitor-exit p0

    return-object v2

    .line 382
    .end local v0    # "accesses":I
    .end local v1    # "hitPercent":I
    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public whitelist trimToSize(I)V
    .registers 7
    .param p1, "maxSize"    # I

    .line 202
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    nop

    :goto_1
    monitor-enter p0

    .line 203
    :try_start_2
    iget v0, p0, Landroid/util/LruCache;->size:I

    if-ltz v0, :cond_42

    iget-object v0, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Landroid/util/LruCache;->size:I

    if-nez v0, :cond_42

    .line 208
    :cond_12
    iget v0, p0, Landroid/util/LruCache;->size:I

    if-gt v0, p1, :cond_18

    .line 209
    monitor-exit p0

    goto :goto_1f

    .line 212
    :cond_18
    invoke-direct {p0}, Landroid/util/LruCache;->eldest()Ljava/util/Map$Entry;

    move-result-object v0

    .line 213
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_20

    .line 214
    monitor-exit p0

    .line 226
    .end local v0    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :goto_1f
    return-void

    .line 217
    .restart local v0    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_20
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 218
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 219
    .local v2, "value":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget v3, p0, Landroid/util/LruCache;->size:I

    invoke-direct {p0, v1, v2}, Landroid/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/util/LruCache;->size:I

    .line 221
    iget v3, p0, Landroid/util/LruCache;->evictionCount:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Landroid/util/LruCache;->evictionCount:I

    .line 222
    .end local v0    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_2 .. :try_end_3d} :catchall_63

    .line 224
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v1, v2, v0}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 225
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_1

    .line 204
    :cond_42
    :try_start_42
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    .end local p1    # "maxSize":I
    throw v0

    .line 222
    .restart local p0    # "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    .restart local p1    # "maxSize":I
    :catchall_63
    move-exception v0

    monitor-exit p0
    :try_end_65
    .catchall {:try_start_42 .. :try_end_65} :catchall_63

    throw v0
.end method
