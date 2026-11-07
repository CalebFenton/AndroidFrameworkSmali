.class Ljava/util/stream/Nodes$LongArrayNode;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LongArrayNode"
.end annotation


# instance fields
.field final blacklist array:[J

.field blacklist curSize:I


# direct methods
.method constructor blacklist <init>(J)V
    .registers 5
    .param p1, "size"    # J

    .line 1389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1390
    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-gez v0, :cond_13

    .line 1392
    long-to-int v0, p1

    new-array v0, v0, [J

    iput-object v0, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    .line 1393
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    .line 1394
    return-void

    .line 1391
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>([J)V
    .registers 3
    .param p1, "array"    # [J

    .line 1396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1397
    iput-object p1, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    .line 1398
    array-length v0, p1

    iput v0, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    .line 1399
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist asPrimitiveArray()Ljava/lang/Object;
    .registers 2

    .line 1385
    invoke-virtual {p0}, Ljava/util/stream/Nodes$LongArrayNode;->asPrimitiveArray()[J

    move-result-object v0

    return-object v0
.end method

.method public blacklist asPrimitiveArray()[J
    .registers 3

    .line 1408
    iget-object v0, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    array-length v0, v0

    iget v1, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    if-ne v0, v1, :cond_a

    .line 1409
    iget-object v0, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    return-object v0

    .line 1411
    :cond_a
    iget-object v0, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    iget v1, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

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

    .line 1385
    check-cast p1, [J

    invoke-virtual {p0, p1, p2}, Ljava/util/stream/Nodes$LongArrayNode;->copyInto([JI)V

    return-void
.end method

.method public blacklist copyInto([JI)V
    .registers 6
    .param p1, "dest"    # [J
    .param p2, "destOffset"    # I

    .line 1417
    iget-object v0, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    const/4 v1, 0x0

    iget v2, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1418
    return-void
.end method

.method public blacklist count()J
    .registers 3

    .line 1422
    iget v0, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

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

    .line 1385
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$LongArrayNode;->forEach(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public blacklist forEach(Ljava/util/function/LongConsumer;)V
    .registers 5
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .line 1427
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    if-ge v0, v1, :cond_f

    .line 1428
    iget-object v1, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    aget-wide v1, v1, v0

    invoke-interface {p1, v1, v2}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 1427
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1430
    .end local v0    # "i":I
    :cond_f
    return-void
.end method

.method public blacklist spliterator()Ljava/util/Spliterator$OfLong;
    .registers 4

    .line 1403
    iget-object v0, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    const/4 v1, 0x0

    iget v2, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->spliterator([JII)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist spliterator()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1385
    invoke-virtual {p0}, Ljava/util/stream/Nodes$LongArrayNode;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist spliterator()Ljava/util/Spliterator;
    .registers 2

    .line 1385
    invoke-virtual {p0}, Ljava/util/stream/Nodes$LongArrayNode;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1434
    iget-object v0, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    array-length v0, v0

    iget v1, p0, Ljava/util/stream/Nodes$LongArrayNode;->curSize:I

    sub-int/2addr v0, v1

    .line 1435
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Ljava/util/stream/Nodes$LongArrayNode;->array:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 1434
    const-string v1, "LongArrayNode[%d][%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
