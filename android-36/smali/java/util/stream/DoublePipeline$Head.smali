.class public Ljava/util/stream/DoublePipeline$Head;
.super Ljava/util/stream/DoublePipeline;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/DoublePipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Head"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/DoublePipeline<",
        "TE_IN;>;"
    }
.end annotation


# direct methods
.method public constructor greylist-max-o <init>(Ljava/util/Spliterator;IZ)V
    .registers 4
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;IZ)V"
        }
    .end annotation

    .line 628
    .local p0, "this":Ljava/util/stream/DoublePipeline$Head;, "Ljava/util/stream/DoublePipeline$Head<TE_IN;>;"
    .local p1, "source":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Double;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/DoublePipeline;-><init>(Ljava/util/Spliterator;IZ)V

    .line 629
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/function/Supplier;IZ)V
    .registers 4
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "+",
            "Ljava/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;>;IZ)V"
        }
    .end annotation

    .line 614
    .local p0, "this":Ljava/util/stream/DoublePipeline$Head;, "Ljava/util/stream/DoublePipeline$Head<TE_IN;>;"
    .local p1, "source":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<Ljava/lang/Double;>;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/DoublePipeline;-><init>(Ljava/util/function/Supplier;IZ)V

    .line 615
    return-void
.end method


# virtual methods
.method public whitelist test-api forEach(Ljava/util/function/DoubleConsumer;)V
    .registers 3
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .line 647
    .local p0, "this":Ljava/util/stream/DoublePipeline$Head;, "Ljava/util/stream/DoublePipeline$Head<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/DoublePipeline$Head;->isParallel()Z

    move-result v0

    if-nez v0, :cond_12

    .line 648
    invoke-virtual {p0}, Ljava/util/stream/DoublePipeline$Head;->sourceStageSpliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/DoublePipeline;->-$$Nest$smadapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    goto :goto_15

    .line 651
    :cond_12
    invoke-super {p0, p1}, Ljava/util/stream/DoublePipeline;->forEach(Ljava/util/function/DoubleConsumer;)V

    .line 653
    :goto_15
    return-void
.end method

.method public whitelist test-api forEachOrdered(Ljava/util/function/DoubleConsumer;)V
    .registers 3
    .param p1, "consumer"    # Ljava/util/function/DoubleConsumer;

    .line 657
    .local p0, "this":Ljava/util/stream/DoublePipeline$Head;, "Ljava/util/stream/DoublePipeline$Head<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/DoublePipeline$Head;->isParallel()Z

    move-result v0

    if-nez v0, :cond_12

    .line 658
    invoke-virtual {p0}, Ljava/util/stream/DoublePipeline$Head;->sourceStageSpliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/DoublePipeline;->-$$Nest$smadapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfDouble;->forEachRemaining(Ljava/util/function/DoubleConsumer;)V

    goto :goto_15

    .line 661
    :cond_12
    invoke-super {p0, p1}, Ljava/util/stream/DoublePipeline;->forEachOrdered(Ljava/util/function/DoubleConsumer;)V

    .line 663
    :goto_15
    return-void
.end method

.method public final greylist-max-o opIsStateful()Z
    .registers 2

    .line 634
    .local p0, "this":Ljava/util/stream/DoublePipeline$Head;, "Ljava/util/stream/DoublePipeline$Head<TE_IN;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final greylist-max-o opWrapSink(ILjava/util/stream/Sink;)Ljava/util/stream/Sink;
    .registers 4
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/util/stream/Sink<",
            "TE_IN;>;"
        }
    .end annotation

    .line 640
    .local p0, "this":Ljava/util/stream/DoublePipeline$Head;, "Ljava/util/stream/DoublePipeline$Head<TE_IN;>;"
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Double;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api parallel()Ljava/util/stream/DoubleStream;
    .registers 2

    .line 601
    .local p0, "this":Ljava/util/stream/DoublePipeline$Head;, "Ljava/util/stream/DoublePipeline$Head<TE_IN;>;"
    invoke-super {p0}, Ljava/util/stream/DoublePipeline;->parallel()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/DoubleStream;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api sequential()Ljava/util/stream/DoubleStream;
    .registers 2

    .line 601
    .local p0, "this":Ljava/util/stream/DoublePipeline$Head;, "Ljava/util/stream/DoublePipeline$Head<TE_IN;>;"
    invoke-super {p0}, Ljava/util/stream/DoublePipeline;->sequential()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/DoubleStream;

    return-object v0
.end method
