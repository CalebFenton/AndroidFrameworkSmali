.class final Ljava/util/stream/Nodes$EmptyNode$OfLong;
.super Ljava/util/stream/Nodes$EmptyNode;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$EmptyNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Nodes$EmptyNode",
        "<",
        "Ljava/lang/Long;",
        "[J",
        "Ljava/util/function/LongConsumer;",
        ">;",
        "Ljava/util/stream/Node$OfLong;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 606
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfLong;, "Ljava/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>.OfLong;"
    invoke-direct {p0}, Ljava/util/stream/Nodes$EmptyNode;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 614
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfLong;, "Ljava/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>.OfLong;"
    invoke-virtual {p0}, Ljava/util/stream/Nodes$EmptyNode$OfLong;->asPrimitiveArray()[J

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public asPrimitiveArray()[J
    .locals 1

    #@0
    .prologue
    .line 615
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfLong;, "Ljava/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>.OfLong;"
    invoke-static {}, Ljava/util/stream/Nodes;->-get2()[J

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
    .line 443
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfLong;, "Ljava/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>.OfLong;"
    invoke-interface {p0, p1}, Ljava/util/stream/Node$OfLong;->newArray(I)[J

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator$OfLong;
    .locals 1

    #@0
    .prologue
    .line 610
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfLong;, "Ljava/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>.OfLong;"
    invoke-static {}, Ljava/util/Spliterators;->emptyLongSpliterator()Ljava/util/Spliterator$OfLong;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 609
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfLong;, "Ljava/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>.OfLong;"
    invoke-virtual {p0}, Ljava/util/stream/Nodes$EmptyNode$OfLong;->spliterator()Ljava/util/Spliterator$OfLong;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 609
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfLong;, "Ljava/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>.OfLong;"
    invoke-virtual {p0}, Ljava/util/stream/Nodes$EmptyNode$OfLong;->spliterator()Ljava/util/Spliterator$OfLong;

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
    .line 429
    .local p0, "this":Ljava/util/stream/Nodes$EmptyNode$OfLong;, "Ljava/util/stream/Nodes$EmptyNode<TT;TT_ARR;TT_CONS;>.OfLong;"
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfLong;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfLong;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
