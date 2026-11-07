.class final Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;
.super Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoubleWrappingSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<",
        "TP_IN;",
        "Ljava/lang/Double;",
        "Ljava/util/stream/SpinedBuffer$OfDouble;",
        ">;",
        "Ljava/util/Spliterator$OfDouble;"
    }
.end annotation


# direct methods
.method public static synthetic blacklist $r8$lambda$g53B5ovA_R5oQOs-FzXgLk2FrZo(Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;)Z
    .registers 1

    invoke-direct {p0}, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->lambda$initPartialTraversalState$0()Z

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
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;Z)V"
        }
    .end annotation

    .line 448
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    .local p1, "ph":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)V

    .line 449
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V
    .registers 4
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Spliterator<",
            "TP_IN;>;>;Z)V"
        }
    .end annotation

    .line 442
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    .local p1, "ph":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    .local p2, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TP_IN;>;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V

    .line 443
    return-void
.end method

.method private synthetic blacklist lambda$initPartialTraversalState$0()Z
    .registers 3

    .line 461
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->bufferSink:Ljava/util/stream/Sink;

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

    .line 435
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/DoubleConsumer;)V
    .registers 5
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .line 480
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    if-nez v0, :cond_21

    iget-boolean v0, p0, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->finished:Z

    if-nez v0, :cond_21

    .line 481
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->init()V

    .line 484
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/DoubleConsumer;)V

    iget-object v2, p0, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    invoke-virtual {v0, v1, v2}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    .line 485
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->finished:Z

    goto :goto_27

    .line 488
    :cond_21
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 490
    :goto_27
    return-void
.end method

.method blacklist initPartialTraversalState()V
    .registers 4

    .line 458
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfDouble;

    invoke-direct {v0}, Ljava/util/stream/SpinedBuffer$OfDouble;-><init>()V

    .line 459
    .local v0, "b":Ljava/util/stream/SpinedBuffer$OfDouble;
    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    .line 460
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda1;-><init>(Ljava/util/stream/SpinedBuffer$OfDouble;)V

    invoke-virtual {v1, v2}, Ljava/util/stream/PipelineHelper;->wrapSink(Ljava/util/stream/Sink;)Ljava/util/stream/Sink;

    move-result-object v1

    iput-object v1, p0, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->bufferSink:Ljava/util/stream/Sink;

    .line 461
    new-instance v1, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator$$ExternalSyntheticLambda2;-><init>(Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;)V

    iput-object v1, p0, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->pusher:Ljava/util/function/BooleanSupplier;

    .line 462
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

    .line 435
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/DoubleConsumer;)Z
    .registers 6
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .line 471
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->doAdvance()Z

    move-result v0

    .line 473
    .local v0, "hasNext":Z
    if-eqz v0, :cond_16

    .line 474
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    check-cast v1, Ljava/util/stream/SpinedBuffer$OfDouble;

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->nextToConsume:J

    invoke-virtual {v1, v2, v3}, Ljava/util/stream/SpinedBuffer$OfDouble;->get(J)D

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 475
    :cond_16
    return v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfDouble;
    .registers 2

    .line 466
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    invoke-super {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfDouble;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 435
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->trySplit()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 435
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->trySplit()Ljava/util/Spliterator$OfDouble;

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
            "Ljava/lang/Double;",
            "*>;"
        }
    .end annotation

    .line 453
    .local p0, "this":Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator<TP_IN;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;

    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    iget-boolean v2, p0, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->isParallel:Z

    invoke-direct {v0, v1, p1, v2}, Ljava/util/stream/StreamSpliterators$DoubleWrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)V

    return-object v0
.end method
