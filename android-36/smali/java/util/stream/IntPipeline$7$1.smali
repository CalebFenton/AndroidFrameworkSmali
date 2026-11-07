.class Ljava/util/stream/IntPipeline$7$1;
.super Ljava/util/stream/Sink$ChainedInt;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/IntPipeline$7;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedInt<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist cancellationRequestedCalled:Z

.field blacklist downstreamAsInt:Ljava/util/function/IntConsumer;

.field final synthetic blacklist this$1:Ljava/util/stream/IntPipeline$7;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/IntPipeline$7;Ljava/util/stream/Sink;)V
    .registers 5
    .param p1, "this$1"    # Ljava/util/stream/IntPipeline$7;
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

    .line 314
    .local p0, "this":Ljava/util/stream/IntPipeline$7$1;, "Ljava/util/stream/IntPipeline$7$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Integer;>;"
    iput-object p1, p0, Ljava/util/stream/IntPipeline$7$1;->this$1:Ljava/util/stream/IntPipeline$7;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedInt;-><init>(Ljava/util/stream/Sink;)V

    .line 319
    iget-object v0, p0, Ljava/util/stream/IntPipeline$7$1;->downstream:Ljava/util/stream/Sink;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0}, Ljava/util/stream/IntPipeline$$ExternalSyntheticLambda10;-><init>(Ljava/util/stream/Sink;)V

    iput-object v1, p0, Ljava/util/stream/IntPipeline$7$1;->downstreamAsInt:Ljava/util/function/IntConsumer;

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(I)V
    .registers 5
    .param p1, "t"    # I

    .line 328
    .local p0, "this":Ljava/util/stream/IntPipeline$7$1;, "Ljava/util/stream/IntPipeline$7$1;"
    iget-object v0, p0, Ljava/util/stream/IntPipeline$7$1;->this$1:Ljava/util/stream/IntPipeline$7;

    iget-object v0, v0, Ljava/util/stream/IntPipeline$7;->val$mapper:Ljava/util/function/IntFunction;

    invoke-interface {v0, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/IntStream;

    .line 329
    .local v0, "result":Ljava/util/stream/IntStream;
    if-eqz v0, :cond_3f

    .line 330
    :try_start_c
    iget-boolean v1, p0, Ljava/util/stream/IntPipeline$7$1;->cancellationRequestedCalled:Z

    if-nez v1, :cond_1a

    .line 331
    invoke-interface {v0}, Ljava/util/stream/IntStream;->sequential()Ljava/util/stream/IntStream;

    move-result-object v1

    iget-object v2, p0, Ljava/util/stream/IntPipeline$7$1;->downstreamAsInt:Ljava/util/function/IntConsumer;

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    goto :goto_3f

    .line 334
    :cond_1a
    invoke-interface {v0}, Ljava/util/stream/IntStream;->sequential()Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->spliterator()Ljava/util/Spliterator$OfInt;

    move-result-object v1

    .line 335
    .local v1, "s":Ljava/util/Spliterator$OfInt;
    :cond_22
    iget-object v2, p0, Ljava/util/stream/IntPipeline$7$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v2}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    if-nez v2, :cond_3f

    iget-object v2, p0, Ljava/util/stream/IntPipeline$7$1;->downstreamAsInt:Ljava/util/function/IntConsumer;

    invoke-interface {v1, v2}, Ljava/util/Spliterator$OfInt;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    move-result v2
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_33

    if-nez v2, :cond_22

    goto :goto_3f

    .line 328
    .end local v1    # "s":Ljava/util/Spliterator$OfInt;
    :catchall_33
    move-exception v1

    if-eqz v0, :cond_3e

    :try_start_36
    invoke-interface {v0}, Ljava/util/stream/IntStream;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_3e

    :catchall_3a
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3e
    :goto_3e
    throw v1

    .line 338
    :cond_3f
    :goto_3f
    if-eqz v0, :cond_44

    invoke-interface {v0}, Ljava/util/stream/IntStream;->close()V

    .line 339
    .end local v0    # "result":Ljava/util/stream/IntStream;
    :cond_44
    return-void
.end method

.method public blacklist begin(J)V
    .registers 6
    .param p1, "size"    # J

    .line 323
    .local p0, "this":Ljava/util/stream/IntPipeline$7$1;, "Ljava/util/stream/IntPipeline$7$1;"
    iget-object v0, p0, Ljava/util/stream/IntPipeline$7$1;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Sink;->begin(J)V

    .line 324
    return-void
.end method

.method public blacklist cancellationRequested()Z
    .registers 2

    .line 347
    .local p0, "this":Ljava/util/stream/IntPipeline$7$1;, "Ljava/util/stream/IntPipeline$7$1;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/IntPipeline$7$1;->cancellationRequestedCalled:Z

    .line 348
    iget-object v0, p0, Ljava/util/stream/IntPipeline$7$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    return v0
.end method
