.class final Ljava/util/IdentityHashMap$ValueSpliterator;
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
    name = "ValueSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/IdentityHashMap$IdentityHashMapSpliterator<",
        "TK;TV;>;",
        "Ljava/util/Spliterator<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/IdentityHashMap;IIII)V
    .registers 6
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .param p4, "est"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/IdentityHashMap<",
            "TK;TV;>;IIII)V"
        }
    .end annotation

    .line 1545
    .local p0, "this":Ljava/util/IdentityHashMap$ValueSpliterator;, "Ljava/util/IdentityHashMap$ValueSpliterator<TK;TV;>;"
    .local p1, "m":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    invoke-direct/range {p0 .. p5}, Ljava/util/IdentityHashMap$IdentityHashMapSpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    .line 1546
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 3

    .line 1594
    .local p0, "this":Ljava/util/IdentityHashMap$ValueSpliterator;, "Ljava/util/IdentityHashMap$ValueSpliterator<TK;TV;>;"
    iget v0, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->fence:I

    if-ltz v0, :cond_f

    iget v0, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->est:I

    iget-object v1, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->map:Ljava/util/IdentityHashMap;

    iget v1, v1, Ljava/util/IdentityHashMap;->size:I

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_11

    :cond_f
    :goto_f
    const/16 v0, 0x40

    :goto_11
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

    .line 1556
    .local p0, "this":Ljava/util/IdentityHashMap$ValueSpliterator;, "Ljava/util/IdentityHashMap$ValueSpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-eqz p1, :cond_38

    .line 1560
    iget-object v0, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->map:Ljava/util/IdentityHashMap;

    move-object v1, v0

    .local v1, "m":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    if-eqz v0, :cond_32

    iget-object v0, v1, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    move-object v2, v0

    .local v2, "a":[Ljava/lang/Object;
    if-eqz v0, :cond_32

    iget v0, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->index:I

    move v3, v0

    .local v3, "i":I
    if-ltz v0, :cond_32

    .line 1561
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$ValueSpliterator;->getFence()I

    move-result v0

    move v4, v0

    .local v4, "hi":I
    iput v0, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->index:I

    array-length v5, v2

    if-gt v0, v5, :cond_32

    .line 1562
    :goto_1b
    if-ge v3, v4, :cond_2b

    .line 1563
    aget-object v0, v2, v3

    if-eqz v0, :cond_28

    .line 1564
    add-int/lit8 v0, v3, 0x1

    aget-object v0, v2, v0

    .line 1565
    .local v0, "v":Ljava/lang/Object;, "TV;"
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1562
    .end local v0    # "v":Ljava/lang/Object;, "TV;"
    :cond_28
    add-int/lit8 v3, v3, 0x2

    goto :goto_1b

    .line 1568
    :cond_2b
    iget v0, v1, Ljava/util/IdentityHashMap;->modCount:I

    iget v5, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->expectedModCount:I

    if-ne v0, v5, :cond_32

    .line 1569
    return-void

    .line 1571
    .end local v2    # "a":[Ljava/lang/Object;
    .end local v3    # "i":I
    .end local v4    # "hi":I
    :cond_32
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 1557
    .end local v1    # "m":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<TK;TV;>;"
    :cond_38
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/Consumer;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TV;>;)Z"
        }
    .end annotation

    .line 1575
    .local p0, "this":Ljava/util/IdentityHashMap$ValueSpliterator;, "Ljava/util/IdentityHashMap$ValueSpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TV;>;"
    if-eqz p1, :cond_35

    .line 1577
    iget-object v0, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->map:Ljava/util/IdentityHashMap;

    iget-object v0, v0, Ljava/util/IdentityHashMap;->table:[Ljava/lang/Object;

    .line 1578
    .local v0, "a":[Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$ValueSpliterator;->getFence()I

    move-result v1

    .line 1579
    .local v1, "hi":I
    :goto_a
    iget v2, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->index:I

    if-ge v2, v1, :cond_33

    .line 1580
    iget v2, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->index:I

    aget-object v2, v0, v2

    .line 1581
    .local v2, "key":Ljava/lang/Object;
    iget v3, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->index:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    aget-object v3, v0, v3

    .line 1582
    .local v3, "v":Ljava/lang/Object;, "TV;"
    iget v5, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->index:I

    add-int/lit8 v5, v5, 0x2

    iput v5, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->index:I

    .line 1583
    if-eqz v2, :cond_32

    .line 1584
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1585
    iget-object v5, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->map:Ljava/util/IdentityHashMap;

    iget v5, v5, Ljava/util/IdentityHashMap;->modCount:I

    iget v6, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->expectedModCount:I

    if-ne v5, v6, :cond_2c

    .line 1587
    return v4

    .line 1586
    :cond_2c
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 1589
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    :cond_32
    goto :goto_a

    .line 1590
    :cond_33
    const/4 v2, 0x0

    return v2

    .line 1576
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "hi":I
    :cond_35
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist trySplit()Ljava/util/IdentityHashMap$ValueSpliterator;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/IdentityHashMap$ValueSpliterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1549
    .local p0, "this":Ljava/util/IdentityHashMap$ValueSpliterator;, "Ljava/util/IdentityHashMap$ValueSpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$ValueSpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v3, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->index:I

    .local v3, "lo":I
    add-int v1, v3, v0

    ushr-int/lit8 v1, v1, 0x1

    and-int/lit8 v4, v1, -0x2

    .line 1550
    .local v4, "mid":I
    if-lt v3, v4, :cond_10

    const/4 v1, 0x0

    goto :goto_21

    .line 1551
    :cond_10
    new-instance v1, Ljava/util/IdentityHashMap$ValueSpliterator;

    iget-object v2, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->map:Ljava/util/IdentityHashMap;

    iput v4, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->index:I

    iget v5, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->est:I

    ushr-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->est:I

    iget v6, p0, Ljava/util/IdentityHashMap$ValueSpliterator;->expectedModCount:I

    invoke-direct/range {v1 .. v6}, Ljava/util/IdentityHashMap$ValueSpliterator;-><init>(Ljava/util/IdentityHashMap;IIII)V

    .line 1550
    :goto_21
    return-object v1
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 1540
    .local p0, "this":Ljava/util/IdentityHashMap$ValueSpliterator;, "Ljava/util/IdentityHashMap$ValueSpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$ValueSpliterator;->trySplit()Ljava/util/IdentityHashMap$ValueSpliterator;

    move-result-object v0

    return-object v0
.end method
