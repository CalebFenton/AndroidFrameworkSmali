.class public abstract Landroid/media/internal/guava_common/collect/Ordering;
.super Ljava/lang/Object;
.source "Ordering.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/collect/Ordering$ArbitraryOrdering;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist from(Ljava/util/Comparator;)Landroid/media/internal/guava_common/collect/Ordering;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Landroid/media/internal/guava_common/collect/Ordering<",
            "TT;>;"
        }
    .end annotation

    .line 189
    instance-of v0, p0, Landroid/media/internal/guava_common/collect/Ordering;

    if-eqz v0, :cond_7

    .line 190
    check-cast p0, Landroid/media/internal/guava_common/collect/Ordering;

    return-object p0

    .line 191
    :cond_7
    new-instance v0, Landroid/media/internal/guava_common/collect/ComparatorOrdering;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/ComparatorOrdering;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static blacklist natural()Landroid/media/internal/guava_common/collect/Ordering;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Landroid/media/internal/guava_common/collect/Ordering<",
            "TC;>;"
        }
    .end annotation

    .line 167
    sget-object v0, Landroid/media/internal/guava_common/collect/NaturalOrdering;->INSTANCE:Landroid/media/internal/guava_common/collect/NaturalOrdering;

    return-object v0
.end method


# virtual methods
.method public abstract whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation
.end method

.method public blacklist compound(Ljava/util/Comparator;)Landroid/media/internal/guava_common/collect/Ordering;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TT;>(",
            "Ljava/util/Comparator<",
            "-TU;>;)",
            "Landroid/media/internal/guava_common/collect/Ordering<",
            "TU;>;"
        }
    .end annotation

    .line 487
    new-instance v0, Landroid/media/internal/guava_common/collect/CompoundOrdering;

    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    invoke-direct {v0, p0, p1}, Landroid/media/internal/guava_common/collect/CompoundOrdering;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public blacklist onResultOf(Landroid/media/internal/guava_common/base/Function;)Landroid/media/internal/guava_common/collect/Ordering;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/media/internal/guava_common/base/Function<",
            "TF;+TT;>;)",
            "Landroid/media/internal/guava_common/collect/Ordering<",
            "TF;>;"
        }
    .end annotation

    .line 462
    new-instance v0, Landroid/media/internal/guava_common/collect/ByFunctionOrdering;

    invoke-direct {v0, p1, p0}, Landroid/media/internal/guava_common/collect/ByFunctionOrdering;-><init>(Landroid/media/internal/guava_common/base/Function;Landroid/media/internal/guava_common/collect/Ordering;)V

    return-object v0
.end method

.method public blacklist reverse()Landroid/media/internal/guava_common/collect/Ordering;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Landroid/media/internal/guava_common/collect/Ordering<",
            "TS;>;"
        }
    .end annotation

    .line 414
    new-instance v0, Landroid/media/internal/guava_common/collect/ReverseOrdering;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/ReverseOrdering;-><init>(Landroid/media/internal/guava_common/collect/Ordering;)V

    return-object v0
.end method

.method public blacklist sortedCopy(Ljava/lang/Iterable;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 868
    invoke-static {p1}, Landroid/media/internal/guava_common/collect/Iterables;->toArray(Ljava/lang/Iterable;)[Ljava/lang/Object;

    move-result-object p1

    .line 869
    invoke-static {p1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 870
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method
