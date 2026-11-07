.class public final Landroid/media/internal/guava_common/collect/Lists;
.super Ljava/lang/Object;
.source "Lists.java"


# direct methods
.method static blacklist computeArrayListCapacity(I)I
    .registers 5

    .line 159
    const-string v0, "arraySize"

    invoke-static {p0, v0}, Landroid/media/internal/guava_common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    const-wide/16 v0, 0x5

    int-to-long v2, p0

    add-long/2addr v2, v0

    .line 162
    div-int/lit8 p0, p0, 0xa

    int-to-long v0, p0

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Landroid/media/internal/guava_common/primitives/Ints;->saturatedCast(J)I

    move-result p0

    return p0
.end method

.method static blacklist equalsImpl(Ljava/util/List;Ljava/lang/Object;)Z
    .registers 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1011
    invoke-static {p0}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_8

    return v1

    .line 1014
    :cond_8
    instance-of v0, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v0, :cond_e

    return v2

    .line 1017
    :cond_e
    check-cast p1, Ljava/util/List;

    .line 1018
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1019
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v0, v3, :cond_1b

    return v2

    .line 1022
    :cond_1b
    instance-of v3, p0, Ljava/util/RandomAccess;

    if-eqz v3, :cond_39

    instance-of v3, p1, Ljava/util/RandomAccess;

    if-eqz v3, :cond_39

    move v3, v2

    :goto_24
    if-ge v3, v0, :cond_38

    .line 1025
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/media/internal/guava_common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    return v2

    :cond_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_38
    return v1

    .line 1031
    :cond_39
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/Iterators;->elementsEqual(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result p0

    return p0
.end method

.method static blacklist indexOfImpl(Ljava/util/List;Ljava/lang/Object;)I
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1049
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_9

    .line 1050
    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/Lists;->indexOfRandomAccess(Ljava/util/List;Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 1052
    :cond_9
    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p0

    .line 1053
    :cond_d
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1054
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/media/internal/guava_common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1055
    invoke-interface {p0}, Ljava/util/ListIterator;->previousIndex()I

    move-result p0

    return p0

    :cond_22
    const/4 p0, -0x1

    return p0
.end method

.method private static blacklist indexOfRandomAccess(Ljava/util/List;Ljava/lang/Object;)I
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1063
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez p1, :cond_13

    :goto_7
    if-ge v1, v0, :cond_23

    .line 1066
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_10

    return v1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_13
    :goto_13
    if-ge v1, v0, :cond_23

    .line 1072
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    return v1

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_23
    const/4 p0, -0x1

    return p0
.end method

.method static blacklist lastIndexOfImpl(Ljava/util/List;Ljava/lang/Object;)I
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1082
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_9

    .line 1083
    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/Lists;->lastIndexOfRandomAccess(Ljava/util/List;Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 1085
    :cond_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    .line 1086
    :cond_11
    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1087
    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/media/internal/guava_common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1088
    invoke-interface {p0}, Ljava/util/ListIterator;->nextIndex()I

    move-result p0

    return p0

    :cond_26
    const/4 p0, -0x1

    return p0
.end method

.method private static blacklist lastIndexOfRandomAccess(Ljava/util/List;Ljava/lang/Object;)I
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    if-nez p1, :cond_14

    .line 1097
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_8
    if-ltz p1, :cond_2a

    .line 1098
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_11

    return p1

    :cond_11
    add-int/lit8 p1, p1, -0x1

    goto :goto_8

    .line 1103
    :cond_14
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1a
    if-ltz v0, :cond_2a

    .line 1104
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    return v0

    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_1a

    :cond_2a
    const/4 p0, -0x1

    return p0
.end method

.method public static blacklist newArrayList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static blacklist newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 134
    invoke-static {p0}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_f

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 138
    :cond_f
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 152
    invoke-static {}, Landroid/media/internal/guava_common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 153
    invoke-static {v0, p0}, Landroid/media/internal/guava_common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    return-object v0
.end method
