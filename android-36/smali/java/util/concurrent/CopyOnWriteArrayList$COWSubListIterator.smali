.class Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;
.super Ljava/lang/Object;
.source "CopyOnWriteArrayList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CopyOnWriteArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "COWSubListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final greylist-max-o it:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o offset:I

.field private final greylist-max-o size:I


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/List;III)V
    .registers 6
    .param p2, "index"    # I
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;III)V"
        }
    .end annotation

    .line 1671
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator<TE;>;"
    .local p1, "l":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1672
    iput p3, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->offset:I

    .line 1673
    iput p4, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->size:I

    .line 1674
    add-int v0, p2, p3

    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->it:Ljava/util/ListIterator;

    .line 1675
    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1716
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1722
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1723
    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1724
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->it:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_3

    .line 1726
    :cond_13
    return-void
.end method

.method public whitelist test-api hasNext()Z
    .registers 3

    .line 1678
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->nextIndex()I

    move-result v0

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->size:I

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist test-api hasPrevious()Z
    .registers 2

    .line 1689
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->previousIndex()I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1682
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1683
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->it:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1685
    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api nextIndex()I
    .registers 3

    .line 1700
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->it:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->offset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api previous()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1693
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1694
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->it:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1696
    :cond_d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api previousIndex()I
    .registers 3

    .line 1704
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->it:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;->offset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 1708
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api set(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1712
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$COWSubListIterator<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
