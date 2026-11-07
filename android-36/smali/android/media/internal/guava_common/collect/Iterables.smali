.class public final Landroid/media/internal/guava_common/collect/Iterables;
.super Ljava/lang/Object;
.source "Iterables.java"


# direct methods
.method private static blacklist castOrCopyToCollection(Ljava/lang/Iterable;)Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 357
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_7

    .line 358
    check-cast p0, Ljava/util/Collection;

    return-object p0

    .line 359
    :cond_7
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;TT;)TT;"
        }
    .end annotation

    .line 836
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/Iterators;->getNext(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static blacklist toArray(Ljava/lang/Iterable;)[Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 347
    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Iterables;->castOrCopyToCollection(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
