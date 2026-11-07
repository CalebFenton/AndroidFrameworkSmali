.class final Ljava/util/stream/Nodes$IntSpinedNodeBuilder;
.super Ljava/util/stream/SpinedBuffer$OfInt;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node$OfInt;
.implements Ljava/util/stream/Node$Builder$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IntSpinedNodeBuilder"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist building:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1655
    const-class v0, Ljava/util/stream/Nodes;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 1660
    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer$OfInt;-><init>()V

    .line 1658
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    .line 1660
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(I)V
    .registers 2
    .param p1, "i"    # I

    .line 1685
    nop

    .line 1686
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer$OfInt;->accept(I)V

    .line 1687
    return-void
.end method

.method public bridge synthetic blacklist asPrimitiveArray()Ljava/lang/Object;
    .registers 2

    .line 1655
    invoke-virtual {p0}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->asPrimitiveArray()[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist asPrimitiveArray()[I
    .registers 2

    .line 1704
    nop

    .line 1705
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfInt;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public blacklist begin(J)V
    .registers 4
    .param p1, "size"    # J

    .line 1677
    nop

    .line 1678
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    .line 1679
    invoke-virtual {p0}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->clear()V

    .line 1680
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->ensureCapacity(J)V

    .line 1681
    return-void
.end method

.method public blacklist build()Ljava/util/stream/Node$OfInt;
    .registers 1

    .line 1710
    nop

    .line 1711
    return-object p0
.end method

.method public bridge synthetic blacklist build()Ljava/util/stream/Node;
    .registers 2

    .line 1655
    invoke-virtual {p0}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->build()Ljava/util/stream/Node$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist copyInto(Ljava/lang/Object;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1655
    check-cast p1, [I

    invoke-virtual {p0, p1, p2}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->copyInto([II)V

    return-void
.end method

.method public blacklist copyInto([II)V
    .registers 3
    .param p1, "array"    # [I
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 1698
    nop

    .line 1699
    invoke-super {p0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfInt;->copyInto(Ljava/lang/Object;I)V

    .line 1700
    return-void
.end method

.method public blacklist end()V
    .registers 2

    .line 1691
    nop

    .line 1692
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->building:Z

    .line 1694
    return-void
.end method

.method public bridge synthetic blacklist forEach(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1655
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public blacklist forEach(Ljava/util/function/IntConsumer;)V
    .registers 2
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .line 1670
    nop

    .line 1671
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer$OfInt;->forEach(Ljava/lang/Object;)V

    .line 1672
    return-void
.end method

.method public blacklist spliterator()Ljava/util/Spliterator$OfInt;
    .registers 2

    .line 1664
    nop

    .line 1665
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfInt;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist spliterator()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1655
    invoke-virtual {p0}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2

    .line 1655
    invoke-virtual {p0}, Ljava/util/stream/Nodes$IntSpinedNodeBuilder;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
