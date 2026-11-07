.class final Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;
.super Landroid/media/internal/guava_common/collect/ImmutableSortedSet;
.source "RegularImmutableSortedSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/ImmutableSortedSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final blacklist NATURAL_EMPTY_SET:Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final transient blacklist elements:Landroid/media/internal/guava_common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 45
    new-instance v0, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;

    .line 46
    invoke-static {}, Landroid/media/internal/guava_common/collect/ImmutableList;->of()Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object v1

    invoke-static {}, Landroid/media/internal/guava_common/collect/Ordering;->natural()Landroid/media/internal/guava_common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;-><init>(Landroid/media/internal/guava_common/collect/ImmutableList;Ljava/util/Comparator;)V

    sput-object v0, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->NATURAL_EMPTY_SET:Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/ImmutableList;Ljava/util/Comparator;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "TE;>;",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p2}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    .line 52
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->elements:Landroid/media/internal/guava_common/collect/ImmutableList;

    return-void
.end method

.method private blacklist unsafeBinarySearch(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->elements:Landroid/media/internal/guava_common/collect/ImmutableList;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->unsafeComparator()Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v0, p1, p0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public blacklist asList()Landroid/media/internal/guava_common/collect/ImmutableList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 313
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->elements:Landroid/media/internal/guava_common/collect/ImmutableList;

    return-object p0
.end method

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

    .line 233
    invoke-virtual {p0, p1, v0}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->tailIndex(Ljava/lang/Object;Z)I

    move-result p1

    .line 234
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->size()I

    move-result v0

    if-ne p1, v0, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->elements:Landroid/media/internal/guava_common/collect/ImmutableList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    .line 91
    :try_start_3
    invoke-direct {p0, p1}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->unsafeBinarySearch(Ljava/lang/Object;)I

    move-result p0
    :try_end_7
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_7} :catch_b

    if-ltz p0, :cond_b

    const/4 p0, 0x1

    return p0

    :catch_b
    :cond_b
    return v0
.end method

.method public whitelist test-api containsAll(Ljava/util/Collection;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 103
    instance-of v0, p1, Landroid/media/internal/guava_common/collect/Multiset;

    if-eqz v0, :cond_a

    .line 104
    check-cast p1, Landroid/media/internal/guava_common/collect/Multiset;

    invoke-interface {p1}, Landroid/media/internal/guava_common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object p1

    .line 106
    :cond_a
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/media/internal/guava_common/collect/SortedIterables;->hasSameComparator(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1c

    goto :goto_57

    .line 114
    :cond_1c
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->iterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;

    move-result-object v0

    .line 116
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2c

    return v3

    .line 123
    :cond_2c
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 124
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 127
    :cond_34
    :goto_34
    :try_start_34
    invoke-virtual {p0, v4, v2}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_46

    .line 130
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_41

    return v3

    .line 133
    :cond_41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    goto :goto_34

    :cond_46
    if-nez v5, :cond_54

    .line 135
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4f

    return v1

    .line 138
    :cond_4f
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2
    :try_end_53
    .catch Ljava/lang/NullPointerException; {:try_start_34 .. :try_end_53} :catch_56
    .catch Ljava/lang/ClassCastException; {:try_start_34 .. :try_end_53} :catch_56

    goto :goto_34

    :cond_54
    if-lez v5, :cond_34

    :catch_56
    return v3

    .line 107
    :cond_57
    :goto_57
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method blacklist copyIntoArray([Ljava/lang/Object;I)I
    .registers 3

    .line 160
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->elements:Landroid/media/internal/guava_common/collect/ImmutableList;

    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/ImmutableList;->copyIntoArray([Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method blacklist createDescendingSet()Landroid/media/internal/guava_common/collect/ImmutableSortedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 318
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    .line 319
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 320
    invoke-static {v0}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;

    move-result-object p0

    return-object p0

    .line 321
    :cond_11
    new-instance v1, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->elements:Landroid/media/internal/guava_common/collect/ImmutableList;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableList;->reverse()Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;-><init>(Landroid/media/internal/guava_common/collect/ImmutableList;Ljava/util/Comparator;)V

    return-object v1
.end method

.method public blacklist descendingIterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 80
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->elements:Landroid/media/internal/guava_common/collect/ImmutableList;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableList;->reverse()Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableList;->iterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api descendingIterator()Ljava/util/Iterator;
    .registers 1

    .line 41
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->descendingIterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 168
    :cond_4
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 172
    :cond_a
    check-cast p1, Ljava/util/Set;

    .line 173
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v1, v3, :cond_17

    return v2

    .line 175
    :cond_17
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    return v0

    .line 179
    :cond_1e
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {v1, p1}, Landroid/media/internal/guava_common/collect/SortedIterables;->hasSameComparator(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 180
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 182
    :try_start_2a
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->iterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;

    move-result-object v1

    .line 183
    :cond_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 184
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 185
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_44

    .line 186
    invoke-virtual {p0, v3, v4}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3
    :try_end_42
    .catch Ljava/lang/ClassCastException; {:try_start_2a .. :try_end_42} :catch_46
    .catch Ljava/util/NoSuchElementException; {:try_start_2a .. :try_end_42} :catch_46

    if-eqz v3, :cond_2e

    :cond_44
    return v2

    :cond_45
    return v0

    :catch_46
    return v2

    .line 197
    :cond_47
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api first()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 202
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    .line 205
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->elements:Landroid/media/internal/guava_common/collect/ImmutableList;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 203
    :cond_e
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
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

    .line 226
    invoke-virtual {p0, p1, v0}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->headIndex(Ljava/lang/Object;Z)I

    move-result p1

    sub-int/2addr p1, v0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_b

    const/4 p0, 0x0

    return-object p0

    .line 227
    :cond_b
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->elements:Landroid/media/internal/guava_common/collect/ImmutableList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method blacklist getSubSet(II)Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    if-nez p1, :cond_9

    .line 287
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->size()I

    move-result v0

    if-ne p2, v0, :cond_9

    return-object p0

    :cond_9
    if-ge p1, p2, :cond_19

    .line 290
    new-instance v0, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->elements:Landroid/media/internal/guava_common/collect/ImmutableList;

    .line 291
    invoke-virtual {v1, p1, p2}, Landroid/media/internal/guava_common/collect/ImmutableList;->subList(II)Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p1

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-direct {v0, p1, p0}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;-><init>(Landroid/media/internal/guava_common/collect/ImmutableList;Ljava/util/Comparator;)V

    return-object v0

    .line 293
    :cond_19
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method blacklist headIndex(Ljava/lang/Object;Z)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)I"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->elements:Landroid/media/internal/guava_common/collect/ImmutableList;

    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v0, p1, p0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p0

    if-ltz p0, :cond_15

    if-eqz p2, :cond_14

    add-int/lit8 p0, p0, 0x1

    :cond_14
    return p0

    :cond_15
    not-int p0, p0

    return p0
.end method

.method blacklist headSetImpl(Ljava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 246
    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->headIndex(Ljava/lang/Object;Z)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->getSubSet(II)Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;

    move-result-object p0

    return-object p0
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

    .line 240
    invoke-virtual {p0, p1, v0}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->tailIndex(Ljava/lang/Object;Z)I

    move-result p1

    .line 241
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->size()I

    move-result v0

    if-ne p1, v0, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->elements:Landroid/media/internal/guava_common/collect/ImmutableList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method blacklist indexOf(Ljava/lang/Object;)I
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-nez p1, :cond_4

    return v0

    .line 304
    :cond_4
    :try_start_4
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->elements:Landroid/media/internal/guava_common/collect/ImmutableList;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->unsafeComparator()Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v1, p1, p0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p0
    :try_end_e
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_e} :catch_11

    if-ltz p0, :cond_11

    return p0

    :catch_11
    :cond_11
    return v0
.end method

.method blacklist internalArray()[Ljava/lang/Object;
    .registers 1
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 59
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->elements:Landroid/media/internal/guava_common/collect/ImmutableList;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableCollection;->internalArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method blacklist internalArrayEnd()I
    .registers 1

    .line 69
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->elements:Landroid/media/internal/guava_common/collect/ImmutableList;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableCollection;->internalArrayEnd()I

    move-result p0

    return p0
.end method

.method blacklist internalArrayStart()I
    .registers 1

    .line 64
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->elements:Landroid/media/internal/guava_common/collect/ImmutableList;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableCollection;->internalArrayStart()I

    move-result p0

    return p0
.end method

.method public blacklist iterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 74
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->elements:Landroid/media/internal/guava_common/collect/ImmutableList;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableList;->iterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api iterator()Ljava/util/Iterator;
    .registers 1

    .line 41
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->iterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api last()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 210
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 213
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->elements:Landroid/media/internal/guava_common/collect/ImmutableList;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 211
    :cond_13
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
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

    .line 219
    invoke-virtual {p0, p1, v0}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->headIndex(Ljava/lang/Object;Z)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 220
    :cond_c
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->elements:Landroid/media/internal/guava_common/collect/ImmutableList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api size()I
    .registers 1

    .line 85
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->elements:Landroid/media/internal/guava_common/collect/ImmutableList;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    return p0
.end method

.method blacklist subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedSet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 261
    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->tailSetImpl(Ljava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->headSetImpl(Ljava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method blacklist tailIndex(Ljava/lang/Object;Z)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)I"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->elements:Landroid/media/internal/guava_common/collect/ImmutableList;

    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v0, p1, p0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p0

    if-ltz p0, :cond_16

    if-eqz p2, :cond_13

    return p0

    :cond_13
    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_16
    not-int p0, p0

    return p0
.end method

.method blacklist tailSetImpl(Ljava/lang/Object;Z)Landroid/media/internal/guava_common/collect/ImmutableSortedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Landroid/media/internal/guava_common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 266
    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->tailIndex(Ljava/lang/Object;Z)I

    move-result p1

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;->getSubSet(II)Landroid/media/internal/guava_common/collect/RegularImmutableSortedSet;

    move-result-object p0

    return-object p0
.end method

.method blacklist unsafeComparator()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 283
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    return-object p0
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .registers 1

    .line 330
    invoke-super {p0}, Landroid/media/internal/guava_common/collect/ImmutableSortedSet;->writeReplace()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
