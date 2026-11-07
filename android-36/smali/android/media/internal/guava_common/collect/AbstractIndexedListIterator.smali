.class abstract Landroid/media/internal/guava_common/collect/AbstractIndexedListIterator;
.super Landroid/media/internal/guava_common/collect/UnmodifiableListIterator;
.source "AbstractIndexedListIterator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/media/internal/guava_common/collect/UnmodifiableListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private blacklist position:I

.field private final blacklist size:I


# direct methods
.method protected constructor blacklist <init>(II)V
    .registers 3

    .line 65
    invoke-direct {p0}, Landroid/media/internal/guava_common/collect/UnmodifiableListIterator;-><init>()V

    .line 66
    invoke-static {p2, p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkPositionIndex(II)I

    .line 67
    iput p1, p0, Landroid/media/internal/guava_common/collect/AbstractIndexedListIterator;->size:I

    .line 68
    iput p2, p0, Landroid/media/internal/guava_common/collect/AbstractIndexedListIterator;->position:I

    return-void
.end method


# virtual methods
.method protected abstract blacklist get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public final whitelist test-api hasNext()Z
    .registers 2

    .line 73
    iget v0, p0, Landroid/media/internal/guava_common/collect/AbstractIndexedListIterator;->position:I

    iget p0, p0, Landroid/media/internal/guava_common/collect/AbstractIndexedListIterator;->size:I

    if-ge v0, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final whitelist test-api hasPrevious()Z
    .registers 1

    .line 92
    iget p0, p0, Landroid/media/internal/guava_common/collect/AbstractIndexedListIterator;->position:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final whitelist test-api next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 79
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractIndexedListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 82
    iget v0, p0, Landroid/media/internal/guava_common/collect/AbstractIndexedListIterator;->position:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/internal/guava_common/collect/AbstractIndexedListIterator;->position:I

    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/AbstractIndexedListIterator;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 80
    :cond_11
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final whitelist test-api nextIndex()I
    .registers 1

    .line 87
    iget p0, p0, Landroid/media/internal/guava_common/collect/AbstractIndexedListIterator;->position:I

    return p0
.end method

.method public final whitelist test-api previous()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractIndexedListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 101
    iget v0, p0, Landroid/media/internal/guava_common/collect/AbstractIndexedListIterator;->position:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/media/internal/guava_common/collect/AbstractIndexedListIterator;->position:I

    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/AbstractIndexedListIterator;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 99
    :cond_11
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final whitelist test-api previousIndex()I
    .registers 1

    .line 106
    iget p0, p0, Landroid/media/internal/guava_common/collect/AbstractIndexedListIterator;->position:I

    add-int/lit8 p0, p0, -0x1

    return p0
.end method
