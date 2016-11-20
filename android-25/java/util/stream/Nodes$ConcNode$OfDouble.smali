.class final Ljava/util/stream/Nodes$ConcNode$OfDouble;
.super Ljava/util/stream/Nodes$ConcNode$OfPrimitive;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$ConcNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Nodes$ConcNode$OfPrimitive",
        "<",
        "Ljava/lang/Double;",
        "Ljava/util/function/DoubleConsumer;",
        "[D",
        "Ljava/util/Spliterator$OfDouble;",
        "Ljava/util/stream/Node$OfDouble;",
        ">;",
        "Ljava/util/stream/Node$OfDouble;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/stream/Node$OfDouble;Ljava/util/stream/Node$OfDouble;)V
    .locals 0
    .param p1, "left"    # Ljava/util/stream/Node$OfDouble;
    .param p2, "right"    # Ljava/util/stream/Node$OfDouble;

    #@0
    .prologue
    .line 916
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode$OfDouble;, "Ljava/util/stream/Nodes$ConcNode<TT;>.OfDouble;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/Nodes$ConcNode$OfPrimitive;-><init>(Ljava/util/stream/Node$OfPrimitive;Ljava/util/stream/Node$OfPrimitive;)V

    #@3
    .line 915
    return-void
.end method


# virtual methods
.method public spliterator()Ljava/util/Spliterator$OfDouble;
    .locals 1

    #@0
    .prologue
    .line 921
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode$OfDouble;, "Ljava/util/stream/Nodes$ConcNode<TT;>.OfDouble;"
    new-instance v0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfDouble;

    #@2
    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfDouble;-><init>(Ljava/util/stream/Node$OfDouble;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 920
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode$OfDouble;, "Ljava/util/stream/Nodes$ConcNode<TT;>.OfDouble;"
    invoke-virtual {p0}, Ljava/util/stream/Nodes$ConcNode$OfDouble;->spliterator()Ljava/util/Spliterator$OfDouble;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 920
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode$OfDouble;, "Ljava/util/stream/Nodes$ConcNode<TT;>.OfDouble;"
    invoke-virtual {p0}, Ljava/util/stream/Nodes$ConcNode$OfDouble;->spliterator()Ljava/util/Spliterator$OfDouble;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
