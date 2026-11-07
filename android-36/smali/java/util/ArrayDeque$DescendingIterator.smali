.class Ljava/util/ArrayDeque$DescendingIterator;
.super Ljava/util/ArrayDeque$DeqIterator;
.source "ArrayDeque.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayDeque;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescendingIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayDeque<",
        "TE;>.DeqIterator;"
    }
.end annotation


# instance fields
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

    .line 750
    .local p0, "this":Ljava/util/ArrayDeque$DescendingIterator;, "Ljava/util/ArrayDeque<TE;>.DescendingIterator;"
    iput-object p1, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    invoke-direct {p0, p1}, Ljava/util/ArrayDeque$DeqIterator;-><init>(Ljava/util/ArrayDeque;)V

    iget v0, p1, Ljava/util/ArrayDeque;->tail:I

    iget-object p1, p1, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length p1, p1

    invoke-static {v0, p1}, Ljava/util/ArrayDeque;->dec(II)I

    move-result p1

    iput p1, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api forEachRemaining(Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 768
    .local p0, "this":Ljava/util/ArrayDeque$DescendingIterator;, "Ljava/util/ArrayDeque<TE;>.DescendingIterator;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    iget v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->remaining:I

    move v1, v0

    .local v1, "r":I
    if-gtz v0, :cond_9

    .line 771
    return-void

    .line 772
    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->remaining:I

    .line 773
    iget-object v2, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    iget-object v2, v2, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 774
    .local v2, "es":[Ljava/lang/Object;
    iget v3, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    aget-object v3, v2, v3

    if-eqz v3, :cond_53

    iget v3, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    iget-object v4, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    iget v4, v4, Ljava/util/ArrayDeque;->head:I

    array-length v5, v2

    invoke-static {v3, v4, v5}, Ljava/util/ArrayDeque;->sub(III)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_53

    .line 776
    iget v3, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    .local v3, "i":I
    iget-object v4, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    iget v4, v4, Ljava/util/ArrayDeque;->head:I

    .local v4, "end":I
    if-lt v3, v4, :cond_2e

    move v0, v4

    .line 779
    .local v0, "to":I
    :cond_2e
    :goto_2e
    add-int/lit8 v5, v0, -0x1

    if-le v3, v5, :cond_3c

    .line 780
    invoke-static {v2, v3}, Ljava/util/ArrayDeque;->elementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 779
    add-int/lit8 v3, v3, -0x1

    goto :goto_2e

    .line 781
    :cond_3c
    if-ne v0, v4, :cond_4e

    .line 782
    iget-object v5, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    iget v5, v5, Ljava/util/ArrayDeque;->head:I

    if-ne v4, v5, :cond_48

    .line 784
    iput v4, p0, Ljava/util/ArrayDeque$DescendingIterator;->lastRet:I

    .line 785
    nop

    .line 788
    .end local v0    # "to":I
    .end local v3    # "i":I
    .end local v4    # "end":I
    return-void

    .line 783
    .restart local v0    # "to":I
    .restart local v3    # "i":I
    .restart local v4    # "end":I
    :cond_48
    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5

    .line 777
    :cond_4e
    array-length v5, v2

    add-int/lit8 v3, v5, -0x1

    move v0, v4

    goto :goto_2e

    .line 775
    .end local v0    # "to":I
    .end local v3    # "i":I
    .end local v4    # "end":I
    :cond_53
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public final whitelist test-api next()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 753
    .local p0, "this":Ljava/util/ArrayDeque$DescendingIterator;, "Ljava/util/ArrayDeque<TE;>.DescendingIterator;"
    iget v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->remaining:I

    if-lez v0, :cond_20

    .line 755
    iget-object v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    iget-object v0, v0, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    .line 756
    .local v0, "es":[Ljava/lang/Object;
    iget v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    invoke-static {v0, v1}, Ljava/util/ArrayDeque;->nonNullElementAt([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 757
    .local v1, "e":Ljava/lang/Object;, "TE;"
    iget v2, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    iput v2, p0, Ljava/util/ArrayDeque$DescendingIterator;->lastRet:I

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/util/ArrayDeque;->dec(II)I

    move-result v2

    iput v2, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    .line 758
    iget v2, p0, Ljava/util/ArrayDeque$DescendingIterator;->remaining:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/util/ArrayDeque$DescendingIterator;->remaining:I

    .line 759
    return-object v1

    .line 754
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

    .line 763
    .local p0, "this":Ljava/util/ArrayDeque$DescendingIterator;, "Ljava/util/ArrayDeque<TE;>.DescendingIterator;"
    if-nez p1, :cond_f

    .line 764
    iget v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    iget-object v1, p0, Ljava/util/ArrayDeque$DescendingIterator;->this$0:Ljava/util/ArrayDeque;

    iget-object v1, v1, Ljava/util/ArrayDeque;->elements:[Ljava/lang/Object;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/ArrayDeque;->inc(II)I

    move-result v0

    iput v0, p0, Ljava/util/ArrayDeque$DescendingIterator;->cursor:I

    .line 765
    :cond_f
    return-void
.end method
