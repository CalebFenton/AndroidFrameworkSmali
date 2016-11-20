.class final Ljava/util/stream/Nodes$EmptyNode$OfDouble;
.super Ljava/util/stream/Nodes$EmptyNode;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$EmptyNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Nodes$EmptyNode",
        "<",
        "Ljava/lang/Double;",
        "[D",
        "Ljava/util/function/DoubleConsumer;",
        ">;",
        "Ljava/util/stream/Node$OfDouble;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 623
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfDouble;, "Ljava/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>.OfDouble;"
    invoke-direct {p0}, Ljava/util/stream/Nodes$EmptyNode;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 631
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfDouble;, "Ljava/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>.OfDouble;"
    invoke-virtual {p0}, Ljava/util/stream/Nodes$EmptyNode$OfDouble;->asPrimitiveArray()[D

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public asPrimitiveArray()[D
    .locals 1

    #@0
    .prologue
    .line 632
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfDouble;, "Ljava/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>.OfDouble;"
    invoke-static {}, Ljava/util/stream/Nodes;->-get0()[D

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
    .line 518
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfDouble;, "Ljava/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>.OfDouble;"
    invoke-interface {p0, p1}, Ljava/util/stream/Node$OfDouble;->newArray(I)[D

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator$OfDouble;
    .locals 1

    #@0
    .prologue
    .line 627
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfDouble;, "Ljava/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>.OfDouble;"
    invoke-static {}, Ljava/util/Spliterators;->emptyDoubleSpliterator()Ljava/util/Spliterator$OfDouble;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 626
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfDouble;, "Ljava/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>.OfDouble;"
    invoke-virtual {p0}, Ljava/util/stream/Nodes$EmptyNode$OfDouble;->spliterator()Ljava/util/Spliterator$OfDouble;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 626
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfDouble;, "Ljava/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>.OfDouble;"
    invoke-virtual {p0}, Ljava/util/stream/Nodes$EmptyNode$OfDouble;->spliterator()Ljava/util/Spliterator$OfDouble;

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
    .line 504
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfDouble;, "Ljava/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>.OfDouble;"
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfDouble;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfDouble;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
