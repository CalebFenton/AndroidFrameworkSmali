.class Ljava/util/ReverseOrderListView$DescendingIterator;
.super Ljava/lang/Object;
.source "ReverseOrderListView.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ReverseOrderListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DescendingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
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
.method constructor blacklist <init>(Ljava/util/ReverseOrderListView;)V
    .registers 4
    .param p1, "this$0"    # Ljava/util/ReverseOrderListView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 81
    .local p0, "this":Ljava/util/ReverseOrderListView$DescendingIterator;, "Ljava/util/ReverseOrderListView<TE;>.DescendingIterator;"
    iput-object p1, p0, Ljava/util/ReverseOrderListView$DescendingIterator;->this$0:Ljava/util/ReverseOrderListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iget-object v0, p0, Ljava/util/ReverseOrderListView$DescendingIterator;->this$0:Ljava/util/ReverseOrderListView;

    iget-object v0, v0, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    iget-object v1, p0, Ljava/util/ReverseOrderListView$DescendingIterator;->this$0:Ljava/util/ReverseOrderListView;

    iget-object v1, v1, Ljava/util/ReverseOrderListView;->base:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ReverseOrderListView$DescendingIterator;->it:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 83
    .local p0, "this":Ljava/util/ReverseOrderListView$DescendingIterator;, "Ljava/util/ReverseOrderListView<TE;>.DescendingIterator;"
    iget-object v0, p0, Ljava/util/ReverseOrderListView$DescendingIterator;->it:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

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

    .line 84
    .local p0, "this":Ljava/util/ReverseOrderListView$DescendingIterator;, "Ljava/util/ReverseOrderListView<TE;>.DescendingIterator;"
    iget-object v0, p0, Ljava/util/ReverseOrderListView$DescendingIterator;->it:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 86
    .local p0, "this":Ljava/util/ReverseOrderListView$DescendingIterator;, "Ljava/util/ReverseOrderListView<TE;>.DescendingIterator;"
    iget-object v0, p0, Ljava/util/ReverseOrderListView$DescendingIterator;->this$0:Ljava/util/ReverseOrderListView;

    invoke-virtual {v0}, Ljava/util/ReverseOrderListView;->checkModifiable()V

    .line 87
    iget-object v0, p0, Ljava/util/ReverseOrderListView$DescendingIterator;->it:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 89
    return-void
.end method
