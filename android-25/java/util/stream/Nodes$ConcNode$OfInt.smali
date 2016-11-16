.class final Ljava/util/stream/Nodes$ConcNode$OfInt;
.super Ljava/util/stream/Nodes$ConcNode$OfPrimitive;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$ConcNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Nodes$ConcNode$OfPrimitive",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/util/function/IntConsumer;",
        "[I",
        "Ljava/util/Spliterator$OfInt;",
        "Ljava/util/stream/Node$OfInt;",
        ">;",
        "Ljava/util/stream/Node$OfInt;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/stream/Node$OfInt;Ljava/util/stream/Node$OfInt;)V
    .locals 0
    .param p1, "left"    # Ljava/util/stream/Node$OfInt;
    .param p2, "right"    # Ljava/util/stream/Node$OfInt;

    #@0
    .prologue
    .line 888
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode$OfInt;, "Ljava/util/stream/Nodes$ConcNode<TT;>.OfInt;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/Nodes$ConcNode$OfPrimitive;-><init>(Ljava/util/stream/Node$OfPrimitive;Ljava/util/stream/Node$OfPrimitive;)V

    #@3
    .line 887
    return-void
.end method


# virtual methods
.method public spliterator()Ljava/util/Spliterator$OfInt;
    .locals 1

    #@0
    .prologue
    .line 893
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode$OfInt;, "Ljava/util/stream/Nodes$ConcNode<TT;>.OfInt;"
    new-instance v0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfInt;

    #@2
    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfInt;-><init>(Ljava/util/stream/Node$OfInt;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 892
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode$OfInt;, "Ljava/util/stream/Nodes$ConcNode<TT;>.OfInt;"
    invoke-virtual {p0}, Ljava/util/stream/Nodes$ConcNode$OfInt;->spliterator()Ljava/util/Spliterator$OfInt;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 892
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode$OfInt;, "Ljava/util/stream/Nodes$ConcNode<TT;>.OfInt;"
    invoke-virtual {p0}, Ljava/util/stream/Nodes$ConcNode$OfInt;->spliterator()Ljava/util/Spliterator$OfInt;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
