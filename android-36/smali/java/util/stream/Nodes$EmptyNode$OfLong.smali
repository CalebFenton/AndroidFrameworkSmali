.class final Ljava/util/stream/Nodes$EmptyNode$OfLong;
.super Ljava/util/stream/Nodes$EmptyNode;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$EmptyNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Nodes$EmptyNode<",
        "Ljava/lang/Long;",
        "[J",
        "Ljava/util/function/LongConsumer;",
        ">;",
        "Ljava/util/stream/Node$OfLong;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 616
    invoke-direct {p0}, Ljava/util/stream/Nodes$EmptyNode;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist asPrimitiveArray()Ljava/lang/Object;
    .registers 2

    .line 611
    invoke-virtual {p0}, Ljava/util/stream/Nodes$EmptyNode$OfLong;->asPrimitiveArray()[J

    move-result-object v0

    return-object v0
.end method

.method public blacklist asPrimitiveArray()[J
    .registers 2

    .line 625
    invoke-static {}, Ljava/util/stream/Nodes;->-$$Nest$sfgetEMPTY_LONG_ARRAY()[J

    move-result-object v0

    return-object v0
.end method

.method public blacklist spliterator()Ljava/util/Spliterator$OfLong;
    .registers 2

    .line 620
    invoke-static {}, Ljava/util/Spliterators;->emptyLongSpliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist spliterator()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 611
    invoke-virtual {p0}, Ljava/util/stream/Nodes$EmptyNode$OfLong;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist spliterator()Ljava/util/Spliterator;
    .registers 2

    .line 611
    invoke-virtual {p0}, Ljava/util/stream/Nodes$EmptyNode$OfLong;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
