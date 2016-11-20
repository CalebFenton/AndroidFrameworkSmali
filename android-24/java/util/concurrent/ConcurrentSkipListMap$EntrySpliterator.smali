.class final Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;
.super Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;
.source "ConcurrentSkipListMap.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentSkipListMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EntrySpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator$-java_util_Comparator_getComparator__LambdaImpl0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator",
        "<TK;TV;>;",
        "Ljava/util/Spliterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method static synthetic -java_util_concurrent_ConcurrentSkipListMap$EntrySpliterator_lambda$1(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 2
    .param p0, "e1"    # Ljava/util/Map$Entry;
    .param p1, "e2"    # Ljava/util/Map$Entry;

    #@0
    .prologue
    .line 3549
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/lang/Comparable;

    #@6
    .line 3550
    .local v0, "k1":Ljava/lang/Comparable;, "Ljava/lang/Comparable<-TK;>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    #@d
    move-result v1

    #@e
    return v1
.end method

.method constructor <init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;I)V
    .locals 0
    .param p5, "est"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TK;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Index",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node",
            "<TK;TV;>;TK;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3469
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p2, "row":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local p3, "origin":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local p4, "fence":Ljava/lang/Object;, "TK;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;-><init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;I)V

    #@3
    .line 3468
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 3536
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
    const/16 v0, 0x1115

    #@2
    return v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v6, 0x0

    #@1
    .line 3495
    if-nez p1, :cond_0

    #@3
    new-instance v6, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v6

    #@9
    .line 3496
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->comparator:Ljava/util/Comparator;

    #@b
    .line 3497
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->fence:Ljava/lang/Object;

    #@d
    .line 3498
    .local v2, "f":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@f
    .line 3499
    .local v1, "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iput-object v6, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@11
    .line 3500
    :goto_0
    if-eqz v1, :cond_1

    #@13
    .line 3502
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@15
    .local v3, "k":Ljava/lang/Object;, "TK;"
    if-eqz v3, :cond_2

    #@17
    if-eqz v2, :cond_2

    #@19
    invoke-static {v0, v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    #@1c
    move-result v6

    #@1d
    if-gtz v6, :cond_2

    #@1f
    .line 3494
    .end local v3    # "k":Ljava/lang/Object;, "TK;"
    :cond_1
    return-void

    #@20
    .line 3504
    .restart local v3    # "k":Ljava/lang/Object;, "TK;"
    :cond_2
    iget-object v4, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@22
    .local v4, "v":Ljava/lang/Object;
    if-eqz v4, :cond_3

    #@24
    if-eq v4, v1, :cond_3

    #@26
    .line 3505
    move-object v5, v4

    #@27
    .line 3507
    .local v5, "vv":Ljava/lang/Object;, "TV;"
    new-instance v6, Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@29
    invoke-direct {v6, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@2c
    .line 3506
    invoke-interface {p1, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@2f
    .line 3500
    .end local v5    # "vv":Ljava/lang/Object;, "TV;"
    :cond_3
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@31
    goto :goto_0
.end method

.method public final getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 3543
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->comparator:Ljava/util/Comparator;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3544
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->comparator:Ljava/util/Comparator;

    #@6
    invoke-static {v0}, Ljava/util/Map$Entry;->comparingByKey(Ljava/util/Comparator;)Ljava/util/Comparator;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 3547
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator$-java_util_Comparator_getComparator__LambdaImpl0;

    #@d
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator$-java_util_Comparator_getComparator__LambdaImpl0;-><init>()V

    #@10
    nop

    #@11
    nop

    #@12
    return-object v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v7, 0x0

    #@1
    .line 3513
    if-nez p1, :cond_0

    #@3
    new-instance v6, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v6

    #@9
    .line 3514
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->comparator:Ljava/util/Comparator;

    #@b
    .line 3515
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->fence:Ljava/lang/Object;

    #@d
    .line 3516
    .local v2, "f":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@f
    .line 3517
    .local v1, "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v1, :cond_1

    #@11
    .line 3519
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@13
    .local v3, "k":Ljava/lang/Object;, "TK;"
    if-eqz v3, :cond_2

    #@15
    if-eqz v2, :cond_2

    #@17
    invoke-static {v0, v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    #@1a
    move-result v6

    #@1b
    if-gtz v6, :cond_2

    #@1d
    .line 3520
    const/4 v1, 0x0

    #@1e
    .line 3531
    .end local v1    # "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v3    # "k":Ljava/lang/Object;, "TK;"
    :cond_1
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@20
    .line 3532
    return v7

    #@21
    .line 3523
    .restart local v1    # "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .restart local v3    # "k":Ljava/lang/Object;, "TK;"
    :cond_2
    iget-object v4, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@23
    .local v4, "v":Ljava/lang/Object;
    if-eqz v4, :cond_3

    #@25
    if-eq v4, v1, :cond_3

    #@27
    .line 3524
    iget-object v6, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@29
    iput-object v6, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@2b
    .line 3525
    move-object v5, v4

    #@2c
    .line 3527
    .local v5, "vv":Ljava/lang/Object;, "TV;"
    new-instance v6, Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@2e
    invoke-direct {v6, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@31
    .line 3526
    invoke-interface {p1, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@34
    .line 3528
    const/4 v6, 0x1

    #@35
    return v6

    #@36
    .line 3517
    .end local v5    # "vv":Ljava/lang/Object;, "TV;"
    :cond_3
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@38
    goto :goto_0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 3472
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;->trySplit()Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public trySplit()Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
    const/4 v5, 0x0

    #@1
    .line 3474
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->comparator:Ljava/util/Comparator;

    #@3
    .line 3475
    .local v1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->fence:Ljava/lang/Object;

    #@5
    .line 3476
    .local v8, "f":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@7
    .local v3, "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v3, :cond_3

    #@9
    iget-object v7, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@b
    .local v7, "ek":Ljava/lang/Object;, "TK;"
    if-eqz v7, :cond_3

    #@d
    .line 3477
    iget-object v10, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->row:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@f
    .local v10, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_0
    if-eqz v10, :cond_3

    #@11
    .line 3479
    iget-object v11, v10, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@13
    .local v11, "s":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v11, :cond_2

    #@15
    iget-object v6, v11, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@17
    .local v6, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v6, :cond_2

    #@19
    .line 3480
    iget-object v9, v6, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@1b
    .local v9, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v9, :cond_2

    #@1d
    iget-object v0, v9, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 3481
    iget-object v4, v9, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@23
    .local v4, "sk":Ljava/lang/Object;, "TK;"
    if-eqz v4, :cond_2

    #@25
    invoke-static {v1, v4, v7}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    #@28
    move-result v0

    #@29
    if-lez v0, :cond_2

    #@2b
    .line 3482
    if-eqz v8, :cond_0

    #@2d
    invoke-static {v1, v4, v8}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    #@30
    move-result v0

    #@31
    if-gez v0, :cond_2

    #@33
    .line 3483
    :cond_0
    iput-object v9, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@35
    .line 3484
    iget-object v2, v10, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@37
    .line 3485
    .local v2, "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget-object v0, v11, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@39
    if-eqz v0, :cond_1

    #@3b
    .end local v11    # "s":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_1
    iput-object v11, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->row:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@3d
    .line 3486
    iget v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->est:I

    #@3f
    iget v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->est:I

    #@41
    ushr-int/lit8 v5, v5, 0x2

    #@43
    sub-int/2addr v0, v5

    #@44
    iput v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->est:I

    #@46
    .line 3487
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;

    #@48
    iget v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->est:I

    #@4a
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ConcurrentSkipListMap$EntrySpliterator;-><init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;I)V

    #@4d
    return-object v0

    #@4e
    .line 3485
    .restart local v11    # "s":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_1
    iget-object v11, v11, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@50
    goto :goto_1

    #@51
    .line 3477
    .end local v2    # "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v4    # "sk":Ljava/lang/Object;, "TK;"
    .end local v6    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v9    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_2
    iget-object v10, v10, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@53
    .end local v10    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iput-object v10, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->row:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@55
    .restart local v10    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    goto :goto_0

    #@56
    .line 3491
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    .end local v10    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v11    # "s":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_3
    return-object v5
.end method
