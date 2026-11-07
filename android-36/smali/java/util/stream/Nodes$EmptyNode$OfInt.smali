.class final Ljava/util/stream/Nodes$EmptyNode$OfInt;
.super Ljava/util/stream/Nodes$EmptyNode;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$EmptyNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Nodes$EmptyNode<",
        "Ljava/lang/Integer;",
        "[I",
        "Ljava/util/function/IntConsumer;",
        ">;",
        "Ljava/util/stream/Node$OfInt;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 598
    invoke-direct {p0}, Ljava/util/stream/Nodes$EmptyNode;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist asPrimitiveArray()Ljava/lang/Object;
    .registers 2

    .line 593
    invoke-virtual {p0}, Ljava/util/stream/Nodes$EmptyNode$OfInt;->asPrimitiveArray()[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist asPrimitiveArray()[I
    .registers 2

    .line 607
    invoke-static {}, Ljava/util/stream/Nodes;->-$$Nest$sfgetEMPTY_INT_ARRAY()[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist spliterator()Ljava/util/Spliterator$OfInt;
    .registers 2

    .line 602
    invoke-static {}, Ljava/util/Spliterators;->emptyIntSpliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist spliterator()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 593
    invoke-virtual {p0}, Ljava/util/stream/Nodes$EmptyNode$OfInt;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist spliterator()Ljava/util/Spliterator;
    .registers 2

    .line 593
    invoke-virtual {p0}, Ljava/util/stream/Nodes$EmptyNode$OfInt;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
