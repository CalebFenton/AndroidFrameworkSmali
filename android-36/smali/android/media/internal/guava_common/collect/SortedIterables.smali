.class final Landroid/media/internal/guava_common/collect/SortedIterables;
.super Ljava/lang/Object;
.source "SortedIterables.java"


# direct methods
.method public static blacklist comparator(Ljava/util/SortedSet;)Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;)",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 56
    invoke-interface {p0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object p0

    if-nez p0, :cond_a

    .line 58
    invoke-static {}, Landroid/media/internal/guava_common/collect/Ordering;->natural()Landroid/media/internal/guava_common/collect/Ordering;

    move-result-object p0

    :cond_a
    return-object p0
.end method

.method public static blacklist hasSameComparator(Ljava/util/Comparator;Ljava/lang/Iterable;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "*>;",
            "Ljava/lang/Iterable<",
            "*>;)Z"
        }
    .end annotation

    .line 39
    invoke-static {p0}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    instance-of v0, p1, Ljava/util/SortedSet;

    if-eqz v0, :cond_11

    .line 43
    check-cast p1, Ljava/util/SortedSet;

    invoke-static {p1}, Landroid/media/internal/guava_common/collect/SortedIterables;->comparator(Ljava/util/SortedSet;)Ljava/util/Comparator;

    move-result-object p1

    goto :goto_1b

    .line 44
    :cond_11
    instance-of v0, p1, Landroid/media/internal/guava_common/collect/SortedIterable;

    if-eqz v0, :cond_20

    .line 45
    check-cast p1, Landroid/media/internal/guava_common/collect/SortedIterable;

    invoke-interface {p1}, Landroid/media/internal/guava_common/collect/SortedIterable;->comparator()Ljava/util/Comparator;

    move-result-object p1

    .line 49
    :goto_1b
    invoke-interface {p0, p1}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method
