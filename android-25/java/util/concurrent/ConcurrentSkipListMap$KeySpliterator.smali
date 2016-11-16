.class final Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;
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
    name = "KeySpliterator"
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
        "<TK;>;"
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
    .line 3294
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p2, "row":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local p3, "origin":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local p4, "fence":Ljava/lang/Object;, "TK;"
    invoke-direct/range {p0 .. p5}, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;-><init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;I)V

    #@3
    .line 3293
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 3356
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    const/16 v0, 0x1115

    #@2
    return v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TK;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    const/4 v5, 0x0

    #@1
    .line 3320
    if-nez p1, :cond_0

    #@3
    new-instance v5, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v5

    #@9
    .line 3321
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->comparator:Ljava/util/Comparator;

    #@b
    .line 3322
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->fence:Ljava/lang/Object;

    #@d
    .line 3323
    .local v2, "f":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@f
    .line 3324
    .local v1, "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    iput-object v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@11
    .line 3325
    :goto_0
    if-eqz v1, :cond_1

    #@13
    .line 3327
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@15
    .local v3, "k":Ljava/lang/Object;, "TK;"
    if-eqz v3, :cond_2

    #@17
    if-eqz v2, :cond_2

    #@19
    invoke-static {v0, v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    #@1c
    move-result v5

    #@1d
    if-gtz v5, :cond_2

    #@1f
    .line 3319
    .end local v3    # "k":Ljava/lang/Object;, "TK;"
    :cond_1
    return-void

    #@20
    .line 3329
    .restart local v3    # "k":Ljava/lang/Object;, "TK;"
    :cond_2
    iget-object v4, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@22
    .local v4, "v":Ljava/lang/Object;
    if-eqz v4, :cond_3

    #@24
    if-eq v4, v1, :cond_3

    #@26
    .line 3330
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@29
    .line 3325
    :cond_3
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@2b
    goto :goto_0
.end method

.method public final getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 3362
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->comparator:Ljava/util/Comparator;

    #@2
    return-object v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TK;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    const/4 v6, 0x0

    #@1
    .line 3335
    if-nez p1, :cond_0

    #@3
    new-instance v5, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v5

    #@9
    .line 3336
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->comparator:Ljava/util/Comparator;

    #@b
    .line 3337
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->fence:Ljava/lang/Object;

    #@d
    .line 3338
    .local v2, "f":Ljava/lang/Object;, "TK;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@f
    .line 3339
    .local v1, "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v1, :cond_1

    #@11
    .line 3341
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    #@13
    .local v3, "k":Ljava/lang/Object;, "TK;"
    if-eqz v3, :cond_2

    #@15
    if-eqz v2, :cond_2

    #@17
    invoke-static {v0, v2, v3}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    #@1a
    move-result v5

    #@1b
    if-gtz v5, :cond_2

    #@1d
    .line 3342
    const/4 v1, 0x0

    #@1e
    .line 3351
    .end local v1    # "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v3    # "k":Ljava/lang/Object;, "TK;"
    :cond_1
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@20
    .line 3352
    return v6

    #@21
    .line 3345
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
    .line 3346
    iget-object v5, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@29
    iput-object v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@2b
    .line 3347
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@2e
    .line 3348
    const/4 v5, 0x1

    #@2f
    return v5

    #@30
    .line 3339
    :cond_3
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@32
    goto :goto_0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 3297
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->trySplit()Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public trySplit()Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    const/4 v5, 0x0

    #@1
    .line 3299
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->comparator:Ljava/util/Comparator;

    #@3
    .line 3300
    .local v1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->fence:Ljava/lang/Object;

    #@5
    .line 3301
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
    .line 3302
    iget-object v10, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->row:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@f
    .local v10, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_0
    if-eqz v10, :cond_3

    #@11
    .line 3304
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
    .line 3305
    iget-object v9, v6, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@1b
    .local v9, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v9, :cond_2

    #@1d
    iget-object v0, v9, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->value:Ljava/lang/Object;

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 3306
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
    .line 3307
    if-eqz v8, :cond_0

    #@2d
    invoke-static {v1, v4, v8}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    #@30
    move-result v0

    #@31
    if-gez v0, :cond_2

    #@33
    .line 3308
    :cond_0
    iput-object v9, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    #@35
    .line 3309
    iget-object v2, v10, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@37
    .line 3310
    .local v2, "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget-object v0, v11, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@39
    if-eqz v0, :cond_1

    #@3b
    .end local v11    # "s":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_1
    iput-object v11, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->row:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@3d
    .line 3311
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
    .line 3312
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;

    #@48
    iget v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;->est:I

    #@4a
    invoke-direct/range {v0 .. v5}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;-><init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;I)V

    #@4d
    return-object v0

    #@4e
    .line 3310
    .restart local v11    # "s":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_1
    iget-object v11, v11, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    #@50
    goto :goto_1

    #@51
    .line 3302
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
    .line 3316
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    .end local v10    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v11    # "s":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_3
    return-object v5
.end method
