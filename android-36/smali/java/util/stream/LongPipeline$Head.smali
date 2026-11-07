.class public Ljava/util/stream/LongPipeline$Head;
.super Ljava/util/stream/LongPipeline;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/LongPipeline;
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
        "Ljava/util/stream/LongPipeline<",
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
            "Ljava/lang/Long;",
            ">;IZ)V"
        }
    .end annotation

    .line 605
    .local p0, "this":Ljava/util/stream/LongPipeline$Head;, "Ljava/util/stream/LongPipeline$Head<TE_IN;>;"
    .local p1, "source":Ljava/util/Spliterator;, "Ljava/util/Spliterator<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/LongPipeline;-><init>(Ljava/util/Spliterator;IZ)V

    .line 606
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
            "Ljava/lang/Long;",
            ">;>;IZ)V"
        }
    .end annotation

    .line 591
    .local p0, "this":Ljava/util/stream/LongPipeline$Head;, "Ljava/util/stream/LongPipeline$Head<TE_IN;>;"
    .local p1, "source":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/util/Spliterator<Ljava/lang/Long;>;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/stream/LongPipeline;-><init>(Ljava/util/function/Supplier;IZ)V

    .line 592
    return-void
.end method


# virtual methods
.method public whitelist test-api forEach(Ljava/util/function/LongConsumer;)V
    .registers 3
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 624
    .local p0, "this":Ljava/util/stream/LongPipeline$Head;, "Ljava/util/stream/LongPipeline$Head<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/LongPipeline$Head;->isParallel()Z

    move-result v0

    if-nez v0, :cond_12

    .line 625
    invoke-virtual {p0}, Ljava/util/stream/LongPipeline$Head;->sourceStageSpliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/LongPipeline;->-$$Nest$smadapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    goto :goto_15

    .line 627
    :cond_12
    invoke-super {p0, p1}, Ljava/util/stream/LongPipeline;->forEach(Ljava/util/function/LongConsumer;)V

    .line 629
    :goto_15
    return-void
.end method

.method public whitelist test-api forEachOrdered(Ljava/util/function/LongConsumer;)V
    .registers 3
    .param p1, "action"    # Ljava/util/function/LongConsumer;

    .line 633
    .local p0, "this":Ljava/util/stream/LongPipeline$Head;, "Ljava/util/stream/LongPipeline$Head<TE_IN;>;"
    invoke-virtual {p0}, Ljava/util/stream/LongPipeline$Head;->isParallel()Z

    move-result v0

    if-nez v0, :cond_12

    .line 634
    invoke-virtual {p0}, Ljava/util/stream/LongPipeline$Head;->sourceStageSpliterator()Ljava/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/LongPipeline;->-$$Nest$smadapt(Ljava/util/Spliterator;)Ljava/util/Spliterator$OfLong;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    goto :goto_15

    .line 636
    :cond_12
    invoke-super {p0, p1}, Ljava/util/stream/LongPipeline;->forEachOrdered(Ljava/util/function/LongConsumer;)V

    .line 638
    :goto_15
    return-void
.end method

.method public final greylist-max-o opIsStateful()Z
    .registers 2

    .line 611
    .local p0, "this":Ljava/util/stream/LongPipeline$Head;, "Ljava/util/stream/LongPipeline$Head<TE_IN;>;"
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
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/stream/Sink<",
            "TE_IN;>;"
        }
    .end annotation

    .line 617
    .local p0, "this":Ljava/util/stream/LongPipeline$Head;, "Ljava/util/stream/LongPipeline$Head<TE_IN;>;"
    .local p2, "sink":Ljava/util/stream/Sink;, "Ljava/util/stream/Sink<Ljava/lang/Long;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api parallel()Ljava/util/stream/LongStream;
    .registers 2

    .line 578
    .local p0, "this":Ljava/util/stream/LongPipeline$Head;, "Ljava/util/stream/LongPipeline$Head<TE_IN;>;"
    invoke-super {p0}, Ljava/util/stream/LongPipeline;->parallel()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/LongStream;

    return-object v0
.end method

.method public bridge synthetic whitelist test-api sequential()Ljava/util/stream/LongStream;
    .registers 2

    .line 578
    .local p0, "this":Ljava/util/stream/LongPipeline$Head;, "Ljava/util/stream/LongPipeline$Head<TE_IN;>;"
    invoke-super {p0}, Ljava/util/stream/LongPipeline;->sequential()Ljava/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava/util/stream/LongStream;

    return-object v0
.end method
