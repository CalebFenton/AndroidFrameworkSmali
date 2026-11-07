.class final Ljava/util/TreeMap$EntrySpliterator;
.super Ljava/util/TreeMap$TreeMapSpliterator;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
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
        "Ljava/util/TreeMap$TreeMapSpliterator<",
        "TK;TV;>;",
        "Ljava/util/Spliterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V
    .registers 7
    .param p4, "side"    # I
    .param p5, "est"    # I
    .param p6, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "TK;TV;>;",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;",
            "Ljava/util/TreeMap$TreeMapEntry<",
            "TK;TV;>;III)V"
        }
    .end annotation

    .line 3321
    .local p0, "this":Ljava/util/TreeMap$EntrySpliterator;, "Ljava/util/TreeMap$EntrySpliterator<TK;TV;>;"
    .local p1, "tree":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p2, "origin":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local p3, "fence":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-direct/range {p0 .. p6}, Ljava/util/TreeMap$TreeMapSpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    .line 3322
    return-void
.end method

.method static synthetic blacklist lambda$getComparator$d5a01062$1(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 4
    .param p0, "e1"    # Ljava/util/Map$Entry;
    .param p1, "e2"    # Ljava/util/Map$Entry;

    .line 3396
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    .line 3397
    .local v0, "k1":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 3383
    .local p0, "this":Ljava/util/TreeMap$EntrySpliterator;, "Ljava/util/TreeMap$EntrySpliterator<TK;TV;>;"
    iget v0, p0, Ljava/util/TreeMap$EntrySpliterator;->side:I

    if-nez v0, :cond_7

    const/16 v0, 0x40

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    or-int/lit8 v0, v0, 0x1

    or-int/lit8 v0, v0, 0x4

    or-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 3344
    .local p0, "this":Ljava/util/TreeMap$EntrySpliterator;, "Ljava/util/TreeMap$EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_45

    .line 3346
    iget v0, p0, Ljava/util/TreeMap$EntrySpliterator;->est:I

    if-gez v0, :cond_9

    .line 3347
    invoke-virtual {p0}, Ljava/util/TreeMap$EntrySpliterator;->getEstimate()I

    .line 3348
    :cond_9
    iget-object v0, p0, Ljava/util/TreeMap$EntrySpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    .line 3349
    .local v0, "f":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v1, p0, Ljava/util/TreeMap$EntrySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    move-object v2, v1

    .local v2, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v1, :cond_44

    if-eq v2, v0, :cond_44

    .line 3350
    iput-object v0, p0, Ljava/util/TreeMap$EntrySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .line 3352
    :cond_14
    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3353
    iget-object v1, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    move-object v3, v1

    .local v3, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v1, :cond_23

    .line 3354
    :goto_1c
    iget-object v1, v3, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    move-object v4, v1

    .local v4, "pl":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v1, :cond_2e

    .line 3355
    move-object v3, v4

    goto :goto_1c

    .line 3358
    .end local v4    # "pl":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_23
    :goto_23
    iget-object v1, v2, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    move-object v3, v1

    if-eqz v1, :cond_2e

    iget-object v1, v3, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v2, v1, :cond_2e

    .line 3359
    move-object v2, v3

    goto :goto_23

    .line 3361
    :cond_2e
    move-object v2, v3

    if-eqz v3, :cond_33

    if-ne v2, v0, :cond_14

    .line 3362
    :cond_33
    iget-object v1, p0, Ljava/util/TreeMap$EntrySpliterator;->tree:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/util/TreeMap;->-$$Nest$fgetmodCount(Ljava/util/TreeMap;)I

    move-result v1

    iget v4, p0, Ljava/util/TreeMap$EntrySpliterator;->expectedModCount:I

    if-ne v1, v4, :cond_3e

    goto :goto_44

    .line 3363
    :cond_3e
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 3365
    .end local v3    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_44
    :goto_44
    return-void

    .line 3345
    .end local v0    # "f":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .end local v2    # "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_45
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 3390
    .local p0, "this":Ljava/util/TreeMap$EntrySpliterator;, "Ljava/util/TreeMap$EntrySpliterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$EntrySpliterator;->tree:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-$$Nest$fgetcomparator(Ljava/util/TreeMap;)Ljava/util/Comparator;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 3391
    iget-object v0, p0, Ljava/util/TreeMap$EntrySpliterator;->tree:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-$$Nest$fgetcomparator(Ljava/util/TreeMap;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Map$Entry;->comparingByKey(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0

    .line 3394
    :cond_13
    new-instance v0, Ljava/util/TreeMap$EntrySpliterator$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/util/TreeMap$EntrySpliterator$$ExternalSyntheticLambda0;-><init>()V

    check-cast v0, Ljava/io/Serializable;

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 3369
    .local p0, "this":Ljava/util/TreeMap$EntrySpliterator;, "Ljava/util/TreeMap$EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_30

    .line 3371
    iget v0, p0, Ljava/util/TreeMap$EntrySpliterator;->est:I

    if-gez v0, :cond_9

    .line 3372
    invoke-virtual {p0}, Ljava/util/TreeMap$EntrySpliterator;->getEstimate()I

    .line 3373
    :cond_9
    iget-object v0, p0, Ljava/util/TreeMap$EntrySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    move-object v1, v0

    .local v1, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_2e

    iget-object v0, p0, Ljava/util/TreeMap$EntrySpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v1, v0, :cond_13

    goto :goto_2e

    .line 3375
    :cond_13
    invoke-static {v1}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/TreeMap$EntrySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .line 3376
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3377
    iget-object v0, p0, Ljava/util/TreeMap$EntrySpliterator;->tree:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-$$Nest$fgetmodCount(Ljava/util/TreeMap;)I

    move-result v0

    iget v2, p0, Ljava/util/TreeMap$EntrySpliterator;->expectedModCount:I

    if-ne v0, v2, :cond_28

    .line 3379
    const/4 v0, 0x1

    return v0

    .line 3378
    :cond_28
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 3374
    :cond_2e
    :goto_2e
    const/4 v0, 0x0

    return v0

    .line 3370
    .end local v1    # "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_30
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 3315
    .local p0, "this":Ljava/util/TreeMap$EntrySpliterator;, "Ljava/util/TreeMap$EntrySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$EntrySpliterator;->trySplit()Ljava/util/TreeMap$EntrySpliterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist trySplit()Ljava/util/TreeMap$EntrySpliterator;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$EntrySpliterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3325
    .local p0, "this":Ljava/util/TreeMap$EntrySpliterator;, "Ljava/util/TreeMap$EntrySpliterator<TK;TV;>;"
    iget v0, p0, Ljava/util/TreeMap$EntrySpliterator;->est:I

    if-gez v0, :cond_7

    .line 3326
    invoke-virtual {p0}, Ljava/util/TreeMap$EntrySpliterator;->getEstimate()I

    .line 3327
    :cond_7
    iget v0, p0, Ljava/util/TreeMap$EntrySpliterator;->side:I

    .line 3328
    .local v0, "d":I
    iget-object v3, p0, Ljava/util/TreeMap$EntrySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .local v3, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v8, p0, Ljava/util/TreeMap$EntrySpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    .line 3329
    .local v8, "f":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v1, 0x0

    if-eqz v3, :cond_2d

    if-ne v3, v8, :cond_13

    goto :goto_2d

    .line 3330
    :cond_13
    if-nez v0, :cond_1d

    iget-object v2, p0, Ljava/util/TreeMap$EntrySpliterator;->tree:Ljava/util/TreeMap;

    invoke-static {v2}, Ljava/util/TreeMap;->-$$Nest$fgetroot(Ljava/util/TreeMap;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    move-object v4, v2

    goto :goto_2e

    .line 3331
    :cond_1d
    if-lez v0, :cond_23

    iget-object v2, v3, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    move-object v4, v2

    goto :goto_2e

    .line 3332
    :cond_23
    if-gez v0, :cond_2b

    if-eqz v8, :cond_2b

    iget-object v2, v8, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    move-object v4, v2

    goto :goto_2e

    .line 3333
    :cond_2b
    move-object v4, v1

    goto :goto_2e

    .line 3329
    :cond_2d
    :goto_2d
    move-object v4, v1

    .line 3333
    :goto_2e
    nop

    .line 3334
    .local v4, "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v4, :cond_58

    if-eq v4, v3, :cond_58

    if-eq v4, v8, :cond_58

    iget-object v2, p0, Ljava/util/TreeMap$EntrySpliterator;->tree:Ljava/util/TreeMap;

    iget-object v5, v3, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iget-object v6, v4, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    .line 3335
    invoke-virtual {v2, v5, v6}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_58

    .line 3336
    const/4 v1, 0x1

    iput v1, p0, Ljava/util/TreeMap$EntrySpliterator;->side:I

    .line 3337
    move v2, v1

    new-instance v1, Ljava/util/TreeMap$EntrySpliterator;

    move v5, v2

    iget-object v2, p0, Ljava/util/TreeMap$EntrySpliterator;->tree:Ljava/util/TreeMap;

    iput-object v4, p0, Ljava/util/TreeMap$EntrySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    iget v6, p0, Ljava/util/TreeMap$EntrySpliterator;->est:I

    ushr-int/2addr v6, v5

    iput v6, p0, Ljava/util/TreeMap$EntrySpliterator;->est:I

    iget v7, p0, Ljava/util/TreeMap$EntrySpliterator;->expectedModCount:I

    const/4 v5, -0x1

    invoke-direct/range {v1 .. v7}, Ljava/util/TreeMap$EntrySpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    return-object v1

    .line 3340
    :cond_58
    return-object v1
.end method
