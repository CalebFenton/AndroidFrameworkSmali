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
.field final blacklist array:[D

.field blacklist curSize:I


# direct methods
.method constructor blacklist <init>(J)V
    .registers 5
    .param p1, "size"    # J

    .line 1443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1444
    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-gez v0, :cond_13

    .line 1446
    long-to-int v0, p1

    new-array v0, v0, [D

    iput-object v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    .line 1447
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    .line 1448
    return-void

    .line 1445
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>([D)V
    .registers 3
    .param p1, "array"    # [D

    .line 1450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1451
    iput-object p1, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    .line 1452
    array-length v0, p1

    iput v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    .line 1453
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist asPrimitiveArray()Ljava/lang/Object;
    .registers 2

    .line 1439
    invoke-virtual {p0}, Ljava/util/stream/Nodes$DoubleArrayNode;->asPrimitiveArray()[D

    move-result-object v0

    return-object v0
.end method

.method public blacklist asPrimitiveArray()[D
    .registers 3

    .line 1462
    iget-object v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    array-length v0, v0

    iget v1, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    if-ne v0, v1, :cond_a

    .line 1463
    iget-object v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    return-object v0

    .line 1465
    :cond_a
    iget-object v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    iget v1, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([DI)[D

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

    .line 1439
    check-cast p1, [D

    invoke-virtual {p0, p1, p2}, Ljava/util/stream/Nodes$DoubleArrayNode;->copyInto([DI)V

    return-void
.end method

.method public blacklist copyInto([DI)V
    .registers 6
    .param p1, "dest"    # [D
    .param p2, "destOffset"    # I

    .line 1471
    iget-object v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    const/4 v1, 0x0

    iget v2, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1472
    return-void
.end method

.method public blacklist count()J
    .registers 3

    .line 1476
    iget v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    int-to-long v0, v0

    return-wide v0
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

    .line 1439
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$DoubleArrayNode;->forEach(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public blacklist forEach(Ljava/util/function/DoubleConsumer;)V
    .registers 5
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .line 1481
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    if-ge v0, v1, :cond_f

    .line 1482
    iget-object v1, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    aget-wide v1, v1, v0

    invoke-interface {p1, v1, v2}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 1481
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1484
    .end local v0    # "i":I
    :cond_f
    return-void
.end method

.method public blacklist spliterator()Ljava/util/Spliterator$OfDouble;
    .registers 4

    .line 1457
    iget-object v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    const/4 v1, 0x0

    iget v2, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->spliterator([DII)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist spliterator()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1439
    invoke-virtual {p0}, Ljava/util/stream/Nodes$DoubleArrayNode;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist spliterator()Ljava/util/Spliterator;
    .registers 2

    .line 1439
    invoke-virtual {p0}, Ljava/util/stream/Nodes$DoubleArrayNode;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1488
    iget-object v0, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    array-length v0, v0

    iget v1, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->curSize:I

    sub-int/2addr v0, v1

    .line 1489
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Ljava/util/stream/Nodes$DoubleArrayNode;->array:[D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 1488
    const-string v1, "DoubleArrayNode[%d][%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
