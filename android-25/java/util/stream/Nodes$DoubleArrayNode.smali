.class Ljava/util/stream/Nodes$DoubleArrayNode;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DoubleArrayNode"
.end annotation


# instance fields
.field final array:[D

.field curSize:I


# direct methods
.method constructor <init>(J)V
    .locals 3
    .param p1, "size"    # J

    #@0
    .prologue
    .line 1426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1427
    const-wide/32 v0, 0x7ffffff7

    #@6
    cmp-long v0, p1, v0

    #@8
    if-ltz v0, :cond_0

    #@a
    .line 1428
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v1, "Stream size exceeds max array size"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 1429
    :cond_0
    long-to-int v0, p1

    #@14
    new-array v0, v0, [D

    #@16
    iput-object v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    #@18
    .line 1430
    const/4 v0, 0x0

    #@19
    iput v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    #@1b
    .line 1426
    return-void
.end method

.method constructor <init>([D)V
    .locals 1
    .param p1, "array"    # [D

    #@0
    .prologue
    .line 1433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1434
    iput-object p1, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    #@5
    .line 1435
    array-length v0, p1

    #@6
    iput v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    #@8
    .line 1433
    return-void
.end method


# virtual methods
.method public bridge synthetic asPrimitiveArray()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1444
    invoke-virtual {p0}, Ljava/util/stream/Nodes$DoubleArrayNode;->asPrimitiveArray()[D

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public asPrimitiveArray()[D
    .locals 2

    #@0
    .prologue
    .line 1445
    iget-object v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    #@2
    array-length v0, v0

    #@3
    iget v1, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 1446
    iget-object v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    #@9
    return-object v0

    #@a
    .line 1448
    :cond_0
    iget-object v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    #@c
    iget v1, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    #@e
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([DI)[D

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public bridge synthetic copyInto(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "dest"    # Ljava/lang/Object;
    .param p2, "destOffset"    # I

    #@0
    .prologue
    .line 1453
    check-cast p1, [D

    #@2
    .end local p1    # "dest":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/Nodes$DoubleArrayNode;->copyInto([DI)V

    #@5
    return-void
.end method

.method public copyInto([DI)V
    .locals 3
    .param p1, "dest"    # [D
    .param p2, "destOffset"    # I

    #@0
    .prologue
    .line 1454
    iget-object v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    #@2
    iget v1, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    #@4
    const/4 v2, 0x0

    #@5
    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy([DI[DII)V

    #@8
    .line 1453
    return-void
.end method

.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .locals 0
    .param p1, "boxed"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    #@0
    .prologue
    .line 493
    check-cast p1, [Ljava/lang/Double;

    #@2
    .end local p1    # "boxed":[Ljava/lang/Object;
    invoke-interface {p0, p1, p2}, Ljava/util/stream/Node$OfDouble;->copyInto([Ljava/lang/Double;I)V

    #@5
    return-void
.end method

.method public count()J
    .locals 2

    #@0
    .prologue
    .line 1459
    iget v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    #@2
    int-to-long v0, v0

    #@3
    return-wide v0
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;)V
    .locals 0
    .param p1, "consumer"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1463
    check-cast p1, Ljava/util/function/DoubleConsumer;

    #@2
    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$DoubleArrayNode;->forEach(Ljava/util/function/DoubleConsumer;)V

    #@5
    return-void
.end method

.method public forEach(Ljava/util/function/DoubleConsumer;)V
    .locals 4
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    #@0
    .prologue
    .line 1464
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    #@3
    if-ge v0, v1, :cond_0

    #@5
    .line 1465
    iget-object v1, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    #@7
    aget-wide v2, v1, v0

    #@9
    invoke-interface {p1, v2, v3}, Ljava/util/function/DoubleConsumer;->accept(D)V

    #@c
    .line 1464
    add-int/lit8 v0, v0, 0x1

    #@e
    goto :goto_0

    #@f
    .line 1463
    :cond_0
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
    .param p1, "count"    # I

    #@0
    .prologue
    .line 518
    invoke-interface {p0, p1}, Ljava/util/stream/Node$OfDouble;->newArray(I)[D

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator$OfDouble;
    .locals 3

    #@0
    .prologue
    .line 1440
    iget-object v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    #@2
    iget v1, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    #@4
    const/4 v2, 0x0

    #@5
    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->spliterator([DII)Ljava/util/Spliterator$OfDouble;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 1439
    invoke-virtual {p0}, Ljava/util/stream/Nodes$DoubleArrayNode;->spliterator()Ljava/util/Spliterator$OfDouble;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 1439
    invoke-virtual {p0}, Ljava/util/stream/Nodes$DoubleArrayNode;->spliterator()Ljava/util/Spliterator$OfDouble;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1471
    const-string/jumbo v0, "DoubleArrayNode[%d][%s]"

    #@3
    const/4 v1, 0x2

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    .line 1472
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
    .line 1471
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method

.method public bridge synthetic truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfPrimitive;
    .locals 1
    .param p1, "from"    # J
    .param p3, "to"    # J
    .param p5, "generator"    # Ljava/util/function/IntFunction;

    #@0
    .prologue
    .line 504
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfDouble;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfDouble;

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
    .line 504
    invoke-interface/range {p0 .. p5}, Ljava/util/stream/Node$OfDouble;->truncate(JJLjava/util/function/IntFunction;)Ljava/util/stream/Node$OfDouble;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
