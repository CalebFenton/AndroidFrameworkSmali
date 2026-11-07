.class Ljava/util/ReverseOrderSortedMapView$Submap;
.super Ljava/util/AbstractMap;
.source "ReverseOrderSortedMapView.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ReverseOrderSortedMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Submap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/SortedMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final blacklist head:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final blacklist tail:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/util/ReverseOrderSortedMapView;


# direct methods
.method constructor blacklist <init>(Ljava/util/ReverseOrderSortedMapView;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .param p1, "this$0"    # Ljava/util/ReverseOrderSortedMapView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)V"
        }
    .end annotation

    .line 320
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$Submap;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>.Submap;"
    .local p2, "head":Ljava/lang/Object;, "TK;"
    .local p3, "tail":Ljava/lang/Object;, "TK;"
    iput-object p1, p0, Ljava/util/ReverseOrderSortedMapView$Submap;->this$0:Ljava/util/ReverseOrderSortedMapView;

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 321
    iput-object p2, p0, Ljava/util/ReverseOrderSortedMapView$Submap;->head:Ljava/lang/Object;

    .line 322
    iput-object p3, p0, Ljava/util/ReverseOrderSortedMapView$Submap;->tail:Ljava/lang/Object;

    .line 323
    return-void
.end method


# virtual methods
.method blacklist aboveHead(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 327
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$Submap;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>.Submap;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$Submap;->head:Ljava/lang/Object;

    if-eqz v0, :cond_13

    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$Submap;->this$0:Ljava/util/ReverseOrderSortedMapView;

    iget-object v0, v0, Ljava/util/ReverseOrderSortedMapView;->cmp:Ljava/util/Comparator;

    iget-object v1, p0, Ljava/util/ReverseOrderSortedMapView$Submap;->head:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method blacklist belowTail(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 332
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$Submap;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>.Submap;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$Submap;->tail:Ljava/lang/Object;

    if-eqz v0, :cond_13

    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$Submap;->this$0:Ljava/util/ReverseOrderSortedMapView;

    iget-object v0, v0, Ljava/util/ReverseOrderSortedMapView;->cmp:Ljava/util/Comparator;

    iget-object v1, p0, Ljava/util/ReverseOrderSortedMapView$Submap;->tail:Ljava/lang/Object;

    invoke-interface {v0, p1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public whitelist test-api comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 434
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$Submap;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>.Submap;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$Submap;->this$0:Ljava/util/ReverseOrderSortedMapView;

    iget-object v0, v0, Ljava/util/ReverseOrderSortedMapView;->cmp:Ljava/util/Comparator;

    return-object v0
.end method

.method blacklist entryIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 336
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$Submap;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>.Submap;"
    new-instance v0, Ljava/util/ReverseOrderSortedMapView$Submap$1;

    invoke-direct {v0, p0}, Ljava/util/ReverseOrderSortedMapView$Submap$1;-><init>(Ljava/util/ReverseOrderSortedMapView$Submap;)V

    return-object v0
.end method

.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 397
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$Submap;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>.Submap;"
    new-instance v0, Ljava/util/ReverseOrderSortedMapView$Submap$2;

    invoke-direct {v0, p0}, Ljava/util/ReverseOrderSortedMapView$Submap$2;-><init>(Ljava/util/ReverseOrderSortedMapView$Submap;)V

    return-object v0
.end method

.method public whitelist test-api firstKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 438
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$Submap;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>.Submap;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderSortedMapView$Submap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 462
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$Submap;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>.Submap;"
    .local p1, "to":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/ReverseOrderSortedMapView$Submap;->aboveHead(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0, p1}, Ljava/util/ReverseOrderSortedMapView$Submap;->belowTail(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 463
    new-instance v0, Ljava/util/ReverseOrderSortedMapView$Submap;

    iget-object v1, p0, Ljava/util/ReverseOrderSortedMapView$Submap;->this$0:Ljava/util/ReverseOrderSortedMapView;

    iget-object v2, p0, Ljava/util/ReverseOrderSortedMapView$Submap;->head:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Ljava/util/ReverseOrderSortedMapView$Submap;-><init>(Ljava/util/ReverseOrderSortedMapView;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 465
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api lastKey()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 442
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$Submap;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>.Submap;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderSortedMapView$Submap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 443
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 445
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 446
    .local v1, "last":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 447
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_10

    .line 448
    :cond_1e
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 444
    .end local v1    # "last":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_23
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 414
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$Submap;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>.Submap;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Ljava/util/ReverseOrderSortedMapView$Submap;->aboveHead(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0, p1}, Ljava/util/ReverseOrderSortedMapView$Submap;->belowTail(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 415
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$Submap;->this$0:Ljava/util/ReverseOrderSortedMapView;

    iget-object v0, v0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 417
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 422
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$Submap;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>.Submap;"
    move-object v0, p1

    .line 423
    .local v0, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v0}, Ljava/util/ReverseOrderSortedMapView$Submap;->aboveHead(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p0, v0}, Ljava/util/ReverseOrderSortedMapView$Submap;->belowTail(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 424
    iget-object v1, p0, Ljava/util/ReverseOrderSortedMapView$Submap;->this$0:Ljava/util/ReverseOrderSortedMapView;

    iget-object v1, v1, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 426
    :cond_16
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 430
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$Submap;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>.Submap;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderSortedMapView$Submap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 452
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$Submap;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>.Submap;"
    .local p1, "from":Ljava/lang/Object;, "TK;"
    .local p2, "to":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/ReverseOrderSortedMapView$Submap;->aboveHead(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0, p1}, Ljava/util/ReverseOrderSortedMapView$Submap;->belowTail(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 453
    invoke-virtual {p0, p2}, Ljava/util/ReverseOrderSortedMapView$Submap;->aboveHead(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0, p2}, Ljava/util/ReverseOrderSortedMapView$Submap;->belowTail(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$Submap;->this$0:Ljava/util/ReverseOrderSortedMapView;

    iget-object v0, v0, Ljava/util/ReverseOrderSortedMapView;->cmp:Ljava/util/Comparator;

    .line 454
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_2a

    .line 455
    new-instance v0, Ljava/util/ReverseOrderSortedMapView$Submap;

    iget-object v1, p0, Ljava/util/ReverseOrderSortedMapView$Submap;->this$0:Ljava/util/ReverseOrderSortedMapView;

    invoke-direct {v0, v1, p1, p2}, Ljava/util/ReverseOrderSortedMapView$Submap;-><init>(Ljava/util/ReverseOrderSortedMapView;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 457
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 469
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$Submap;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>.Submap;"
    .local p1, "from":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Ljava/util/ReverseOrderSortedMapView$Submap;->aboveHead(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0, p1}, Ljava/util/ReverseOrderSortedMapView$Submap;->belowTail(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 470
    new-instance v0, Ljava/util/ReverseOrderSortedMapView$Submap;

    iget-object v1, p0, Ljava/util/ReverseOrderSortedMapView$Submap;->this$0:Ljava/util/ReverseOrderSortedMapView;

    iget-object v2, p0, Ljava/util/ReverseOrderSortedMapView$Submap;->tail:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, v2}, Ljava/util/ReverseOrderSortedMapView$Submap;-><init>(Ljava/util/ReverseOrderSortedMapView;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 472
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 393
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$Submap;, "Ljava/util/ReverseOrderSortedMapView<TK;TV;>.Submap;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderSortedMapView$Submap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/ReverseOrderSortedMapView;->toString(Ljava/util/Map;Ljava/util/Iterator;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
