.class final Ljava/util/stream/Nodes$ToArrayTask$OfDouble;
.super Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$ToArrayTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive",
        "<",
        "Ljava/lang/Double;",
        "Ljava/util/function/DoubleConsumer;",
        "[D",
        "Ljava/util/Spliterator$OfDouble;",
        "Ljava/util/stream/Node$OfDouble;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/stream/Node$OfDouble;[DI)V
    .locals 1
    .param p1, "node"    # Ljava/util/stream/Node$OfDouble;
    .param p2, "array"    # [D
    .param p3, "offset"    # I

    #@0
    .prologue
    .line 2144
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask$OfDouble;, "Ljava/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>.OfDouble;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Ljava/util/stream/Nodes$ToArrayTask$OfPrimitive;-><init>(Ljava/util/stream/Node$OfPrimitive;Ljava/lang/Object;ILjava/util/stream/Nodes$ToArrayTask$OfPrimitive;)V

    #@4
    .line 2143
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/stream/Node$OfDouble;[DILjava/util/stream/Nodes$ToArrayTask$OfDouble;)V
    .locals 0
    .param p1, "node"    # Ljava/util/stream/Node$OfDouble;
    .param p2, "array"    # [D
    .param p3, "offset"    # I

    #@0
    .prologue
    .local p0, "this":Ljava/util/stream/Nodes$ToArrayTask$OfDouble;, "Ljava/util/stream/Nodes$ToArrayTask<TT;TT_NODE;TK;>.OfDouble;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/Nodes$ToArrayTask$OfDouble;-><init>(Ljava/util/stream/Node$OfDouble;[DI)V

    #@3
    return-void
.end method
