.class Ljava/util/ArrayDeque$DeqIterator;
.super Ljava/lang/Object;
.source "ArrayDeque.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeqIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field greylist-max-o cursor:I

.field greylist-max-o lastRet:I

.field blacklist remaining:I

.field final synthetic blacklist this$0:Ljava/util/ArrayDeque;


# direct methods
.method constructor blacklist <init>(Ljava/util/ArrayDeque;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 697
    .local p0, "this":Ljava/util/ArrayDeque$DeqIterator;, "Ljava/util/ArrayDeque<TE;>.DeqIterator;"
    iput-object p1, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    iget-object v0, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    iput v0, p0, Ljava/util/ArrayDeque$DeqIterator;->remaining:I

    .line 695
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/ArrayDeque$DeqIterator;->lastRet:I

    .line 697
    iget p1, p1, Ljava/util/ArrayDeque;->head:I

    iput p1, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    return-void
.end method


# virtual methods
.method public whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 727
    .local p0, "this":Ljava/util/ArrayDeque$DeqIterator;, "Ljava/util/ArrayDeque<TE;>.DeqIterator;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    iget v0, p0, Ljava/util/ArrayDeque$DeqIterator;->remaining:I

    move v1, v0

    .local v1, "r":I
    if-gtz v0, :cond_9

    .line 730
    return-void

    .line 731
    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/ArrayDeque$DeqIterator;->remaining:I

    .line 732
    iget-object v0, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    iget-object v0, v0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 733
    .local v0, "es":[Ljava/lang/Object;
    iget v2, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    aget-object v2, v0, v2

    if-eqz v2, :cond_54

    iget-object v2, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    iget v2, v2, Ljava/util/ArrayDeque;->tail:I

    iget v3, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    array-length v4, v0

    invoke-static {v2, v3, v4}, Ljava/util/ArrayDeque;->sub(III)I

    move-result v2

    if-ne v2, v1, :cond_54

    .line 735
    iget v2, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    .local v2, "i":I
    iget-object v3, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    iget v3, v3, Ljava/util/ArrayDeque;->tail:I

    .local v3, "end":I
    if-gt v2, v3, :cond_2d

    move v4, v3

    goto :goto_2e

    :cond_2d
    array-length v4, v0

    .line 737
    .local v4, "to":I
    :goto_2e
    if-ge v2, v4, :cond_3a

    .line 738
    invoke-static {v0, v2}, Ljava/util/ArrayDeque;->elementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 737
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 739
    :cond_3a
    if-ne v4, v3, :cond_51

    .line 740
    iget-object v5, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    iget v5, v5, Ljava/util/ArrayDeque;->tail:I

    if-ne v3, v5, :cond_4b

    .line 742
    array-length v5, v0

    invoke-static {v3, v5}, Ljava/util/ArrayDeque;->dec(II)I

    move-result v5

    iput v5, p0, Ljava/util/ArrayDeque$DeqIterator;->lastRet:I

    .line 743
    nop

    .line 746
    .end local v2    # "i":I
    .end local v3    # "end":I
    .end local v4    # "to":I
    return-void

    .line 741
    .restart local v2    # "i":I
    .restart local v3    # "end":I
    .restart local v4    # "to":I
    :cond_4b
    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5

    .line 736
    :cond_51
    const/4 v2, 0x0

    move v4, v3

    goto :goto_2e

    .line 734
    .end local v2    # "i":I
    .end local v3    # "end":I
    .end local v4    # "to":I
    :cond_54
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
.end method

.method public final whitelist test-api hasNext()Z
    .registers 2

    .line 700
    .local p0, "this":Ljava/util/ArrayDeque$DeqIterator;, "Ljava/util/ArrayDeque<TE;>.DeqIterator;"
    iget v0, p0, Ljava/util/ArrayDeque$DeqIterator;->remaining:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 704
    .local p0, "this":Ljava/util/ArrayDeque$DeqIterator;, "Ljava/util/ArrayDeque<TE;>.DeqIterator;"
    iget v0, p0, Ljava/util/ArrayDeque$DeqIterator;->remaining:I

    if-lez v0, :cond_20

    .line 706
    iget-object v0, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    iget-object v0, v0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 707
    .local v0, "es":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    invoke-static {v0, v1}, Ljava/util/ArrayDeque;->nonNullElementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 708
    .local v1, "e":Ljava/lang/Object;, "TE;"
    iget v2, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    iput v2, p0, Ljava/util/ArrayDeque$DeqIterator;->lastRet:I

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/util/ArrayDeque;->inc(II)I

    move-result v2

    iput v2, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    .line 709
    iget v2, p0, Ljava/util/ArrayDeque$DeqIterator;->remaining:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/ArrayDeque$DeqIterator;->remaining:I

    .line 710
    return-object v1

    .line 705
    .end local v0    # "es":[Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    :cond_20
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method blacklist postDelete(Z)V
    .registers 4
    .param p1, "leftShifted"    # Z

    .line 714
    .local p0, "this":Ljava/util/ArrayDeque$DeqIterator;, "Ljava/util/ArrayDeque<TE;>.DeqIterator;"
    if-eqz p1, :cond_f

    .line 715
    iget v0, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    iget-object v1, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    iget-object v1, v1, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/ArrayDeque;->dec(II)I

    move-result v0

    iput v0, p0, Ljava/util/ArrayDeque$DeqIterator;->cursor:I

    .line 716
    :cond_f
    return-void
.end method

.method public final whitelist test-api remove()V
    .registers 3

    .line 719
    .local p0, "this":Ljava/util/ArrayDeque$DeqIterator;, "Ljava/util/ArrayDeque<TE;>.DeqIterator;"
    iget v0, p0, Ljava/util/ArrayDeque$DeqIterator;->lastRet:I

    if-ltz v0, :cond_13

    .line 721
    iget-object v0, p0, Ljava/util/ArrayDeque$DeqIterator;->this$0:Ljava/util/ArrayDeque;

    iget v1, p0, Ljava/util/ArrayDeque$DeqIterator;->lastRet:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->delete(I)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayDeque$DeqIterator;->postDelete(Z)V

    .line 722
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/ArrayDeque$DeqIterator;->lastRet:I

    .line 723
    return-void

    .line 720
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
