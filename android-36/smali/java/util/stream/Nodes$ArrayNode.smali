.class Ljava/util/stream/Nodes$ArrayNode;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/stream/Node<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final blacklist array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field blacklist curSize:I


# direct methods
.method constructor blacklist <init>(JLjava/util/function/IntFunction;)V
    .registers 6
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)V"
        }
    .end annotation

    .line 654
    .local p0, "this":Ljava/util/stream/Nodes$ArrayNode;, "Ljava/util/stream/Nodes$ArrayNode<TT;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 655
    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-gez v0, :cond_17

    .line 657
    long-to-int v0, p1

    invoke-interface {p3, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    .line 658
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    .line 659
    return-void

    .line 656
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>([Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 661
    .local p0, "this":Ljava/util/stream/Nodes$ArrayNode;, "Ljava/util/stream/Nodes$ArrayNode<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 662
    iput-object p1, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    .line 663
    array-length v0, p1

    iput v0, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    .line 664
    return-void
.end method


# virtual methods
.method public blacklist asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 680
    .local p0, "this":Ljava/util/stream/Nodes$ArrayNode;, "Ljava/util/stream/Nodes$ArrayNode<TT;>;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    iget-object v0, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    if-ne v0, v1, :cond_a

    .line 681
    iget-object v0, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    return-object v0

    .line 683
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public blacklist copyInto([Ljava/lang/Object;I)V
    .registers 6
    .param p2, "destOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    .line 675
    .local p0, "this":Ljava/util/stream/Nodes$ArrayNode;, "Ljava/util/stream/Nodes$ArrayNode<TT;>;"
    .local p1, "dest":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 676
    return-void
.end method

.method public blacklist count()J
    .registers 3

    .line 689
    .local p0, "this":Ljava/util/stream/Nodes$ArrayNode;, "Ljava/util/stream/Nodes$ArrayNode<TT;>;"
    iget v0, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public blacklist forEach(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 694
    .local p0, "this":Ljava/util/stream/Nodes$ArrayNode;, "Ljava/util/stream/Nodes$ArrayNode<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    if-ge v0, v1, :cond_f

    .line 695
    iget-object v1, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 694
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 697
    .end local v0    # "i":I
    :cond_f
    return-void
.end method

.method public blacklist spliterator()Ljava/util/Spliterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 670
    .local p0, "this":Ljava/util/stream/Nodes$ArrayNode;, "Ljava/util/stream/Nodes$ArrayNode<TT;>;"
    iget-object v0, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->spliterator([Ljava/lang/Object;II)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 703
    .local p0, "this":Ljava/util/stream/Nodes$ArrayNode;, "Ljava/util/stream/Nodes$ArrayNode<TT;>;"
    iget-object v0, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    sub-int/2addr v0, v1

    .line 704
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 703
    const-string v1, "ArrayNode[%d][%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
