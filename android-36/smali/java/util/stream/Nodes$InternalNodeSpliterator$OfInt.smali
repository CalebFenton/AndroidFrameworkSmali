.class final Ljava/util/stream/Nodes$InternalNodeSpliterator$OfInt;
.super Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;
.source "Nodes.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes$InternalNodeSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive<",
        "Ljava/lang/Integer;",
        "Ljava/util/function/IntConsumer;",
        "[I",
        "Ljava/util/Spliterator$OfInt;",
        "Ljava/util/stream/Node$OfInt;",
        ">;",
        "Ljava/util/Spliterator$OfInt;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/Node$OfInt;)V
    .registers 2
    .param p1, "cur"    # Ljava/util/stream/Node$OfInt;

    .line 1183
    invoke-direct {p0, p1}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;-><init>(Ljava/util/stream/Node$OfPrimitive;)V

    .line 1184
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1177
    invoke-super {p0, p1}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic whitelist test-api tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1177
    invoke-super {p0, p1}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfInt;
    .registers 2

    .line 1177
    invoke-super {p0}, Ljava/util/stream/Nodes$InternalNodeSpliterator$OfPrimitive;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfInt;

    return-object v0
.end method
