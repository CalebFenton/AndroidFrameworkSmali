.class final Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;
.super Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfLong;
.implements Ljava/util/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive<",
        "Ljava/lang/Long;",
        "Ljava/util/function/LongConsumer;",
        "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfLong;",
        "Ljava/util/Spliterator$OfLong;",
        ">;",
        "Ljava/util/Spliterator$OfLong;",
        "Ljava/util/function/LongConsumer;"
    }
.end annotation


# instance fields
.field blacklist tmpValue:J


# direct methods
.method constructor blacklist <init>(Ljava/util/Spliterator$OfLong;JJ)V
    .registers 6
    .param p1, "s"    # Ljava/util/Spliterator$OfLong;
    .param p2, "skip"    # J
    .param p4, "limit"    # J

    .line 1181
    invoke-direct/range {p0 .. p5}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;JJ)V

    .line 1182
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Spliterator$OfLong;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;)V
    .registers 3
    .param p1, "s"    # Ljava/util/Spliterator$OfLong;
    .param p2, "parent"    # Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;

    .line 1185
    invoke-direct {p0, p1, p2}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;)V

    .line 1186
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(J)V
    .registers 3
    .param p1, "value"    # J

    .line 1190
    iput-wide p1, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;->tmpValue:J

    .line 1191
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

    .line 1173
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;->acceptConsumed(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method protected blacklist acceptConsumed(Ljava/util/function/LongConsumer;)V
    .registers 4
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 1195
    iget-wide v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;->tmpValue:J

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 1196
    return-void
.end method

.method protected blacklist bufferCreate(I)Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfLong;
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 1200
    new-instance v0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfLong;

    invoke-direct {v0, p1}, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfLong;-><init>(I)V

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

    .line 1173
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;->bufferCreate(I)Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api forEachRemaining(Ljava/util/function/LongConsumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1173
    invoke-super {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method protected blacklist makeSpliterator(Ljava/util/Spliterator$OfLong;)Ljava/util/Spliterator$OfLong;
    .registers 3
    .param p1, "s"    # Ljava/util/Spliterator$OfLong;

    .line 1205
    new-instance v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;

    invoke-direct {v0, p1, p0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;-><init>(Ljava/util/Spliterator$OfLong;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;)V

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

    .line 1173
    check-cast p1, Ljava/util/Spliterator$OfLong;

    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfLong;->makeSpliterator(Ljava/util/Spliterator$OfLong;)Ljava/util/Spliterator$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api tryAdvance(Ljava/util/function/LongConsumer;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1173
    invoke-super {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfLong;
    .registers 2

    .line 1173
    invoke-super {p0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfLong;

    return-object v0
.end method
