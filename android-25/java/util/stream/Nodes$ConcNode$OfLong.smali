.class final Ljava/util/stream/Nodes$ConcNode$OfLong;
.super Ljava/util/stream/Nodes$ConcNode$OfPrimitive;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$ConcNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Nodes$ConcNode$OfPrimitive",
        "<",
        "Ljava/lang/Long;",
        "Ljava/util/function/LongConsumer;",
        "[J",
        "Ljava/util/Spliterator$OfLong;",
        "Ljava/util/stream/Node$OfLong;",
        ">;",
        "Ljava/util/stream/Node$OfLong;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/stream/Node$OfLong;Ljava/util/stream/Node$OfLong;)V
    .locals 0
    .param p1, "left"    # Ljava/util/stream/Node$OfLong;
    .param p2, "right"    # Ljava/util/stream/Node$OfLong;

    #@0
    .prologue
    .line 902
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode$OfLong;, "Ljava/util/stream/Nodes$ConcNode<TT;>.OfLong;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/Nodes$ConcNode$OfPrimitive;-><init>(Ljava/util/stream/Node$OfPrimitive;Ljava/util/stream/Node$OfPrimitive;)V

    #@3
    .line 901
    return-void
.end method


# virtual methods
.method public spliterator()Ljava/util/Spliterator$OfLong;
    .locals 1

    #@0
    .prologue
    .line 907
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode$OfLong;, "Ljava/util/stream/Nodes$ConcNode<TT;>.OfLong;"
    new-instance v0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfLong;

    #@2
    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfLong;-><init>(Ljava/util/stream/Node$OfLong;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 906
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode$OfLong;, "Ljava/util/stream/Nodes$ConcNode<TT;>.OfLong;"
    invoke-virtual {p0}, Ljava/util/stream/Nodes$ConcNode$OfLong;->spliterator()Ljava/util/Spliterator$OfLong;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 906
    .local p0, "this":Ljava/util/stream/Nodes$ConcNode$OfLong;, "Ljava/util/stream/Nodes$ConcNode<TT;>.OfLong;"
    invoke-virtual {p0}, Ljava/util/stream/Nodes$ConcNode$OfLong;->spliterator()Ljava/util/Spliterator$OfLong;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
