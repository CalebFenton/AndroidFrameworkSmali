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
        "Ljava/util/stream/Nodes$ConcNode$OfPrimitive<",
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
.method constructor blacklist <init>(Ljava/util/stream/Node$OfDouble;Ljava/util/stream/Node$OfDouble;)V
    .registers 3
    .param p1, "left"    # Ljava/util/stream/Node$OfDouble;
    .param p2, "right"    # Ljava/util/stream/Node$OfDouble;

    .line 930
    invoke-direct {p0, p1, p2}, Ljava/util/stream/Nodes$ConcNode$OfPrimitive;-><init>(Ljava/util/stream/Node$OfPrimitive;Ljava/util/stream/Node$OfPrimitive;)V

    .line 931
    return-void
.end method


# virtual methods
.method public blacklist spliterator()Ljava/util/Spliterator$OfDouble;
    .registers 2

    .line 935
    new-instance v0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfDouble;

    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfDouble;-><init>(Ljava/util/stream/Node$OfDouble;)V

    return-object v0
.end method

.method public bridge synthetic blacklist spliterator()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 924
    invoke-virtual {p0}, Ljava/util/stream/Nodes$ConcNode$OfDouble;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist spliterator()Ljava/util/Spliterator;
    .registers 2

    .line 924
    invoke-virtual {p0}, Ljava/util/stream/Nodes$ConcNode$OfDouble;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method
