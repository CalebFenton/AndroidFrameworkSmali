.class final Ljava/util/stream/Streams$IntStreamBuilderImpl;
.super Ljava/util/stream/Streams$AbstractStreamBuilderImpl;
.source "Streams.java"

# interfaces
.implements Ljava/util/stream/IntStream$Builder;
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntStreamBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Streams$AbstractStreamBuilderImpl<",
        "Ljava/lang/Integer;",
        "Ljava/util/Spliterator$OfInt;",
        ">;",
        "Ljava/util/stream/IntStream$Builder;",
        "Ljava/util/Spliterator$OfInt;"
    }
.end annotation


# instance fields
.field blacklist buffer:Ljava/util/stream/SpinedBuffer$OfInt;

.field blacklist first:I


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 431
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava/util/stream/Streams-IA;)V

    return-void
.end method

.method constructor blacklist <init>(I)V
    .registers 3
    .param p1, "t"    # I

    .line 438
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava/util/stream/Streams-IA;)V

    .line 439
    iput p1, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->first:I

    .line 440
    const/4 v0, -0x2

    iput v0, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->count:I

    .line 441
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(I)V
    .registers 4
    .param p1, "t"    # I

    .line 447
    iget v0, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->count:I

    if-nez v0, :cond_d

    .line 448
    iput p1, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->first:I

    .line 449
    iget v0, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->count:I

    goto :goto_2e

    .line 451
    :cond_d
    iget v0, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->count:I

    if-lez v0, :cond_2f

    .line 452
    iget-object v0, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfInt;

    if-nez v0, :cond_29

    .line 453
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfInt;

    invoke-direct {v0}, Ljava/util/stream/SpinedBuffer$OfInt;-><init>()V

    iput-object v0, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfInt;

    .line 454
    iget-object v0, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfInt;

    iget v1, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->first:I

    invoke-virtual {v0, v1}, Ljava/util/stream/SpinedBuffer$OfInt;->accept(I)V

    .line 455
    iget v0, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->count:I

    .line 458
    :cond_29
    iget-object v0, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfInt;

    invoke-virtual {v0, p1}, Ljava/util/stream/SpinedBuffer$OfInt;->accept(I)V

    .line 463
    :goto_2e
    return-void

    .line 461
    :cond_2f
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public whitelist test-api build()Ljava/util/stream/IntStream;
    .registers 4

    .line 467
    iget v0, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->count:I

    .line 468
    .local v0, "c":I
    if-ltz v0, :cond_1f

    .line 470
    iget v1, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->count:I

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->count:I

    .line 473
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_14

    invoke-static {p0, v2}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v1

    goto :goto_1e

    :cond_14
    iget-object v1, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->buffer:Ljava/util/stream/SpinedBuffer$OfInt;

    invoke-virtual {v1}, Ljava/util/stream/SpinedBuffer$OfInt;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/stream/StreamSupport;->intStream(Ljava/util/Spliterator$OfInt;Z)Ljava/util/stream/IntStream;

    move-result-object v1

    :goto_1e
    return-object v1

    .line 476
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

    .line 417
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$IntStreamBuilderImpl;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 4
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 499
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    iget v0, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_10

    .line 502
    iget v0, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->first:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 503
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->count:I

    .line 505
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

    .line 417
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$IntStreamBuilderImpl;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 4
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 485
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iget v0, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_12

    .line 488
    iget v0, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->first:I

    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 489
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/stream/Streams$IntStreamBuilderImpl;->count:I

    .line 490
    const/4 v0, 0x1

    return v0

    .line 493
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfInt;
    .registers 2

    .line 417
    invoke-super {p0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfInt;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 417
    invoke-super {p0}, Ljava/util/stream/Streams$AbstractStreamBuilderImpl;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfPrimitive;

    return-object v0
.end method
