.class final Ljava/util/TreeMap$KeySpliterator;
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
    name = "KeySpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/TreeMap$TreeMapSpliterator",
        "<TK;TV;>;",
        "Ljava/util/Spliterator",
        "<TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V
    .locals 0
    .param p4, "side"    # I
    .param p5, "est"    # I
    .param p6, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<TK;TV;>;",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;III)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2761
    .local p0, "this":Ljava/util/TreeMap$KeySpliterator;, "Ljava/util/TreeMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    .local p1, "tree":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p2, "origin":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local p3, "fence":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-direct/range {p0 .. p6}, Ljava/util/TreeMap$TreeMapSpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    #@3
    .line 2760
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$KeySpliterator;, "Ljava/util/TreeMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 2823
    iget v1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->side:I

    #@3
    if-nez v1, :cond_0

    #@5
    const/16 v0, 0x40

    #@7
    :cond_0
    or-int/lit8 v0, v0, 0x1

    #@9
    or-int/lit8 v0, v0, 0x4

    #@b
    or-int/lit8 v0, v0, 0x10

    #@d
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
    .line 2784
    .local p0, "this":Ljava/util/TreeMap$KeySpliterator;, "Ljava/util/TreeMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-nez p1, :cond_0

    #@2
    .line 2785
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v4

    #@8
    .line 2786
    :cond_0
    iget v4, p0, Ljava/util/TreeMap$TreeMapSpliterator;->est:I

    #@a
    if-gez v4, :cond_1

    #@c
    .line 2787
    invoke-virtual {p0}, Ljava/util/TreeMap$TreeMapSpliterator;->getEstimate()I

    #@f
    .line 2788
    :cond_1
    iget-object v1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    #@11
    .line 2789
    .local v1, "f":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    #@13
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_6

    #@15
    if-eq v0, v1, :cond_6

    #@17
    .line 2790
    iput-object v1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    #@19
    .line 2792
    :cond_2
    iget-object v4, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@1b
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@1e
    .line 2793
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@20
    .local v2, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v2, :cond_3

    #@22
    .line 2794
    :goto_0
    iget-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@24
    .local v3, "pl":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v3, :cond_4

    #@26
    .line 2795
    move-object v2, v3

    #@27
    goto :goto_0

    #@28
    .line 2798
    .end local v3    # "pl":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_3
    :goto_1
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@2a
    if-eqz v2, :cond_4

    #@2c
    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@2e
    if-ne v0, v4, :cond_4

    #@30
    .line 2799
    move-object v0, v2

    #@31
    goto :goto_1

    #@32
    .line 2801
    :cond_4
    move-object v0, v2

    #@33
    if-eqz v2, :cond_5

    #@35
    if-ne v0, v1, :cond_2

    #@37
    .line 2802
    :cond_5
    iget-object v4, p0, Ljava/util/TreeMap$TreeMapSpliterator;->tree:Ljava/util/TreeMap;

    #@39
    invoke-static {v4}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    #@3c
    move-result v4

    #@3d
    iget v5, p0, Ljava/util/TreeMap$TreeMapSpliterator;->expectedModCount:I

    #@3f
    if-eq v4, v5, :cond_6

    #@41
    .line 2803
    new-instance v4, Ljava/util/ConcurrentModificationException;

    #@43
    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@46
    throw v4

    #@47
    .line 2783
    .end local v2    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_6
    return-void
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
    .line 2828
    .local p0, "this":Ljava/util/TreeMap$KeySpliterator;, "Ljava/util/TreeMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapSpliterator;->tree:Ljava/util/TreeMap;

    #@2
    invoke-static {v0}, Ljava/util/TreeMap;->-get1(Ljava/util/TreeMap;)Ljava/util/Comparator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TK;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$KeySpliterator;, "Ljava/util/TreeMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    const/4 v2, 0x0

    #@1
    .line 2809
    if-nez p1, :cond_0

    #@3
    .line 2810
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v1

    #@9
    .line 2811
    :cond_0
    iget v1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->est:I

    #@b
    if-gez v1, :cond_1

    #@d
    .line 2812
    invoke-virtual {p0}, Ljava/util/TreeMap$TreeMapSpliterator;->getEstimate()I

    #@10
    .line 2813
    :cond_1
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    #@12
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_2

    #@14
    iget-object v1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    #@16
    if-ne v0, v1, :cond_3

    #@18
    .line 2814
    :cond_2
    return v2

    #@19
    .line 2815
    :cond_3
    invoke-static {v0}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@1c
    move-result-object v1

    #@1d
    iput-object v1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    #@1f
    .line 2816
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@21
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@24
    .line 2817
    iget-object v1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->tree:Ljava/util/TreeMap;

    #@26
    invoke-static {v1}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    #@29
    move-result v1

    #@2a
    iget v2, p0, Ljava/util/TreeMap$TreeMapSpliterator;->expectedModCount:I

    #@2c
    if-eq v1, v2, :cond_4

    #@2e
    .line 2818
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@30
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@33
    throw v1

    #@34
    .line 2819
    :cond_4
    const/4 v1, 0x1

    #@35
    return v1
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 2764
    .local p0, "this":Ljava/util/TreeMap$KeySpliterator;, "Ljava/util/TreeMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$KeySpliterator;->trySplit()Ljava/util/TreeMap$KeySpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public trySplit()Ljava/util/TreeMap$KeySpliterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$KeySpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$KeySpliterator;, "Ljava/util/TreeMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 2765
    iget v1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->est:I

    #@3
    if-gez v1, :cond_0

    #@5
    .line 2766
    invoke-virtual {p0}, Ljava/util/TreeMap$TreeMapSpliterator;->getEstimate()I

    #@8
    .line 2767
    :cond_0
    iget v7, p0, Ljava/util/TreeMap$TreeMapSpliterator;->side:I

    #@a
    .line 2768
    .local v7, "d":I
    iget-object v2, p0, Ljava/util/TreeMap$TreeMapSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    #@c
    .local v2, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v8, p0, Ljava/util/TreeMap$TreeMapSpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    #@e
    .line 2769
    .local v8, "f":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v2, :cond_1

    #@10
    if-ne v2, v8, :cond_2

    #@12
    :cond_1
    move-object v3, v0

    #@13
    .line 2774
    .local v3, "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_0
    if-eqz v3, :cond_6

    #@15
    if-eq v3, v2, :cond_6

    #@17
    if-eq v3, v8, :cond_6

    #@19
    .line 2775
    iget-object v1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->tree:Ljava/util/TreeMap;

    #@1b
    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@1d
    iget-object v5, v3, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    #@1f
    invoke-virtual {v1, v4, v5}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@22
    move-result v1

    #@23
    if-gez v1, :cond_6

    #@25
    .line 2776
    const/4 v0, 0x1

    #@26
    iput v0, p0, Ljava/util/TreeMap$TreeMapSpliterator;->side:I

    #@28
    .line 2777
    new-instance v0, Ljava/util/TreeMap$KeySpliterator;

    #@2a
    .line 2778
    iget-object v1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->tree:Ljava/util/TreeMap;

    #@2c
    iput-object v3, p0, Ljava/util/TreeMap$TreeMapSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    #@2e
    iget v4, p0, Ljava/util/TreeMap$TreeMapSpliterator;->est:I

    #@30
    ushr-int/lit8 v5, v4, 0x1

    #@32
    iput v5, p0, Ljava/util/TreeMap$TreeMapSpliterator;->est:I

    #@34
    iget v6, p0, Ljava/util/TreeMap$TreeMapSpliterator;->expectedModCount:I

    #@36
    const/4 v4, -0x1

    #@37
    .line 2777
    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$KeySpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    #@3a
    return-object v0

    #@3b
    .line 2770
    .end local v3    # "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_2
    if-nez v7, :cond_3

    #@3d
    iget-object v1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->tree:Ljava/util/TreeMap;

    #@3f
    invoke-static {v1}, Ljava/util/TreeMap;->-get3(Ljava/util/TreeMap;)Ljava/util/TreeMap$TreeMapEntry;

    #@42
    move-result-object v3

    #@43
    goto :goto_0

    #@44
    .line 2771
    :cond_3
    if-lez v7, :cond_4

    #@46
    iget-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@48
    goto :goto_0

    #@49
    .line 2772
    :cond_4
    if-gez v7, :cond_5

    #@4b
    if-eqz v8, :cond_5

    #@4d
    iget-object v3, v8, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@4f
    goto :goto_0

    #@50
    :cond_5
    move-object v3, v0

    #@51
    .line 2773
    goto :goto_0

    #@52
    .line 2780
    .restart local v3    # "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_6
    return-object v0
.end method
