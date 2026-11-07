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
        "Ljava/util/stream/Nodes$ConcNode$OfPrimitive<",
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
.method constructor blacklist <init>(Ljava/util/stream/Node$OfInt;Ljava/util/stream/Node$OfInt;)V
    .registers 3
    .param p1, "left"    # Ljava/util/stream/Node$OfInt;
    .param p2, "right"    # Ljava/util/stream/Node$OfInt;

    .line 900
    invoke-direct {p0, p1, p2}, Ljava/util/stream/Nodes$ConcNode$OfPrimitive;-><init>(Ljava/util/stream/Node$OfPrimitive;Ljava/util/stream/Node$OfPrimitive;)V

    .line 901
    return-void
.end method


# virtual methods
.method public blacklist spliterator()Ljava/util/Spliterator$OfInt;
    .registers 2

    .line 905
    new-instance v0, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfInt;

    invoke-direct {v0, p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfInt;-><init>(Ljava/util/stream/Node$OfInt;)V

    return-object v0
.end method

.method public bridge synthetic blacklist spliterator()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 894
    invoke-virtual {p0}, Ljava/util/stream/Nodes$ConcNode$OfInt;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist spliterator()Ljava/util/Spliterator;
    .registers 2

    .line 894
    invoke-virtual {p0}, Ljava/util/stream/Nodes$ConcNode$OfInt;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
