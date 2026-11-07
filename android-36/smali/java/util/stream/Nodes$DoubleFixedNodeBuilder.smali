.class final Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;
.super Ljava/util/stream/Nodes$DoubleArrayNode;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node$Builder$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DoubleFixedNodeBuilder"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1601
    const-class v0, Ljava/util/stream/Nodes;

    return-void
.end method

.method constructor blacklist <init>(J)V
    .registers 3
    .param p1, "size"    # J

    .line 1606
    invoke-direct {p0, p1, p2}, Ljava/util/stream/Nodes$DoubleArrayNode;-><init>(J)V

    .line 1607
    nop

    .line 1608
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(D)V
    .registers 6
    .param p1, "i"    # D

    .line 1632
    iget v0, p0, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;->curSize:I

    iget-object v1, p0, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 1633
    iget-object v0, p0, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    iget v1, p0, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;->curSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;->curSize:I

    aput-wide p1, v0, v1

    .line 1638
    return-void

    .line 1635
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    array-length v1, v1

    .line 1636
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 1635
    const-string v2, "Accept exceeded fixed size of %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist begin(J)V
    .registers 6
    .param p1, "size"    # J

    .line 1622
    iget-object v0, p0, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_c

    .line 1627
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;->curSize:I

    .line 1628
    return-void

    .line 1623
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1624
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 1623
    const-string v2, "Begin size %d is not equal to fixed size %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist build()Ljava/util/stream/Node$OfDouble;
    .registers 4

    .line 1612
    iget v0, p0, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;->curSize:I

    iget-object v1, p0, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    array-length v1, v1

    if-lt v0, v1, :cond_8

    .line 1617
    return-object p0

    .line 1613
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;->curSize:I

    .line 1614
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 1613
    const-string v2, "Current size %d is less than fixed size %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic blacklist build()Ljava/util/stream/Node;
    .registers 2

    .line 1601
    invoke-virtual {p0}, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;->build()Ljava/util/stream/Node$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public blacklist end()V
    .registers 4

    .line 1642
    iget v0, p0, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;->curSize:I

    iget-object v1, p0, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    array-length v1, v1

    if-lt v0, v1, :cond_8

    .line 1646
    return-void

    .line 1643
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    iget v1, p0, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;->curSize:I

    .line 1644
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 1643
    const-string v2, "End size %d is less than fixed size %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1650
    iget-object v0, p0, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    array-length v0, v0

    iget v1, p0, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;->curSize:I

    sub-int/2addr v0, v1

    .line 1651
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;->array:[D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 1650
    const-string v1, "DoubleFixedNodeBuilder[%d][%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
