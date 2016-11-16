.class final Ljava/util/stream/Nodes$InternalNodeSpliterator$OfDouble;
.super Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;
.source "Nodes.java"

# interfaces
.implements Ljava/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$InternalNodeSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive",
        "<",
        "Ljava/lang/Double;",
        "Ljava/util/function/DoubleConsumer;",
        "[D",
        "Ljava/util/Spliterator$OfDouble;",
        "Ljava/util/stream/Node$OfDouble;",
        ">;",
        "Ljava/util/Spliterator$OfDouble;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/stream/Node$OfDouble;)V
    .locals 0
    .param p1, "cur"    # Ljava/util/stream/Node$OfDouble;

    #@0
    .prologue
    .line 1186
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator$OfDouble;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>.OfDouble;"
    invoke-direct {p0, p1}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;-><init>(Ljava/util/stream/Node$OfPrimitive;)V

    #@3
    .line 1185
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .locals 0
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    #@0
    .prologue
    .line 1142
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator$OfDouble;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>.OfDouble;"
    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .locals 1
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    #@0
    .prologue
    .line 1120
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator$OfDouble;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>.OfDouble;"
    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfDouble;
    .locals 1

    #@0
    .prologue
    .line 1016
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator$OfDouble;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>.OfDouble;"
    invoke-virtual {p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator;->trySplit()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/Spliterator$OfDouble;

    #@6
    return-object v0
.end method
