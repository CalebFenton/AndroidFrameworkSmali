.class final Ljava/util/IdentityHashMap$KeySpliterator;
.super Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;
.source "IdentityHashMap.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap;
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
        "Ljava/util/IdentityHashMap$IdentityHashMapSpliterator",
        "<TK;TV;>;",
        "Ljava/util/Spliterator",
        "<TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/IdentityHashMap;IIII)V
    .locals 0
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "est"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/IdentityHashMap",
            "<TK;TV;>;IIII)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1423
    .local p0, "this":Ljava/util/IdentityHashMap$KeySpliterator;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    .local p1, "map":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    #@3
    .line 1422
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$KeySpliterator;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 1471
    iget v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->fence:I

    #@3
    if-ltz v1, :cond_0

    #@5
    iget v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->est:I

    #@7
    iget-object v2, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    #@9
    invoke-static {v2}, Ljava/util/IdentityHashMap;->-get1(Ljava/util/IdentityHashMap;)I

    #@c
    move-result v2

    #@d
    if-ne v1, v2, :cond_1

    #@f
    :cond_0
    const/16 v0, 0x40

    #@11
    :cond_1
    or-int/lit8 v0, v0, 0x1

    #@13
    return v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TK;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1435
    .local p0, "this":Ljava/util/IdentityHashMap$KeySpliterator;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-nez p1, :cond_0

    #@2
    .line 1436
    new-instance v5, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v5

    #@8
    .line 1439
    :cond_0
    iget-object v4, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    #@a
    .local v4, "m":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    if-eqz v4, :cond_3

    #@c
    invoke-static {v4}, Ljava/util/IdentityHashMap;->-get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    .local v0, "a":[Ljava/lang/Object;
    if-eqz v0, :cond_3

    #@12
    .line 1440
    iget v2, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    #@14
    .local v2, "i":I
    if-ltz v2, :cond_3

    #@16
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->getFence()I

    #@19
    move-result v1

    #@1a
    .local v1, "hi":I
    iput v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    #@1c
    array-length v5, v0

    #@1d
    if-gt v1, v5, :cond_3

    #@1f
    .line 1441
    :goto_0
    if-ge v2, v1, :cond_2

    #@21
    .line 1442
    aget-object v3, v0, v2

    #@23
    .local v3, "key":Ljava/lang/Object;
    if-eqz v3, :cond_1

    #@25
    .line 1443
    invoke-static {v3}, Ljava/util/IdentityHashMap;->-wrap4(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v5

    #@29
    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@2c
    .line 1441
    :cond_1
    add-int/lit8 v2, v2, 0x2

    #@2e
    goto :goto_0

    #@2f
    .line 1445
    .end local v3    # "key":Ljava/lang/Object;
    :cond_2
    invoke-static {v4}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    #@32
    move-result v5

    #@33
    iget v6, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->expectedModCount:I

    #@35
    if-ne v5, v6, :cond_3

    #@37
    .line 1446
    return-void

    #@38
    .line 1448
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "hi":I
    .end local v2    # "i":I
    :cond_3
    new-instance v5, Ljava/util/ConcurrentModificationException;

    #@3a
    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@3d
    throw v5
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TK;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 1453
    .local p0, "this":Ljava/util/IdentityHashMap$KeySpliterator;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-nez p1, :cond_0

    #@2
    .line 1454
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v3

    #@8
    .line 1455
    :cond_0
    iget-object v3, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    #@a
    invoke-static {v3}, Ljava/util/IdentityHashMap;->-get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    .line 1456
    .local v0, "a":[Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->getFence()I

    #@11
    move-result v1

    #@12
    .line 1457
    .local v1, "hi":I
    :cond_1
    iget v3, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    #@14
    if-ge v3, v1, :cond_3

    #@16
    .line 1458
    iget v3, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    #@18
    aget-object v2, v0, v3

    #@1a
    .line 1459
    .local v2, "key":Ljava/lang/Object;
    iget v3, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    #@1c
    add-int/lit8 v3, v3, 0x2

    #@1e
    iput v3, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    #@20
    .line 1460
    if-eqz v2, :cond_1

    #@22
    .line 1461
    invoke-static {v2}, Ljava/util/IdentityHashMap;->-wrap4(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v3

    #@26
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@29
    .line 1462
    iget-object v3, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    #@2b
    invoke-static {v3}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    #@2e
    move-result v3

    #@2f
    iget v4, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->expectedModCount:I

    #@31
    if-eq v3, v4, :cond_2

    #@33
    .line 1463
    new-instance v3, Ljava/util/ConcurrentModificationException;

    #@35
    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@38
    throw v3

    #@39
    .line 1464
    :cond_2
    const/4 v3, 0x1

    #@3a
    return v3

    #@3b
    .line 1467
    .end local v2    # "key":Ljava/lang/Object;
    :cond_3
    const/4 v3, 0x0

    #@3c
    return v3
.end method

.method public trySplit()Ljava/util/IdentityHashMap$KeySpliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/IdentityHashMap$KeySpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1427
    .local p0, "this":Ljava/util/IdentityHashMap$KeySpliterator;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->getFence()I

    #@3
    move-result v6

    #@4
    .local v6, "hi":I
    iget v2, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    #@6
    .local v2, "lo":I
    add-int v0, v2, v6

    #@8
    ushr-int/lit8 v0, v0, 0x1

    #@a
    and-int/lit8 v3, v0, -0x2

    #@c
    .line 1428
    .local v3, "mid":I
    if-lt v2, v3, :cond_0

    #@e
    const/4 v0, 0x0

    #@f
    :goto_0
    return-object v0

    #@10
    .line 1429
    :cond_0
    new-instance v0, Ljava/util/IdentityHashMap$KeySpliterator;

    #@12
    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    #@14
    iput v3, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    #@16
    iget v4, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->est:I

    #@18
    ushr-int/lit8 v4, v4, 0x1

    #@1a
    iput v4, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->est:I

    #@1c
    .line 1430
    iget v5, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->expectedModCount:I

    #@1e
    .line 1429
    invoke-direct/range {v0 .. v5}, Ljava/util/IdentityHashMap$KeySpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    #@21
    goto :goto_0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 1426
    .local p0, "this":Ljava/util/IdentityHashMap$KeySpliterator;, "Ljava/util/IdentityHashMap<TK;TV;>.KeySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$KeySpliterator;->trySplit()Ljava/util/IdentityHashMap$KeySpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
