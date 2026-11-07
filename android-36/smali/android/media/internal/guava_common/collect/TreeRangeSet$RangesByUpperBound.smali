.class final Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;
.super Landroid/media/internal/guava_common/collect/AbstractNavigableMap;
.source "TreeRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable<",
        "*>;>",
        "Landroid/media/internal/guava_common/collect/AbstractNavigableMap<",
        "Landroid/media/internal/guava_common/collect/Cut<",
        "TC;>;",
        "Landroid/media/internal/guava_common/collect/Range<",
        "TC;>;>;"
    }
.end annotation


# instance fields
.field private final blacklist rangesByLowerBound:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Landroid/media/internal/guava_common/collect/Cut<",
            "TC;>;",
            "Landroid/media/internal/guava_common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field private final blacklist upperBoundWindow:Landroid/media/internal/guava_common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/Range<",
            "Landroid/media/internal/guava_common/collect/Cut<",
            "TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljava/util/NavigableMap;Landroid/media/internal/guava_common/collect/Range;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap<",
            "Landroid/media/internal/guava_common/collect/Cut<",
            "TC;>;",
            "Landroid/media/internal/guava_common/collect/Range<",
            "TC;>;>;",
            "Landroid/media/internal/guava_common/collect/Range<",
            "Landroid/media/internal/guava_common/collect/Cut<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 301
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/AbstractNavigableMap;-><init>()V

    .line 302
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    .line 303
    iput-object p2, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Landroid/media/internal/guava_common/collect/Range;

    return-void
.end method

.method static synthetic blacklist access$000(Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;)Landroid/media/internal/guava_common/collect/Range;
    .registers 1

    .line 285
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Landroid/media/internal/guava_common/collect/Range;

    return-object p0
.end method

.method private blacklist subMap(Landroid/media/internal/guava_common/collect/Range;)Ljava/util/NavigableMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/Range<",
            "Landroid/media/internal/guava_common/collect/Cut<",
            "TC;>;>;)",
            "Ljava/util/NavigableMap<",
            "Landroid/media/internal/guava_common/collect/Cut<",
            "TC;>;",
            "Landroid/media/internal/guava_common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Landroid/media/internal/guava_common/collect/Range;

    invoke-virtual {p1, v0}, Landroid/media/internal/guava_common/collect/Range;->isConnected(Landroid/media/internal/guava_common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 308
    new-instance v0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Landroid/media/internal/guava_common/collect/Range;

    invoke-virtual {p1, p0}, Landroid/media/internal/guava_common/collect/Range;->intersection(Landroid/media/internal/guava_common/collect/Range;)Landroid/media/internal/guava_common/collect/Range;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;-><init>(Ljava/util/NavigableMap;Landroid/media/internal/guava_common/collect/Range;)V

    return-object v0

    .line 310
    :cond_16
    invoke-static {}, Landroid/media/internal/guava_common/collect/ImmutableSortedMap;->of()Landroid/media/internal/guava_common/collect/ImmutableSortedMap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist test-api comparator()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Landroid/media/internal/guava_common/collect/Cut<",
            "TC;>;>;"
        }
    .end annotation

    .line 335
    invoke-static {}, Landroid/media/internal/guava_common/collect/Ordering;->natural()Landroid/media/internal/guava_common/collect/Ordering;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 340
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->get(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/Range;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method blacklist descendingEntryIterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Landroid/media/internal/guava_common/collect/Cut<",
            "TC;>;",
            "Landroid/media/internal/guava_common/collect/Range<",
            "TC;>;>;>;"
        }
    .end annotation

    .line 408
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Landroid/media/internal/guava_common/collect/Range;

    invoke-virtual {v0}, Landroid/media/internal/guava_common/collect/Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 409
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Landroid/media/internal/guava_common/collect/Range;

    .line 411
    invoke-virtual {v1}, Landroid/media/internal/guava_common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Landroid/media/internal/guava_common/collect/Cut;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 412
    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    .line 413
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    goto :goto_2a

    .line 415
    :cond_20
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 417
    :goto_2a
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Landroid/media/internal/guava_common/collect/Iterators;->peekingIterator(Ljava/util/Iterator;)Landroid/media/internal/guava_common/collect/PeekingIterator;

    move-result-object v0

    .line 418
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Landroid/media/internal/guava_common/collect/Range;

    iget-object v1, v1, Landroid/media/internal/guava_common/collect/Range;->upperBound:Landroid/media/internal/guava_common/collect/Cut;

    .line 419
    invoke-interface {v0}, Landroid/media/internal/guava_common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/internal/guava_common/collect/Range;

    iget-object v2, v2, Landroid/media/internal/guava_common/collect/Range;->upperBound:Landroid/media/internal/guava_common/collect/Cut;

    invoke-virtual {v1, v2}, Landroid/media/internal/guava_common/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 420
    invoke-interface {v0}, Landroid/media/internal/guava_common/collect/PeekingIterator;->next()Ljava/lang/Object;

    .line 422
    :cond_4d
    new-instance v1, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound$2;

    invoke-direct {v1, p0, v0}, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound$2;-><init>(Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;Landroid/media/internal/guava_common/collect/PeekingIterator;)V

    return-object v1
.end method

.method blacklist entryIterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Landroid/media/internal/guava_common/collect/Cut<",
            "TC;>;",
            "Landroid/media/internal/guava_common/collect/Range<",
            "TC;>;>;>;"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Landroid/media/internal/guava_common/collect/Range;

    invoke-virtual {v0}, Landroid/media/internal/guava_common/collect/Range;->hasLowerBound()Z

    move-result v0

    if-nez v0, :cond_13

    .line 372
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_6c

    .line 374
    :cond_13
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Landroid/media/internal/guava_common/collect/Range;

    .line 375
    invoke-virtual {v1}, Landroid/media/internal/guava_common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Landroid/media/internal/guava_common/collect/Cut;

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    if-nez v0, :cond_2e

    .line 377
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_6c

    .line 378
    :cond_2e
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Landroid/media/internal/guava_common/collect/Range;

    iget-object v1, v1, Landroid/media/internal/guava_common/collect/Range;->lowerBound:Landroid/media/internal/guava_common/collect/Cut;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/internal/guava_common/collect/Range;

    iget-object v2, v2, Landroid/media/internal/guava_common/collect/Range;->upperBound:Landroid/media/internal/guava_common/collect/Cut;

    invoke-virtual {v1, v2}, Landroid/media/internal/guava_common/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_56

    .line 379
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/internal/guava_common/collect/Cut;

    invoke-interface {v1, v0, v2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_6c

    .line 381
    :cond_56
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Landroid/media/internal/guava_common/collect/Range;

    .line 383
    invoke-virtual {v1}, Landroid/media/internal/guava_common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Landroid/media/internal/guava_common/collect/Cut;

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 384
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 385
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 388
    :goto_6c
    new-instance v1, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound$1;

    invoke-direct {v1, p0, v0}, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound$1;-><init>(Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public blacklist get(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/Range;
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroid/media/internal/guava_common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 346
    instance-of v0, p1, Landroid/media/internal/guava_common/collect/Cut;

    const/4 v1, 0x0

    if-eqz v0, :cond_2d

    .line 349
    :try_start_5
    check-cast p1, Landroid/media/internal/guava_common/collect/Cut;

    .line 350
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Landroid/media/internal/guava_common/collect/Range;

    invoke-virtual {v0, p1}, Landroid/media/internal/guava_common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_10

    return-object v1

    .line 353
    :cond_10
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {p0, p1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    if-eqz p0, :cond_2d

    .line 354
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/internal/guava_common/collect/Range;

    iget-object v0, v0, Landroid/media/internal/guava_common/collect/Range;->upperBound:Landroid/media/internal/guava_common/collect/Cut;

    invoke-virtual {v0, p1}, Landroid/media/internal/guava_common/collect/Cut;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 355
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/internal/guava_common/collect/Range;
    :try_end_2c
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_2c} :catch_2d

    return-object p0

    :catch_2d
    :cond_2d
    return-object v1
.end method

.method public bridge synthetic whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 284
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->get(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/Range;

    move-result-object p0

    return-object p0
.end method

.method public blacklist headMap(Landroid/media/internal/guava_common/collect/Cut;Z)Ljava/util/NavigableMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/Cut<",
            "TC;>;Z)",
            "Ljava/util/NavigableMap<",
            "Landroid/media/internal/guava_common/collect/Cut<",
            "TC;>;",
            "Landroid/media/internal/guava_common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 325
    invoke-static {p2}, Landroid/media/internal/guava_common/collect/BoundType;->forBoolean(Z)Landroid/media/internal/guava_common/collect/BoundType;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/media/internal/guava_common/collect/Range;->upTo(Ljava/lang/Comparable;Landroid/media/internal/guava_common/collect/BoundType;)Landroid/media/internal/guava_common/collect/Range;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->subMap(Landroid/media/internal/guava_common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 284
    check-cast p1, Landroid/media/internal/guava_common/collect/Cut;

    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->headMap(Landroid/media/internal/guava_common/collect/Cut;Z)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 3

    .line 447
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Landroid/media/internal/guava_common/collect/Range;

    invoke-static {}, Landroid/media/internal/guava_common/collect/Range;->all()Landroid/media/internal/guava_common/collect/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/internal/guava_common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 448
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {p0}, Ljava/util/NavigableMap;->isEmpty()Z

    move-result p0

    return p0

    .line 449
    :cond_13
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->entryIterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api size()I
    .registers 3

    .line 439
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->upperBoundWindow:Landroid/media/internal/guava_common/collect/Range;

    invoke-static {}, Landroid/media/internal/guava_common/collect/Range;->all()Landroid/media/internal/guava_common/collect/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/internal/guava_common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 440
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->rangesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {p0}, Ljava/util/NavigableMap;->size()I

    move-result p0

    return p0

    .line 442
    :cond_13
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->entryIterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result p0

    return p0
.end method

.method public blacklist subMap(Landroid/media/internal/guava_common/collect/Cut;ZLandroid/media/internal/guava_common/collect/Cut;Z)Ljava/util/NavigableMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/Cut<",
            "TC;>;Z",
            "Landroid/media/internal/guava_common/collect/Cut<",
            "TC;>;Z)",
            "Ljava/util/NavigableMap<",
            "Landroid/media/internal/guava_common/collect/Cut<",
            "TC;>;",
            "Landroid/media/internal/guava_common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 319
    invoke-static {p2}, Landroid/media/internal/guava_common/collect/BoundType;->forBoolean(Z)Landroid/media/internal/guava_common/collect/BoundType;

    move-result-object p2

    .line 320
    invoke-static {p4}, Landroid/media/internal/guava_common/collect/BoundType;->forBoolean(Z)Landroid/media/internal/guava_common/collect/BoundType;

    move-result-object p4

    .line 318
    invoke-static {p1, p2, p3, p4}, Landroid/media/internal/guava_common/collect/Range;->range(Ljava/lang/Comparable;Landroid/media/internal/guava_common/collect/BoundType;Ljava/lang/Comparable;Landroid/media/internal/guava_common/collect/BoundType;)Landroid/media/internal/guava_common/collect/Range;

    move-result-object p1

    .line 317
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->subMap(Landroid/media/internal/guava_common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 284
    check-cast p1, Landroid/media/internal/guava_common/collect/Cut;

    check-cast p3, Landroid/media/internal/guava_common/collect/Cut;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->subMap(Landroid/media/internal/guava_common/collect/Cut;ZLandroid/media/internal/guava_common/collect/Cut;Z)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public blacklist tailMap(Landroid/media/internal/guava_common/collect/Cut;Z)Ljava/util/NavigableMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/Cut<",
            "TC;>;Z)",
            "Ljava/util/NavigableMap<",
            "Landroid/media/internal/guava_common/collect/Cut<",
            "TC;>;",
            "Landroid/media/internal/guava_common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 330
    invoke-static {p2}, Landroid/media/internal/guava_common/collect/BoundType;->forBoolean(Z)Landroid/media/internal/guava_common/collect/BoundType;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/media/internal/guava_common/collect/Range;->downTo(Ljava/lang/Comparable;Landroid/media/internal/guava_common/collect/BoundType;)Landroid/media/internal/guava_common/collect/Range;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->subMap(Landroid/media/internal/guava_common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 284
    check-cast p1, Landroid/media/internal/guava_common/collect/Cut;

    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/TreeRangeSet$RangesByUpperBound;->tailMap(Landroid/media/internal/guava_common/collect/Cut;Z)Ljava/util/NavigableMap;

    move-result-object p0

    return-object p0
.end method
