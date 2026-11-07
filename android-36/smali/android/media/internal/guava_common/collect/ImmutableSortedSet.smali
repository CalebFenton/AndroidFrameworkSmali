.class public abstract Landroid/media/internal/guava_common/collect/ImmutableSortedSet;
.super Landroid/media/internal/guava_common/collect/ImmutableSet;
.source "ImmutableSortedSet.java"

# interfaces
.implements Ljava/util/NavigableSet;
.implements Landroid/media/internal/guava_common/collect/SortedIterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/collect/ImmutableSortedSet$Builder;,
        Landroid/media/internal/guava_common/collect/ImmutableSortedSet$SerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/ImmutableSet<",
        "TE;>;",
        "Ljava/util/NavigableSet<",
        "TE;>;",
        "Landroid/media/internal/guava_common/collect/SortedIterable<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0xdecafL


# instance fields
.field final transient blacklist comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field transient blacklist descendingSet:Landroid/media/internal/guava_common/collect/ImmutableSortedSet;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/util/Comparator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 557
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/ImmutableSet;-><init>()V

    .line 558
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method static varargs blacklist construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSortedSet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;I[TE;)",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    if-nez p1, :cond_7

    .line 367
    invoke-static {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;

    move-result-object p0

    return-object p0

    .line 369
    :cond_7
    invoke-static {p2, p1}, Landroid/media/internal/guava_common/collect/ObjectArrays;->checkElementsNotNull([Ljava/lang/Object;I)[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 370
    invoke-static {p2, v0, p1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    const/4 v0, 0x1

    move v1, v0

    :goto_10
    if-ge v0, p1, :cond_26

    .line 373
    aget-object v2, p2, v0

    add-int/lit8 v3, v1, -0x1

    .line 374
    aget-object v3, p2, v3

    .line 375
    invoke-interface {p0, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_23

    add-int/lit8 v3, v1, 0x1

    .line 376
    aput-object v2, p2, v1

    move v1, v3

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_26
    const/4 v0, 0x0

    .line 379
    invoke-static {p2, v1, p1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 380
    array-length p1, p2

    div-int/lit8 p1, p1, 0x2

    if-ge v1, p1, :cond_33

    .line 383
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    .line 385
    :cond_33
    new-instance p1, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;

    .line 386
    invoke-static {p2, v1}, Landroid/media/internal/guava_common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;I)Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;-><init>(Landroid/media/internal/guava_common/collect/ImmutableList;Ljava/util/Comparator;)V

    return-object p1
.end method

.method static blacklist emptySet(Ljava/util/Comparator;)Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 83
    invoke-static {}, Landroid/media/internal/guava_common/collect/Ordering;->natural()Landroid/media/internal/guava_common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 85
    sget-object p0, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->NATURAL_EMPTY_SET:Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;

    return-object p0

    .line 89
    :cond_d
    new-instance v0, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;

    invoke-static {}, Landroid/media/internal/guava_common/collect/ImmutableList;->of()Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;-><init>(Landroid/media/internal/guava_common/collect/ImmutableList;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 787
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Use SerializedForm"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static blacklist unsafeCompare(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 552
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public whitelist test-api ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x1

    .line 674
    invoke-virtual {p0, p1, v0}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->tailSet(Ljava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/Iterables;->getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api comparator()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 568
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    return-object p0
.end method

.method abstract blacklist createDescendingSet()Landroid/media/internal/guava_common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract blacklist descendingIterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic whitelist test-api descendingIterator()Ljava/util/Iterator;
    .registers 1

    .line 61
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->descendingIterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public blacklist descendingSet()Landroid/media/internal/guava_common/collect/ImmutableSortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 739
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->descendingSet:Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    if-nez v0, :cond_c

    .line 741
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->createDescendingSet()Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    move-result-object v0

    iput-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->descendingSet:Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    .line 742
    iput-object p0, v0, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->descendingSet:Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    :cond_c
    return-object v0
.end method

.method public bridge synthetic whitelist test-api descendingSet()Ljava/util/NavigableSet;
    .registers 1

    .line 61
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->descendingSet()Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api first()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 687
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->iterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api floor(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x1

    .line 667
    invoke-virtual {p0, p1, v0}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->headSet(Ljava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->descendingIterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/Iterators;->getNext(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public blacklist headSet(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSortedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 586
    invoke-virtual {p0, p1, v0}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->headSet(Ljava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public blacklist headSet(Ljava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 592
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->headSetImpl(Ljava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
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

    .line 61
    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->headSet(Ljava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->headSet(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method abstract blacklist headSetImpl(Ljava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method public whitelist test-api higher(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x0

    .line 682
    invoke-virtual {p0, p1, v0}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->tailSet(Ljava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/Iterables;->getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract blacklist iterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic whitelist test-api iterator()Ljava/util/Iterator;
    .registers 1

    .line 61
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->iterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api last()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 692
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->descendingIterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api lower(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x0

    .line 660
    invoke-virtual {p0, p1, v0}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->headSet(Ljava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->descendingIterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/Iterators;->getNext(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api pollFirst()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 709
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final whitelist test-api pollLast()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 726
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public blacklist subSet(Ljava/lang/Object;Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSortedSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 609
    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public blacklist subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedSet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 617
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    invoke-static {p3}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    invoke-static {v0}, Landroid/media/internal/guava_common/base/Preconditions;->checkArgument(Z)V

    .line 620
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
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

    .line 61
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
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

    .line 61
    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method abstract blacklist subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method public blacklist tailSet(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSortedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 635
    invoke-virtual {p0, p1, v0}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->tailSet(Ljava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public blacklist tailSet(Ljava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 641
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->tailSetImpl(Ljava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
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

    .line 61
    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->tailSet(Ljava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->tailSet(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method abstract blacklist tailSetImpl(Ljava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method blacklist unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 543
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {p0, p1, p2}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->unsafeCompare(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 793
    new-instance v0, Landroid/media/internal/guava_common/collect/ImmutableSortedSet$SerializedForm;

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableCollection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet$SerializedForm;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;)V

    return-object v0
.end method
