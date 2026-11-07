.class Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingListIterator;
.super Ljava/lang/Object;
.source "CopyOnWriteArrayList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DescendingListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final blacklist it:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation
.end field

.field final blacklist size:I


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;I)V
    .registers 6
    .param p1, "this$0"    # Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1771
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>.DescendingListIterator;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1772
    iget-object v0, p1, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 1773
    :try_start_6
    iget-object v1, p1, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingListIterator;->size:I

    .line 1774
    if-ltz p2, :cond_21

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingListIterator;->size:I

    if-gt p2, v1, :cond_21

    .line 1776
    iget-object v1, p1, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;->base:Ljava/util/List;

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingListIterator;->size:I

    sub-int/2addr v2, p2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingListIterator;->it:Ljava/util/ListIterator;

    .line 1777
    monitor-exit v0

    .line 1778
    return-void

    .line 1775
    :cond_21
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .end local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>.DescendingListIterator;"
    .end local p1    # "this$0":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;
    .end local p2    # "pos":I
    throw v1

    .line 1777
    .restart local p0    # "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>.DescendingListIterator;"
    .restart local p1    # "this$0":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed;
    .restart local p2    # "pos":I
    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_27

    throw v1
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 1813
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>.DescendingListIterator;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api hasNext()Z
    .registers 2

    .line 1781
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>.DescendingListIterator;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingListIterator;->it:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hasPrevious()Z
    .registers 2

    .line 1789
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>.DescendingListIterator;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingListIterator;->it:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1785
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>.DescendingListIterator;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingListIterator;->it:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api nextIndex()I
    .registers 3

    .line 1797
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>.DescendingListIterator;"
    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingListIterator;->size:I

    iget-object v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingListIterator;->it:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

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

    .line 1793
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>.DescendingListIterator;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingListIterator;->it:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api previousIndex()I
    .registers 2

    .line 1801
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>.DescendingListIterator;"
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingListIterator;->nextIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 1805
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>.DescendingListIterator;"
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

    .line 1809
    .local p0, "this":Ljava/util/concurrent/CopyOnWriteArrayList$Reversed$DescendingListIterator;, "Ljava/util/concurrent/CopyOnWriteArrayList$Reversed<TE;>.DescendingListIterator;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
