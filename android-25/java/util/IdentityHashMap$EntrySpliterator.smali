.class final Ljava/util/IdentityHashMap$EntrySpliterator;
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
    name = "EntrySpliterator"
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
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
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
    .line 1539
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySpliterator;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
    .local p1, "m":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    #@3
    .line 1538
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 3

    #@0
    .prologue
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySpliterator;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 1596
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
    .locals 9
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
    .line 1550
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySpliterator;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez p1, :cond_0

    #@2
    .line 1551
    new-instance v7, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v7

    #@8
    .line 1554
    :cond_0
    iget-object v5, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    #@a
    .local v5, "m":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    if-eqz v5, :cond_3

    #@c
    invoke-static {v5}, Ljava/util/IdentityHashMap;->-get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    .local v0, "a":[Ljava/lang/Object;
    if-eqz v0, :cond_3

    #@12
    .line 1555
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
    array-length v7, v0

    #@1d
    if-gt v1, v7, :cond_3

    #@1f
    .line 1556
    :goto_0
    if-ge v2, v1, :cond_2

    #@21
    .line 1557
    aget-object v4, v0, v2

    #@23
    .line 1558
    .local v4, "key":Ljava/lang/Object;
    if-eqz v4, :cond_1

    #@25
    .line 1560
    invoke-static {v4}, Ljava/util/IdentityHashMap;->-wrap4(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v3

    #@29
    .line 1561
    .local v3, "k":Ljava/lang/Object;, "TK;"
    add-int/lit8 v7, v2, 0x1

    #@2b
    aget-object v6, v0, v7

    #@2d
    .line 1563
    .local v6, "v":Ljava/lang/Object;, "TV;"
    new-instance v7, Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@2f
    invoke-direct {v7, v3, v6}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@32
    .line 1562
    invoke-interface {p1, v7}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@35
    .line 1556
    .end local v3    # "k":Ljava/lang/Object;, "TK;"
    .end local v6    # "v":Ljava/lang/Object;, "TV;"
    :cond_1
    add-int/lit8 v2, v2, 0x2

    #@37
    goto :goto_0

    #@38
    .line 1567
    .end local v4    # "key":Ljava/lang/Object;
    :cond_2
    invoke-static {v5}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    #@3b
    move-result v7

    #@3c
    iget v8, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->expectedModCount:I

    #@3e
    if-ne v7, v8, :cond_3

    #@40
    .line 1568
    return-void

    #@41
    .line 1570
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "hi":I
    .end local v2    # "i":I
    :cond_3
    new-instance v7, Ljava/util/ConcurrentModificationException;

    #@43
    invoke-direct {v7}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@46
    throw v7
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 7
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
    .line 1574
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySpliterator;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    if-nez p1, :cond_0

    #@2
    .line 1575
    new-instance v5, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v5

    #@8
    .line 1576
    :cond_0
    iget-object v5, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    #@a
    invoke-static {v5}, Ljava/util/IdentityHashMap;->-get2(Ljava/util/IdentityHashMap;)[Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    .line 1577
    .local v0, "a":[Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->getFence()I

    #@11
    move-result v1

    #@12
    .line 1578
    .local v1, "hi":I
    :cond_1
    iget v5, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    #@14
    if-ge v5, v1, :cond_3

    #@16
    .line 1579
    iget v5, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    #@18
    aget-object v3, v0, v5

    #@1a
    .line 1580
    .local v3, "key":Ljava/lang/Object;
    iget v5, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    #@1c
    add-int/lit8 v5, v5, 0x1

    #@1e
    aget-object v4, v0, v5

    #@20
    .line 1581
    .local v4, "v":Ljava/lang/Object;, "TV;"
    iget v5, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    #@22
    add-int/lit8 v5, v5, 0x2

    #@24
    iput v5, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->index:I

    #@26
    .line 1582
    if-eqz v3, :cond_1

    #@28
    .line 1584
    invoke-static {v3}, Ljava/util/IdentityHashMap;->-wrap4(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v2

    #@2c
    .line 1586
    .local v2, "k":Ljava/lang/Object;, "TK;"
    new-instance v5, Ljava/util/AbstractMap$SimpleImmutableEntry;

    #@2e
    invoke-direct {v5, v2, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    #@31
    .line 1585
    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@34
    .line 1587
    iget-object v5, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->map:Ljava/util/IdentityHashMap;

    #@36
    invoke-static {v5}, Ljava/util/IdentityHashMap;->-get0(Ljava/util/IdentityHashMap;)I

    #@39
    move-result v5

    #@3a
    iget v6, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->expectedModCount:I

    #@3c
    if-eq v5, v6, :cond_2

    #@3e
    .line 1588
    new-instance v5, Ljava/util/ConcurrentModificationException;

    #@40
    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    #@43
    throw v5

    #@44
    .line 1589
    :cond_2
    const/4 v5, 0x1

    #@45
    return v5

    #@46
    .line 1592
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "v":Ljava/lang/Object;, "TV;"
    :cond_3
    const/4 v5, 0x0

    #@47
    return v5
.end method

.method public trySplit()Ljava/util/IdentityHashMap$EntrySpliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/IdentityHashMap$EntrySpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 1543
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySpliterator;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
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
    .line 1544
    .local v3, "mid":I
    if-lt v2, v3, :cond_0

    #@e
    const/4 v0, 0x0

    #@f
    :goto_0
    return-object v0

    #@10
    .line 1545
    :cond_0
    new-instance v0, Ljava/util/IdentityHashMap$EntrySpliterator;

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
    .line 1546
    iget v5, p0, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;->expectedModCount:I

    #@1e
    .line 1545
    invoke-direct/range {v0 .. v5}, Ljava/util/IdentityHashMap$EntrySpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    #@21
    goto :goto_0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 1542
    .local p0, "this":Ljava/util/IdentityHashMap$EntrySpliterator;, "Ljava/util/IdentityHashMap<TK;TV;>.EntrySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$EntrySpliterator;->trySplit()Ljava/util/IdentityHashMap$EntrySpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
