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
        "Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator<",
        "TK;TV;>;",
        "Ljava/util/Spliterator<",
        "TK;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;J)V
    .registers 7
    .param p5, "est"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Index<",
            "TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentSkipListMap$Node<",
            "TK;TV;>;TK;J)V"
        }
    .end annotation

    .line 3147
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p2, "row":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local p3, "origin":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local p4, "fence":Ljava/lang/Object;, "TK;"
    invoke-direct/range {p0 .. p6}, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;-><init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;J)V

    .line 3148
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 3209
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator<TK;TV;>;"
    const/16 v0, 0x1115

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

    .line 3173
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-eqz p1, :cond_26

    .line 3174
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->comparator:Ljava/util/Comparator;

    .line 3175
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->fence:Ljava/lang/Object;

    .line 3176
    .local v1, "f":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3177
    .local v2, "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3178
    :goto_b
    if-eqz v2, :cond_25

    .line 3180
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    move-object v4, v3

    .local v4, "k":Ljava/lang/Object;, "TK;"
    if-eqz v3, :cond_1b

    if-eqz v1, :cond_1b

    invoke-static {v0, v1, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_1b

    .line 3181
    goto :goto_25

    .line 3182
    :cond_1b
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    if-eqz v3, :cond_22

    .line 3183
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3178
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    :cond_22
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_b

    .line 3185
    :cond_25
    :goto_25
    return-void

    .line 3173
    .end local v0    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .end local v1    # "f":Ljava/lang/Object;, "TK;"
    .end local v2    # "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_26
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

    .line 3215
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TK;>;)Z"
        }
    .end annotation

    .line 3188
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-eqz p1, :cond_2d

    .line 3189
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->comparator:Ljava/util/Comparator;

    .line 3190
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->fence:Ljava/lang/Object;

    .line 3191
    .local v1, "f":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3192
    .local v2, "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_8
    if-eqz v2, :cond_29

    .line 3194
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    move-object v4, v3

    .local v4, "k":Ljava/lang/Object;, "TK;"
    if-eqz v3, :cond_19

    if-eqz v1, :cond_19

    invoke-static {v0, v1, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_19

    .line 3195
    const/4 v2, 0x0

    .line 3196
    goto :goto_29

    .line 3198
    :cond_19
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    if-eqz v3, :cond_26

    .line 3199
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3200
    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3201
    const/4 v3, 0x1

    return v3

    .line 3192
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    :cond_26
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_8

    .line 3204
    :cond_29
    :goto_29
    iput-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3205
    const/4 v3, 0x0

    return v3

    .line 3188
    .end local v0    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .end local v1    # "f":Ljava/lang/Object;, "TK;"
    .end local v2    # "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_2d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 3143
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->trySplit()Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist trySplit()Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3152
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator<TK;TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->comparator:Ljava/util/Comparator;

    .line 3153
    .local v1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->fence:Ljava/lang/Object;

    .line 3154
    .local v7, "f":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v0, v3

    .local v3, "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v0, :cond_5e

    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    move-object v8, v0

    .local v8, "ek":Ljava/lang/Object;, "TK;"
    if-eqz v0, :cond_5e

    .line 3155
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->row:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v9, v0

    .local v9, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_11
    if-eqz v9, :cond_5e

    .line 3157
    iget-object v0, v9, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v10, v0

    .local v10, "s":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    if-eqz v0, :cond_58

    iget-object v0, v10, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->node:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v11, v0

    .local v11, "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v0, :cond_58

    iget-object v0, v11, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v12, v0

    .local v12, "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v0, :cond_58

    iget-object v0, v12, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    if-eqz v0, :cond_58

    iget-object v4, v12, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    move-object v0, v4

    .local v4, "sk":Ljava/lang/Object;, "TK;"
    if-eqz v0, :cond_58

    .line 3159
    invoke-static {v1, v4, v8}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_58

    if-eqz v7, :cond_39

    .line 3160
    invoke-static {v1, v4, v7}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_58

    .line 3161
    :cond_39
    iput-object v12, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3162
    iget-object v2, v9, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 3163
    .local v2, "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget-object v0, v10, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-eqz v0, :cond_43

    move-object v0, v10

    goto :goto_45

    :cond_43
    iget-object v0, v10, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    :goto_45
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->row:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 3164
    iget-wide v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->est:J

    iget-wide v13, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->est:J

    const/4 v0, 0x2

    ushr-long/2addr v13, v0

    sub-long/2addr v5, v13

    iput-wide v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->est:J

    .line 3165
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;

    iget-wide v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->est:J

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;-><init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;J)V

    return-object v0

    .line 3155
    .end local v2    # "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v4    # "sk":Ljava/lang/Object;, "TK;"
    .end local v10    # "s":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v11    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v12    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_58
    iget-object v0, v9, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$KeySpliterator;->row:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v9, v0

    goto :goto_11

    .line 3169
    .end local v8    # "ek":Ljava/lang/Object;, "TK;"
    .end local v9    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_5e
    const/4 v0, 0x0

    return-object v0
.end method
