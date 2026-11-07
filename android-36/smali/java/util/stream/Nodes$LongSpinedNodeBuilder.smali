.class final Ljava/util/stream/Nodes$LongSpinedNodeBuilder;
.super Ljava/util/stream/SpinedBuffer$OfLong;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node$OfLong;
.implements Ljava/util/stream/Node$Builder$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LongSpinedNodeBuilder"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist building:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1715
    const-class v0, Ljava/util/stream/Nodes;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 1720
    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer$OfLong;-><init>()V

    .line 1718
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->building:Z

    .line 1720
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(J)V
    .registers 3
    .param p1, "i"    # J

    .line 1745
    nop

    .line 1746
    invoke-super {p0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfLong;->accept(J)V

    .line 1747
    return-void
.end method

.method public bridge synthetic blacklist asPrimitiveArray()Ljava/lang/Object;
    .registers 2

    .line 1715
    invoke-virtual {p0}, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->asPrimitiveArray()[J

    move-result-object v0

    return-object v0
.end method

.method public blacklist asPrimitiveArray()[J
    .registers 2

    .line 1764
    nop

    .line 1765
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfLong;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public blacklist begin(J)V
    .registers 4
    .param p1, "size"    # J

    .line 1737
    nop

    .line 1738
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->building:Z

    .line 1739
    invoke-virtual {p0}, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->clear()V

    .line 1740
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->ensureCapacity(J)V

    .line 1741
    return-void
.end method

.method public blacklist build()Ljava/util/stream/Node$OfLong;
    .registers 1

    .line 1770
    nop

    .line 1771
    return-object p0
.end method

.method public bridge synthetic blacklist build()Ljava/util/stream/Node;
    .registers 2

    .line 1715
    invoke-virtual {p0}, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->build()Ljava/util/stream/Node$OfLong;

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

    .line 1715
    check-cast p1, [J

    invoke-virtual {p0, p1, p2}, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->copyInto([JI)V

    return-void
.end method

.method public blacklist copyInto([JI)V
    .registers 3
    .param p1, "array"    # [J
    .param p2, "offset"    # I

    .line 1758
    nop

    .line 1759
    invoke-super {p0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfLong;->copyInto(Ljava/lang/Object;I)V

    .line 1760
    return-void
.end method

.method public blacklist end()V
    .registers 2

    .line 1751
    nop

    .line 1752
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->building:Z

    .line 1754
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

    .line 1715
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->forEach(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public blacklist forEach(Ljava/util/function/LongConsumer;)V
    .registers 2
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .line 1730
    nop

    .line 1731
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer$OfLong;->forEach(Ljava/lang/Object;)V

    .line 1732
    return-void
.end method

.method public blacklist spliterator()Ljava/util/Spliterator$OfLong;
    .registers 2

    .line 1724
    nop

    .line 1725
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfLong;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist spliterator()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1715
    invoke-virtual {p0}, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2

    .line 1715
    invoke-virtual {p0}, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
