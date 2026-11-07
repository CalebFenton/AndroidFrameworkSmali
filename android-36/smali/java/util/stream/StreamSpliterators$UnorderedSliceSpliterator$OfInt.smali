.class final Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;
.super Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;
.implements Ljava/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive<",
        "Ljava/lang/Integer;",
        "Ljava/util/function/IntConsumer;",
        "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfInt;",
        "Ljava/util/Spliterator$OfInt;",
        ">;",
        "Ljava/util/Spliterator$OfInt;",
        "Ljava/util/function/IntConsumer;"
    }
.end annotation


# instance fields
.field blacklist tmpValue:I


# direct methods
.method constructor blacklist <init>(Ljava/util/Spliterator$OfInt;JJ)V
    .registers 6
    .param p1, "s"    # Ljava/util/Spliterator$OfInt;
    .param p2, "skip"    # J
    .param p4, "limit"    # J

    .line 1145
    invoke-direct/range {p0 .. p5}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;JJ)V

    .line 1146
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/Spliterator$OfInt;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;)V
    .registers 3
    .param p1, "s"    # Ljava/util/Spliterator$OfInt;
    .param p2, "parent"    # Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;

    .line 1149
    invoke-direct {p0, p1, p2}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;-><init>(Ljava/util/Spliterator$OfPrimitive;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;)V

    .line 1150
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(I)V
    .registers 2
    .param p1, "value"    # I

    .line 1154
    iput p1, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;->tmpValue:I

    .line 1155
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

    .line 1137
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;->acceptConsumed(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method protected blacklist acceptConsumed(Ljava/util/function/IntConsumer;)V
    .registers 3
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 1159
    iget v0, p0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;->tmpValue:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 1160
    return-void
.end method

.method protected blacklist bufferCreate(I)Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfInt;
    .registers 3
    .param p1, "initialCapacity"    # I

    .line 1164
    new-instance v0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfInt;

    invoke-direct {v0, p1}, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfInt;-><init>(I)V

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

    .line 1137
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;->bufferCreate(I)Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1137
    invoke-super {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method protected blacklist makeSpliterator(Ljava/util/Spliterator$OfInt;)Ljava/util/Spliterator$OfInt;
    .registers 3
    .param p1, "s"    # Ljava/util/Spliterator$OfInt;

    .line 1169
    new-instance v0, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;

    invoke-direct {v0, p1, p0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;-><init>(Ljava/util/Spliterator$OfInt;Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;)V

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

    .line 1137
    check-cast p1, Ljava/util/Spliterator$OfInt;

    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfInt;->makeSpliterator(Ljava/util/Spliterator$OfInt;)Ljava/util/Spliterator$OfInt;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic whitelist test-api tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1137
    invoke-super {p0, p1}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfInt;
    .registers 2

    .line 1137
    invoke-super {p0}, Ljava/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfInt;

    return-object v0
.end method
