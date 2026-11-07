.class final Ljava/util/stream/Nodes$EmptyNode$OfDouble;
.super Ljava/util/stream/Nodes$EmptyNode;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$EmptyNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Nodes$EmptyNode<",
        "Ljava/lang/Double;",
        "[D",
        "Ljava/util/function/DoubleConsumer;",
        ">;",
        "Ljava/util/stream/Node$OfDouble;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 634
    invoke-direct {p0}, Ljava/util/stream/Nodes$EmptyNode;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist asPrimitiveArray()Ljava/lang/Object;
    .registers 2

    .line 629
    invoke-virtual {p0}, Ljava/util/stream/Nodes$EmptyNode$OfDouble;->asPrimitiveArray()[D

    move-result-object v0

    return-object v0
.end method

.method public blacklist asPrimitiveArray()[D
    .registers 2

    .line 643
    invoke-static {}, Ljava/util/stream/Nodes;->-$$Nest$sfgetEMPTY_DOUBLE_ARRAY()[D

    move-result-object v0

    return-object v0
.end method

.method public blacklist spliterator()Ljava/util/Spliterator$OfDouble;
    .registers 2

    .line 638
    invoke-static {}, Ljava/util/Spliterators;->emptyDoubleSpliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist spliterator()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 629
    invoke-virtual {p0}, Ljava/util/stream/Nodes$EmptyNode$OfDouble;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist spliterator()Ljava/util/Spliterator;
    .registers 2

    .line 629
    invoke-virtual {p0}, Ljava/util/stream/Nodes$EmptyNode$OfDouble;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method
