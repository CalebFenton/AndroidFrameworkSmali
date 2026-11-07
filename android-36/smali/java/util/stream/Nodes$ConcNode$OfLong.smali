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
        "Ljava/util/stream/Nodes$ConcNode$OfPrimitive<",
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
.method constructor blacklist <init>(Ljava/util/stream/Node$OfLong;Ljava/util/stream/Node$OfLong;)V
    .registers 3
    .param p1, "left"    # Ljava/util/stream/Node$OfLong;
    .param p2, "right"    # Ljava/util/stream/Node$OfLong;

    .line 915
    invoke-direct {p0, p1, p2}, Ljava/util/stream/Nodes$ConcNode$OfPrimitive;-><init>(Ljava/util/stream/Node$OfPrimitive;Ljava/util/stream/Node$OfPrimitive;)V

    .line 916
    return-void
.end method


# virtual methods
.method public blacklist spliterator()Ljava/util/Spliterator$OfLong;
    .registers 2

    .line 920
    new-instance v0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfLong;

    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfLong;-><init>(Ljava/util/stream/Node$OfLong;)V

    return-object v0
.end method

.method public bridge synthetic blacklist spliterator()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 909
    invoke-virtual {p0}, Ljava/util/stream/Nodes$ConcNode$OfLong;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist spliterator()Ljava/util/Spliterator;
    .registers 2

    .line 909
    invoke-virtual {p0}, Ljava/util/stream/Nodes$ConcNode$OfLong;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
