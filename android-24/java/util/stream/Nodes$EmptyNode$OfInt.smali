.class final Ljava/util/stream/Nodes$EmptyNode$OfInt;
.super Ljava/util/stream/Nodes$EmptyNode;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$EmptyNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Nodes$EmptyNode",
        "<",
        "Ljava/lang/Integer;",
        "[I",
        "Ljava/util/function/IntConsumer;",
        ">;",
        "Ljava/util/stream/Node$OfInt;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 589
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfInt;, "Ljava/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>.OfInt;"
    invoke-direct {p0}, Ljava/util/stream/Nodes$EmptyNode;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 597
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfInt;, "Ljava/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>.OfInt;"
    invoke-virtual {p0}, Ljava/util/stream/Nodes$EmptyNode$OfInt;->asPrimitiveArray()[I

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public asPrimitiveArray()[I
    .locals 1

    #@0
    .prologue
    .line 598
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfInt;, "Ljava/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>.OfInt;"
    invoke-static {}, Ljava/util/stream/Nodes;->-get1()[I

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 1
    .param p1, "count"    # I

    #@0
    .prologue
    .line 370
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfInt;, "Ljava/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>.OfInt;"
    invoke-interface {p0, p1}, Ljava/util/stream/Node$OfInt;->newArray(I)[I

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator$OfInt;
    .locals 1

    #@0
    .prologue
    .line 593
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfInt;, "Ljava/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>.OfInt;"
    invoke-static {}, Ljava/util/Spliterators;->emptyIntSpliterator()Ljava/util/Spliterator$OfInt;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 592
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfInt;, "Ljava/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>.OfInt;"
    invoke-virtual {p0}, Ljava/util/stream/Nodes$EmptyNode$OfInt;->spliterator()Ljava/util/Spliterator$OfInt;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 592
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfInt;, "Ljava/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>.OfInt;"
    invoke-virtual {p0}, Ljava/util/stream/Nodes$EmptyNode$OfInt;->spliterator()Ljava/util/Spliterator$OfInt;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfPrimitive;
    .locals 1
    .param p1, "from"    # J
    .param p3, "to"    # J
    .param p5, "generator"    # Ljava/util/function/IntFunction;

    #@0
    .prologue
    .line 356
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfInt;, "Ljava/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>.OfInt;"
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfInt;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfInt;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
