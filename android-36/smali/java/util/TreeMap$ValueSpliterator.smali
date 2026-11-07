.class final Ljava/util/TreeMap$ValueSpliterator;
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
    name = "ValueSpliterator"
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
        "TV;>;"
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

    .line 3249
    .local p0, "this":Ljava/util/TreeMap$ValueSpliterator;, "Ljava/util/TreeMap$ValueSpliterator<TK;TV;>;"
    .local p1, "tree":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p2, "origin":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local p3, "fence":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-direct/range {p0 .. p6}, Ljava/util/TreeMap$TreeMapSpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    .line 3250
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 3311
    .local p0, "this":Ljava/util/TreeMap$ValueSpliterator;, "Ljava/util/TreeMap$ValueSpliterator<TK;TV;>;"
    iget v0, p0, Ljava/util/TreeMap$ValueSpliterator;->side:I

    if-nez v0, :cond_7

    const/16 v0, 0x40

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    or-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TV;>;)V"
        }
    .end annotation

    .line 3272
    .local p0, "this":Ljava/util/TreeMap$ValueSpliterator;, "Ljava/util/TreeMap$ValueSpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-eqz p1, :cond_47

    .line 3274
    iget v0, p0, Ljava/util/TreeMap$ValueSpliterator;->est:I

    if-gez v0, :cond_9

    .line 3275
    invoke-virtual {p0}, Ljava/util/TreeMap$ValueSpliterator;->getEstimate()I

    .line 3276
    :cond_9
    iget-object v0, p0, Ljava/util/TreeMap$ValueSpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    .line 3277
    .local v0, "f":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v1, p0, Ljava/util/TreeMap$ValueSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    move-object v2, v1

    .local v2, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v1, :cond_46

    if-eq v2, v0, :cond_46

    .line 3278
    iput-object v0, p0, Ljava/util/TreeMap$ValueSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .line 3280
    :cond_14
    iget-object v1, v2, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3281
    iget-object v1, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    move-object v3, v1

    .local v3, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v1, :cond_25

    .line 3282
    :goto_1e
    iget-object v1, v3, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    move-object v4, v1

    .local v4, "pl":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v1, :cond_30

    .line 3283
    move-object v3, v4

    goto :goto_1e

    .line 3286
    .end local v4    # "pl":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_25
    :goto_25
    iget-object v1, v2, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    move-object v3, v1

    if-eqz v1, :cond_30

    iget-object v1, v3, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v2, v1, :cond_30

    .line 3287
    move-object v2, v3

    goto :goto_25

    .line 3289
    :cond_30
    move-object v2, v3

    if-eqz v3, :cond_35

    if-ne v2, v0, :cond_14

    .line 3290
    :cond_35
    iget-object v1, p0, Ljava/util/TreeMap$ValueSpliterator;->tree:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/util/TreeMap;->-$$Nest$fgetmodCount(Ljava/util/TreeMap;)I

    move-result v1

    iget v4, p0, Ljava/util/TreeMap$ValueSpliterator;->expectedModCount:I

    if-ne v1, v4, :cond_40

    goto :goto_46

    .line 3291
    :cond_40
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 3293
    .end local v3    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_46
    :goto_46
    return-void

    .line 3273
    .end local v0    # "f":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .end local v2    # "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_47
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TV;>;)Z"
        }
    .end annotation

    .line 3297
    .local p0, "this":Ljava/util/TreeMap$ValueSpliterator;, "Ljava/util/TreeMap$ValueSpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-eqz p1, :cond_32

    .line 3299
    iget v0, p0, Ljava/util/TreeMap$ValueSpliterator;->est:I

    if-gez v0, :cond_9

    .line 3300
    invoke-virtual {p0}, Ljava/util/TreeMap$ValueSpliterator;->getEstimate()I

    .line 3301
    :cond_9
    iget-object v0, p0, Ljava/util/TreeMap$ValueSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    move-object v1, v0

    .local v1, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_30

    iget-object v0, p0, Ljava/util/TreeMap$ValueSpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v1, v0, :cond_13

    goto :goto_30

    .line 3303
    :cond_13
    invoke-static {v1}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/TreeMap$ValueSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .line 3304
    iget-object v0, v1, Ljava/util/TreeMap$TreeMapEntry;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3305
    iget-object v0, p0, Ljava/util/TreeMap$ValueSpliterator;->tree:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-$$Nest$fgetmodCount(Ljava/util/TreeMap;)I

    move-result v0

    iget v2, p0, Ljava/util/TreeMap$ValueSpliterator;->expectedModCount:I

    if-ne v0, v2, :cond_2a

    .line 3307
    const/4 v0, 0x1

    return v0

    .line 3306
    :cond_2a
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 3302
    :cond_30
    :goto_30
    const/4 v0, 0x0

    return v0

    .line 3298
    .end local v1    # "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_32
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 3243
    .local p0, "this":Ljava/util/TreeMap$ValueSpliterator;, "Ljava/util/TreeMap$ValueSpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$ValueSpliterator;->trySplit()Ljava/util/TreeMap$ValueSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist trySplit()Ljava/util/TreeMap$ValueSpliterator;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$ValueSpliterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3253
    .local p0, "this":Ljava/util/TreeMap$ValueSpliterator;, "Ljava/util/TreeMap$ValueSpliterator<TK;TV;>;"
    iget v0, p0, Ljava/util/TreeMap$ValueSpliterator;->est:I

    if-gez v0, :cond_7

    .line 3254
    invoke-virtual {p0}, Ljava/util/TreeMap$ValueSpliterator;->getEstimate()I

    .line 3255
    :cond_7
    iget v0, p0, Ljava/util/TreeMap$ValueSpliterator;->side:I

    .line 3256
    .local v0, "d":I
    iget-object v3, p0, Ljava/util/TreeMap$ValueSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .local v3, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v8, p0, Ljava/util/TreeMap$ValueSpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    .line 3257
    .local v8, "f":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v1, 0x0

    if-eqz v3, :cond_2d

    if-ne v3, v8, :cond_13

    goto :goto_2d

    .line 3258
    :cond_13
    if-nez v0, :cond_1d

    iget-object v2, p0, Ljava/util/TreeMap$ValueSpliterator;->tree:Ljava/util/TreeMap;

    invoke-static {v2}, Ljava/util/TreeMap;->-$$Nest$fgetroot(Ljava/util/TreeMap;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    move-object v4, v2

    goto :goto_2e

    .line 3259
    :cond_1d
    if-lez v0, :cond_23

    iget-object v2, v3, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    move-object v4, v2

    goto :goto_2e

    .line 3260
    :cond_23
    if-gez v0, :cond_2b

    if-eqz v8, :cond_2b

    iget-object v2, v8, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    move-object v4, v2

    goto :goto_2e

    .line 3261
    :cond_2b
    move-object v4, v1

    goto :goto_2e

    .line 3257
    :cond_2d
    :goto_2d
    move-object v4, v1

    .line 3261
    :goto_2e
    nop

    .line 3262
    .local v4, "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v4, :cond_58

    if-eq v4, v3, :cond_58

    if-eq v4, v8, :cond_58

    iget-object v2, p0, Ljava/util/TreeMap$ValueSpliterator;->tree:Ljava/util/TreeMap;

    iget-object v5, v3, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iget-object v6, v4, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    .line 3263
    invoke-virtual {v2, v5, v6}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_58

    .line 3264
    const/4 v1, 0x1

    iput v1, p0, Ljava/util/TreeMap$ValueSpliterator;->side:I

    .line 3265
    move v2, v1

    new-instance v1, Ljava/util/TreeMap$ValueSpliterator;

    move v5, v2

    iget-object v2, p0, Ljava/util/TreeMap$ValueSpliterator;->tree:Ljava/util/TreeMap;

    iput-object v4, p0, Ljava/util/TreeMap$ValueSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    iget v6, p0, Ljava/util/TreeMap$ValueSpliterator;->est:I

    ushr-int/2addr v6, v5

    iput v6, p0, Ljava/util/TreeMap$ValueSpliterator;->est:I

    iget v7, p0, Ljava/util/TreeMap$ValueSpliterator;->expectedModCount:I

    const/4 v5, -0x1

    invoke-direct/range {v1 .. v7}, Ljava/util/TreeMap$ValueSpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    return-object v1

    .line 3268
    :cond_58
    return-object v1
.end method
