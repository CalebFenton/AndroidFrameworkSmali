.class public abstract Landroid/media/internal/guava_common/collect/ImmutableList;
.super Landroid/media/internal/guava_common/collect/ImmutableCollection;
.source "ImmutableList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/collect/ImmutableList$Itr;,
        Landroid/media/internal/guava_common/collect/ImmutableList$SubList;,
        Landroid/media/internal/guava_common/collect/ImmutableList$ReverseImmutableList;,
        Landroid/media/internal/guava_common/collect/ImmutableList$SerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/ImmutableCollection<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final blacklist EMPTY_ITR:Landroid/media/internal/guava_common/collect/UnmodifiableListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/UnmodifiableListIterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final whitelist serialVersionUID:J = -0x35014542L


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 395
    new-instance v0, Landroid/media/internal/guava_common/collect/ImmutableList$Itr;

    sget-object v1, Landroid/media/internal/guava_common/collect/RegularImmutableList;->EMPTY:Landroid/media/internal/guava_common/collect/ImmutableList;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/media/internal/guava_common/collect/ImmutableList$Itr;-><init>(Landroid/media/internal/guava_common/collect/ImmutableList;I)V

    sput-object v0, Landroid/media/internal/guava_common/collect/ImmutableList;->EMPTY_ITR:Landroid/media/internal/guava_common/collect/UnmodifiableListIterator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 367
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/ImmutableCollection;-><init>()V

    return-void
.end method

.method static blacklist asImmutableList([Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 356
    array-length v0, p0

    invoke-static {p0, v0}, Landroid/media/internal/guava_common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;I)Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method static blacklist asImmutableList([Ljava/lang/Object;I)Landroid/media/internal/guava_common/collect/ImmutableList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)",
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    if-nez p1, :cond_7

    .line 362
    invoke-static {}, Landroid/media/internal/guava_common/collect/ImmutableList;->of()Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    .line 364
    :cond_7
    new-instance v0, Landroid/media/internal/guava_common/collect/RegularImmutableList;

    invoke-direct {v0, p0, p1}, Landroid/media/internal/guava_common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method private static varargs blacklist construct([Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 347
    invoke-static {p0}, Landroid/media/internal/guava_common/collect/ObjectArrays;->checkElementsNotNull([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist copyOf([Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 292
    array-length v0, p0

    if-nez v0, :cond_8

    .line 293
    invoke-static {}, Landroid/media/internal/guava_common/collect/ImmutableList;->of()Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    .line 294
    :cond_8
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/ImmutableList;->construct([Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist of()Landroid/media/internal/guava_common/collect/ImmutableList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 88
    sget-object v0, Landroid/media/internal/guava_common/collect/RegularImmutableList;->EMPTY:Landroid/media/internal/guava_common/collect/ImmutableList;

    return-object v0
.end method

.method public static blacklist of(Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 99
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/ImmutableList;->construct([Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist of(Ljava/lang/Object;Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 108
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroid/media/internal/guava_common/collect/ImmutableList;->construct([Ljava/lang/Object;)Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 716
    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Use SerializedForm"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final whitelist test-api add(ILjava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 557
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final whitelist test-api addAll(ILjava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 530
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 424
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method blacklist copyIntoArray([Ljava/lang/Object;I)I
    .registers 7

    .line 590
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_12

    add-int v2, p2, v1

    .line 592
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    add-int/2addr p2, v0

    return p2
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 679
    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/Lists;->equalsImpl(Ljava/util/List;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 685
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_18

    mul-int/lit8 v1, v1, 0x1f

    .line 687
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    not-int v1, v1

    not-int v1, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    return v1
.end method

.method public whitelist test-api indexOf(Ljava/lang/Object;)I
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-nez p1, :cond_4

    const/4 p0, -0x1

    return p0

    .line 414
    :cond_4
    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/Lists;->indexOfImpl(Ljava/util/List;Ljava/lang/Object;)I

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

    .line 373
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableList;->listIterator()Landroid/media/internal/guava_common/collect/UnmodifiableListIterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api iterator()Ljava/util/Iterator;
    .registers 1

    .line 60
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableList;->iterator()Landroid/media/internal/guava_common/collect/UnmodifiableIterator;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api lastIndexOf(Ljava/lang/Object;)I
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-nez p1, :cond_4

    const/4 p0, -0x1

    return p0

    .line 419
    :cond_4
    invoke-static {p0, p1}, Landroid/media/internal/guava_common/collect/Lists;->lastIndexOfImpl(Ljava/util/List;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist listIterator()Landroid/media/internal/guava_common/collect/UnmodifiableListIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/UnmodifiableListIterator<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 378
    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/ImmutableList;->listIterator(I)Landroid/media/internal/guava_common/collect/UnmodifiableListIterator;

    move-result-object p0

    return-object p0
.end method

.method public blacklist listIterator(I)Landroid/media/internal/guava_common/collect/UnmodifiableListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/media/internal/guava_common/collect/UnmodifiableListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 384
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-static {p1, v0}, Landroid/media/internal/guava_common/base/Preconditions;->checkPositionIndex(II)I

    .line 385
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 386
    sget-object p0, Landroid/media/internal/guava_common/collect/ImmutableList;->EMPTY_ITR:Landroid/media/internal/guava_common/collect/UnmodifiableListIterator;

    return-object p0

    .line 388
    :cond_10
    new-instance v0, Landroid/media/internal/guava_common/collect/ImmutableList$Itr;

    invoke-direct {v0, p0, p1}, Landroid/media/internal/guava_common/collect/ImmutableList$Itr;-><init>(Landroid/media/internal/guava_common/collect/ImmutableList;I)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api listIterator()Ljava/util/ListIterator;
    .registers 1

    .line 60
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableList;->listIterator()Landroid/media/internal/guava_common/collect/UnmodifiableListIterator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api listIterator(I)Ljava/util/ListIterator;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1}, Landroid/media/internal/guava_common/collect/ImmutableList;->listIterator(I)Landroid/media/internal/guava_common/collect/UnmodifiableListIterator;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist test-api remove(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 571
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public blacklist reverse()Landroid/media/internal/guava_common/collect/ImmutableList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 605
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_8

    return-object p0

    :cond_8
    new-instance v0, Landroid/media/internal/guava_common/collect/ImmutableList$ReverseImmutableList;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/ImmutableList$ReverseImmutableList;-><init>(Landroid/media/internal/guava_common/collect/ImmutableList;)V

    return-object v0
.end method

.method public final whitelist test-api set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 544
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public blacklist subList(II)Landroid/media/internal/guava_common/collect/ImmutableList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 442
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Landroid/media/internal/guava_common/base/Preconditions;->checkPositionIndexes(III)V

    sub-int v0, p2, p1

    .line 444
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ne v0, v1, :cond_10

    return-object p0

    :cond_10
    if-nez v0, :cond_17

    .line 447
    invoke-static {}, Landroid/media/internal/guava_common/collect/ImmutableList;->of()Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    .line 449
    :cond_17
    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/ImmutableList;->subListUnchecked(II)Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic whitelist test-api subList(II)Ljava/util/List;
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

    .line 60
    invoke-virtual {p0, p1, p2}, Landroid/media/internal/guava_common/collect/ImmutableList;->subList(II)Landroid/media/internal/guava_common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method blacklist subListUnchecked(II)Landroid/media/internal/guava_common/collect/ImmutableList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/media/internal/guava_common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 458
    new-instance v0, Landroid/media/internal/guava_common/collect/ImmutableList$SubList;

    sub-int/2addr p2, p1

    invoke-direct {v0, p0, p1, p2}, Landroid/media/internal/guava_common/collect/ImmutableList$SubList;-><init>(Landroid/media/internal/guava_common/collect/ImmutableList;II)V

    return-object v0
.end method

.method whitelist writeReplace()Ljava/lang/Object;
    .registers 2

    .line 723
    new-instance v0, Landroid/media/internal/guava_common/collect/ImmutableList$SerializedForm;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/ImmutableCollection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/ImmutableList$SerializedForm;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
