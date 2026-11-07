.class final Ljava/util/WeakHashMap$EntrySpliterator;
.super Ljava/util/WeakHashMap$WeakHashMapSpliterator;
.source "WeakHashMap.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/WeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EntrySpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/WeakHashMap$WeakHashMapSpliterator<",
        "TK;TV;>;",
        "Ljava/util/Spliterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/WeakHashMap;IIII)V
    .registers 6
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "est"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/WeakHashMap<",
            "TK;TV;>;IIII)V"
        }
    .end annotation

    .line 1266
    .local p0, "this":Ljava/util/WeakHashMap$EntrySpliterator;, "Ljava/util/WeakHashMap$EntrySpliterator<TK;TV;>;"
    .local p1, "m":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/WeakHashMap$WeakHashMapSpliterator;-><init>(Ljava/util/WeakHashMap;IIII)V

    .line 1267
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 1342
    .local p0, "this":Ljava/util/WeakHashMap$EntrySpliterator;, "Ljava/util/WeakHashMap$EntrySpliterator<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 1279
    .local p0, "this":Ljava/util/WeakHashMap$EntrySpliterator;, "Ljava/util/WeakHashMap$EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_59

    .line 1281
    iget-object v0, p0, Ljava/util/WeakHashMap$EntrySpliterator;->map:Ljava/util/WeakHashMap;

    .line 1282
    .local v0, "m":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    iget-object v1, v0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    .line 1283
    .local v1, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    iget v2, p0, Ljava/util/WeakHashMap$EntrySpliterator;->fence:I

    move v3, v2

    .local v3, "hi":I
    if-gez v2, :cond_14

    .line 1284
    iget v2, v0, Ljava/util/WeakHashMap;->modCount:I

    iput v2, p0, Ljava/util/WeakHashMap$EntrySpliterator;->expectedModCount:I

    .line 1285
    .local v2, "mc":I
    array-length v4, v1

    iput v4, p0, Ljava/util/WeakHashMap$EntrySpliterator;->fence:I

    move v3, v4

    goto :goto_16

    .line 1288
    .end local v2    # "mc":I
    :cond_14
    iget v2, p0, Ljava/util/WeakHashMap$EntrySpliterator;->expectedModCount:I

    .line 1289
    .restart local v2    # "mc":I
    :goto_16
    array-length v4, v1

    if-lt v4, v3, :cond_4e

    iget v4, p0, Ljava/util/WeakHashMap$EntrySpliterator;->index:I

    move v5, v4

    .local v5, "i":I
    if-ltz v4, :cond_4e

    iput v3, p0, Ljava/util/WeakHashMap$EntrySpliterator;->index:I

    if-lt v5, v3, :cond_26

    iget-object v4, p0, Ljava/util/WeakHashMap$EntrySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    if-eqz v4, :cond_4e

    .line 1291
    :cond_26
    iget-object v4, p0, Ljava/util/WeakHashMap$EntrySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    .line 1292
    .local v4, "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/WeakHashMap$EntrySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    .line 1294
    :cond_2b
    if-nez v4, :cond_33

    .line 1295
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    aget-object v4, v1, v5

    move v5, v6

    goto :goto_4a

    .line 1297
    .end local v6    # "i":I
    .restart local v5    # "i":I
    :cond_33
    invoke-virtual {v4}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v6

    .line 1298
    .local v6, "x":Ljava/lang/Object;
    iget-object v7, v4, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 1299
    .local v7, "v":Ljava/lang/Object;, "TV;"
    iget-object v4, v4, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    .line 1300
    if-eqz v6, :cond_4a

    .line 1301
    nop

    .line 1302
    invoke-static {v6}, Ljava/util/WeakHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1303
    .local v8, "k":Ljava/lang/Object;, "TK;"
    new-instance v9, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v9, v8, v7}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1304
    invoke-interface {p1, v9}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1307
    .end local v6    # "x":Ljava/lang/Object;
    .end local v7    # "v":Ljava/lang/Object;, "TV;"
    .end local v8    # "k":Ljava/lang/Object;, "TK;"
    :cond_4a
    :goto_4a
    if-nez v4, :cond_2b

    if-lt v5, v3, :cond_2b

    .line 1309
    .end local v4    # "p":Ljava/util/WeakHashMap$Entry;, "Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v5    # "i":I
    :cond_4e
    iget v4, v0, Ljava/util/WeakHashMap;->modCount:I

    if-ne v4, v2, :cond_53

    .line 1311
    return-void

    .line 1310
    :cond_53
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1280
    .end local v0    # "m":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<TK;TV;>;"
    .end local v1    # "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v2    # "mc":I
    .end local v3    # "hi":I
    :cond_59
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 1315
    .local p0, "this":Ljava/util/WeakHashMap$EntrySpliterator;, "Ljava/util/WeakHashMap$EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_5b

    .line 1317
    iget-object v0, p0, Ljava/util/WeakHashMap$EntrySpliterator;->map:Ljava/util/WeakHashMap;

    iget-object v0, v0, Ljava/util/WeakHashMap;->table:[Ljava/util/WeakHashMap$Entry;

    .line 1318
    .local v0, "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    array-length v1, v0

    invoke-virtual {p0}, Ljava/util/WeakHashMap$EntrySpliterator;->getFence()I

    move-result v2

    move v3, v2

    .local v3, "hi":I
    if-lt v1, v2, :cond_59

    iget v1, p0, Ljava/util/WeakHashMap$EntrySpliterator;->index:I

    if-ltz v1, :cond_59

    .line 1319
    :goto_12
    iget-object v1, p0, Ljava/util/WeakHashMap$EntrySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    if-nez v1, :cond_1a

    iget v1, p0, Ljava/util/WeakHashMap$EntrySpliterator;->index:I

    if-ge v1, v3, :cond_59

    .line 1320
    :cond_1a
    iget-object v1, p0, Ljava/util/WeakHashMap$EntrySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    if-nez v1, :cond_29

    .line 1321
    iget v1, p0, Ljava/util/WeakHashMap$EntrySpliterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/WeakHashMap$EntrySpliterator;->index:I

    aget-object v1, v0, v1

    iput-object v1, p0, Ljava/util/WeakHashMap$EntrySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    goto :goto_12

    .line 1323
    :cond_29
    iget-object v1, p0, Ljava/util/WeakHashMap$EntrySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    invoke-virtual {v1}, Ljava/util/WeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1324
    .local v1, "x":Ljava/lang/Object;
    iget-object v2, p0, Ljava/util/WeakHashMap$EntrySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    iget-object v2, v2, Ljava/util/WeakHashMap$Entry;->value:Ljava/lang/Object;

    .line 1325
    .local v2, "v":Ljava/lang/Object;, "TV;"
    iget-object v4, p0, Ljava/util/WeakHashMap$EntrySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    iget-object v4, v4, Ljava/util/WeakHashMap$Entry;->next:Ljava/util/WeakHashMap$Entry;

    iput-object v4, p0, Ljava/util/WeakHashMap$EntrySpliterator;->current:Ljava/util/WeakHashMap$Entry;

    .line 1326
    if-eqz v1, :cond_58

    .line 1327
    nop

    .line 1328
    invoke-static {v1}, Ljava/util/WeakHashMap;->unmaskNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1329
    .local v4, "k":Ljava/lang/Object;, "TK;"
    new-instance v5, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v5, v4, v2}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1330
    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1331
    iget-object v5, p0, Ljava/util/WeakHashMap$EntrySpliterator;->map:Ljava/util/WeakHashMap;

    iget v5, v5, Ljava/util/WeakHashMap;->modCount:I

    iget v6, p0, Ljava/util/WeakHashMap$EntrySpliterator;->expectedModCount:I

    if-ne v5, v6, :cond_52

    .line 1333
    const/4 v5, 0x1

    return v5

    .line 1332
    :cond_52
    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5

    .line 1335
    .end local v1    # "x":Ljava/lang/Object;
    .end local v2    # "v":Ljava/lang/Object;, "TV;"
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    :cond_58
    goto :goto_12

    .line 1338
    :cond_59
    const/4 v1, 0x0

    return v1

    .line 1316
    .end local v0    # "tab":[Ljava/util/WeakHashMap$Entry;, "[Ljava/util/WeakHashMap$Entry<TK;TV;>;"
    .end local v3    # "hi":I
    :cond_5b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 1261
    .local p0, "this":Ljava/util/WeakHashMap$EntrySpliterator;, "Ljava/util/WeakHashMap$EntrySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$EntrySpliterator;->trySplit()Ljava/util/WeakHashMap$EntrySpliterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist trySplit()Ljava/util/WeakHashMap$EntrySpliterator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/WeakHashMap$EntrySpliterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1270
    .local p0, "this":Ljava/util/WeakHashMap$EntrySpliterator;, "Ljava/util/WeakHashMap$EntrySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/WeakHashMap$EntrySpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v3, p0, Ljava/util/WeakHashMap$EntrySpliterator;->index:I

    .local v3, "lo":I
    add-int v1, v3, v0

    ushr-int/lit8 v4, v1, 0x1

    .line 1271
    .local v4, "mid":I
    if-lt v3, v4, :cond_e

    const/4 v1, 0x0

    goto :goto_1f

    .line 1272
    :cond_e
    new-instance v1, Ljava/util/WeakHashMap$EntrySpliterator;

    iget-object v2, p0, Ljava/util/WeakHashMap$EntrySpliterator;->map:Ljava/util/WeakHashMap;

    iput v4, p0, Ljava/util/WeakHashMap$EntrySpliterator;->index:I

    iget v5, p0, Ljava/util/WeakHashMap$EntrySpliterator;->est:I

    ushr-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/WeakHashMap$EntrySpliterator;->est:I

    iget v6, p0, Ljava/util/WeakHashMap$EntrySpliterator;->expectedModCount:I

    invoke-direct/range {v1 .. v6}, Ljava/util/WeakHashMap$EntrySpliterator;-><init>(Ljava/util/WeakHashMap;IIII)V

    .line 1271
    :goto_1f
    return-object v1
.end method
