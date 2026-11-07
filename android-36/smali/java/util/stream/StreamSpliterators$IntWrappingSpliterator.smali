.class final Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;
.super Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntWrappingSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator<",
        "TP_IN;",
        "Ljava/lang/Integer;",
        "Ljava/util/stream/SpinedBuffer$OfInt;",
        ">;",
        "Ljava/util/Spliterator$OfInt;"
    }
.end annotation


# direct methods
.method public static synthetic blacklist $r8$lambda$erYXpBf75GvJ2KESIfXF-158ZU4(Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;)Z
    .registers 1

    invoke-direct {p0}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->lambda$initPartialTraversalState$0()Z

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
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Spliterator<",
            "TP_IN;>;Z)V"
        }
    .end annotation

    .line 332
    .local p0, "this":Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    .local p1, "ph":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Integer;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)V

    .line 333
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V
    .registers 4
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Spliterator<",
            "TP_IN;>;>;Z)V"
        }
    .end annotation

    .line 326
    .local p0, "this":Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    .local p1, "ph":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Integer;>;"
    .local p2, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TP_IN;>;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V

    .line 327
    return-void
.end method

.method private synthetic blacklist lambda$initPartialTraversalState$0()Z
    .registers 3

    .line 345
    .local p0, "this":Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->bufferSink:Ljava/util/stream/Sink;

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

    .line 319
    .local p0, "this":Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    return-void
.end method

.method public whitelist test-api forEachRemaining(Ljava/util/function/IntConsumer;)V
    .registers 5
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .line 364
    .local p0, "this":Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    if-nez v0, :cond_21

    iget-boolean v0, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->finished:Z

    if-nez v0, :cond_21

    .line 365
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->init()V

    .line 368
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/IntConsumer;)V

    iget-object v2, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    invoke-virtual {v0, v1, v2}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->finished:Z

    goto :goto_27

    .line 372
    :cond_21
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 374
    :goto_27
    return-void
.end method

.method blacklist initPartialTraversalState()V
    .registers 4

    .line 342
    .local p0, "this":Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfInt;

    invoke-direct {v0}, Ljava/util/stream/SpinedBuffer$OfInt;-><init>()V

    .line 343
    .local v0, "b":Ljava/util/stream/SpinedBuffer$OfInt;
    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    .line 344
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda1;-><init>(Ljava/util/stream/SpinedBuffer$OfInt;)V

    invoke-virtual {v1, v2}, Ljava/util/stream/PipelineHelper;->wrapSink(Ljava/util/stream/Sink;)Ljava/util/stream/Sink;

    move-result-object v1

    iput-object v1, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->bufferSink:Ljava/util/stream/Sink;

    .line 345
    new-instance v1, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator$$ExternalSyntheticLambda2;-><init>(Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;)V

    iput-object v1, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->pusher:Ljava/util/function/BooleanSupplier;

    .line 346
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

    .line 319
    .local p0, "this":Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public whitelist test-api tryAdvance(Ljava/util/function/IntConsumer;)Z
    .registers 6
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    .line 355
    .local p0, "this":Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->doAdvance()Z

    move-result v0

    .line 357
    .local v0, "hasNext":Z
    if-eqz v0, :cond_16

    .line 358
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    check-cast v1, Ljava/util/stream/SpinedBuffer$OfInt;

    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->nextToConsume:J

    invoke-virtual {v1, v2, v3}, Ljava/util/stream/SpinedBuffer$OfInt;->get(J)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 359
    :cond_16
    return v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfInt;
    .registers 2

    .line 350
    .local p0, "this":Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    invoke-super {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava/util/Spliterator$OfInt;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 319
    .local p0, "this":Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 319
    .local p0, "this":Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

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
            "Ljava/lang/Integer;",
            "*>;"
        }
    .end annotation

    .line 337
    .local p0, "this":Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;

    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    iget-boolean v2, p0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->isParallel:Z

    invoke-direct {v0, v1, p1, v2}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)V

    return-object v0
.end method
