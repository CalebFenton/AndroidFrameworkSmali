.class final Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;
.super Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfDouble;
.implements Ljava/util/function/DoubleConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive<",
        "Ljava/lang/Double;",
        "Ljava/util/function/DoubleConsumer;",
        "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;",
        "Ljava/util/Spliterator$OfDouble;",
        ">;",
        "Ljava/util/Spliterator$OfDouble;",
        "Ljava/util/function/DoubleConsumer;"
    }
.end annotation


# instance fields
.field blacklist tmpValue:D


# direct methods
.method constructor blacklist <init>(Ljava/util/Spliterator$OfDouble;JJ)V
    .registers 6
    .param p1, "s"    # Ljava/util/Spliterator$OfDouble;
    .param p2, "skip"    # J
    .param p4, "limit"    # J

    .line 1217
    invoke-direct/range {p0 .. p5}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;JJ)V

    .line 1218
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Spliterator$OfDouble;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;)V
    .registers 3
    .param p1, "s"    # Ljava/util/Spliterator$OfDouble;
    .param p2, "parent"    # Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;

    .line 1221
    invoke-direct {p0, p1, p2}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;)V

    .line 1222
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(D)V
    .registers 3
    .param p1, "value"    # D

    .line 1226
    iput-wide p1, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;->tmpValue:D

    .line 1227
    return-void
.end method

.method protected bridge synthetic blacklist acceptConsumed(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1209
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;->acceptConsumed(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method protected blacklist acceptConsumed(Ljava/util/function/DoubleConsumer;)V
    .registers 4
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;

    .line 1231
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;->tmpValue:D

    invoke-interface {p1, v0, v1}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 1232
    return-void
.end method

.method protected blacklist bufferCreate(I)Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 1236
    new-instance v0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;

    invoke-direct {v0, p1}, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic blacklist bufferCreate(I)Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1209
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;->bufferCreate(I)Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1209
    invoke-super {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method protected blacklist makeSpliterator(Ljava/util/Spliterator$OfDouble;)Ljava/util/Spliterator$OfDouble;
    .registers 3
    .param p1, "s"    # Ljava/util/Spliterator$OfDouble;

    .line 1241
    new-instance v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;

    invoke-direct {v0, p1, p0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;-><init>(Ljava/util/Spliterator$OfDouble;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;)V

    return-object v0
.end method

.method protected bridge synthetic blacklist makeSpliterator(Ljava/util/Spliterator;)Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1209
    check-cast p1, Ljava/util/Spliterator$OfDouble;

    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;->makeSpliterator(Ljava/util/Spliterator$OfDouble;)Ljava/util/Spliterator$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1209
    invoke-super {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfDouble;
    .registers 2

    .line 1209
    invoke-super {p0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfDouble;

    return-object v0
.end method
