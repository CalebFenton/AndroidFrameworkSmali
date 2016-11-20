.class final Ljava/util/stream/StreamSpliterators$WrappingSpliterator;
.super Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
.source "StreamSpliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WrappingSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/stream/StreamSpliterators$WrappingSpliterator$-void_forEachRemaining_java_util_function_Consumer_consumer_LambdaImpl0;,
        Ljava/util/stream/StreamSpliterators$WrappingSpliterator$-void_initPartialTraversalState__LambdaImpl0;,
        Ljava/util/stream/StreamSpliterators$WrappingSpliterator$-void_initPartialTraversalState__LambdaImpl1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_IN:",
        "Ljava/lang/Object;",
        "P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator",
        "<TP_IN;TP_OUT;",
        "Ljava/util/stream/SpinedBuffer",
        "<TP_OUT;>;>;"
    }
.end annotation


# direct methods
.method static synthetic -java_util_stream_StreamSpliterators$WrappingSpliterator-mthref-0(Ljava/util/stream/SpinedBuffer;Ljava/lang/Object;)V
    .locals 0

    #@0
    .prologue
    .line 293
    invoke-virtual {p0, p1}, Ljava/util/stream/SpinedBuffer;->accept(Ljava/lang/Object;)V

    #@3
    return-void
.end method

.method static synthetic -java_util_stream_StreamSpliterators$WrappingSpliterator-mthref-1(Ljava/util/function/Consumer;Ljava/lang/Object;)V
    .locals 0

    #@0
    .prologue
    .line 312
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

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
            "<TP_OUT;>;",
            "Ljava/util/Spliterator",
            "<TP_IN;>;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 281
    .local p0, "this":Ljava/util/stream/StreamSpliterators$WrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$WrappingSpliterator<TP_IN;TP_OUT;>;"
    .local p1, "ph":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p2, "spliterator":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)V

    #@3
    .line 280
    return-void
.end method

.method constructor <init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V
    .locals 0
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/PipelineHelper",
            "<TP_OUT;>;",
            "Ljava/util/function/Supplier",
            "<",
            "Ljava/util/Spliterator",
            "<TP_IN;>;>;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 275
    .local p0, "this":Ljava/util/stream/StreamSpliterators$WrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$WrappingSpliterator<TP_IN;TP_OUT;>;"
    .local p1, "ph":Ljava/util/stream/PipelineHelper;, "Ljava/util/stream/PipelineHelper<TP_OUT;>;"
    .local p2, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Spliterator<TP_IN;>;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/function/Supplier;Z)V

    #@3
    .line 274
    return-void
.end method


# virtual methods
.method synthetic -java_util_stream_StreamSpliterators$WrappingSpliterator_lambda$2()Z
    .locals 2

    #@0
    .prologue
    .line 294
    .local p0, "this":Ljava/util/stream/StreamSpliterators$WrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$WrappingSpliterator<TP_IN;TP_OUT;>;"
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

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TP_OUT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 308
    .local p0, "this":Ljava/util/stream/StreamSpliterators$WrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$WrappingSpliterator<TP_IN;TP_OUT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TP_OUT;>;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    #@2
    if-nez v0, :cond_0

    #@4
    iget-boolean v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->finished:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    .line 316
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 307
    :goto_0
    return-void

    #@f
    .line 309
    :cond_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 310
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->init()V

    #@15
    .line 312
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    #@17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1a
    new-instance v1, Ljava/util/stream/StreamSpliterators$WrappingSpliterator$-void_forEachRemaining_java_util_function_Consumer_consumer_LambdaImpl0;

    #@1c
    invoke-direct {v1, p1}, Ljava/util/stream/StreamSpliterators$WrappingSpliterator$-void_forEachRemaining_java_util_function_Consumer_consumer_LambdaImpl0;-><init>(Ljava/util/function/Consumer;)V

    #@1f
    iget-object v2, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->spliterator:Ljava/util/Spliterator;

    #@21
    invoke-virtual {v0, v1, v2}, Ljava/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava/util/stream/Sink;Ljava/util/Spliterator;)Ljava/util/stream/Sink;

    #@24
    .line 313
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
    .line 291
    .local p0, "this":Ljava/util/stream/StreamSpliterators$WrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$WrappingSpliterator<TP_IN;TP_OUT;>;"
    new-instance v0, Ljava/util/stream/SpinedBuffer;

    #@2
    invoke-direct {v0}, Ljava/util/stream/SpinedBuffer;-><init>()V

    #@5
    .line 292
    .local v0, "b":Ljava/util/stream/SpinedBuffer;, "Ljava/util/stream/SpinedBuffer<TP_OUT;>;"
    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    #@7
    .line 293
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    #@9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@c
    new-instance v2, Ljava/util/stream/StreamSpliterators$WrappingSpliterator$-void_initPartialTraversalState__LambdaImpl0;

    #@e
    invoke-direct {v2, v0}, Ljava/util/stream/StreamSpliterators$WrappingSpliterator$-void_initPartialTraversalState__LambdaImpl0;-><init>(Ljava/util/stream/SpinedBuffer;)V

    #@11
    invoke-virtual {v1, v2}, Ljava/util/stream/PipelineHelper;->wrapSink(Ljava/util/stream/Sink;)Ljava/util/stream/Sink;

    #@14
    move-result-object v1

    #@15
    iput-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->bufferSink:Ljava/util/stream/Sink;

    #@17
    .line 294
    new-instance v1, Ljava/util/stream/StreamSpliterators$WrappingSpliterator$-void_initPartialTraversalState__LambdaImpl1;

    #@19
    invoke-direct {v1, p0}, Ljava/util/stream/StreamSpliterators$WrappingSpliterator$-void_initPartialTraversalState__LambdaImpl1;-><init>(Ljava/util/stream/StreamSpliterators$WrappingSpliterator;)V

    #@1c
    iput-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->pusher:Ljava/util/function/BooleanSupplier;

    #@1e
    .line 290
    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TP_OUT;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 299
    .local p0, "this":Ljava/util/stream/StreamSpliterators$WrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$WrappingSpliterator<TP_IN;TP_OUT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TP_OUT;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 300
    invoke-virtual {p0}, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->doAdvance()Z

    #@6
    move-result v0

    #@7
    .line 301
    .local v0, "hasNext":Z
    if-eqz v0, :cond_0

    #@9
    .line 302
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->buffer:Ljava/util/stream/AbstractSpinedBuffer;

    #@b
    check-cast v1, Ljava/util/stream/SpinedBuffer;

    #@d
    iget-wide v2, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->nextToConsume:J

    #@f
    invoke-virtual {v1, v2, v3}, Ljava/util/stream/SpinedBuffer;->get(J)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    #@16
    .line 303
    :cond_0
    return v0
.end method

.method bridge synthetic wrap(Ljava/util/Spliterator;)Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;
    .locals 1
    .param p1, "s"    # Ljava/util/Spliterator;

    #@0
    .prologue
    .line 285
    .local p0, "this":Ljava/util/stream/StreamSpliterators$WrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$WrappingSpliterator<TP_IN;TP_OUT;>;"
    invoke-virtual {p0, p1}, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;->wrap(Ljava/util/Spliterator;)Ljava/util/stream/StreamSpliterators$WrappingSpliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method wrap(Ljava/util/Spliterator;)Ljava/util/stream/StreamSpliterators$WrappingSpliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator",
            "<TP_IN;>;)",
            "Ljava/util/stream/StreamSpliterators$WrappingSpliterator",
            "<TP_IN;TP_OUT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 286
    .local p0, "this":Ljava/util/stream/StreamSpliterators$WrappingSpliterator;, "Ljava/util/stream/StreamSpliterators$WrappingSpliterator<TP_IN;TP_OUT;>;"
    .local p1, "s":Ljava/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    new-instance v0, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;

    #@2
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->ph:Ljava/util/stream/PipelineHelper;

    #@4
    iget-boolean v2, p0, Ljava/util/stream/StreamSpliterators$AbstractWrappingSpliterator;->isParallel:Z

    #@6
    invoke-direct {v0, v1, p1, v2}, Ljava/util/stream/StreamSpliterators$WrappingSpliterator;-><init>(Ljava/util/stream/PipelineHelper;Ljava/util/Spliterator;Z)V

    #@9
    return-object v0
.end method
