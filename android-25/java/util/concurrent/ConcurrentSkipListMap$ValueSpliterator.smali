.class final Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;
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
    name = "ValueSpliterator"
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
        "<TV;>;"
    }
.end annotation


# direct methods
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
    .line 3382
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.ValueSpliterator<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p2, "row":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local p3, "origin":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local p4, "fence":Ljava/lang/Object;, "TK;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;-><init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;I)V

    #@3
    .line 3381
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 3447
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.ValueSpliterator<TK;TV;>;"
    const/16 v0, 0x1110

    #@2
    return v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.ValueSpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    const/4 v6, 0x0

    #@1
    .line 3408
    if-nez p1, :cond_0

    #@3
    new-instance v6, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v6

    #@9
    .line 3409
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->comparator:Ljava/util/Comparator;

    #@b
    .line 3410
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->fence:Ljava/lang/Object;

    #@d
    .line 3411
    .local v2, "f":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@f
    .line 3412
    .local v1, "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iput-object v6, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@11
    .line 3413
    :goto_0
    if-eqz v1, :cond_1

    #@13
    .line 3415
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
    .line 3407
    .end local v3    # "k":Ljava/lang/Object;, "TK;"
    :cond_1
    return-void

    #@20
    .line 3417
    .restart local v3    # "k":Ljava/lang/Object;, "TK;"
    :cond_2
    iget-object v4, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@22
    .local v4, "v":Ljava/lang/Object;
    if-eqz v4, :cond_3

    #@24
    if-eq v4, v1, :cond_3

    #@26
    .line 3418
    move-object v5, v4

    #@27
    .line 3419
    .local v5, "vv":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@2a
    .line 3413
    .end local v5    # "vv":Ljava/lang/Object;, "TV;"
    :cond_3
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@2c
    goto :goto_0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TV;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.ValueSpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    const/4 v7, 0x0

    #@1
    .line 3425
    if-nez p1, :cond_0

    #@3
    new-instance v6, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v6

    #@9
    .line 3426
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->comparator:Ljava/util/Comparator;

    #@b
    .line 3427
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->fence:Ljava/lang/Object;

    #@d
    .line 3428
    .local v2, "f":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@f
    .line 3429
    .local v1, "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v1, :cond_1

    #@11
    .line 3431
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
    .line 3432
    const/4 v1, 0x0

    #@1e
    .line 3442
    .end local v1    # "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v3    # "k":Ljava/lang/Object;, "TK;"
    :cond_1
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@20
    .line 3443
    return v7

    #@21
    .line 3435
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
    .line 3436
    iget-object v6, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@29
    iput-object v6, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@2b
    .line 3437
    move-object v5, v4

    #@2c
    .line 3438
    .local v5, "vv":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@2f
    .line 3439
    const/4 v6, 0x1

    #@30
    return v6

    #@31
    .line 3429
    .end local v5    # "vv":Ljava/lang/Object;, "TV;"
    :cond_3
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@33
    goto :goto_0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 3385
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.ValueSpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;->trySplit()Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public trySplit()Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.ValueSpliterator<TK;TV;>;"
    const/4 v5, 0x0

    #@1
    .line 3387
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->comparator:Ljava/util/Comparator;

    #@3
    .line 3388
    .local v1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->fence:Ljava/lang/Object;

    #@5
    .line 3389
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
    .line 3390
    iget-object v10, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->row:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@f
    .local v10, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_0
    if-eqz v10, :cond_3

    #@11
    .line 3392
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
    .line 3393
    iget-object v9, v6, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@1b
    .local v9, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v9, :cond_2

    #@1d
    iget-object v0, v9, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 3394
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
    .line 3395
    if-eqz v8, :cond_0

    #@2d
    invoke-static {v1, v4, v8}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    #@30
    move-result v0

    #@31
    if-gez v0, :cond_2

    #@33
    .line 3396
    :cond_0
    iput-object v9, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@35
    .line 3397
    iget-object v2, v10, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@37
    .line 3398
    .local v2, "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget-object v0, v11, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@39
    if-eqz v0, :cond_1

    #@3b
    .end local v11    # "s":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_1
    iput-object v11, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->row:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@3d
    .line 3399
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
    .line 3400
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;

    #@48
    iget v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->est:I

    #@4a
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;-><init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;I)V

    #@4d
    return-object v0

    #@4e
    .line 3398
    .restart local v11    # "s":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_1
    iget-object v11, v11, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@50
    goto :goto_1

    #@51
    .line 3390
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
    .line 3404
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    .end local v10    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v11    # "s":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_3
    return-object v5
.end method
