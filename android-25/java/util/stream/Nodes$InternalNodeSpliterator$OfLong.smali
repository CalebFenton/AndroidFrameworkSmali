.class final Ljava/util/stream/Nodes$InternalNodeSpliterator$OfLong;
.super Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;
.source "Nodes.java"

# interfaces
.implements Ljava/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$InternalNodeSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive",
        "<",
        "Ljava/lang/Long;",
        "Ljava/util/function/LongConsumer;",
        "[J",
        "Ljava/util/Spliterator$OfLong;",
        "Ljava/util/stream/Node$OfLong;",
        ">;",
        "Ljava/util/Spliterator$OfLong;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/stream/Node$OfLong;)V
    .locals 0
    .param p1, "cur"    # Ljava/util/stream/Node$OfLong;

    #@0
    .prologue
    .line 1177
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator$OfLong;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>.OfLong;"
    invoke-direct {p0, p1}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;-><init>(Ljava/util/stream/Node$OfPrimitive;)V

    #@3
    .line 1176
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 0
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    #@0
    .prologue
    .line 1142
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator$OfLong;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>.OfLong;"
    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 1
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    #@0
    .prologue
    .line 1120
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator$OfLong;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>.OfLong;"
    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfLong;
    .locals 1

    #@0
    .prologue
    .line 1016
    .local p0, "this":Ljava/util/stream/Nodes$InternalNodeSpliterator$OfLong;, "Ljava/util/stream/Nodes$InternalNodeSpliterator<TT;TS;TN;>.OfLong;"
    invoke-virtual {p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator;->trySplit()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/Spliterator$OfLong;

    #@6
    return-object v0
.end method
