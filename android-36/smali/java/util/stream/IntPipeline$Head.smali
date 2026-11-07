.class public Ljava/util/stream/IntPipeline$Head;
.super Ljava/util/stream/IntPipeline;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/IntPipeline;
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
        "Ljava/util/stream/IntPipeline<",
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
            "Ljava/lang/Integer;",
            ">;IZ)V"
        }
    .end annotation

    .line 621
    .local p0, "this":Ljava/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline$Head<TE_IN;>;"
    .local p1, "source":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/IntPipeline;-><init>(Ljava/util/Spliterator;IZ)V

    .line 622
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
            "Ljava/lang/Integer;",
            ">;>;IZ)V"
        }
    .end annotation

    .line 607
    .local p0, "this":Ljava/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline$Head<TE_IN;>;"
    .local p1, "source":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<Ljava/lang/Integer;>;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/IntPipeline;-><init>(Ljava/util/function/Supplier;IZ)V

    .line 608
    return-void
.end method


# virtual methods
.method public whitelist test-api forEach(Ljava/util/function/IntConsumer;)V
    .registers 3
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 640
    .local p0, "this":Ljava/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline$Head<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/IntPipeline$Head;->isParallel()Z

    move-result v0

    if-nez v0, :cond_12

    .line 641
    invoke-virtual {p0}, Ljava/util/stream/IntPipeline$Head;->sourceStageSpliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/IntPipeline;->-$$Nest$smadapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    goto :goto_15

    .line 644
    :cond_12
    invoke-super {p0, p1}, Ljava/util/stream/IntPipeline;->forEach(Ljava/util/function/IntConsumer;)V

    .line 646
    :goto_15
    return-void
.end method

.method public whitelist test-api forEachOrdered(Ljava/util/function/IntConsumer;)V
    .registers 3
    .param p1, "action"    # Ljava/util/function/IntConsumer;

    .line 650
    .local p0, "this":Ljava/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline$Head<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/IntPipeline$Head;->isParallel()Z

    move-result v0

    if-nez v0, :cond_12

    .line 651
    invoke-virtual {p0}, Ljava/util/stream/IntPipeline$Head;->sourceStageSpliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/IntPipeline;->-$$Nest$smadapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfInt;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfInt;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    goto :goto_15

    .line 654
    :cond_12
    invoke-super {p0, p1}, Ljava/util/stream/IntPipeline;->forEachOrdered(Ljava/util/function/IntConsumer;)V

    .line 656
    :goto_15
    return-void
.end method

.method public final greylist-max-o opIsStateful()Z
    .registers 2

    .line 627
    .local p0, "this":Ljava/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline$Head<TE_IN;>;"
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
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/stream/Sink<",
            "TE_IN;>;"
        }
    .end annotation

    .line 633
    .local p0, "this":Ljava/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline$Head<TE_IN;>;"
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api parallel()Ljava/util/stream/IntStream;
    .registers 2

    .line 594
    .local p0, "this":Ljava/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline$Head<TE_IN;>;"
    invoke-super {p0}, Ljava/util/stream/IntPipeline;->parallel()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/IntStream;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api sequential()Ljava/util/stream/IntStream;
    .registers 2

    .line 594
    .local p0, "this":Ljava/util/stream/IntPipeline$Head;, "Ljava/util/stream/IntPipeline$Head<TE_IN;>;"
    invoke-super {p0}, Ljava/util/stream/IntPipeline;->sequential()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/IntStream;

    return-object v0
.end method
