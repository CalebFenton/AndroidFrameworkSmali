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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/TreeMap$EntrySpliterator$-java_util_Comparator_getComparator__LambdaImpl0;
    }
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
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method static synthetic -java_util_TreeMap$EntrySpliterator_lambda$1(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 2
    .param p0, "e1"    # Ljava/util/Map$Entry;
    .param p1, "e2"    # Ljava/util/Map$Entry;

    #@0
    .prologue
    .line 3059
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/lang/Comparable;

    #@6
    .line 3060
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
    .line 2984
    .local p0, "this":Ljava/util/TreeMap$EntrySpliterator;, "Ljava/util/TreeMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
    .local p1, "tree":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p2, "origin":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local p3, "fence":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-direct/range {p0 .. p6}, Ljava/util/TreeMap$TreeMapSpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    #@3
    .line 2983
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$EntrySpliterator;, "Ljava/util/TreeMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 3046
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
            "<-",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 3007
    .local p0, "this":Ljava/util/TreeMap$EntrySpliterator;, "Ljava/util/TreeMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez p1, :cond_0

    #@2
    .line 3008
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v4

    #@8
    .line 3009
    :cond_0
    iget v4, p0, Ljava/util/TreeMap$TreeMapSpliterator;->est:I

    #@a
    if-gez v4, :cond_1

    #@c
    .line 3010
    invoke-virtual {p0}, Ljava/util/TreeMap$TreeMapSpliterator;->getEstimate()I

    #@f
    .line 3011
    :cond_1
    iget-object v1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    #@11
    .line 3012
    .local v1, "f":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    #@13
    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_6

    #@15
    if-eq v0, v1, :cond_6

    #@17
    .line 3013
    iput-object v1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    #@19
    .line 3015
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@1c
    .line 3016
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@1e
    .local v2, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v2, :cond_3

    #@20
    .line 3017
    :goto_0
    iget-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    #@22
    .local v3, "pl":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v3, :cond_4

    #@24
    .line 3018
    move-object v2, v3

    #@25
    goto :goto_0

    #@26
    .line 3021
    .end local v3    # "pl":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_3
    :goto_1
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    #@28
    if-eqz v2, :cond_4

    #@2a
    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@2c
    if-ne v0, v4, :cond_4

    #@2e
    .line 3022
    move-object v0, v2

    #@2f
    goto :goto_1

    #@30
    .line 3024
    :cond_4
    move-object v0, v2

    #@31
    if-eqz v2, :cond_5

    #@33
    if-ne v0, v1, :cond_2

    #@35
    .line 3025
    :cond_5
    iget-object v4, p0, Ljava/util/TreeMap$TreeMapSpliterator;->tree:Ljava/util/TreeMap;

    #@37
    invoke-static {v4}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    #@3a
    move-result v4

    #@3b
    iget v5, p0, Ljava/util/TreeMap$TreeMapSpliterator;->expectedModCount:I

    #@3d
    if-eq v4, v5, :cond_6

    #@3f
    .line 3026
    new-instance v4, Ljava/util/ConcurrentModificationException;

    #@41
    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@44
    throw v4

    #@45
    .line 3006
    .end local v2    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_6
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
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
    .line 3053
    .local p0, "this":Ljava/util/TreeMap$EntrySpliterator;, "Ljava/util/TreeMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapSpliterator;->tree:Ljava/util/TreeMap;

    #@2
    invoke-static {v0}, Ljava/util/TreeMap;->-get1(Ljava/util/TreeMap;)Ljava/util/Comparator;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 3054
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapSpliterator;->tree:Ljava/util/TreeMap;

    #@a
    invoke-static {v0}, Ljava/util/TreeMap;->-get1(Ljava/util/TreeMap;)Ljava/util/Comparator;

    #@d
    move-result-object v0

    #@e
    invoke-static {v0}, Ljava/util/Map$Entry;->comparingByKey(Ljava/util/Comparator;)Ljava/util/Comparator;

    #@11
    move-result-object v0

    #@12
    return-object v0

    #@13
    .line 3057
    :cond_0
    new-instance v0, Ljava/util/TreeMap$EntrySpliterator$-java_util_Comparator_getComparator__LambdaImpl0;

    #@15
    invoke-direct {v0}, Ljava/util/TreeMap$EntrySpliterator$-java_util_Comparator_getComparator__LambdaImpl0;-><init>()V

    #@18
    nop

    #@19
    nop

    #@1a
    return-object v0
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 3
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
    .local p0, "this":Ljava/util/TreeMap$EntrySpliterator;, "Ljava/util/TreeMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    const/4 v2, 0x0

    #@1
    .line 3032
    if-nez p1, :cond_0

    #@3
    .line 3033
    new-instance v1, Ljava/lang/NullPointerException;

    #@5
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@8
    throw v1

    #@9
    .line 3034
    :cond_0
    iget v1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->est:I

    #@b
    if-gez v1, :cond_1

    #@d
    .line 3035
    invoke-virtual {p0}, Ljava/util/TreeMap$TreeMapSpliterator;->getEstimate()I

    #@10
    .line 3036
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
    .line 3037
    :cond_2
    return v2

    #@19
    .line 3038
    :cond_3
    invoke-static {v0}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    #@1c
    move-result-object v1

    #@1d
    iput-object v1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    #@1f
    .line 3039
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@22
    .line 3040
    iget-object v1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->tree:Ljava/util/TreeMap;

    #@24
    invoke-static {v1}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    #@27
    move-result v1

    #@28
    iget v2, p0, Ljava/util/TreeMap$TreeMapSpliterator;->expectedModCount:I

    #@2a
    if-eq v1, v2, :cond_4

    #@2c
    .line 3041
    new-instance v1, Ljava/util/ConcurrentModificationException;

    #@2e
    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@31
    throw v1

    #@32
    .line 3042
    :cond_4
    const/4 v1, 0x1

    #@33
    return v1
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 2987
    .local p0, "this":Ljava/util/TreeMap$EntrySpliterator;, "Ljava/util/TreeMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$EntrySpliterator;->trySplit()Ljava/util/TreeMap$EntrySpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public trySplit()Ljava/util/TreeMap$EntrySpliterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$EntrySpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/TreeMap$EntrySpliterator;, "Ljava/util/TreeMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 2988
    iget v1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->est:I

    #@3
    if-gez v1, :cond_0

    #@5
    .line 2989
    invoke-virtual {p0}, Ljava/util/TreeMap$TreeMapSpliterator;->getEstimate()I

    #@8
    .line 2990
    :cond_0
    iget v7, p0, Ljava/util/TreeMap$TreeMapSpliterator;->side:I

    #@a
    .line 2991
    .local v7, "d":I
    iget-object v2, p0, Ljava/util/TreeMap$TreeMapSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    #@c
    .local v2, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v8, p0, Ljava/util/TreeMap$TreeMapSpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    #@e
    .line 2992
    .local v8, "f":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v2, :cond_1

    #@10
    if-ne v2, v8, :cond_2

    #@12
    :cond_1
    move-object v3, v0

    #@13
    .line 2997
    .local v3, "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_0
    if-eqz v3, :cond_6

    #@15
    if-eq v3, v2, :cond_6

    #@17
    if-eq v3, v8, :cond_6

    #@19
    .line 2998
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
    .line 2999
    const/4 v0, 0x1

    #@26
    iput v0, p0, Ljava/util/TreeMap$TreeMapSpliterator;->side:I

    #@28
    .line 3000
    new-instance v0, Ljava/util/TreeMap$EntrySpliterator;

    #@2a
    .line 3001
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
    .line 3000
    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$EntrySpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    #@3a
    return-object v0

    #@3b
    .line 2993
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
    .line 2994
    :cond_3
    if-lez v7, :cond_4

    #@46
    iget-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    #@48
    goto :goto_0

    #@49
    .line 2995
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
    .line 2996
    goto :goto_0

    #@52
    .line 3003
    .restart local v3    # "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_6
    return-object v0
.end method
