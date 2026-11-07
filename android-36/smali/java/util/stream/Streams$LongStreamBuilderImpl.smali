.class final Ljava/util/stream/Streams$LongStreamBuilderImpl;
.super Ljava/util/stream/Streams$AbstractStreamBuilderImpl;
.source "Streams.java"

# interfaces
.implements Ljava/util/stream/LongStream$Builder;
.implements Ljava/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LongStreamBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Streams$AbstractStreamBuilderImpl<",
        "Ljava/lang/Long;",
        "Ljava/util/Spliterator$OfLong;",
        ">;",
        "Ljava/util/stream/LongStream$Builder;",
        "Ljava/util/Spliterator$OfLong;"
    }
.end annotation


# instance fields
.field blacklist buffer:Ljava/util/stream/SpinedBuffer$OfLong;

.field blacklist first:J


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 522
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava/util/stream/Streams-IA;)V

    return-void
.end method

.method constructor blacklist <init>(J)V
    .registers 4
    .param p1, "t"    # J

    .line 529
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava/util/stream/Streams-IA;)V

    .line 530
    iput-wide p1, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->first:J

    .line 531
    const/4 v0, -0x2

    iput v0, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->count:I

    .line 532
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(J)V
    .registers 6
    .param p1, "t"    # J

    .line 538
    iget v0, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->count:I

    if-nez v0, :cond_d

    .line 539
    iput-wide p1, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->first:J

    .line 540
    iget v0, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->count:I

    goto :goto_2e

    .line 542
    :cond_d
    iget v0, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->count:I

    if-lez v0, :cond_2f

    .line 543
    iget-object v0, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfLong;

    if-nez v0, :cond_29

    .line 544
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfLong;

    invoke-direct {v0}, Ljava/util/stream/SpinedBuffer$OfLong;-><init>()V

    iput-object v0, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfLong;

    .line 545
    iget-object v0, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfLong;

    iget-wide v1, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->first:J

    invoke-virtual {v0, v1, v2}, Ljava/util/stream/SpinedBuffer$OfLong;->accept(J)V

    .line 546
    iget v0, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->count:I

    .line 549
    :cond_29
    iget-object v0, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfLong;->accept(J)V

    .line 554
    :goto_2e
    return-void

    .line 552
    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist test-api build()Ljava/util/stream/LongStream;
    .registers 4

    .line 558
    iget v0, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->count:I

    .line 559
    .local v0, "c":I
    if-ltz v0, :cond_1f

    .line 561
    iget v1, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->count:I

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->count:I

    .line 564
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_14

    invoke-static {p0, v2}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v1

    goto :goto_1e

    :cond_14
    iget-object v1, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfLong;

    invoke-virtual {v1}, Ljava/util/stream/SpinedBuffer$OfLong;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/stream/StreamSupport;->longStream(Ljava/util/Spliterator$OfLong;Z)Ljava/util/stream/LongStream;

    move-result-object v1

    :goto_1e
    return-object v1

    .line 567
    :cond_1f
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public bridge synthetic whitelist test-api forEachRemaining(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 508
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$LongStreamBuilderImpl;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/LongConsumer;)V
    .registers 4
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 590
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    iget v0, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_10

    .line 593
    iget-wide v0, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->first:J

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 594
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->count:I

    .line 596
    :cond_10
    return-void
.end method

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

    .line 508
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$LongStreamBuilderImpl;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/LongConsumer;)Z
    .registers 4
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 576
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    iget v0, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_12

    .line 579
    iget-wide v0, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->first:J

    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 580
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/stream/Streams$LongStreamBuilderImpl;->count:I

    .line 581
    const/4 v0, 0x1

    return v0

    .line 584
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfLong;
    .registers 2

    .line 508
    invoke-super {p0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfLong;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 508
    invoke-super {p0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    return-object v0
.end method
