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
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private building:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->-assertionsDisabled:Z

    #@b
    .line 1698
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1703
    invoke-direct {p0}, Ljava/util/stream/SpinedBuffer$OfLong;-><init>()V

    #@3
    .line 1701
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->building:Z

    #@6
    .line 1703
    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 3
    .param p1, "i"    # J

    #@0
    .prologue
    .line 1728
    sget-boolean v0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-boolean v0, p0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->building:Z

    #@6
    if-nez v0, :cond_0

    #@8
    new-instance v0, Ljava/lang/AssertionError;

    #@a
    const-string/jumbo v1, "not building"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@10
    throw v0

    #@11
    .line 1729
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfLong;->accept(J)V

    #@14
    .line 1727
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .param p1, "i"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 212
    check-cast p1, Ljava/lang/Long;

    #@2
    .end local p1    # "i":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/stream/Sink$OfLong;->accept(Ljava/lang/Long;)V

    #@5
    return-void
.end method

.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1746
    invoke-virtual {p0}, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->asPrimitiveArray()[J

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public asPrimitiveArray()[J
    .locals 2

    #@0
    .prologue
    .line 1747
    sget-boolean v0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_1

    #@4
    iget-boolean v0, p0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->building:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    if-nez v0, :cond_1

    #@b
    new-instance v0, Ljava/lang/AssertionError;

    #@d
    const-string/jumbo v1, "during building"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@13
    throw v0

    #@14
    :cond_0
    const/4 v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1748
    :cond_1
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfLong;->asPrimitiveArray()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, [J

    #@1c
    return-object v0
.end method

.method public begin(J)V
    .locals 3
    .param p1, "size"    # J

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1720
    sget-boolean v0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->-assertionsDisabled:Z

    #@3
    if-nez v0, :cond_1

    #@5
    iget-boolean v0, p0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->building:Z

    #@7
    if-eqz v0, :cond_0

    #@9
    const/4 v0, 0x0

    #@a
    :goto_0
    if-nez v0, :cond_1

    #@c
    new-instance v0, Ljava/lang/AssertionError;

    #@e
    const-string/jumbo v1, "was already building"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@14
    throw v0

    #@15
    :cond_0
    move v0, v1

    #@16
    goto :goto_0

    #@17
    .line 1721
    :cond_1
    iput-boolean v1, p0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->building:Z

    #@19
    .line 1722
    invoke-virtual {p0}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->clear()V

    #@1c
    .line 1723
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfPrimitive;->ensureCapacity(J)V

    #@1f
    .line 1719
    return-void
.end method

.method public build()Ljava/util/stream/Node$OfLong;
    .locals 2

    #@0
    .prologue
    .line 1753
    sget-boolean v0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_1

    #@4
    iget-boolean v0, p0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->building:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    if-nez v0, :cond_1

    #@b
    new-instance v0, Ljava/lang/AssertionError;

    #@d
    const-string/jumbo v1, "during building"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@13
    throw v0

    #@14
    :cond_0
    const/4 v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1754
    :cond_1
    return-object p0
.end method

.method public bridge synthetic build()Ljava/util/stream/Node;
    .locals 1

    #@0
    .prologue
    .line 1752
    invoke-virtual {p0}, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->build()Ljava/util/stream/Node$OfLong;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic copyInto(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 1740
    check-cast p1, [J

    #@2
    .end local p1    # "array":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->copyInto([JI)V

    #@5
    return-void
.end method

.method public copyInto([JI)V
    .locals 2
    .param p1, "array"    # [J
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 1741
    sget-boolean v0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_1

    #@4
    iget-boolean v0, p0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->building:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    if-nez v0, :cond_1

    #@b
    new-instance v0, Ljava/lang/AssertionError;

    #@d
    const-string/jumbo v1, "during building"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@13
    throw v0

    #@14
    :cond_0
    const/4 v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1742
    :cond_1
    invoke-super {p0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfLong;->copyInto(Ljava/lang/Object;I)V

    #@19
    .line 1740
    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .locals 0
    .param p1, "boxed"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 418
    check-cast p1, [Ljava/lang/Long;

    #@2
    .end local p1    # "boxed":[Ljava/lang/Object;
    invoke-interface {p0, p1, p2}, Ljava/util/stream/Node$OfLong;->copyInto([Ljava/lang/Long;I)V

    #@5
    return-void
.end method

.method public end()V
    .locals 2

    #@0
    .prologue
    .line 1734
    sget-boolean v0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    iget-boolean v0, p0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->building:Z

    #@6
    if-nez v0, :cond_0

    #@8
    new-instance v0, Ljava/lang/AssertionError;

    #@a
    const-string/jumbo v1, "was not building"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@10
    throw v0

    #@11
    .line 1735
    :cond_0
    const/4 v0, 0x0

    #@12
    iput-boolean v0, p0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->building:Z

    #@14
    .line 1733
    return-void
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;)V
    .locals 0
    .param p1, "consumer"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1712
    check-cast p1, Ljava/util/function/LongConsumer;

    #@2
    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->forEach(Ljava/util/function/LongConsumer;)V

    #@5
    return-void
.end method

.method public forEach(Ljava/util/function/LongConsumer;)V
    .locals 2
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    #@0
    .prologue
    .line 1713
    sget-boolean v0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_1

    #@4
    iget-boolean v0, p0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->building:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    if-nez v0, :cond_1

    #@b
    new-instance v0, Ljava/lang/AssertionError;

    #@d
    const-string/jumbo v1, "during building"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@13
    throw v0

    #@14
    :cond_0
    const/4 v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1714
    :cond_1
    invoke-super {p0, p1}, Ljava/util/stream/SpinedBuffer$OfLong;->forEach(Ljava/lang/Object;)V

    #@19
    .line 1712
    return-void
.end method

.method public bridge synthetic getChild(I)Ljava/util/stream/Node;
    .locals 1
    .param p1, "i"    # I

    #@0
    .prologue
    .line 249
    invoke-interface {p0, p1}, Ljava/util/stream/Node$OfPrimitive;->getChild(I)Ljava/util/stream/Node$OfPrimitive;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic newArray(I)Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 866
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfLong;->newArray(I)[J

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator$OfLong;
    .locals 2

    #@0
    .prologue
    .line 1707
    sget-boolean v0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_1

    #@4
    iget-boolean v0, p0, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->building:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    if-nez v0, :cond_1

    #@b
    new-instance v0, Ljava/lang/AssertionError;

    #@d
    const-string/jumbo v1, "during building"

    #@10
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@13
    throw v0

    #@14
    :cond_0
    const/4 v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1708
    :cond_1
    invoke-super {p0}, Ljava/util/stream/SpinedBuffer$OfLong;->spliterator()Ljava/util/Spliterator$OfLong;

    #@19
    move-result-object v0

    #@1a
    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 1706
    invoke-virtual {p0}, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->spliterator()Ljava/util/Spliterator$OfLong;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 1706
    invoke-virtual {p0}, Ljava/util/stream/Nodes$LongSpinedNodeBuilder;->spliterator()Ljava/util/Spliterator$OfLong;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfPrimitive;
    .locals 1
    .param p1, "from"    # J
    .param p3, "to"    # J
    .param p5, "generator"    # Ljava/util/function/IntFunction;

    #@0
    .prologue
    .line 429
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfLong;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfLong;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node;
    .locals 1
    .param p1, "from"    # J
    .param p3, "to"    # J
    .param p5, "generator"    # Ljava/util/function/IntFunction;

    #@0
    .prologue
    .line 429
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfLong;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfLong;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
