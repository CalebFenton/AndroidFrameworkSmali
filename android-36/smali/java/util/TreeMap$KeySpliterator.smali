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
        "Ljava/util/TreeMap$TreeMapSpliterator<",
        "TK;TV;>;",
        "Ljava/util/Spliterator<",
        "TK;>;"
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

    .line 3098
    .local p0, "this":Ljava/util/TreeMap$KeySpliterator;, "Ljava/util/TreeMap$KeySpliterator<TK;TV;>;"
    .local p1, "tree":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p2, "origin":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local p3, "fence":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-direct/range {p0 .. p6}, Ljava/util/TreeMap$TreeMapSpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    .line 3099
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 3160
    .local p0, "this":Ljava/util/TreeMap$KeySpliterator;, "Ljava/util/TreeMap$KeySpliterator<TK;TV;>;"
    iget v0, p0, Ljava/util/TreeMap$KeySpliterator;->side:I

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
            "-TK;>;)V"
        }
    .end annotation

    .line 3121
    .local p0, "this":Ljava/util/TreeMap$KeySpliterator;, "Ljava/util/TreeMap$KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-eqz p1, :cond_47

    .line 3123
    iget v0, p0, Ljava/util/TreeMap$KeySpliterator;->est:I

    if-gez v0, :cond_9

    .line 3124
    invoke-virtual {p0}, Ljava/util/TreeMap$KeySpliterator;->getEstimate()I

    .line 3125
    :cond_9
    iget-object v0, p0, Ljava/util/TreeMap$KeySpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    .line 3126
    .local v0, "f":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v1, p0, Ljava/util/TreeMap$KeySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    move-object v2, v1

    .local v2, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v1, :cond_46

    if-eq v2, v0, :cond_46

    .line 3127
    iput-object v0, p0, Ljava/util/TreeMap$KeySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .line 3129
    :cond_14
    iget-object v1, v2, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3130
    iget-object v1, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    move-object v3, v1

    .local v3, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v1, :cond_25

    .line 3131
    :goto_1e
    iget-object v1, v3, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    move-object v4, v1

    .local v4, "pl":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v1, :cond_30

    .line 3132
    move-object v3, v4

    goto :goto_1e

    .line 3135
    .end local v4    # "pl":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_25
    :goto_25
    iget-object v1, v2, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    move-object v3, v1

    if-eqz v1, :cond_30

    iget-object v1, v3, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v2, v1, :cond_30

    .line 3136
    move-object v2, v3

    goto :goto_25

    .line 3138
    :cond_30
    move-object v2, v3

    if-eqz v3, :cond_35

    if-ne v2, v0, :cond_14

    .line 3139
    :cond_35
    iget-object v1, p0, Ljava/util/TreeMap$KeySpliterator;->tree:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/util/TreeMap;->-$$Nest$fgetmodCount(Ljava/util/TreeMap;)I

    move-result v1

    iget v4, p0, Ljava/util/TreeMap$KeySpliterator;->expectedModCount:I

    if-ne v1, v4, :cond_40

    goto :goto_46

    .line 3140
    :cond_40
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 3142
    .end local v3    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_46
    :goto_46
    return-void

    .line 3122
    .end local v0    # "f":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .end local v2    # "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_47
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api getComparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 3165
    .local p0, "this":Ljava/util/TreeMap$KeySpliterator;, "Ljava/util/TreeMap$KeySpliterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$KeySpliterator;->tree:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-$$Nest$fgetcomparator(Ljava/util/TreeMap;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TK;>;)Z"
        }
    .end annotation

    .line 3146
    .local p0, "this":Ljava/util/TreeMap$KeySpliterator;, "Ljava/util/TreeMap$KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-eqz p1, :cond_32

    .line 3148
    iget v0, p0, Ljava/util/TreeMap$KeySpliterator;->est:I

    if-gez v0, :cond_9

    .line 3149
    invoke-virtual {p0}, Ljava/util/TreeMap$KeySpliterator;->getEstimate()I

    .line 3150
    :cond_9
    iget-object v0, p0, Ljava/util/TreeMap$KeySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    move-object v1, v0

    .local v1, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_30

    iget-object v0, p0, Ljava/util/TreeMap$KeySpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v1, v0, :cond_13

    goto :goto_30

    .line 3152
    :cond_13
    invoke-static {v1}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/TreeMap$KeySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .line 3153
    iget-object v0, v1, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3154
    iget-object v0, p0, Ljava/util/TreeMap$KeySpliterator;->tree:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/util/TreeMap;->-$$Nest$fgetmodCount(Ljava/util/TreeMap;)I

    move-result v0

    iget v2, p0, Ljava/util/TreeMap$KeySpliterator;->expectedModCount:I

    if-ne v0, v2, :cond_2a

    .line 3156
    const/4 v0, 0x1

    return v0

    .line 3155
    :cond_2a
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 3151
    :cond_30
    :goto_30
    const/4 v0, 0x0

    return v0

    .line 3147
    .end local v1    # "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_32
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 3092
    .local p0, "this":Ljava/util/TreeMap$KeySpliterator;, "Ljava/util/TreeMap$KeySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$KeySpliterator;->trySplit()Ljava/util/TreeMap$KeySpliterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist trySplit()Ljava/util/TreeMap$KeySpliterator;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$KeySpliterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3102
    .local p0, "this":Ljava/util/TreeMap$KeySpliterator;, "Ljava/util/TreeMap$KeySpliterator<TK;TV;>;"
    iget v0, p0, Ljava/util/TreeMap$KeySpliterator;->est:I

    if-gez v0, :cond_7

    .line 3103
    invoke-virtual {p0}, Ljava/util/TreeMap$KeySpliterator;->getEstimate()I

    .line 3104
    :cond_7
    iget v0, p0, Ljava/util/TreeMap$KeySpliterator;->side:I

    .line 3105
    .local v0, "d":I
    iget-object v3, p0, Ljava/util/TreeMap$KeySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .local v3, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v8, p0, Ljava/util/TreeMap$KeySpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    .line 3106
    .local v8, "f":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    const/4 v1, 0x0

    if-eqz v3, :cond_2d

    if-ne v3, v8, :cond_13

    goto :goto_2d

    .line 3107
    :cond_13
    if-nez v0, :cond_1d

    iget-object v2, p0, Ljava/util/TreeMap$KeySpliterator;->tree:Ljava/util/TreeMap;

    invoke-static {v2}, Ljava/util/TreeMap;->-$$Nest$fgetroot(Ljava/util/TreeMap;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v2

    move-object v4, v2

    goto :goto_2e

    .line 3108
    :cond_1d
    if-lez v0, :cond_23

    iget-object v2, v3, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    move-object v4, v2

    goto :goto_2e

    .line 3109
    :cond_23
    if-gez v0, :cond_2b

    if-eqz v8, :cond_2b

    iget-object v2, v8, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    move-object v4, v2

    goto :goto_2e

    .line 3110
    :cond_2b
    move-object v4, v1

    goto :goto_2e

    .line 3106
    :cond_2d
    :goto_2d
    move-object v4, v1

    .line 3110
    :goto_2e
    nop

    .line 3111
    .local v4, "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v4, :cond_58

    if-eq v4, v3, :cond_58

    if-eq v4, v8, :cond_58

    iget-object v2, p0, Ljava/util/TreeMap$KeySpliterator;->tree:Ljava/util/TreeMap;

    iget-object v5, v3, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iget-object v6, v4, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    .line 3112
    invoke-virtual {v2, v5, v6}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_58

    .line 3113
    const/4 v1, 0x1

    iput v1, p0, Ljava/util/TreeMap$KeySpliterator;->side:I

    .line 3114
    move v2, v1

    new-instance v1, Ljava/util/TreeMap$KeySpliterator;

    move v5, v2

    iget-object v2, p0, Ljava/util/TreeMap$KeySpliterator;->tree:Ljava/util/TreeMap;

    iput-object v4, p0, Ljava/util/TreeMap$KeySpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    iget v6, p0, Ljava/util/TreeMap$KeySpliterator;->est:I

    ushr-int/2addr v6, v5

    iput v6, p0, Ljava/util/TreeMap$KeySpliterator;->est:I

    iget v7, p0, Ljava/util/TreeMap$KeySpliterator;->expectedModCount:I

    const/4 v5, -0x1

    invoke-direct/range {v1 .. v7}, Ljava/util/TreeMap$KeySpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    return-object v1

    .line 3117
    :cond_58
    return-object v1
.end method
