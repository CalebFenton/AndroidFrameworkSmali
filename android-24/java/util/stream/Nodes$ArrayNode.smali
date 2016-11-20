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
        "Ljava/util/stream/Node",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final array:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field curSize:I


# direct methods
.method constructor <init>(JLjava/util/function/IntFunction;)V
    .locals 3
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/function/IntFunction",
            "<[TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 643
    .local p0, "this":Ljava/util/stream/Nodes$ArrayNode;, "Ljava/util/stream/Nodes$ArrayNode<TT;>;"
    .local p3, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 644
    const-wide/32 v0, 0x7ffffff7

    #@6
    cmp-long v0, p1, v0

    #@8
    if-ltz v0, :cond_0

    #@a
    .line 645
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v1, "Stream size exceeds max array size"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 646
    :cond_0
    long-to-int v0, p1

    #@14
    invoke-interface {p3, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, [Ljava/lang/Object;

    #@1a
    iput-object v0, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    #@1c
    .line 647
    const/4 v0, 0x0

    #@1d
    iput v0, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    #@1f
    .line 643
    return-void
.end method

.method constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 650
    .local p0, "this":Ljava/util/stream/Nodes$ArrayNode;, "Ljava/util/stream/Nodes$ArrayNode<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 651
    iput-object p1, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    #@5
    .line 652
    array-length v0, p1

    #@6
    iput v0, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    #@8
    .line 650
    return-void
.end method


# virtual methods
.method public asArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/IntFunction",
            "<[TT;>;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 669
    .local p0, "this":Ljava/util/stream/Nodes$ArrayNode;, "Ljava/util/stream/Nodes$ArrayNode<TT;>;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    iget-object v0, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    #@2
    array-length v0, v0

    #@3
    iget v1, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 670
    iget-object v0, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    #@9
    return-object v0

    #@a
    .line 672
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@c
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@f
    throw v0
.end method

.method public copyInto([Ljava/lang/Object;I)V
    .locals 3
    .param p2, "destOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 664
    .local p0, "this":Ljava/util/stream/Nodes$ArrayNode;, "Ljava/util/stream/Nodes$ArrayNode<TT;>;"
    .local p1, "dest":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    #@2
    iget v1, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    #@4
    const/4 v2, 0x0

    #@5
    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@8
    .line 663
    return-void
.end method

.method public count()J
    .locals 2

    #@0
    .prologue
    .line 678
    .local p0, "this":Ljava/util/stream/Nodes$ArrayNode;, "Ljava/util/stream/Nodes$ArrayNode<TT;>;"
    iget v0, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    #@2
    int-to-long v0, v0

    #@3
    return-wide v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 683
    .local p0, "this":Ljava/util/stream/Nodes$ArrayNode;, "Ljava/util/stream/Nodes$ArrayNode<TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    #@3
    if-ge v0, v1, :cond_0

    #@5
    .line 684
    iget-object v1, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    #@7
    aget-object v1, v1, v0

    #@9
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@c
    .line 683
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 682
    :cond_0
    return-void
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 659
    .local p0, "this":Ljava/util/stream/Nodes$ArrayNode;, "Ljava/util/stream/Nodes$ArrayNode<TT;>;"
    iget-object v0, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    #@2
    iget v1, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    #@4
    const/4 v2, 0x0

    #@5
    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->spliterator([Ljava/lang/Object;II)Ljava/util/Spliterator;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 692
    .local p0, "this":Ljava/util/stream/Nodes$ArrayNode;, "Ljava/util/stream/Nodes$ArrayNode<TT;>;"
    const-string/jumbo v0, "ArrayNode[%d][%s]"

    #@3
    const/4 v1, 0x2

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    .line 693
    iget-object v2, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    #@8
    array-length v2, v2

    #@9
    iget v3, p0, Ljava/util/stream/Nodes$ArrayNode;->curSize:I

    #@b
    sub-int/2addr v2, v3

    #@c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v2

    #@10
    const/4 v3, 0x0

    #@11
    aput-object v2, v1, v3

    #@13
    iget-object v2, p0, Ljava/util/stream/Nodes$ArrayNode;->array:[Ljava/lang/Object;

    #@15
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    const/4 v3, 0x1

    #@1a
    aput-object v2, v1, v3

    #@1c
    .line 692
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method
