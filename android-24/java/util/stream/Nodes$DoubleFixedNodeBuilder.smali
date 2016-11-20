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
.field static final synthetic -assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;

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
    sput-boolean v0, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;->-assertionsDisabled:Z

    #@b
    .line 1584
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(J)V
    .locals 3
    .param p1, "size"    # J

    #@0
    .prologue
    .line 1589
    invoke-direct {p0, p1, p2}, Ljava/util/stream/Nodes$DoubleArrayNode;-><init>(J)V

    #@3
    .line 1590
    sget-boolean v0, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;->-assertionsDisabled:Z

    #@5
    if-nez v0, :cond_1

    #@7
    const-wide/32 v0, 0x7ffffff7

    #@a
    cmp-long v0, p1, v0

    #@c
    if-gez v0, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    :goto_0
    if-nez v0, :cond_1

    #@11
    new-instance v0, Ljava/lang/AssertionError;

    #@13
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@16
    throw v0

    #@17
    :cond_0
    const/4 v0, 0x0

    #@18
    goto :goto_0

    #@19
    .line 1588
    :cond_1
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 5
    .param p1, "i"    # D

    #@0
    .prologue
    .line 1615
    iget v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    #@2
    iget-object v1, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    #@4
    array-length v1, v1

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 1616
    iget-object v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    #@9
    iget v1, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    #@b
    add-int/lit8 v2, v1, 0x1

    #@d
    iput v2, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    #@f
    aput-wide p1, v0, v1

    #@11
    .line 1614
    return-void

    #@12
    .line 1618
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@14
    const-string/jumbo v1, "Accept exceeded fixed size of %d"

    #@17
    const/4 v2, 0x1

    #@18
    new-array v2, v2, [Ljava/lang/Object;

    #@1a
    .line 1619
    iget-object v3, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    #@1c
    array-length v3, v3

    #@1d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@20
    move-result-object v3

    #@21
    const/4 v4, 0x0

    #@22
    aput-object v3, v2, v4

    #@24
    .line 1618
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@27
    move-result-object v1

    #@28
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .param p1, "i"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 229
    check-cast p1, Ljava/lang/Double;

    #@2
    .end local p1    # "i":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/stream/Sink$OfDouble;->accept(Ljava/lang/Double;)V

    #@5
    return-void
.end method

.method public begin(J)V
    .locals 5
    .param p1, "size"    # J

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1605
    iget-object v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    #@3
    array-length v0, v0

    #@4
    int-to-long v0, v0

    #@5
    cmp-long v0, p1, v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1606
    new-instance v0, Ljava/lang/IllegalStateException;

    #@b
    const-string/jumbo v1, "Begin size %d is not equal to fixed size %d"

    #@e
    const/4 v2, 0x2

    #@f
    new-array v2, v2, [Ljava/lang/Object;

    #@11
    .line 1607
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@14
    move-result-object v3

    #@15
    aput-object v3, v2, v4

    #@17
    iget-object v3, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    #@19
    array-length v3, v3

    #@1a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v3

    #@1e
    const/4 v4, 0x1

    #@1f
    aput-object v3, v2, v4

    #@21
    .line 1606
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 1610
    :cond_0
    iput v4, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    #@2b
    .line 1604
    return-void
.end method

.method public build()Ljava/util/stream/Node$OfDouble;
    .locals 5

    #@0
    .prologue
    .line 1595
    iget v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    #@2
    iget-object v1, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    #@4
    array-length v1, v1

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 1596
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "Current size %d is less than fixed size %d"

    #@c
    const/4 v2, 0x2

    #@d
    new-array v2, v2, [Ljava/lang/Object;

    #@f
    .line 1597
    iget v3, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    #@11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v3

    #@15
    const/4 v4, 0x0

    #@16
    aput-object v3, v2, v4

    #@18
    iget-object v3, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    #@1a
    array-length v3, v3

    #@1b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v3

    #@1f
    const/4 v4, 0x1

    #@20
    aput-object v3, v2, v4

    #@22
    .line 1596
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 1600
    :cond_0
    return-object p0
.end method

.method public bridge synthetic build()Ljava/util/stream/Node;
    .locals 1

    #@0
    .prologue
    .line 1594
    invoke-virtual {p0}, Ljava/util/stream/Nodes$DoubleFixedNodeBuilder;->build()Ljava/util/stream/Node$OfDouble;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public end()V
    .locals 5

    #@0
    .prologue
    .line 1625
    iget v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    #@2
    iget-object v1, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    #@4
    array-length v1, v1

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 1626
    new-instance v0, Ljava/lang/IllegalStateException;

    #@9
    const-string/jumbo v1, "End size %d is less than fixed size %d"

    #@c
    const/4 v2, 0x2

    #@d
    new-array v2, v2, [Ljava/lang/Object;

    #@f
    .line 1627
    iget v3, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    #@11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v3

    #@15
    const/4 v4, 0x0

    #@16
    aput-object v3, v2, v4

    #@18
    iget-object v3, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    #@1a
    array-length v3, v3

    #@1b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v3

    #@1f
    const/4 v4, 0x1

    #@20
    aput-object v3, v2, v4

    #@22
    .line 1626
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 1624
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1633
    const-string/jumbo v0, "DoubleFixedNodeBuilder[%d][%s]"

    #@3
    const/4 v1, 0x2

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    .line 1634
    iget-object v2, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    #@8
    array-length v2, v2

    #@9
    iget v3, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    #@b
    sub-int/2addr v2, v3

    #@c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v2

    #@10
    const/4 v3, 0x0

    #@11
    aput-object v2, v1, v3

    #@13
    iget-object v2, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    #@15
    invoke-static {v2}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    const/4 v3, 0x1

    #@1a
    aput-object v2, v1, v3

    #@1c
    .line 1633
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method
