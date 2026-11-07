.class Ljava/util/stream/Nodes$IntArrayNode;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljava/util/stream/Node$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntArrayNode"
.end annotation


# instance fields
.field final blacklist array:[I

.field blacklist curSize:I


# direct methods
.method constructor blacklist <init>(J)V
    .registers 5
    .param p1, "size"    # J

    .line 1333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1334
    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, p1, v0

    if-gez v0, :cond_13

    .line 1336
    long-to-int v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/util/stream/Nodes$IntArrayNode;->array:[I

    .line 1337
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/stream/Nodes$IntArrayNode;->curSize:I

    .line 1338
    return-void

    .line 1335
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>([I)V
    .registers 3
    .param p1, "array"    # [I

    .line 1340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1341
    iput-object p1, p0, Ljava/util/stream/Nodes$IntArrayNode;->array:[I

    .line 1342
    array-length v0, p1

    iput v0, p0, Ljava/util/stream/Nodes$IntArrayNode;->curSize:I

    .line 1343
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist asPrimitiveArray()Ljava/lang/Object;
    .registers 2

    .line 1329
    invoke-virtual {p0}, Ljava/util/stream/Nodes$IntArrayNode;->asPrimitiveArray()[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist asPrimitiveArray()[I
    .registers 3

    .line 1354
    iget-object v0, p0, Ljava/util/stream/Nodes$IntArrayNode;->array:[I

    array-length v0, v0

    iget v1, p0, Ljava/util/stream/Nodes$IntArrayNode;->curSize:I

    if-ne v0, v1, :cond_a

    .line 1355
    iget-object v0, p0, Ljava/util/stream/Nodes$IntArrayNode;->array:[I

    return-object v0

    .line 1357
    :cond_a
    iget-object v0, p0, Ljava/util/stream/Nodes$IntArrayNode;->array:[I

    iget v1, p0, Ljava/util/stream/Nodes$IntArrayNode;->curSize:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

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

    .line 1329
    check-cast p1, [I

    invoke-virtual {p0, p1, p2}, Ljava/util/stream/Nodes$IntArrayNode;->copyInto([II)V

    return-void
.end method

.method public blacklist copyInto([II)V
    .registers 6
    .param p1, "dest"    # [I
    .param p2, "destOffset"    # I

    .line 1363
    iget-object v0, p0, Ljava/util/stream/Nodes$IntArrayNode;->array:[I

    const/4 v1, 0x0

    iget v2, p0, Ljava/util/stream/Nodes$IntArrayNode;->curSize:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1364
    return-void
.end method

.method public blacklist count()J
    .registers 3

    .line 1368
    iget v0, p0, Ljava/util/stream/Nodes$IntArrayNode;->curSize:I

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

    .line 1329
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/Nodes$IntArrayNode;->forEach(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public blacklist forEach(Ljava/util/function/IntConsumer;)V
    .registers 4
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .line 1373
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Ljava/util/stream/Nodes$IntArrayNode;->curSize:I

    if-ge v0, v1, :cond_f

    .line 1374
    iget-object v1, p0, Ljava/util/stream/Nodes$IntArrayNode;->array:[I

    aget v1, v1, v0

    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 1373
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1376
    .end local v0    # "i":I
    :cond_f
    return-void
.end method

.method public blacklist spliterator()Ljava/util/Spliterator$OfInt;
    .registers 4

    .line 1349
    iget-object v0, p0, Ljava/util/stream/Nodes$IntArrayNode;->array:[I

    const/4 v1, 0x0

    iget v2, p0, Ljava/util/stream/Nodes$IntArrayNode;->curSize:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->spliterator([III)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist spliterator()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1329
    invoke-virtual {p0}, Ljava/util/stream/Nodes$IntArrayNode;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist spliterator()Ljava/util/Spliterator;
    .registers 2

    .line 1329
    invoke-virtual {p0}, Ljava/util/stream/Nodes$IntArrayNode;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 1380
    iget-object v0, p0, Ljava/util/stream/Nodes$IntArrayNode;->array:[I

    array-length v0, v0

    iget v1, p0, Ljava/util/stream/Nodes$IntArrayNode;->curSize:I

    sub-int/2addr v0, v1

    .line 1381
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Ljava/util/stream/Nodes$IntArrayNode;->array:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 1380
    const-string v1, "IntArrayNode[%d][%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
