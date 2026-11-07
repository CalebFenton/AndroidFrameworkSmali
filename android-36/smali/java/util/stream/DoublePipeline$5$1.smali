.class Ljava/util/stream/DoublePipeline$5$1;
.super Ljava/util/stream/Sink$ChainedDouble;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/DoublePipeline$5;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedDouble<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist cancellationRequestedCalled:Z

.field blacklist downstreamAsDouble:Ljava/util/function/DoubleConsumer;

.field final synthetic blacklist this$1:Ljava/util/stream/DoublePipeline$5;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/DoublePipeline$5;Ljava/util/stream/Sink;)V
    .registers 5
    .param p1, "this$1"    # Ljava/util/stream/DoublePipeline$5;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 279
    .local p0, "this":Ljava/util/stream/DoublePipeline$5$1;, "Ljava/util/stream/DoublePipeline$5$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Double;>;"
    iput-object p1, p0, Ljava/util/stream/DoublePipeline$5$1;->this$1:Ljava/util/stream/DoublePipeline$5;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedDouble;-><init>(Ljava/util/stream/Sink;)V

    .line 284
    iget-object v0, p0, Ljava/util/stream/DoublePipeline$5$1;->downstream:Ljava/util/stream/Sink;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Ljava/util/stream/DoublePipeline$$ExternalSyntheticLambda0;-><init>(Ljava/util/stream/Sink;)V

    iput-object v1, p0, Ljava/util/stream/DoublePipeline$5$1;->downstreamAsDouble:Ljava/util/function/DoubleConsumer;

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(D)V
    .registers 6
    .param p1, "t"    # D

    .line 293
    .local p0, "this":Ljava/util/stream/DoublePipeline$5$1;, "Ljava/util/stream/DoublePipeline$5$1;"
    iget-object v0, p0, Ljava/util/stream/DoublePipeline$5$1;->this$1:Ljava/util/stream/DoublePipeline$5;

    iget-object v0, v0, Ljava/util/stream/DoublePipeline$5;->val$mapper:Ljava/util/function/DoubleFunction;

    invoke-interface {v0, p1, p2}, Ljava/util/function/DoubleFunction;->apply(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/DoubleStream;

    .line 294
    .local v0, "result":Ljava/util/stream/DoubleStream;
    if-eqz v0, :cond_3f

    .line 295
    :try_start_c
    iget-boolean v1, p0, Ljava/util/stream/DoublePipeline$5$1;->cancellationRequestedCalled:Z

    if-nez v1, :cond_1a

    .line 296
    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->sequential()Ljava/util/stream/DoubleStream;

    move-result-object v1

    iget-object v2, p0, Ljava/util/stream/DoublePipeline$5$1;->downstreamAsDouble:Ljava/util/function/DoubleConsumer;

    invoke-interface {v1, v2}, Ljava/util/stream/DoubleStream;->forEach(Ljava/util/function/DoubleConsumer;)V

    goto :goto_3f

    .line 299
    :cond_1a
    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->sequential()Ljava/util/stream/DoubleStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/DoubleStream;->spliterator()Ljava/util/Spliterator$OfDouble;

    move-result-object v1

    .line 300
    .local v1, "s":Ljava/util/Spliterator$OfDouble;
    :cond_22
    iget-object v2, p0, Ljava/util/stream/DoublePipeline$5$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v2}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    if-nez v2, :cond_3f

    iget-object v2, p0, Ljava/util/stream/DoublePipeline$5$1;->downstreamAsDouble:Ljava/util/function/DoubleConsumer;

    invoke-interface {v1, v2}, Ljava/util/Spliterator$OfDouble;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v2
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_33

    if-nez v2, :cond_22

    goto :goto_3f

    .line 293
    .end local v1    # "s":Ljava/util/Spliterator$OfDouble;
    :catchall_33
    move-exception v1

    if-eqz v0, :cond_3e

    :try_start_36
    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_3e

    :catchall_3a
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3e
    :goto_3e
    throw v1

    .line 303
    :cond_3f
    :goto_3f
    if-eqz v0, :cond_44

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->close()V

    .line 304
    .end local v0    # "result":Ljava/util/stream/DoubleStream;
    :cond_44
    return-void
.end method

.method public blacklist begin(J)V
    .registers 6
    .param p1, "size"    # J

    .line 288
    .local p0, "this":Ljava/util/stream/DoublePipeline$5$1;, "Ljava/util/stream/DoublePipeline$5$1;"
    iget-object v0, p0, Ljava/util/stream/DoublePipeline$5$1;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Sink;->begin(J)V

    .line 289
    return-void
.end method

.method public blacklist cancellationRequested()Z
    .registers 2

    .line 312
    .local p0, "this":Ljava/util/stream/DoublePipeline$5$1;, "Ljava/util/stream/DoublePipeline$5$1;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/DoublePipeline$5$1;->cancellationRequestedCalled:Z

    .line 313
    iget-object v0, p0, Ljava/util/stream/DoublePipeline$5$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    return v0
.end method
