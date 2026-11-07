.class Ljava/util/ReverseOrderListView$DescendingListIterator;
.super Ljava/lang/Object;
.source "ReverseOrderListView.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ReverseOrderListView;
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

.field final synthetic blacklist this$0:Ljava/util/ReverseOrderListView;


# direct methods
.method constructor blacklist <init>(Ljava/util/ReverseOrderListView;II)V
    .registers 6
    .param p1, "this$0"    # Ljava/util/ReverseOrderListView;
    .param p2, "size"    # I
    .param p3, "pos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 95
    .local p0, "this":Ljava/util/ReverseOrderListView$DescendingListIterator;, "Ljava/util/ReverseOrderListView<TE;>.DescendingListIterator;"
    iput-object p1, p0, Ljava/util/ReverseOrderListView$DescendingListIterator;->this$0:Ljava/util/ReverseOrderListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    if-ltz p3, :cond_14

    if-gt p3, p2, :cond_14

    .line 98
    iget-object v0, p1, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    sub-int v1, p2, p3

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ReverseOrderListView$DescendingListIterator;->it:Ljava/util/ListIterator;

    .line 99
    return-void

    .line 97
    :cond_14
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 136
    .local p0, "this":Ljava/util/ReverseOrderListView$DescendingListIterator;, "Ljava/util/ReverseOrderListView<TE;>.DescendingListIterator;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/ReverseOrderListView$DescendingListIterator;->this$0:Ljava/util/ReverseOrderListView;

    invoke-virtual {v0}, Ljava/util/ReverseOrderListView;->checkModifiable()V

    .line 137
    iget-object v0, p0, Ljava/util/ReverseOrderListView$DescendingListIterator;->it:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Ljava/util/ReverseOrderListView$DescendingListIterator;->it:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 139
    return-void
.end method

.method public whitelist test-api hasNext()Z
    .registers 2

    .line 102
    .local p0, "this":Ljava/util/ReverseOrderListView$DescendingListIterator;, "Ljava/util/ReverseOrderListView<TE;>.DescendingListIterator;"
    iget-object v0, p0, Ljava/util/ReverseOrderListView$DescendingListIterator;->it:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hasPrevious()Z
    .registers 2

    .line 110
    .local p0, "this":Ljava/util/ReverseOrderListView$DescendingListIterator;, "Ljava/util/ReverseOrderListView<TE;>.DescendingListIterator;"
    iget-object v0, p0, Ljava/util/ReverseOrderListView$DescendingListIterator;->it:Ljava/util/ListIterator;

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

    .line 106
    .local p0, "this":Ljava/util/ReverseOrderListView$DescendingListIterator;, "Ljava/util/ReverseOrderListView<TE;>.DescendingListIterator;"
    iget-object v0, p0, Ljava/util/ReverseOrderListView$DescendingListIterator;->it:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api nextIndex()I
    .registers 3

    .line 118
    .local p0, "this":Ljava/util/ReverseOrderListView$DescendingListIterator;, "Ljava/util/ReverseOrderListView<TE;>.DescendingListIterator;"
    iget-object v0, p0, Ljava/util/ReverseOrderListView$DescendingListIterator;->this$0:Ljava/util/ReverseOrderListView;

    iget-object v0, v0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Ljava/util/ReverseOrderListView$DescendingListIterator;->it:Ljava/util/ListIterator;

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

    .line 114
    .local p0, "this":Ljava/util/ReverseOrderListView$DescendingListIterator;, "Ljava/util/ReverseOrderListView<TE;>.DescendingListIterator;"
    iget-object v0, p0, Ljava/util/ReverseOrderListView$DescendingListIterator;->it:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api previousIndex()I
    .registers 2

    .line 122
    .local p0, "this":Ljava/util/ReverseOrderListView$DescendingListIterator;, "Ljava/util/ReverseOrderListView<TE;>.DescendingListIterator;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderListView$DescendingListIterator;->nextIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 126
    .local p0, "this":Ljava/util/ReverseOrderListView$DescendingListIterator;, "Ljava/util/ReverseOrderListView<TE;>.DescendingListIterator;"
    iget-object v0, p0, Ljava/util/ReverseOrderListView$DescendingListIterator;->this$0:Ljava/util/ReverseOrderListView;

    invoke-virtual {v0}, Ljava/util/ReverseOrderListView;->checkModifiable()V

    .line 127
    iget-object v0, p0, Ljava/util/ReverseOrderListView$DescendingListIterator;->it:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 128
    return-void
.end method

.method public whitelist test-api set(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 131
    .local p0, "this":Ljava/util/ReverseOrderListView$DescendingListIterator;, "Ljava/util/ReverseOrderListView<TE;>.DescendingListIterator;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/ReverseOrderListView$DescendingListIterator;->this$0:Ljava/util/ReverseOrderListView;

    invoke-virtual {v0}, Ljava/util/ReverseOrderListView;->checkModifiable()V

    .line 132
    iget-object v0, p0, Ljava/util/ReverseOrderListView$DescendingListIterator;->it:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 133
    return-void
.end method
