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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator$-void_forEachRemaining_java_util_function_IntConsumer_consumer_LambdaImpl0;,
        Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator$-void_initPartialTraversalState__LambdaImpl0;,
        Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator$-void_initPartialTraversalState__LambdaImpl1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator",
        "<TP_IN;",
        "Ljava/lang/Integer;",
        "Ljava/util/stream/SpinedBuffer$OfInt;",
        ">;",
        "Ljava/util/Spliterator$OfInt;"
    }
.end annotation


# direct methods
.method static synthetic -java_util_stream_StreamSpliterators$IntWrappingSpliterator-mthref-0(Ljava/util/stream/SpinedBuffer$OfInt;I)V
    .locals 0

    #@0
    .prologue
    .line 346
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer$OfInt;->accept(I)V

    #@3
    return-void
.end method

.method static synthetic -java_util_stream_StreamSpliterators$IntWrappingSpliterator-mthref-1(Ljava/util/function/IntConsumer;I)V
    .locals 0

    #@0
    .prologue
    .line 370
    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

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
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 334
    .local p0, "this":Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    .local p1, "ph":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Integer;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)V

    #@3
    .line 333
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
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/Spliterator",
            "<TP_IN;>;>;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 328
    .local p0, "this":Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    .local p1, "ph":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<Ljava/lang/Integer;>;"
    .local p2, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TP_IN;>;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V

    #@3
    .line 327
    return-void
.end method


# virtual methods
.method synthetic -java_util_stream_StreamSpliterators$IntWrappingSpliterator_lambda$5()Z
    .locals 2

    #@0
    .prologue
    .line 347
    .local p0, "this":Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
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
    .line 365
    .local p0, "this":Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    check-cast p1, Ljava/util/function/IntConsumer;

    #@2
    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    #@5
    return-void
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 3
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    .line 366
    .local p0, "this":Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    #@2
    if-nez v0, :cond_0

    #@4
    iget-boolean v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->finished:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 374
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 365
    :goto_0
    return-void

    #@f
    .line 367
    :cond_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 368
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->init()V

    #@15
    .line 370
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    #@17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1a
    new-instance v1, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator$-void_forEachRemaining_java_util_function_IntConsumer_consumer_LambdaImpl0;

    #@1c
    invoke-direct {v1, p1}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator$-void_forEachRemaining_java_util_function_IntConsumer_consumer_LambdaImpl0;-><init>(Ljava/util/function/IntConsumer;)V

    #@1f
    iget-object v2, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    #@21
    invoke-virtual {v0, v1, v2}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    #@24
    .line 371
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
    .line 344
    .local p0, "this":Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/SpinedBuffer$OfInt;

    #@2
    invoke-direct {v0}, Ljava/util/stream/SpinedBuffer$OfInt;-><init>()V

    #@5
    .line 345
    .local v0, "b":Ljava/util/stream/SpinedBuffer$OfInt;
    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    #@7
    .line 346
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    #@9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@c
    new-instance v2, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator$-void_initPartialTraversalState__LambdaImpl0;

    #@e
    invoke-direct {v2, v0}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator$-void_initPartialTraversalState__LambdaImpl0;-><init>(Ljava/util/stream/SpinedBuffer$OfInt;)V

    #@11
    invoke-virtual {v1, v2}, Ljava/util/stream/PipelineHelper;->wrapSink(Ljava/util/stream/Sink;)Ljava/util/stream/Sink;

    #@14
    move-result-object v1

    #@15
    iput-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->bufferSink:Ljava/util/stream/Sink;

    #@17
    .line 347
    new-instance v1, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator$-void_initPartialTraversalState__LambdaImpl1;

    #@19
    invoke-direct {v1, p0}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator$-void_initPartialTraversalState__LambdaImpl1;-><init>(Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;)V

    #@1c
    iput-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->pusher:Ljava/util/function/BooleanSupplier;

    #@1e
    .line 343
    return-void
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "consumer"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 356
    .local p0, "this":Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    check-cast p1, Ljava/util/function/IntConsumer;

    #@2
    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 4
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    .line 357
    .local p0, "this":Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 358
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->doAdvance()Z

    #@6
    move-result v0

    #@7
    .line 359
    .local v0, "hasNext":Z
    if-eqz v0, :cond_0

    #@9
    .line 360
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    #@b
    check-cast v1, Ljava/util/stream/SpinedBuffer$OfInt;

    #@d
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->nextToConsume:J

    #@f
    invoke-virtual {v1, v2, v3}, Ljava/util/stream/SpinedBuffer$OfInt;->get(J)I

    #@12
    move-result v1

    #@13
    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    #@16
    .line 361
    :cond_0
    return v0
.end method

.method public trySplit()Ljava/util/Spliterator$OfInt;
    .locals 1

    #@0
    .prologue
    .line 352
    .local p0, "this":Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    invoke-super {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->trySplit()Ljava/util/Spliterator;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/Spliterator$OfInt;

    #@6
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 351
    .local p0, "this":Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 351
    .local p0, "this":Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

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
            "Ljava/lang/Integer;",
            "*>;"
        }
    .end annotation

    #@0
    .prologue
    .line 339
    .local p0, "this":Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator<TP_IN;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;

    #@2
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    #@4
    iget-boolean v2, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->isParallel:Z

    #@6
    invoke-direct {v0, v1, p1, v2}, Ljava/util/stream/StreamSpliterators$IntWrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)V

    #@9
    return-object v0
.end method
