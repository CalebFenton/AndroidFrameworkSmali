.class final Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;
.super Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/Spliterator$OfInt;"
    }
.end annotation


# instance fields
.field final blacklist s:Ljava/util/function/IntSupplier;


# direct methods
.method constructor blacklist <init>(JLjava/util/function/IntSupplier;)V
    .registers 4
    .param p1, "size"    # J
    .param p3, "s"    # Ljava/util/function/IntSupplier;

    .line 1384
    invoke-direct {p0, p1, p2}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;-><init>(J)V

    .line 1385
    iput-object p3, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->s:Ljava/util/function/IntSupplier;

    .line 1386
    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api tryAdvance(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1379
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 3
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 1390
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->s:Ljava/util/function/IntSupplier;

    invoke-interface {v0}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 1393
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfInt;
    .registers 5

    .line 1398
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->estimate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 1399
    const/4 v0, 0x0

    return-object v0

    .line 1400
    :cond_a
    new-instance v0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;

    iget-wide v1, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->estimate:J

    const/4 v3, 0x1

    ushr-long/2addr v1, v3

    iput-wide v1, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->estimate:J

    iget-object v3, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->s:Ljava/util/function/IntSupplier;

    invoke-direct {v0, v1, v2, v3}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;-><init>(JLjava/util/function/IntSupplier;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1379
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 1379
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
