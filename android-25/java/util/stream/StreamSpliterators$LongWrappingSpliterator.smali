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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator$-void_forEachRemaining_java_util_function_LongConsumer_consumer_LambdaImpl0;,
        Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator$-void_initPartialTraversalState__LambdaImpl0;,
        Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator$-void_initPartialTraversalState__LambdaImpl1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator",
        "<TP_IN;",
        "Ljava/lang/Long;",
        "Ljava/util/stream/SpinedBuffer$OfLong;",
        ">;",
        "Ljava/util/Spliterator$OfLong;"
    }
.end annotation


# direct methods
.method static synthetic -java_util_stream_StreamSpliterators$LongWrappingSpliterator-mthref-0(Ljava/util/stream/SpinedBuffer$OfLong;J)V
    .locals 1

    #@0
    .prologue
    .line 404
    invoke-virtual {p0, p1, p2}, Ljava/util/stream/SpinedBuffer$OfLong;->accept(J)V

    #@3
    return-void
.end method

.method static synthetic -java_util_stream_StreamSpliterators$LongWrappingSpliterator-mthref-1(Ljava/util/function/LongConsumer;J)V
    .locals 1

    #@0
    .prologue
    .line 428
    invoke-interface {p0, p1, p2}, Ljava/util/function/LongConsumer;->accept(J)V

    #@3
    return-void
.end method

.method constructor <init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)V
    .locals 0
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 392
    .local p0, "this":Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    .local p1, "ph":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)V

    #@3
    .line 391
    return-void
.end method

.method constructor <init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V
    .locals 0
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/Spliterator",
            "<TP_IN;>;>;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 386
    .local p0, "this":Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    .local p1, "ph":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p2, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TP_IN;>;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V

    #@3
    .line 385
    return-void
.end method


# virtual methods
.method synthetic -java_util_stream_StreamSpliterators$LongWrappingSpliterator_lambda$8()Z
    .locals 2

    #@0
    .prologue
    .line 405
    .local p0, "this":Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    #@2
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->bufferSink:Ljava/util/stream/Sink;

    #@4
    invoke-interface {v0, v1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .param p1, "consumer"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 423
    .local p0, "this":Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    check-cast p1, Ljava/util/function/LongConsumer;

    #@2
    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    #@5
    return-void
.end method

.method public forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 3
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    #@0
    .prologue
    .line 424
    .local p0, "this":Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    #@2
    if-nez v0, :cond_0

    #@4
    iget-boolean v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->finished:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 432
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 423
    :goto_0
    return-void

    #@f
    .line 425
    :cond_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 426
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->init()V

    #@15
    .line 428
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    #@17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1a
    new-instance v1, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator$-void_forEachRemaining_java_util_function_LongConsumer_consumer_LambdaImpl0;

    #@1c
    invoke-direct {v1, p1}, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator$-void_forEachRemaining_java_util_function_LongConsumer_consumer_LambdaImpl0;-><init>(Ljava/util/function/LongConsumer;)V

    #@1f
    iget-object v2, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    #@21
    invoke-virtual {v0, v1, v2}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    #@24
    .line 429
    const/4 v0, 0x1

    #@25
    iput-boolean v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->finished:Z

    #@27
    goto :goto_0
.end method

.method initPartialTraversalState()V
    .locals 3

    #@0
    .prologue
    .line 402
    .local p0, "this":Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfLong;

    #@2
    invoke-direct {v0}, Ljava/util/stream/SpinedBuffer$OfLong;-><init>()V

    #@5
    .line 403
    .local v0, "b":Ljava/util/stream/SpinedBuffer$OfLong;
    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    #@7
    .line 404
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    #@9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@c
    new-instance v2, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator$-void_initPartialTraversalState__LambdaImpl0;

    #@e
    invoke-direct {v2, v0}, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator$-void_initPartialTraversalState__LambdaImpl0;-><init>(Ljava/util/stream/SpinedBuffer$OfLong;)V

    #@11
    invoke-virtual {v1, v2}, Ljava/util/stream/PipelineHelper;->wrapSink(Ljava/util/stream/Sink;)Ljava/util/stream/Sink;

    #@14
    move-result-object v1

    #@15
    iput-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->bufferSink:Ljava/util/stream/Sink;

    #@17
    .line 405
    new-instance v1, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator$-void_initPartialTraversalState__LambdaImpl1;

    #@19
    invoke-direct {v1, p0}, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator$-void_initPartialTraversalState__LambdaImpl1;-><init>(Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;)V

    #@1c
    iput-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->pusher:Ljava/util/function/BooleanSupplier;

    #@1e
    .line 401
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "consumer"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 414
    .local p0, "this":Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    check-cast p1, Ljava/util/function/LongConsumer;

    #@2
    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 4
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    #@0
    .prologue
    .line 415
    .local p0, "this":Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 416
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->doAdvance()Z

    #@6
    move-result v0

    #@7
    .line 417
    .local v0, "hasNext":Z
    if-eqz v0, :cond_0

    #@9
    .line 418
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    #@b
    check-cast v1, Ljava/util/stream/SpinedBuffer$OfLong;

    #@d
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->nextToConsume:J

    #@f
    invoke-virtual {v1, v2, v3}, Ljava/util/stream/SpinedBuffer$OfLong;->get(J)J

    #@12
    move-result-wide v2

    #@13
    invoke-interface {p1, v2, v3}, Ljava/util/function/LongConsumer;->accept(J)V

    #@16
    .line 419
    :cond_0
    return v0
.end method

.method public trySplit()Ljava/util/Spliterator$OfLong;
    .locals 1

    #@0
    .prologue
    .line 410
    .local p0, "this":Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    invoke-super {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->trySplit()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/Spliterator$OfLong;

    #@6
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 409
    .local p0, "this":Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;->trySplit()Ljava/util/Spliterator$OfLong;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 409
    .local p0, "this":Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;->trySplit()Ljava/util/Spliterator$OfLong;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method wrap(Ljava/util/Spliterator;)Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)",
            "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator",
            "<TP_IN;",
            "Ljava/lang/Long;",
            "*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 397
    .local p0, "this":Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator<TP_IN;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;

    #@2
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    #@4
    iget-boolean v2, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->isParallel:Z

    #@6
    invoke-direct {v0, v1, p1, v2}, Ljava/util/stream/StreamSpliterators$LongWrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)V

    #@9
    return-object v0
.end method
