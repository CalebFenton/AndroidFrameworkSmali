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
        "Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator",
        "<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/util/Spliterator$OfLong;"
    }
.end annotation


# instance fields
.field final s:Ljava/util/function/LongSupplier;


# direct methods
.method constructor <init>(JLjava/util/function/LongSupplier;)V
    .locals 1
    .param p1, "size"    # J
    .param p3, "s"    # Ljava/util/function/LongSupplier;

    #@0
    .prologue
    .line 1398
    .local p0, "this":Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;, "Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<TT;>.OfLong;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;-><init>(J)V

    #@3
    .line 1399
    iput-object p3, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->s:Ljava/util/function/LongSupplier;

    #@5
    .line 1397
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 717
    .local p0, "this":Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;, "Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<TT;>.OfLong;"
    check-cast p1, Ljava/util/function/LongConsumer;

    #@2
    .end local p1    # "action":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    #@5
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1403
    .local p0, "this":Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;, "Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<TT;>.OfLong;"
    check-cast p1, Ljava/util/function/LongConsumer;

    #@2
    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 2
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    #@0
    .prologue
    .line 1404
    .local p0, "this":Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;, "Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<TT;>.OfLong;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1406
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->s:Ljava/util/function/LongSupplier;

    #@5
    invoke-interface {v0}, Ljava/util/function/LongSupplier;->getAsLong()J

    #@8
    move-result-wide v0

    #@9
    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    #@c
    .line 1407
    const/4 v0, 0x1

    #@d
    return v0
.end method

.method public trySplit()Ljava/util/Spliterator$OfLong;
    .locals 4

    #@0
    .prologue
    .line 1412
    .local p0, "this":Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;, "Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<TT;>.OfLong;"
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;->estimate:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1413
    const/4 v0, 0x0

    #@9
    return-object v0

    #@a
    .line 1414
    :cond_0
    new-instance v0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;

    #@c
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;->estimate:J

    #@e
    const/4 v1, 0x1

    #@f
    ushr-long/2addr v2, v1

    #@10
    iput-wide v2, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;->estimate:J

    #@12
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->s:Ljava/util/function/LongSupplier;

    #@14
    invoke-direct {v0, v2, v3, v1}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;-><init>(JLjava/util/function/LongSupplier;)V

    #@17
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 1411
    .local p0, "this":Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;, "Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<TT;>.OfLong;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->trySplit()Ljava/util/Spliterator$OfLong;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 1411
    .local p0, "this":Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;, "Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<TT;>.OfLong;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;->trySplit()Ljava/util/Spliterator$OfLong;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
