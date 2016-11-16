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
        "Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/util/Spliterator$OfInt;"
    }
.end annotation


# instance fields
.field final s:Ljava/util/function/IntSupplier;


# direct methods
.method constructor <init>(JLjava/util/function/IntSupplier;)V
    .locals 1
    .param p1, "size"    # J
    .param p3, "s"    # Ljava/util/function/IntSupplier;

    #@0
    .prologue
    .line 1373
    .local p0, "this":Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<TT;>.OfInt;"
    invoke-direct {p0, p1, p2}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;-><init>(J)V

    #@3
    .line 1374
    iput-object p3, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->s:Ljava/util/function/IntSupplier;

    #@5
    .line 1372
    return-void
.end method


# virtual methods
.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 653
    .local p0, "this":Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<TT;>.OfInt;"
    check-cast p1, Ljava/util/function/IntConsumer;

    #@2
    .end local p1    # "action":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    #@5
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1378
    .local p0, "this":Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<TT;>.OfInt;"
    check-cast p1, Ljava/util/function/IntConsumer;

    #@2
    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 1
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    .line 1379
    .local p0, "this":Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<TT;>.OfInt;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1381
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->s:Ljava/util/function/IntSupplier;

    #@5
    invoke-interface {v0}, Ljava/util/function/IntSupplier;->getAsInt()I

    #@8
    move-result v0

    #@9
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    #@c
    .line 1382
    const/4 v0, 0x1

    #@d
    return v0
.end method

.method public trySplit()Ljava/util/Spliterator$OfInt;
    .locals 4

    #@0
    .prologue
    .line 1387
    .local p0, "this":Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<TT;>.OfInt;"
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;->estimate:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1388
    const/4 v0, 0x0

    #@9
    return-object v0

    #@a
    .line 1389
    :cond_0
    new-instance v0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;

    #@c
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;->estimate:J

    #@e
    const/4 v1, 0x1

    #@f
    ushr-long/2addr v2, v1

    #@10
    iput-wide v2, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator;->estimate:J

    #@12
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->s:Ljava/util/function/IntSupplier;

    #@14
    invoke-direct {v0, v2, v3, v1}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;-><init>(JLjava/util/function/IntSupplier;)V

    #@17
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 1386
    .local p0, "this":Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<TT;>.OfInt;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->trySplit()Ljava/util/Spliterator$OfInt;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 1386
    .local p0, "this":Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;, "Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator<TT;>.OfInt;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;->trySplit()Ljava/util/Spliterator$OfInt;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
