.class final Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;
.super Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/Spliterator$OfLong;"
    }
.end annotation


# instance fields
.field final blacklist s:Ljava/util/function/LongSupplier;


# direct methods
.method constructor blacklist <init>(JLjava/util/function/LongSupplier;)V
    .registers 4
    .param p1, "size"    # J
    .param p3, "s"    # Ljava/util/function/LongSupplier;

    .line 1409
    invoke-direct {p0, p1, p2}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;-><init>(J)V

    .line 1410
    iput-object p3, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->s:Ljava/util/function/LongSupplier;

    .line 1411
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

    .line 1404
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/LongConsumer;)Z
    .registers 4
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 1415
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1417
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->s:Ljava/util/function/LongSupplier;

    invoke-interface {v0}, Ljava/util/function/LongSupplier;->getAsLong()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 1418
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfLong;
    .registers 5

    .line 1423
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->estimate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 1424
    const/4 v0, 0x0

    return-object v0

    .line 1425
    :cond_a
    new-instance v0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;

    iget-wide v1, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->estimate:J

    const/4 v3, 0x1

    ushr-long/2addr v1, v3

    iput-wide v1, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->estimate:J

    iget-object v3, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->s:Ljava/util/function/LongSupplier;

    invoke-direct {v0, v1, v2, v3}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;-><init>(JLjava/util/function/LongSupplier;)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1404
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->trySplit()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 1404
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->trySplit()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
