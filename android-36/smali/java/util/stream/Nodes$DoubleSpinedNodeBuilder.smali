.class final Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;
.super Ljava/util/stream/SpinedBuffer$OfDouble;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node$OfDouble;
.implements Ljava/util/stream/Node$Builder$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DoubleSpinedNodeBuilder"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist building:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1775
    const-class v0, Ljava/util/stream/Nodes;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 1780
    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer$OfDouble;-><init>()V

    .line 1778
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->building:Z

    .line 1780
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(D)V
    .registers 3
    .param p1, "i"    # D

    .line 1805
    nop

    .line 1806
    invoke-super {p0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfDouble;->accept(D)V

    .line 1807
    return-void
.end method

.method public bridge synthetic blacklist asPrimitiveArray()Ljava/lang/Object;
    .registers 2

    .line 1775
    invoke-virtual {p0}, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->asPrimitiveArray()[D

    move-result-object v0

    return-object v0
.end method

.method public blacklist asPrimitiveArray()[D
    .registers 2

    .line 1824
    nop

    .line 1825
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfDouble;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public blacklist begin(J)V
    .registers 4
    .param p1, "size"    # J

    .line 1797
    nop

    .line 1798
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->building:Z

    .line 1799
    invoke-virtual {p0}, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->clear()V

    .line 1800
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->ensureCapacity(J)V

    .line 1801
    return-void
.end method

.method public blacklist build()Ljava/util/stream/Node$OfDouble;
    .registers 1

    .line 1830
    nop

    .line 1831
    return-object p0
.end method

.method public bridge synthetic blacklist build()Ljava/util/stream/Node;
    .registers 2

    .line 1775
    invoke-virtual {p0}, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->build()Ljava/util/stream/Node$OfDouble;

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

    .line 1775
    check-cast p1, [D

    invoke-virtual {p0, p1, p2}, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->copyInto([DI)V

    return-void
.end method

.method public blacklist copyInto([DI)V
    .registers 3
    .param p1, "array"    # [D
    .param p2, "offset"    # I

    .line 1818
    nop

    .line 1819
    invoke-super {p0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfDouble;->copyInto(Ljava/lang/Object;I)V

    .line 1820
    return-void
.end method

.method public blacklist end()V
    .registers 2

    .line 1811
    nop

    .line 1812
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->building:Z

    .line 1814
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

    .line 1775
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->forEach(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public blacklist forEach(Ljava/util/function/DoubleConsumer;)V
    .registers 2
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .line 1790
    nop

    .line 1791
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer$OfDouble;->forEach(Ljava/lang/Object;)V

    .line 1792
    return-void
.end method

.method public blacklist spliterator()Ljava/util/Spliterator$OfDouble;
    .registers 2

    .line 1784
    nop

    .line 1785
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfDouble;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist spliterator()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1775
    invoke-virtual {p0}, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2

    .line 1775
    invoke-virtual {p0}, Ljava/util/stream/Nodes$DoubleSpinedNodeBuilder;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method
