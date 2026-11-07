.class final Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;
.super Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LongWrappingSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<",
        "TP_IN;",
        "Ljava/lang/Long;",
        "Ljava/util/stream/SpinedBuffer$OfLong;",
        ">;",
        "Ljava/util/Spliterator$OfLong;"
    }
.end annotation


# direct methods
.method public static synthetic blacklist $r8$lambda$jzEghv9BKybCtqsz4PJosbGSdtE(Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;)Z
    .registers 1

    invoke-direct {p0}, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;->lambda$initPartialTraversalState$0()Z

    move-result p0

    return p0
.end method

.method constructor blacklist <init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)V
    .registers 4
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;Z)V"
        }
    .end annotation

    .line 390
    .local p0, "this":Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    .local p1, "ph":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)V

    .line 391
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V
    .registers 4
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Spliterator<",
            "TP_IN;>;>;Z)V"
        }
    .end annotation

    .line 384
    .local p0, "this":Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    .local p1, "ph":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p2, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TP_IN;>;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V

    .line 385
    return-void
.end method

.method private synthetic blacklist lambda$initPartialTraversalState$0()Z
    .registers 3

    .line 403
    .local p0, "this":Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;->bufferSink:Ljava/util/stream/Sink;

    invoke-interface {v0, v1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result v0

    return v0
.end method


# virtual methods
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

    .line 377
    .local p0, "this":Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/LongConsumer;)V
    .registers 5
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .line 422
    .local p0, "this":Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    if-nez v0, :cond_21

    iget-boolean v0, p0, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;->finished:Z

    if-nez v0, :cond_21

    .line 423
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;->init()V

    .line 426
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/LongConsumer;)V

    iget-object v2, p0, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    invoke-virtual {v0, v1, v2}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;->finished:Z

    goto :goto_27

    .line 430
    :cond_21
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 432
    :goto_27
    return-void
.end method

.method blacklist initPartialTraversalState()V
    .registers 4

    .line 400
    .local p0, "this":Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfLong;

    invoke-direct {v0}, Ljava/util/stream/SpinedBuffer$OfLong;-><init>()V

    .line 401
    .local v0, "b":Ljava/util/stream/SpinedBuffer$OfLong;
    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    .line 402
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator$$ExternalSyntheticLambda1;-><init>(Ljava/util/stream/SpinedBuffer$OfLong;)V

    invoke-virtual {v1, v2}, Ljava/util/stream/PipelineHelper;->wrapSink(Ljava/util/stream/Sink;)Ljava/util/stream/Sink;

    move-result-object v1

    iput-object v1, p0, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;->bufferSink:Ljava/util/stream/Sink;

    .line 403
    new-instance v1, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator$$ExternalSyntheticLambda2;-><init>(Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;)V

    iput-object v1, p0, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;->pusher:Ljava/util/function/BooleanSupplier;

    .line 404
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

    .line 377
    .local p0, "this":Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/LongConsumer;)Z
    .registers 6
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    .line 413
    .local p0, "this":Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;->doAdvance()Z

    move-result v0

    .line 415
    .local v0, "hasNext":Z
    if-eqz v0, :cond_16

    .line 416
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    check-cast v1, Ljava/util/stream/SpinedBuffer$OfLong;

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;->nextToConsume:J

    invoke-virtual {v1, v2, v3}, Ljava/util/stream/SpinedBuffer$OfLong;->get(J)J

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 417
    :cond_16
    return v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfLong;
    .registers 2

    .line 408
    .local p0, "this":Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    invoke-super {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfLong;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 377
    .local p0, "this":Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;->trySplit()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 377
    .local p0, "this":Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;->trySplit()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method blacklist wrap(Ljava/util/Spliterator;)Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<",
            "TP_IN;",
            "Ljava/lang/Long;",
            "*>;"
        }
    .end annotation

    .line 395
    .local p0, "this":Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;

    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    iget-boolean v2, p0, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;->isParallel:Z

    invoke-direct {v0, v1, p1, v2}, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)V

    return-object v0
.end method
