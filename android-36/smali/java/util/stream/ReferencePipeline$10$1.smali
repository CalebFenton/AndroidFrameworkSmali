.class Ljava/util/stream/ReferencePipeline$10$1;
.super Ljava/util/stream/Sink$ChainedReference;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/stream/ReferencePipeline$10;->opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/Sink$ChainedReference<",
        "TP_OUT;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist cancellationRequestedCalled:Z

.field blacklist downstreamAsLong:Ljava/util/function/LongConsumer;

.field final synthetic blacklist this$1:Ljava/util/stream/ReferencePipeline$10;


# direct methods
.method constructor blacklist <init>(Ljava/util/stream/ReferencePipeline$10;Ljava/util/stream/Sink;)V
    .registers 5
    .param p1, "this$1"    # Ljava/util/stream/ReferencePipeline$10;
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

    .line 414
    .local p0, "this":Ljava/util/stream/ReferencePipeline$10$1;, "Ljava/util/stream/ReferencePipeline$10$1;"
    .local p2, "downstream":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<-Ljava/lang/Long;>;"
    iput-object p1, p0, Ljava/util/stream/ReferencePipeline$10$1;->this$1:Ljava/util/stream/ReferencePipeline$10;

    invoke-direct {p0, p2}, Ljava/util/stream/Sink$ChainedReference;-><init>(Ljava/util/stream/Sink;)V

    .line 419
    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$10$1;->downstream:Ljava/util/stream/Sink;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda12;

    invoke-direct {v1, v0}, Ljava/util/stream/LongPipeline$$ExternalSyntheticLambda12;-><init>(Ljava/util/stream/Sink;)V

    iput-object v1, p0, Ljava/util/stream/ReferencePipeline$10$1;->downstreamAsLong:Ljava/util/function/LongConsumer;

    return-void
.end method


# virtual methods
.method public whitelist test-api accept(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP_OUT;)V"
        }
    .end annotation

    .line 428
    .local p0, "this":Ljava/util/stream/ReferencePipeline$10$1;, "Ljava/util/stream/ReferencePipeline$10$1;"
    .local p1, "u":Ljava/lang/Object;, "TP_OUT;"
    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$10$1;->this$1:Ljava/util/stream/ReferencePipeline$10;

    iget-object v0, v0, Ljava/util/stream/ReferencePipeline$10;->val$mapper:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/LongStream;

    .line 429
    .local v0, "result":Ljava/util/stream/LongStream;
    if-eqz v0, :cond_3f

    .line 430
    :try_start_c
    iget-boolean v1, p0, Ljava/util/stream/ReferencePipeline$10$1;->cancellationRequestedCalled:Z

    if-nez v1, :cond_1a

    .line 431
    invoke-interface {v0}, Ljava/util/stream/LongStream;->sequential()Ljava/util/stream/LongStream;

    move-result-object v1

    iget-object v2, p0, Ljava/util/stream/ReferencePipeline$10$1;->downstreamAsLong:Ljava/util/function/LongConsumer;

    invoke-interface {v1, v2}, Ljava/util/stream/LongStream;->forEach(Ljava/util/function/LongConsumer;)V

    goto :goto_3f

    .line 434
    :cond_1a
    invoke-interface {v0}, Ljava/util/stream/LongStream;->sequential()Ljava/util/stream/LongStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/LongStream;->spliterator()Ljava/util/Spliterator$OfLong;

    move-result-object v1

    .line 435
    .local v1, "s":Ljava/util/Spliterator$OfLong;
    :cond_22
    iget-object v2, p0, Ljava/util/stream/ReferencePipeline$10$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v2}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    if-nez v2, :cond_3f

    iget-object v2, p0, Ljava/util/stream/ReferencePipeline$10$1;->downstreamAsLong:Ljava/util/function/LongConsumer;

    invoke-interface {v1, v2}, Ljava/util/Spliterator$OfLong;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v2
    :try_end_30
    .catchall {:try_start_c .. :try_end_30} :catchall_33

    if-nez v2, :cond_22

    goto :goto_3f

    .line 428
    .end local v1    # "s":Ljava/util/Spliterator$OfLong;
    :catchall_33
    move-exception v1

    if-eqz v0, :cond_3e

    :try_start_36
    invoke-interface {v0}, Ljava/util/stream/LongStream;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_3e

    :catchall_3a
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3e
    :goto_3e
    throw v1

    .line 438
    :cond_3f
    :goto_3f
    if-eqz v0, :cond_44

    invoke-interface {v0}, Ljava/util/stream/LongStream;->close()V

    .line 439
    .end local v0    # "result":Ljava/util/stream/LongStream;
    :cond_44
    return-void
.end method

.method public blacklist begin(J)V
    .registers 6
    .param p1, "size"    # J

    .line 423
    .local p0, "this":Ljava/util/stream/ReferencePipeline$10$1;, "Ljava/util/stream/ReferencePipeline$10$1;"
    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$10$1;->downstream:Ljava/util/stream/Sink;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Ljava/util/stream/Sink;->begin(J)V

    .line 424
    return-void
.end method

.method public blacklist cancellationRequested()Z
    .registers 2

    .line 443
    .local p0, "this":Ljava/util/stream/ReferencePipeline$10$1;, "Ljava/util/stream/ReferencePipeline$10$1;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/stream/ReferencePipeline$10$1;->cancellationRequestedCalled:Z

    .line 444
    iget-object v0, p0, Ljava/util/stream/ReferencePipeline$10$1;->downstream:Ljava/util/stream/Sink;

    invoke-interface {v0}, Ljava/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    return v0
.end method
