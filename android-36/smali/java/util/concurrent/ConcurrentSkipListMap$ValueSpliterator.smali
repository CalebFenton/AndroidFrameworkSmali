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
        "Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator<",
        "TK;TV;>;",
        "Ljava/util/Spliterator<",
        "TV;>;"
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

    .line 3237
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p2, "row":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .local p3, "origin":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .local p4, "fence":Ljava/lang/Object;, "TK;"
    invoke-direct/range {p0 .. p6}, Ljava/util/concurrent/ConcurrentSkipListMap$CSLMSpliterator;-><init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;J)V

    .line 3238
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 3299
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator<TK;TV;>;"
    const/16 v0, 0x1110

    return v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TV;>;)V"
        }
    .end annotation

    .line 3263
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-eqz p1, :cond_27

    .line 3264
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;->comparator:Ljava/util/Comparator;

    .line 3265
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;->fence:Ljava/lang/Object;

    .line 3266
    .local v1, "f":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3267
    .local v2, "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3268
    :goto_b
    if-eqz v2, :cond_26

    .line 3270
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    move-object v4, v3

    .local v4, "k":Ljava/lang/Object;, "TK;"
    if-eqz v3, :cond_1b

    if-eqz v1, :cond_1b

    invoke-static {v0, v1, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_1b

    .line 3271
    goto :goto_26

    .line 3272
    :cond_1b
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    move-object v5, v3

    .local v5, "v":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_23

    .line 3273
    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3268
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    :cond_23
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_b

    .line 3275
    :cond_26
    :goto_26
    return-void

    .line 3263
    .end local v0    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .end local v1    # "f":Ljava/lang/Object;, "TK;"
    .end local v2    # "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_27
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TV;>;)Z"
        }
    .end annotation

    .line 3278
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-eqz p1, :cond_2e

    .line 3279
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;->comparator:Ljava/util/Comparator;

    .line 3280
    .local v0, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;->fence:Ljava/lang/Object;

    .line 3281
    .local v1, "f":Ljava/lang/Object;, "TK;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3282
    .local v2, "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :goto_8
    if-eqz v2, :cond_2a

    .line 3284
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    move-object v4, v3

    .local v4, "k":Ljava/lang/Object;, "TK;"
    if-eqz v3, :cond_19

    if-eqz v1, :cond_19

    invoke-static {v0, v1, v4}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_19

    .line 3285
    const/4 v2, 0x0

    .line 3286
    goto :goto_2a

    .line 3288
    :cond_19
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->val:Ljava/lang/Object;

    move-object v5, v3

    .local v5, "v":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_27

    .line 3289
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    iput-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3290
    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3291
    const/4 v3, 0x1

    return v3

    .line 3282
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    .end local v5    # "v":Ljava/lang/Object;, "TV;"
    :cond_27
    iget-object v2, v2, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->next:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    goto :goto_8

    .line 3294
    :cond_2a
    :goto_2a
    iput-object v2, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3295
    const/4 v3, 0x0

    return v3

    .line 3278
    .end local v0    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .end local v1    # "f":Ljava/lang/Object;, "TK;"
    .end local v2    # "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_2e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 3233
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;->trySplit()Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;

    move-result-object v0

    return-object v0
.end method

.method public blacklist trySplit()Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3242
    .local p0, "this":Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;, "Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator<TK;TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;->comparator:Ljava/util/Comparator;

    .line 3243
    .local v1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;->fence:Ljava/lang/Object;

    .line 3244
    .local v7, "f":Ljava/lang/Object;, "TK;"
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    move-object v0, v3

    .local v3, "e":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    if-eqz v0, :cond_5e

    iget-object v0, v3, Ljava/util/concurrent/ConcurrentSkipListMap$Node;->key:Ljava/lang/Object;

    move-object v8, v0

    .local v8, "ek":Ljava/lang/Object;, "TK;"
    if-eqz v0, :cond_5e

    .line 3245
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;->row:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v9, v0

    .local v9, "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :goto_11
    if-eqz v9, :cond_5e

    .line 3247
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

    .line 3249
    invoke-static {v1, v4, v8}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_58

    if-eqz v7, :cond_39

    .line 3250
    invoke-static {v1, v4, v7}, Ljava/util/concurrent/ConcurrentSkipListMap;->cpr(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_58

    .line 3251
    :cond_39
    iput-object v12, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;->current:Ljava/util/concurrent/ConcurrentSkipListMap$Node;

    .line 3252
    iget-object v2, v9, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 3253
    .local v2, "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    iget-object v0, v10, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->right:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    if-eqz v0, :cond_43

    move-object v0, v10

    goto :goto_45

    :cond_43
    iget-object v0, v10, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    :goto_45
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;->row:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    .line 3254
    iget-wide v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;->est:J

    iget-wide v13, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;->est:J

    const/4 v0, 0x2

    ushr-long/2addr v13, v0

    sub-long/2addr v5, v13

    iput-wide v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;->est:J

    .line 3255
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;

    iget-wide v5, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;->est:J

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;-><init>(Ljava/util/Comparator;Ljava/util/concurrent/ConcurrentSkipListMap$Index;Ljava/util/concurrent/ConcurrentSkipListMap$Node;Ljava/lang/Object;J)V

    return-object v0

    .line 3245
    .end local v2    # "r":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v4    # "sk":Ljava/lang/Object;, "TK;"
    .end local v10    # "s":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    .end local v11    # "b":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    .end local v12    # "n":Ljava/util/concurrent/ConcurrentSkipListMap$Node;, "Ljava/util/concurrent/ConcurrentSkipListMap$Node<TK;TV;>;"
    :cond_58
    iget-object v0, v9, Ljava/util/concurrent/ConcurrentSkipListMap$Index;->down:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentSkipListMap$ValueSpliterator;->row:Ljava/util/concurrent/ConcurrentSkipListMap$Index;

    move-object v9, v0

    goto :goto_11

    .line 3259
    .end local v8    # "ek":Ljava/lang/Object;, "TK;"
    .end local v9    # "q":Ljava/util/concurrent/ConcurrentSkipListMap$Index;, "Ljava/util/concurrent/ConcurrentSkipListMap$Index<TK;TV;>;"
    :cond_5e
    const/4 v0, 0x0

    return-object v0
.end method
